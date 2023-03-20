ARG baseimagename=ruby \
    baseimagetag=3 \
    appversion=1.0.0-notag

FROM ${baseimagename}:${baseimagetag}

WORKDIR /usr/src/app

COPY Gemfile* .

RUN bundle config --global frozen 1 && \
    bundle install

COPY . .

CMD ["rackup", "--server", "puma", "--host", "0.0.0.0", "--port", "80"]
