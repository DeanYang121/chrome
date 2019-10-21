FROM browserless/chrome:latest 
USER root 
RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 
RUN export LANG=zh_CN.UTF-8 
RUN echo -e "export LANG=zh_CN.UTF-8" > /etc/locale.conf ENV LANG zh_CN.UTF-8 
RUN cd /tmp &&\ 
	wget http://ftp.br.debian.org/debian/pool/main/t/tzdata/tzdata_2019c-2_all.deb &&\ 
	dpkg -i tzdata_2019c-2_all.deb 
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone 
USER blessuser
