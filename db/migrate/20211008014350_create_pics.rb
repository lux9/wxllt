class CreatePics < ActiveRecord::Migration[6.1]
  def change
    create_table :pics do |t|

      t.timestamps
    end
  end
end
