# 1. Alpine image use karenge jo bohot light aur stable hoti hai
FROM node:18-alpine

# 2. Working directory set karenge
WORKDIR /app

# 3. Package files ko copy karenge
COPY package*.json ./

# 4. Network timeout badha kar install karenge taaki slow internet par bhi fail na ho
RUN npm config set fetch-retry-maxtimeout 120000 && \
    npm config set fetch-retries 5 && \
    npm install

# 5. Baaki ka saara code copy karenge
COPY . .

# 6. Port define karenge
EXPOSE 3000

# 7. App start karne ki command
CMD ["npm", "start"]
