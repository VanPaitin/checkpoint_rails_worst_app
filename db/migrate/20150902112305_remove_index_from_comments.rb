class RemoveIndexFromComments < ActiveRecord::Migration[8.0]
  def change
    remove_index :comments, :article_id
  end
end
