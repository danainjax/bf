class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :published
      t.string :publisher
      t.text :description
      t.string :genre
      t.string :image
      t.string :link_to_purchase

      t.timestamps
    end
  end
end
