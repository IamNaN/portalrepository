class Item < ApplicationRecord
  belongs_to :folder
  mount_uploader :asset, AssetUploader
  attr_accessor :content_type

  def folder_path
    result = ''
    result = folder.path if folder
    result + '/'
  end

  def path
    folder_path # + name
  end
  
  def filename
    File.basename(asset.path || asset.filename) if asset
  end

end
