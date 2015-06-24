#!/bin/bash

aws s3 sync --acl $TARGET_FILE_ACL s3://$S3_SOURCE_BUCKET_NAME s3://$S3_TARGET_BUCKET_NAME
