class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :folder, index: true, foreign_key: true
      t.string :asset
      t.string :guid

      t.timestamps null: false
    end
  end
end
