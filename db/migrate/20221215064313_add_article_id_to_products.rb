class AddArticleIdToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :articles_id, :string
  end
end
