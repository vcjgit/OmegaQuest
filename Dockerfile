# Use the official Alpine image as a base
FROM alpine:3.7

# Install necessary packages
RUN apk add --no-cache \
    bash \
    openjdk8-jre

# Copy the build directory to the container
COPY /build/ /srv/www/web/

# Set the working directory
WORKDIR /srv/www/web/

# Expose the port your application runs on
EXPOSE 8080

# Command to run your application
CMD ["java", "-jar", "your-application.jar"]