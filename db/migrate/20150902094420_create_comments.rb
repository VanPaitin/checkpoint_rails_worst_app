class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
