class AddInstagramToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :instagram, :string
  end
end
