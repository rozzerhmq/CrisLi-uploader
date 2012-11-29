CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => 'AKIAJ4AIXAF5RTLCCVXA',
    :aws_secret_access_key => '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'
  }
  config.fog_directory = 'crisli'
end

