class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :mac_addr, primary_key: true, null: false, limit: 12
      t.integer :device_type_id, null: false
      t.timestamp :manufactured_at, null: false
      t.timestamp :registered_at
    end
  end
end
