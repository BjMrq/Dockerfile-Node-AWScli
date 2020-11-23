#!/bin/sh

printf "[default]\naws_access_key_id = %s\naws_secret_access_key = %s\n" "$AWS_ACCESS_KEY_ID" "$AWS_SECRET_ACCESS_KEY" >> ~/.aws/credentials

printf "[default]\nregion = %s\noutput = json\n" "$AWS_DEFAULT_REGION" >> ~/.aws/config

/bin/sh