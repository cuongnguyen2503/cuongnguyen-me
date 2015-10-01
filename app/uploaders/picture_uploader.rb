# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  version :medium do
    process resize_to_fill: [480, 360]
  end

  version :thumb do
    process resize_to_fill: [196, 110]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
