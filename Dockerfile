FROM browserless/chrome:latest
USER root 
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 
RUN export LANG=zh_CN.UTF-8 
RUN echo -e "export LANG=zh_CN.UTF-8" > /etc/locale.conf 
ENV LANG zh_CN.UTF-8
USER blessuser

