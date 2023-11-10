json.extract! user, :name, :email, :password, :password_confirmation, :cpf, :rg, :dob, :zip_code, :address,
              :address_number, :complement, :state, :city, :neighbourhood, :country, :mobile01, :mobile02,
              :phone01, :phone02, :active, :created_at, :updated_at
json.url user_path(user, format: :json)
