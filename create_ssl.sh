# オレオレ認証局
#sudo openssl genrsa -out certs/ca.key 2048
#sudo openssl req -new -key certs/ca.key -out certs/ca.csr -subj '/C=JP/ST=Tokyo/L=Shibuya-ku/O=Oreore CA inc./OU=Oreore Gr./CN=Oreore CA'
#sudo openssl x509 -days 3650 -in certs/ca.csr -req -signkey certs/ca.key -out certs/ca.crt

#sudo openssl genrsa -out certs/web.localhost.key 2048
#sudo openssl req -new -key certs/web.localhost.key  -out certs/web.localhost.csr -subj '/C=JP/ST=Tokyo/L=Tokyo/O=Oreore CA inc./OU=web.localhost Gr./CN=web.localhost'
#sudo yes | openssl ca -config <(cat /usr/local/etc/openssl/openssl.cnf <( printf "\n[usr_cert]\nsubjectAltName=DNS:web.localhost,DNS:web.localhost,DNS:web.localhost")) -keyfile certs/ca.key -outdir certs -cert certs/ca.crt -in certs/web.localhost.csr -out certs/web.localhost.crt -days 3650
sudo openssl genrsa -out certs/web.localhost.key 2048
sudo openssl req -new -x509 -key certs/web.localhost.key -out certs/web.localhost.crt -days 3650 -subj /CN=web.localhost
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain certs/web.localhost.crt