FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JMusicBot files to the container
COPY . /app

# Expose the necessary port (not strictly required for JMusicBot)
EXPOSE 8080

# Start the bot
CMD ["java", "-jar", "JMusicBot.jar"]
