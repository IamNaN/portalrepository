class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.references :folder, foreign_key: true
      t.string :asset
      t.string :guid

      t.timestamps
    end
  end
end
