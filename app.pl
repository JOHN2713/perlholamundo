use strict;
use warnings;
use HTTP::Server::Simple::CGI;

# Define the server package
{
    package HelloWorldServer;
    use base qw(HTTP::Server::Simple::CGI);

    sub handle_request {
        my $self = shift;
        my $cgi  = shift;

        # Check if the requested path is "/"
        if ($cgi->path_info() eq '/') {
            print "HTTP/1.0 200 OK\r\n";
            print "Content-Type: text/html\r\n\r\n";
            print "Hello World from Perl!";
        }
        else {
            print "HTTP/1.0 404 Not Found\r\n";
            print "Content-Type: text/html\r\n\r\n";
            print "Page not found";
        }
    }
}

# Start the server on port 8080
my $server = HelloWorldServer->new(8080);
print "Server running on http://localhost:8080\n";
$server->run();