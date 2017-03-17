FROM library/postgres:9.6.2
RUN apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    postgresql-9.6-postgis-2.3 \
    postgresql-9.6-postgis-2.3-scripts \
    postgis=2.3.*
COPY 00-create-extensions.sql /docker-entrypoint-initdb.d/
