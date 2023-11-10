require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    check "Active" if @company.active
    fill_in "Address", with: @company.address
    fill_in "Address number", with: @company.address_number
    fill_in "City", with: @company.city
    fill_in "Cnpj", with: @company.cnpj
    fill_in "Complement", with: @company.complement
    fill_in "Corporate reason", with: @company.corporate_reason
    fill_in "Country", with: @company.country
    fill_in "Email", with: @company.email
    fill_in "Mobile01", with: @company.mobile01
    fill_in "Mobile02", with: @company.mobile02
    fill_in "Name fantasy", with: @company.name_fantasy
    fill_in "Neighbourhood", with: @company.neighbourhood
    fill_in "Phone01", with: @company.phone01
    fill_in "Phone02", with: @company.phone02
    fill_in "State", with: @company.state
    fill_in "Zip code", with: @company.zip_code
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    check "Active" if @company.active
    fill_in "Address", with: @company.address
    fill_in "Address number", with: @company.address_number
    fill_in "City", with: @company.city
    fill_in "Cnpj", with: @company.cnpj
    fill_in "Complement", with: @company.complement
    fill_in "Corporate reason", with: @company.corporate_reason
    fill_in "Country", with: @company.country
    fill_in "Email", with: @company.email
    fill_in "Mobile01", with: @company.mobile01
    fill_in "Mobile02", with: @company.mobile02
    fill_in "Name fantasy", with: @company.name_fantasy
    fill_in "Neighbourhood", with: @company.neighbourhood
    fill_in "Phone01", with: @company.phone01
    fill_in "Phone02", with: @company.phone02
    fill_in "State", with: @company.state
    fill_in "Zip code", with: @company.zip_code
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
