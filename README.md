# kmspass

Chef helper library that allows you to pass a base64 encrypted KMS secret and have a decrypted plaintext sting returned - if your instance has the right permissions for the KMS key.

## Usage


plaintext = kms_decrypt("base64encryptedstring") 

## Limitations

region is hardcoded to eu-west-1 in libraries/kmspass_helper.rb at the moment
