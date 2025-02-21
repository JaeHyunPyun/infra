FROM nginx:latest

# 1. 컨테이너의 nginx default.conf 설정파일 삭제후 커스텀으로 작성한 설정파일로 대체
RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf.d/default.conf /etc/nginx/conf.d/

###### 최초 SSL 발급 이후 2번째 Deploy때부터 활성화 #####
# nginx를 포그라운드로 실행시켜 종료되지 않도록 유지
CMD ["nginx", "-g", "daemon off;"]


####### 최초에 도메인에 대해서 ssl 인증서 발급받을때만 활성화 ####
## 1. certbot 설치
#RUN apt-get update && \
#    apt-get install -y certbot python3-certbot-nginx
#
## 2. entrypoint 스크립트를 컨테이너에 복사
#COPY ./entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#
## 3. certbot을 사용해 SSL 인증서 자동 발급 + nginx 포그라운드로 시작
#ENTRYPOINT ["/entrypoint.sh"]
