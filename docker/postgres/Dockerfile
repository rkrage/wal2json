FROM postgres:10

RUN apt-get update && \
    apt-get install -qq -y --fix-missing --no-install-recommends \
      postgresql-server-dev-10 \
      build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /code

WORKDIR /code

ENV PG_CONFIG "/usr/lib/postgresql/10/bin/pg_config"

ENV USE_PGXS 1

ENV PATH "/code/bin:$PATH"

COPY docker/postgres/wal2json_config.sh /docker-entrypoint-initdb.d/wal2json_config.sh
