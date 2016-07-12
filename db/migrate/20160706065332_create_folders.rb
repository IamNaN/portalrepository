class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.string :ancestry, index: true

      t.timestamps
    end
  end
end
