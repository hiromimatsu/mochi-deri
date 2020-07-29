class RenameImgColumnToArticles < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles, :img, :image
  end
end
