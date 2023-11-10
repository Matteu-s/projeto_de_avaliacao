class CreateEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :equipments do |t|
      t.string :name
      t.string :serial_number
      t.datetime :date_of_acquisition
      t.string :cost
      t.integer :state
      t.datetime :last_maintenance
      t.string :current_responsible
      t.datetime :delivery_date_responsible

      t.timestamps
    end
  end
end
