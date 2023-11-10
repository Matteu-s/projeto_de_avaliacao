json.extract! equipment, :id, :name, :serial_number, :date_of_acquisition, :cost, :state, :last_maintenance,
              :current_responsible, :delivery_date_responsible, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
