require "aws-sdk"

module Kmspass
  module Decrypt

    def kms_decrypt(encrypted)
       kms = Aws::KMS::Client.new(region:'eu-west-1')
        decrypted = kms.decrypt({
           ciphertext_blob: Base64.strict_decode64(encrypted)
        }).plaintext
    return decrypted
    end
  end
end

Chef::Recipe.include(Kmspass::Decrypt)
Chef::Resource.include(Kmspass::Decrypt)
