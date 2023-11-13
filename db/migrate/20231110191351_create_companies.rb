class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name_fantasy
      t.string :corporate_reason
      t.string :cnpj
      t.string :email
      t.string :zip_code
      t.string :address
      t.string :address_number
      t.string :complement
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :mobile01
      t.string :mobile02
      t.string :phone01
      t.string :phone02
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
