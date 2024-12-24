class CreateLeaderboards < ActiveRecord::Migration[8.0]
  def change
    create_table :leaderboards do |t|
      t.string :user
      t.integer :score

      t.timestamps
    end
  end
end
