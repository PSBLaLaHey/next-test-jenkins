# Step 1: ใช้ Node.js base image ที่รองรับ Next.js
FROM node:18-alpine

# Step 2: กำหนด working directory ใน container
WORKDIR /app

# Step 3: Copy ไฟล์ package.json และ package-lock.json ไปยัง container
COPY package*.json ./

# Step 4: ติดตั้ง dependencies
RUN npm install --only=production

# Step 5: Copy ไฟล์ทั้งหมดของโปรเจกต์ไปยัง container
COPY . .

# Step 6: สร้างแอปพลิเคชัน Next.js สำหรับ production
RUN npm run build  # <--- คำสั่งนี้จะทำการ build แอปพลิเคชัน Next.js

# Step 7: กำหนด port ที่แอปพลิเคชันจะฟัง (ค่าเริ่มต้นคือ 3000)
EXPOSE 3000

# Step 8: ระบุคำสั่งที่จะรันแอปพลิเคชันใน container สำหรับ production
CMD ["npm", "run", "start"]
