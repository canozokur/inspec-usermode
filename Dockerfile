FROM chef/inspec:latest

ARG UID
ARG GID

RUN addgroup --gid $GID inspec
RUN adduser --disabled-password --gecos '' --uid $UID --gid $GID inspec
USER inspec
