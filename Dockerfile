# https://airflow.apache.org/docs/docker-stack/build.html

FROM apache/airflow:2.2.3

USER root

RUN set -ex \
    && sed -i 's/^# en_US.UTF-8 UTF-8$/en_US.UTF-8 UTF-8/g' /etc/locale.gen \
    && sed -i 's/^# pt_BR.UTF-8 UTF-8$/pt_BR.UTF-8 UTF-8/g' /etc/locale.gen \
    && locale-gen en_US.UTF-8 pt_BR.UTF-8 \
    && update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

USER airflow

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir openpyxl