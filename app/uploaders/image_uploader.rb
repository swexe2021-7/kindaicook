class ImageUploader < CarrierWave::Uploader::Base
   mount_uploader :image, ImageUploader
  belongs_to :product
end
