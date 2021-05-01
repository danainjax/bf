class AddInfoToReaders < ActiveRecord::Migration[6.1]
  def change
    add_column :readers, :uid, :string
    add_column :readers, :provider, :string
    add_column :readers, :omni_pic, :string
  end
end
