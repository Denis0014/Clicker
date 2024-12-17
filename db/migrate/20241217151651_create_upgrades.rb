class CreateUpgrades < ActiveRecord::Migration[8.0]
  def change
    create_table :upgrades do |t|
      t.timestamps
    end
  end
end
