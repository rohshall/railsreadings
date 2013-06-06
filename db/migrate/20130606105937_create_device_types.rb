class CreateDeviceTypes < ActiveRecord::Migration
  def change
    create_table :device_types do |t|
      t.string :name, null: false
      t.string :version, null: false
    end
  end
end
