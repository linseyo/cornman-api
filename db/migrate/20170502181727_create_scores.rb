class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :username, limit: 10
      t.integer :score

      t.timestamps null: false
    end
  end
end
