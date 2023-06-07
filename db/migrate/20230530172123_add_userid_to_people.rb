class AddUseridToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :user_id, :integer
    add_index :people, :user_id
  end
end
