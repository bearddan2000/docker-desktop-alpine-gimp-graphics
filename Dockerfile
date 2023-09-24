FROM alpine:latest

ENV APP gimp

ENV APP_FONT "font-terminus font-inconsolata font-dejavu font-noto font-noto-cjk font-awesome font-noto-extra"

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN apk update

RUN apk add $APP \
     $APP_FONT

RUN adduser -S $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD "${APP}"
