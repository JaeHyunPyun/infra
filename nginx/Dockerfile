FROM nginx:latest
#컨테이너의 nginx default.conf 설정파일 삭제후 커스텀으로 작성한 설정파일로 대체
RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf.d/default.conf /etc/nginx/conf.d/

# nginx를 포그라운드로 실행시켜 종료되지 않도록 유지
CMD ["nginx", "-g", "daemon off;"]