FROM openjdk:17-jdk-slim

# Install required font libraries
RUN apt-get update && apt-get install -y \
    fontconfig \
    libfreetype6 \
    && apt-get clean
	
# Set working directory
WORKDIR /app

# Copy JMusicBot files to the container
COPY . /app

# Expose the necessary port (not strictly required for JMusicBot)
EXPOSE 8080

# Start the bot
CMD ["java", "-jar", "JMusicBot.jar"]
