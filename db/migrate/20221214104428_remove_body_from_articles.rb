class RemoveBodyFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :body, :text
  end
end
