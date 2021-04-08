class RemoveUserAndAuthorFromArticle < ActiveRecord::Migration[6.1]
  def change
    remove_column :articles, :author_id, :bigint
    remove_column :articles, :user_id, :bigint
  end
end
