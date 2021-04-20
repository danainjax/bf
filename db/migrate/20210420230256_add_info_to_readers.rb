class AddInfoToReaders < ActiveRecord::Migration[6.1]
  def change
    add_column :readers, :uid, :string
    add_column :readers, :provider, :string
  end
end
