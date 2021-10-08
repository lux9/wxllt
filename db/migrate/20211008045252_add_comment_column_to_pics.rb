class AddCommentColumnToPics < ActiveRecord::Migration[6.1]
  def change
    add_column :pics, :comment, :string
  end
end
