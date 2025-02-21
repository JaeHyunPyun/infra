FROM nginx:latest

# 1. 컨테이너의 nginx default.conf 설정파일 삭제후 커스텀으로 작성한 설정파일로 대체
RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf.d/default.conf /etc/nginx/conf.d/

# 2. certbot 설치
RUN apt-get update && \
    apt-get install -y certbot python3-certbot-nginx

# 3. entrypoint 스크립트를 컨테이너에 복사
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 4. certbot을 사용해 SSL 인증서 자동 발급 + nginx 포그라운드로 시작
ENTRYPOINT ["/entrypoint.sh"]