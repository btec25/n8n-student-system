# استخدم صورة n8n الرسمية
FROM n8nio/n8n

# إعداد البيئة (إلزامي لتشغيل n8n على Render)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=n8n-student-system.onrender.com
ENV WEBHOOK_URL=https://n8n-student-system.onrender.com/
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV TZ=Asia/Amman

# تعيين المنفذ
EXPOSE 5678

# تشغيل التطبيق
CMD ["tini", "--", "n8n"]

