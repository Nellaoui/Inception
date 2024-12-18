# Inception

A Docker Infrastructure Project for WordPress Development 🐋

## Overview

Inception is a System Administration project that focuses on using Docker Compose to create a small infrastructure composed of different services under specific rules. The project sets up a complete web development environment with WordPress, MySQL, and Nginx, all running in separate containers.

## 🌟 Key Features

- Containerized services using Docker
- Three main containers:
  - NGINX with TLSv1.2 or TLSv1.3
  - WordPress + php-fpm
  - MariaDB
- Persistent volume management
- Custom Docker network
- Secure environment configuration
- Automated setup with docker-compose

## 🛠️ Technical Stack

- Docker & Docker Compose
- NGINX
- WordPress
- MariaDB
- PHP-FPM
- Alpine/Debian Linux
- TLS/SSL

## 🚀 Installation & Setup

### Prerequisites
- Docker
- Docker Compose
- Make (for Makefile usage)
- A Linux/Unix environment

### Setup Steps

1. Clone the repository:
```bash
git clone https://github.com/Nellaoui/Inception.git
cd Inception
```

2. Create necessary environment variables file:
```bash
cp .env.example .env
# Edit .env with your configuration
```

3. Build and start the containers:
```bash
make
```

4. Access WordPress:
```
https://localhost:443

```

### Makefile Commands

- `make`: Build and start all containers
- `make build`: Only build the containers
- `make down`: Stop and remove containers
- `make clean`: Clean up containers and volumes
- `make fclean`: Complete cleanup including images
- `make re`: Rebuild the entire infrastructure

## 📁 Project Structure

```
inception/
├── docker-compose.yml
├── Makefile
├── srcs/
│   ├── requirements/
│   │   ├── nginx/
│   │   ├── wordpress/
│   │   └── mariadb/
│   └── .env
└── README.md
```

## 🔒 Security Features

- SSL/TLS encryption
- Secure database configuration
- Isolated container network
- Environment variable usage for sensitive data
- No password storage in source code

## ⚙️ Configuration

### Environment Variables Required:
```
SQL_USER=
SQL_PASSWORD=
SQL_DATABASE=
SQL_ROOT_PASSWORD=
SQL_HOST=

DOMAIN_NAME=
TITLE=
ADMIN_USER=
ADMIN_PASSWORD=
ADMIN_EMAIL=

WP_USER=
WP_PASSWORD=
WP_EMAIL=
```

### Ports
- NGINX: 443 (HTTPS)
- MariaDB: 3306 (Internal)
- WordPress: 9000 (Internal)

## 📝 License

This project is part of the 42 School curriculum. Please check with 42's policy regarding code usage and distribution.

## 👥 Author

- [@Nellaoui](https://github.com/Nellaoui)

## 🙏 Acknowledgments

- 42 School for the project requirements
- Docker documentation and community
- All contributors who helped improve this project
