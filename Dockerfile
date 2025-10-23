# استخدم الصورة الرسمية من n8n
FROM n8nio/n8n:latest

# إعداد متغيرات البيئة
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=n8n-student-system.onrender.com
ENV WEBHOOK_URL=https://n8n-student-system.onrender.com/
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV TZ=Asia/Amman

# المنفذ المستخدم
EXPOSE 5678

# اجعل مجلد العمل هو /home/node/.n8n
WORKDIR /home/node/.n8n

# شغل التطبيق مباشرة باستخدام n8n
ENTRYPOINT ["n8n"]
