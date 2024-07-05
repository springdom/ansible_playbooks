server {
    listen 80;
    server_name api.example.com;

    location / {
	include /etc/nginx/proxy_params;
        proxy_pass http://unix:/home/mtaylor/api/api.sock;
    }
}
