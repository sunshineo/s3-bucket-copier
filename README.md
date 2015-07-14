# s3-bucket-copier

Using this http://stackoverflow.com/a/23577621/1406024
But in a docker so it's easier

## Usage
```bash
docker run \
  -e "AWS_ACCESS_KEY_ID=**DefineMe**" \
  -e "AWS_SECRET_ACCESS_KEY=**DefineMe**" \
  -e "AWS_DEFAULT_REGION=us-west-2" \
  -e "S3_SOURCE_BUCKET_NAME=my-bucket" \
  -e "S3_TARGET_BUCKET_NAME=my-bucket-backup" \
  -e "TARGET_FILE_ACL=private" \
  sunshineo/s3-bucket-copier
```
**TARGET_FILE_ACL** Pick one from http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html
* private
* public-read
* public-read-write
* authenticated-read
* bucket-owner-read
* bucket-owner-full-control
* log-delivery-write