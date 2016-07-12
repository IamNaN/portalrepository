class Folder < ApplicationRecord
  has_ancestry
  has_many :items

  def path
    ancestors.collect(&:name).join('/') + name
  end
end
