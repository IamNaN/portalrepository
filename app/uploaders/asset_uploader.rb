# encoding: utf-8

class AssetUploader < CarrierWave::Uploader::Base

  include CarrierWave::MimeTypes
  include CarrierWaveDirect::Uploader

  include CarrierWave::MimeTypes
  process :set_content_type

  def extension_white_list
    %w(jpg jpeg gif png pdf doc docx txt xls xlsx)
  end

end
