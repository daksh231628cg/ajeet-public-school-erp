FROM node:22-alpine
WORKDIR /app
COPY . .
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000
ENV DATA_FILE=/data/school-data.json
VOLUME ["/data"]
EXPOSE 3000
CMD ["node","server.js"]
