class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.string :device_mac_addr, limit: 12, null: false
      t.string :value, null: false
      t.timestamp :created_at, null: false
    end
  end
end
