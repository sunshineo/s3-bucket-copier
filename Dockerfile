FROM python

RUN mkdir /data
RUN pip install awscli

ENV AWS_ACCESS_KEY_ID **DefineMe**
ENV AWS_SECRET_ACCESS_KEY **DefineMe**
ENV AWS_DEFAULT_REGION us-west-2
ENV S3_SOURCE_BUCKET_NAME my-bucket
ENV S3_TARGET_BUCKET_NAME my-bucket-backup
ENV TARGET_FILE_ACL private

ADD run.sh /run.sh
RUN chmod 755 /run.sh

CMD ["/run.sh"]