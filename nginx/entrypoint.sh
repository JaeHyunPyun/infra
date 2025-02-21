#!/bin/bash

# certbot을 사용해 SSL 인증서 자동 발급
certbot --nginx -d purpleturtle.p-e.kr --email pyunjaehyun@gmail.com --agree-tos --no-eff-email

# nginx 포그라운드로 시작
nginx -g "daemon off;"