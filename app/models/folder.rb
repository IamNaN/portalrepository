class Folder < ActiveRecord::Base
  has_ancestry
  has_many :items

  def path
    ancestors.collect(&:name).join('/') + name
  end
end
