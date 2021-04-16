class AddAuthorIdToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :author_id, :bigint
    add_reference :articles, :user, null: false, foreign_key: true
  end
end
