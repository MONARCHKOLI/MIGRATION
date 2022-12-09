class AddLkeToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :like, :boolean
  end
end
