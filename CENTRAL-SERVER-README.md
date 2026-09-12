# Ajeet Public School ERP — Central Server Build

This build is prepared to run as one central web server. All users connect to the same server URL and share the same school-data.json file.

## Quick LAN server
1. Install Node.js on the server computer.
2. Run: `node server.js`
3. Find the server PC IP, for example `192.168.1.50`.
4. On other phones/PCs on the same network open: `http://192.168.1.50:3000`

## Docker
`docker compose up -d --build`

Data is persisted in the Docker volume at `/data/school-data.json`.

## Public internet
Put this app on a VPS/cloud server, keep port 3000 behind HTTPS/reverse proxy, and point your domain to that server. The application already listens on `0.0.0.0` and honors `PORT` and `DATA_FILE`.

## Health check
`/health` returns JSON and can be used by a hosting provider to verify the server is alive.
