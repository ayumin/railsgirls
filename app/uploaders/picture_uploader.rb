# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

end
