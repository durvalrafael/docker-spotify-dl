# Use an official Python runtime as a base image
FROM python:3.3-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD ./app /app

# Install any needed packages specified in requirements.txt
RUN apt-get update
RUN apt-get install -y libav-tools
RUN pip3 install spotify_dl

# Make port 80 available to the world outside this container
#EXPOSE 80

# Define environment variable
ENV SPOTIPY_CLIENT_ID 24359ee4c61a4ac194b9b2f7651c8268
ENV SPOTIPY_CLIENT_SECRET 34ce98b5cb36461199199b21779448de
ENV SPOTIPY_REDIRECT_URI http://whatcolourisit.xyz/callback
ENV YOUTUBE_DEV_KEY AIzaSyDVypZokZxFG6yMxbGLvbwcKb8jTXUF4vA

# Run app.py when the container launches
#CMD ["spotify_dl -l" "https://open.spotify.com/user/12143811308/playlist/2H4QS6aAKslhs1jV7uXyRu -o /app/download"]
#CMD ["spotify_dl -l" "https://open.spotify.com/user/12143811308/playlist/2H4QS6aAKslhs1jV7uXyRu -o /app/download"]

#spotify_dl -l https://open.spotify.com/user/12143811308/playlist/2H4QS6aAKslhs1jV7uXyRu -o /app/download
