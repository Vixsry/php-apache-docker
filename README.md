# 🐳 PHP 8.3 Development Environment with Docker

<div align="center">

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![PHP](https://img.shields.io/badge/PHP_8.3-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB_11.3-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![Adminer](https://img.shields.io/badge/Adminer-34567C?style=for-the-badge&logo=adminer&logoColor=white)
![Caddy](https://img.shields.io/badge/Caddy-00ADD8?style=for-the-badge&logo=caddy&logoColor=white)

</div>

## 📋 Overview

This is a complete development environment setup using Docker Compose, featuring:

- PHP 8.3 with Apache
- MariaDB 11.3
- Adminer for database management
- Caddy as reverse proxy with automatic HTTPS

## 🚀 Services & Ports

| Service | Port | Description |
|---------|------|-------------|
| PHP Apache | 8083 | Web server |
| MariaDB | 3307 | Database server |
| Adminer | 8084 | Database management |
| Caddy | 8085, 8443 | HTTP/HTTPS proxy |

## 🛠️ Prerequisites

- Docker Engine
- Docker Compose
- Git (optional)

## 📦 Installation

1. Clone this repository (or download the files):
```bash
git clone https://github.com/Vixsry/php-apache-docker.git
cd <project-directory>
```

2. Configure environment variables:
```bash
# Edit these values in docker-compose.yml
MYSQL_ROOT_PASSWORD: "your_root_password"
MYSQL_DATABASE: "your_database"
MYSQL_USER: "your_user"
MYSQL_PASSWORD: "your_password"
CLOUDFLARE_API_TOKEN: "your_cloudflare_api_token"
```

3. Start the environment:
```bash
docker-compose up -d
```

## 🗂️ Project Structure

```
.
├── app/                    # PHP application files
├── apache/
│   └── vhost.conf         # Apache virtual host configuration
├── php/
│   └── custom.ini         # PHP custom configuration
├── mysql/
│   ├── my.cnf            # MariaDB configuration
│   └── initdb.d/         # Database initialization scripts
├── Caddyfile             # Caddy server configuration
└── docker-compose.yml    # Docker Compose configuration
```

## 🔒 Security Features

- Read-only containers
- No new privileges escalation
- Separate frontend and backend networks
- Custom user for Apache (www-data)
- Secure MariaDB configuration

## 🌐 Networks

- `frontend`: External-facing network for web services
- `backend`: Internal network for database and service communication

## 💾 Volumes

- `mariadb_data`: Persistent database storage
- `caddy_data`: Caddy TLS certificates and data
- `caddy_config`: Caddy configuration storage

## ⚙️ Configuration

### PHP Custom Configuration
```ini
# ./php/custom.ini
# Add your PHP configuration here
```

### Apache Virtual Host
```apache
# ./apache/vhost.conf
# Add your Apache configuration here
```

### MariaDB Configuration
```ini
# ./mysql/my.cnf
# Add your MariaDB configuration here
```

### Caddy Configuration
```caddyfile
# ./Caddyfile
# Add your Caddy configuration here
```

## 🛡️ Environment Security

All services are configured with:
- `no-new-privileges:true`
- `read_only: true`
- Specific user permissions
- Network isolation
- Volume access controls

## 📝 Usage

### Starting Services
```bash
docker-compose up -d
```

### Stopping Services
```bash
docker-compose down
```

### Viewing Logs
```bash
docker-compose logs [service]
```

### Accessing Services

- Website: `http://localhost:8083`
- Adminer: `http://localhost:8084`
- Caddy: `http://localhost:8085` or `https://localhost:8443`
- MariaDB: `localhost:3307`

## 🔍 Troubleshooting

1. **Ports Already in Use**
```bash
# Check ports in use
sudo lsof -i :<port>

# Change ports in docker-compose.yml if needed
```

2. **Permission Issues**
```bash
# Fix permissions if needed
chmod -R 755 app/
chown -R www-data:www-data app/
```

## 📚 Additional Resources

- [PHP Documentation](https://www.php.net/docs.php)
- [MariaDB Documentation](https://mariadb.org/documentation/)
- [Adminer Documentation](https://www.adminer.org/en/documentation/)
- [Caddy Documentation](https://caddyserver.com/docs/)

## 🤝 Contributing

Feel free to:
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

Made with ❤️ by Vixsry

</div>