class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :chinese
      t.integer :english
      t.integer :mathA
      t.integer :mathB
      t.integer :science
      t.integer :physics
      t.integer :history
      t.integer :geography
      t.integer :civics
      t.integer :biology

      t.timestamps
    end
  end
end
