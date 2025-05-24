# 🚀 Mailcow Installer Script

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/aboshaheen5/mailcow-installer?style=social)](https://github.com/aboshaheen5/mailcow-installer/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/aboshaheen5/mailcow-installer?style=social)](https://github.com/aboshaheen5/mailcow-installer/network/members)
[![GitHub issues](https://img.shields.io/github/issues/aboshaheen5/mailcow-installer)](https://github.com/aboshaheen5/mailcow-installer/issues)

<div align="center">
  <img src="https://mailcow.email/img/mailcow.svg" alt="Mailcow Logo" width="200"/>
  
  *An automated installation script for Mailcow - The complete mail server solution*
</div>

> This is an automated installation script for [Mailcow](https://github.com/mailcow/mailcow-dockerized). The script simplifies the installation process of Mailcow on your server.

## 📋 Table of Contents
- [System Requirements](#system-requirements)
- [Prerequisites](#prerequisites)
- [Installation](#installation-steps)
- [Features](#features)
- [Configuration](#configuration)
- [Maintenance](#backup-and-maintenance)
- [Troubleshooting](#troubleshooting)
- [Support](#support)

## 💻 System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| CPU | 2 cores | 4+ cores |
| RAM | 4GB | 8GB+ |
| Storage | 20GB | 50GB+ SSD |
| OS | Ubuntu 20.04 LTS / Debian 10 / CentOS 8 | Latest LTS |

### Network Requirements
- Static IP address
- Open ports: 25, 80, 443, 465, 587, 993, 995
- Proper DNS configuration

## 🔧 Prerequisites
- [x] Linux operating system (Ubuntu, Debian, CentOS)
- [x] sudo privileges
- [x] Internet connection
- [x] Domain name with proper DNS records
- [x] SSL certificate (Let's Encrypt recommended)

## 🚀 Installation Steps

1. **Download the installer script:**
```bash
git clone https://github.com/aboshaheen5/mailcow-installer.git
cd mailcow-installer
```

2. **Make the script executable:**
```bash
chmod +x install_mailcow.sh
```

3. **Run the installer:**
```bash
./install_mailcow.sh
```

## ✨ Features

### Installer Features
- 🚀 One-command installation
- 🔄 Automatic dependency installation
- ⚙️ Automatic configuration
- 🔒 Security best practices
- 📝 Detailed installation logs

### Mailcow Features
- 📧 Complete email server solution
- 🔒 Built-in security features
- 🌐 Modern web interface
- 📱 Mobile-friendly design
- 🔄 Automatic updates

### Email Management
- 📨 Send and receive emails
- 👥 Contact management
- 📅 Calendar integration
- 📝 Task management
- 📋 Global address book

### Security Features
- 🔐 Two-factor authentication
- 🛡️ Spam protection
- 🦠 Virus scanning
- 🔑 DKIM/SPF/DMARC support
- 🔒 SSL/TLS encryption

## ⚙️ Configuration

### DNS Configuration
```dns
# Required DNS Records
mail.example.com.    IN A     YOUR_SERVER_IP
example.com.         IN MX 10 mail.example.com.
example.com.         IN TXT   "v=spf1 mx ~all"
```

### Email Client Setup
```ini
# IMAP Settings
Server: your-server-hostname
Port: 993
Security: SSL/TLS

# SMTP Settings
Server: your-server-hostname
Port: 587
Security: STARTTLS
```

## 🔄 Backup and Maintenance

### Backup Schedule
| Type | Frequency | Retention |
|------|-----------|-----------|
| Incremental | Daily | 7 days |
| Full | Weekly | 30 days |
| Archive | Monthly | 1 year |

### System Maintenance
- 🔄 Regular updates
- 📊 Performance monitoring
- 🧹 Log rotation
- 🔍 Security audits

## 🛠️ Troubleshooting

### Common Issues
| Issue | Solution |
|-------|----------|
| Email Delivery | Check DNS and IP reputation |
| Performance | Monitor resource usage |
| Security | Review access logs |

## 📞 Support

### Need Help?
- 📝 [Open an Issue](https://github.com/aboshaheen5/mailcow-installer/issues)
- 💬 [Contact Installer Developer](https://github.com/aboshaheen5)
- 📚 [Mailcow Documentation](https://mailcow.github.io/mailcow-dockerized-docs/)
- 💬 [Mailcow Community](https://github.com/mailcow/mailcow-dockerized/discussions)

## 📜 License
This installer script is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <p>Installer Script by <a href="https://github.com/aboshaheen5">aboshaheen5</a></p>
  <p>Original Mailcow project by <a href="https://github.com/mailcow/mailcow-dockerized">Mailcow Team</a></p>
</div>