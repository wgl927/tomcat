FROM nginx:latest
LABEL author="eric eric@11h5.com"
ENV ROOT_DOC="/data/html/"
RUN mkdir -p ${ROOT_DOC}
ADD index.html ${ROOT_DOC}
ADD server.sh /bin/
ENTRYPOINT ["/bin/server.sh"]
CMD ["/usr/sbin/nginx","-g","daemon off;"]
