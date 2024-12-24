class CreateScores < ActiveRecord::Migration[8.0]
  def change
    create_table :scores do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :upgrade

      t.timestamps
    end
  end
end
