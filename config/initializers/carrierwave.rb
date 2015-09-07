CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_KEY'],
    :aws_secret_access_key  => ENV['AWS_SECRET'],
    :region                 => 'sa-east-1'
  }
  config.fog_directory  = "gestion-#{Rails.env}"
  config.storage :fog
  config.enable_processing = true

  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  end

  if Rails.env.test?
    config.enable_processing = false
  end
end
