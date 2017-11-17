if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAI5E4GGBDYNX27G7Q'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['tokoibucket']
  end
end