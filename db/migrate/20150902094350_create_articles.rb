class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps null: false
    end
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
