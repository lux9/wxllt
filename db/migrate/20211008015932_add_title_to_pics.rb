class AddTitleToPics < ActiveRecord::Migration[6.1]
  def change
    add_column :pics, :title, :string
  end
end
