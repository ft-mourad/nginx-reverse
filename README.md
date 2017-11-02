# Simple nginx reverse proxy test

The plan is to simply have a single entry-point (Nginx) to a platform/app.   
Every inbound request have to go through this reverse proxy to be directed to the right container.  

Here, the docker compose brings up the proxy, and two other nginx servers (one server "hello" the other one server "goodbye").

Accessing the proxy on the /hello path would direct the request to the hello container, likewise for the goodbye one.

Since I wanted to use a dummy domain name (i used *ingress.com*) and HTTPS, here are the **requirements** to run this :
- requires :  ` 127.0.0.1     ingress.com` in /etc/hosts
- It requires a SSL certificate, which i generated with :  
` openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-proxy/tls.key -out nginx-proxy/tls.crt -subj "/CN=ingress.com"`
