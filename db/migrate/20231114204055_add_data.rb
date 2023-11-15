class AddData < ActiveRecord::Migration[7.0]
  def change
    # devido a falta de memoria ram do fly.io nao foi possível rodar rails db:seed
    address_data = Correios::CEP::AddressFinder.get('50860260')
    address_rdmapps = Correios::CEP::AddressFinder.get('50030-170')

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

    50.times do
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

    1000.times do
      state = %i[available unavailable maintenance].sample
      if state == :unavailable
        current_responsible = Faker::Name.name
        delivery_date_responsible = DateTime.current - rand(1..6).months
      else
        current_responsible = nil
        delivery_date_responsible = nil
      end
      Equipment.create(
        name: Faker::Game.title,
        serial_number: Faker::Alphanumeric.alphanumeric(number: 10),
        date_of_acquisition: DateTime.current - rand(1..24).months,
        cost: rand(10_000.999999),
        state:,
        last_maintenance: DateTime.current - rand(1..24).months,
        current_responsible:,
        delivery_date_responsible:,
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

    User.create(
        name: 'Road Mapps',
        email: 'rdmapps@rdmapps.com',
        password: '123456',
        password_confirmation: '123456',
        cpf: Faker::Number.number(digits: 11),
        rg: Faker::Number.number(digits: 8),
        dob: DateTime.current - rand(1..99).year,
        zip_code: address_rdmapps[:zipcode],
        address: address_rdmapps[:address],
        address_number: 125,
        complement: '3 ANDAR',
        state: address_rdmapps[:state],
        city: address_rdmapps[:city],
        neighborhood: address_rdmapps[:neighborhood],
        mobile01: Faker::Number.number(digits: 11),
        mobile02: Faker::Number.number(digits: 11),
        phone01: Faker::Number.number(digits: 10),
        phone02: Faker::Number.number(digits: 10)
      )
  end
end
