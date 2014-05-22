module Blocky
  class ImageController < Blocky::ApplicationController

    before_action :authorize_user

    def create
      if s3_bucket
        file = params[:file]
        file_ext = File.extname file.original_filename
        file_base = File.basename file.original_filename, file_ext
        time = Time.now.to_i
        file_with_time = "#{file_base}_#{time}#{file_ext}"
        s3_object = s3_bucket.objects.create(file_with_time, file.tempfile, {
          acl: :public_read
        })
        render text: s3_object.public_url.to_s
      else
        throw Exception, "S3 not setup"
      end
    end

    private

    def authorize_user
      authorize! :manage, Blocky::ContentBlock
    end

    def s3_bucket
      if Blocky.s3_access_key_id && Blocky.s3_secret_access_key && Blocky.s3_bucket
        s3 = AWS::S3.new(
          access_key_id: Blocky.s3_access_key_id,
          secret_access_key: Blocky.s3_secret_access_key
        )
        s3.buckets[Blocky.s3_bucket]
      end
    end


  end
end
