FROM mcr.microsoft.com/playwright:v1.39.0-jammy
RUN apt update & apt install jq -y
RUN npm install -g netlify-cli node-jq serve
