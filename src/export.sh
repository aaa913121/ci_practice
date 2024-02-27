export USERNAME="root"
export PASSWORD="root"
export HASHED_PASSWORD=$(openssl passwd -apr1 $PASSWORD)
export DOMAIN=nolin.cc