# Ticket Booking Backend

## Local setup

### 1. Start the database (first time only)
```bash
docker run -d --name ticketdb -e POSTGRES_USER=omkar -e POSTGRES_PASSWORD=omkar -e POSTGRES_DB=ticketbooking -p 5432:5432 postgres:17-alpine
```

### 2. Every day after restarting the Mac
1. Open Docker Desktop
2. `docker start ticketdb`
3. Run the app from IntelliJ (green ▶)
4. Check http://localhost:8080

## Useful Docker commands
| Command | What it does |
|---|---|
| `docker ps` | Show running boxes |
| `docker start ticketdb` | Start the database |
| `docker stop ticketdb` | Stop the database |
| `docker logs ticketdb` | See database messages (for errors) |