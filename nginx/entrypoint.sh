#!/bin/bash

# certbot을 사용해 SSL 인증서 자동 발급
certbot --nginx -d purpleturtle.p-e.kr --email pyunjaehyun@gmail.com --agree-tos --no-eff-email

# certbot 후 nginx를 재시작하여 계속 포그라운드에서 실행되도록 설정
nginx -s reload

# nginx 포그라운드로 시작 (계속 실행되도록)
nginx -g "daemon off;"

#test