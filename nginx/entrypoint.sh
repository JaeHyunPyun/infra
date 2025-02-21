#!/bin/bash

# certbot을 사용해 SSL 인증서 자동 발급
certbot --nginx -d greenturtle.p-e.kr --email pyunjaehyun@gmail.com --agree-tos --no-eff-email

# 기존 백그라운드로 돌아가고 있던 nginx 종료
nginx -s stop

# nginx 포그라운드로 재시작 (계속 실행되도록)
nginx -g "daemon off;"

#test