class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.text :content

      t.timestamps
    end
  end
end
