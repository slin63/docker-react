# Multistep build with build and run phase

# Build phase defined using "as" syntax
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .

RUN npm run build

# Begin run phase
FROM nginx as run
# COPY something from a different phase
COPY --from=builder /app/build /usr/share/nginx/html
