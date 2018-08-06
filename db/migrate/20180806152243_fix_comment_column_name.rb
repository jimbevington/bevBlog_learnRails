class FixCommentColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :commenter, :name
  end
end
