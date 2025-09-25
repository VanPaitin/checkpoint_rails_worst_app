class RemoveIndexFromArticle < ActiveRecord::Migration[8.0]
  def change
    remove_index :articles, :author_id
  end
end
