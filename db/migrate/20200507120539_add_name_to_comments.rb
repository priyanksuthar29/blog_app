class AddNameToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :name, :text
  end
end
