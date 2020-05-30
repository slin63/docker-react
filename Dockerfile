# Multistep build with build and run phase

# Build phase defined using "as" syntax
FROM node:alpine
# FROM node:alpine as builder
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

# Begin run phase
FROM nginx
# FROM nginx as run

# Used by elastic beanstalk to determine what port to route traffic to
EXPOSE 80

# COPY something from a different phase
COPY --from=0 /app/build /usr/share/nginx/html
