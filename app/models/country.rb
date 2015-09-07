class Country < ActiveRecord::Base
  mount_uploader :flag, CountryFlagUploader
  has_many :programs, dependent: :destroy
end
