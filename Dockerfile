FROM python:latest

LABEL maintainer="fjsnogueira"

VOLUME [ "/data/source", "/data/results" ]

RUN mkdir -p /data/source /data/results

RUN pip install pyre-check click click-log ipython==7.6.1 munch pygments SQLAlchemy ujson~=1.35 xxhash~=1.3.0 prompt-toolkit~=2.0.9 flask flask_cors flask_graphql graphene graphene_sqlalchemy

ADD scan.sh /
RUN chmod +x /scan.sh

CMD ["/scan.sh"]
