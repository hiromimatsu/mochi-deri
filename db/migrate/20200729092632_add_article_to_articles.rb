class AddArticleToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :area_id, :integer
    add_column :articles, :restaurant, :string
  end
end
