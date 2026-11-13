# 1. Node.js बेस इमेज चुनें
FROM node:18-alpine

# 2. कंटेनर के अंदर वर्किंग डायरेक्टरी सेट करें
WORKDIR /app

# 3. पहले package.json फ़ाइलें कॉपी करें (यह बहुत ज़रूरी है)
COPY package*.json ./

# 4. अब dependencies इंस्टॉल करें
RUN npm install

# 5. अब बाकी का सारा कोड कॉपी करें
COPY . .

# 6. ऐप को स्टार्ट करें
EXPOSE 3000
CMD ["npm", "start"]
