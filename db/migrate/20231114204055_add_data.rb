class AddData < ActiveRecord::Migration[7.0]
  def change
    #devido a falta de memoria ram do fly.io nao foi possível rodar rails db:seed
    address_data = Correios::CEP::AddressFinder.get('50860260')

    200.times do
      User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: '123456',
        password_confirmation: '123456',
        cpf: Faker::Number.number(digits: 11),
        rg: Faker::Number.number(digits: 8),
        dob: DateTime.current - rand(1..99).year,
        zip_code: address_data[:zipcode],
        address: address_data[:address],
        address_number: 74,
        complement: 'mod 01. apt 304',
        state: address_data[:state],
        city: address_data[:city],
        neighborhood: address_data[:neighborhood],
        mobile01: Faker::Number.number(digits: 11),
        mobile02: Faker::Number.number(digits: 11),
        phone01: Faker::Number.number(digits: 10),
        phone02: Faker::Number.number(digits: 10),
        active: %i[true false].sample
      )
    end

    200.times do
      Company.create(
        name_fantasy: Faker::Company.name,
        corporate_reason: Faker::Company.name,
        cnpj: Faker::Number.number(digits: 14),
        email: Faker::Internet.email,
        zip_code: address_data[:zipcode],
        address: address_data[:address],
        address_number: 74,
        complement: 'mod 01. apt 304',
        state: address_data[:state],
        city: address_data[:city],
        neighborhood: address_data[:neighborhood],
        mobile01: Faker::Number.number(digits: 11),
        mobile02: Faker::Number.number(digits: 11),
        phone01: Faker::Number.number(digits: 10),
        phone02: Faker::Number.number(digits: 10),
        active: %i[true false].sample
      )
    end

    200.times do
      Equipment.create(
        name: Faker::Game.title,
        serial_number: Faker::Alphanumeric.alphanumeric(number: 10),
        date_of_acquisition: DateTime.current - rand(1..24).months,
        cost: rand(10000.999999),
        state: %i[available unavailable maintenance].sample,
        last_maintenance: DateTime.current - rand(1..24).months,
        current_responsible: Faker::Name.name,
        delivery_date_responsible: DateTime.current,
        company: Company.order('RANDOM()').first
      )
    end

    User.create(
      name: 'Mateus Santos',
      email: 'mateeussantoos@hotmail.com',
      password: '123456',
      password_confirmation: '123456',
      cpf: Faker::Number.number(digits: 11),
      rg: Faker::Number.number(digits: 8),
      dob: DateTime.current - rand(1..99).year,
      zip_code: address_data[:zipcode],
      address: address_data[:address],
      address_number: 74,
      complement: 'mod 01. apt 304',
      state: address_data[:state],
      city: address_data[:city],
      neighborhood: address_data[:neighborhood],
      mobile01: Faker::Number.number(digits: 11),
      mobile02: Faker::Number.number(digits: 11),
      phone01: Faker::Number.number(digits: 10),
      phone02: Faker::Number.number(digits: 10)
    )
  end
end
