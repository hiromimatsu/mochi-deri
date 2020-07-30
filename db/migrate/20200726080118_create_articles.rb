class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.index :restaurant
      t.string :image
      t.string :instagram
      t.text :menu
      t.text :rule
      t.references :area, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end