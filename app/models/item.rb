class Item < ActiveRecord::Base
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

end
