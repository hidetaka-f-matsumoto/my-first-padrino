FROM ruby:2.3

RUN apt-get update
RUN apt-get install net-tools sqlite3

# gem のドキュメントなどは入れない
RUN echo -e 'install: --no-document\nupdate: --no-document' >> ~/.gemrc

# bundler を入れる
RUN gem install bundler
RUN gem install padrino -v '~>0.13.3'

WORKDIR /var/apps/my-first-padrino
CMD sh ./docker_entry.sh
