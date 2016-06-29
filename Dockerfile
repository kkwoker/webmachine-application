FROM ruby

RUN apt-get update -qq
RUN apt-get install -y \
  build-essential \
  libxml2-dev \
  libxslt1-dev

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install --system

ENV app /app
RUN mkdir $app
WORKDIR $app
ADD . $app

EXPOSE 8080

CMD exec rake run
