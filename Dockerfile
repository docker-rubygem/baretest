FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.1

RUN gem install baretest --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["baretest"]
CMD ["--help"]
