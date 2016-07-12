# encoding: utf-8

class AssetUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include CarrierWave::MimeTypes
  include Cloudinary::CarrierWave

  process :set_content_type
  # process :tags => ['post_picture']

  # version :standard, if: :image? do
  #   process convert: 'png'
  #   process resize_to_fill: [200, 300, :north]
  # end

  # version :standard, unless: :image? do
    cloudinary_transformation(resource_type: 'auto', raw_convert: 'aspose')
  # end

  def public_id
    return model.path + original_filename
  end

  def extension_white_list
    # %w(jpg jpeg gif png pdf doc docx txt xls xlsx)
    %w(pdf doc docx txt xls xlsx)
  end

  # protected
  #
  # def image?(file)
  #   return model.is_image? if model.content_type.present?
  #   # puts file.content_type
  #   file.content_type.include? 'image'
  # end

end
