require "aws-sdk"
require "cancan"
require "jbuilder"
require "tidy"
require "blocky/engine"

module Blocky
  mattr_accessor :s3_access_key_id, :s3_bucket, :s3_secret_access_key,
                 :user_class
end
