class CreateStanders < ActiveRecord::Migration[7.0]
  def change
    create_table :standers do |t|
      t.string :school
      t.string :department
      t.integer :scores
      t.string :weight
      t.timestamps
    end
  end
end
