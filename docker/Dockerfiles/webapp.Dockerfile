FROM node:10.11.0

LABEL maintainer ="vanhuy.doan@gmail.com"

# Install vim
RUN apt-get update && apt-get install -y vim

# Install global things
RUN npm i chalk -g
# Prepare app directory
RUN mkdir /working

# Set working dir
WORKDIR /working

# Expose the app port
EXPOSE 4000

# Start the app
CMD ["npm", "start"]