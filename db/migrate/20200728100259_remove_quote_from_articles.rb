class RemoveQuoteFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :quote, :string
  end
end