FROM 484907487980.dkr.ecr.ap-northeast-2.amazonaws.com/docker-hub/library/alpine:3.19

RUN apk --no-cache add \
    git \
    git-lfs \
    gnupg && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
