## Используется
- PHP 5.6 (opcache, xdebug, memcached)
- nginx latest
- mysql 5.6
- smtp (иммитация, перехват писем скриптом на go)
- mailhog для просмотра писем

## Установка зависимостей
- Git
```
sudo apt-get install -y git
```
- Docker
```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
```

- Docker compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

##После распаковки в рабочей директории

Скопировать `.env.example` в `.env`

```
cp .env.example .env
```
Задать новые имя пользователя и пароль БД

Запустить
```
make up
```

или если нет поддержки Makefile:

```
docker-compose up --build -d
```

## Использование

Проект нужно расположить в папке `www`

### Mailhog 
Mailhog (почтовый клиент) все письма из системы будут отображены в почтовом клиенте. Доступен по адресу http://10.100.10.1:8025/