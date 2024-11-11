# Use the official Perl base image
FROM perl:5.32

# Install HTTP::Server::Simple module
RUN cpan HTTP::Server::Simple

# Set the working directory
WORKDIR /app

# Copy the Perl script to the container
COPY app.pl .

# Expose the port used by the server
EXPOSE 8080

# Run the Perl HTTP server
CMD ["perl", "app.pl"]