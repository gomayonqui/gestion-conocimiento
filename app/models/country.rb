class Country < ActiveRecord::Base
  mount_uploader :flag, CountryFlagUploader
end
