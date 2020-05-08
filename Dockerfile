# use a node base image
FROM 161035852731.dkr.ecr.cn-north-1.amazonaws.com.cn/node7onbuild:latest

# set maintainer
LABEL maintainer "academy@release.works"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
