class AddColumnsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :score, :integer
    add_column :users, :upgrade, :integer
  end
end
