class AddUseridToScores < ActiveRecord::Migration[7.0]
  def change
    add_column :scores, :user_id, :integer
    add_index :scores, :user_id
  end
end
