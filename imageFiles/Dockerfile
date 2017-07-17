#
# Copyright (c) 2017, Regents of the University of California and
# contributors.
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
FROM debian:stretch

RUN set -x \
  && export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y inetutils-syslogd man less procps locales sudo \
       tzdata apt-file apt-utils net-tools dialog vim joe \
  && mv /etc/syslog.conf /etc/syslog.conf.ORIG \
  && echo "America/Los_Angeles" > /etc/timezone \
  && rm -f /etc/localtime \
  && ln -fs /usr/share/zoneinfo/US/Pacific /etc/localtime \
  && sed -i 's/# en_US ISO-8859-1/en_US ISO-8859-1/' /etc/locale.gen \
  && sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
  && locale-gen \
  && dpkg-reconfigure locales \
  && update-locale LANG=en_US.UTF-8 \
  && sed -i "s/# export LS_OPTIONS='--color=auto'/export LS_OPTIONS='--color=auto'/" /root/.bashrc \
  && sed -i "s/# eval \"\`dircolors\`\"/eval \"\`SHELL=\/bin\/bash dircolors\`\"/" /root/.bashrc \
  && sed -i "s/# alias ls='ls \$LS_OPTIONS'/alias ls='ls \$LS_OPTIONS'/" /root/.bashrc \
  && cp /etc/joe/joerc /root/.joerc \
  && sed -i "s/ -nobackups\tIf you don't want backup files to be created/-nobackups\tIf you don't want backup files to be created/" /root/.joerc \
  && apt-get clean \
  && rm -rf /tmp/* /var/tmp/*
COPY etc/syslog.conf /etc
