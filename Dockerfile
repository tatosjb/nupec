FROM ruby:2.5

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN npm install yarn -g

# Machine timezone
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" >  /etc/timezone
# Add host user to image
# ARG user
# RUN adduser $user
# RUN echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
# USER $user

RUN mkdir /app
# RUN chown $user /app
WORKDIR /app

# Install basic rails gems in image
COPY . .

RUN bundle install
