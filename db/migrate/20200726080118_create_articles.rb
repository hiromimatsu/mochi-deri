class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :quote, null: false
      t.text :menu, null: false
      t.text :rule, null: false
      t.timestamps
    end
  end
end