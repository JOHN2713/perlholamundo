# app.pl
use strict;
use warnings;
use HTTP::Server::Simple::CGI;

{
    package MyWebServer;
    use base qw(HTTP::Server::Simple::CGI);
    my $html_response = "<h1>Hola Mundo desde Perl!</h1>";

    sub handle_request {
        my ($self, $cgi) = @_;
        print "HTTP/1.0 200 OK\r\n";
        print "Content-Type: text/html\r\n\r\n";
        print $html_response;
    }
}

# Puerto que Railway suele escuchar
my $port = $ENV{PORT} || 3000;
my $server = MyWebServer->new($port);
print "Server running on port $port...\n";
$server->run();
