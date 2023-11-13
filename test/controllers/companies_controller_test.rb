require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference("Company.count") do
      post companies_url, params: { company: { active: @company.active, address: @company.address, address_number: @company.address_number, city: @company.city, cnpj: @company.cnpj, complement: @company.complement, corporate_reason: @company.corporate_reason, email: @company.email, mobile01: @company.mobile01, mobile02: @company.mobile02, name_fantasy: @company.name_fantasy, neighborhood: @company.neighborhood, phone01: @company.phone01, phone02: @company.phone02, state: @company.state, zip_code: @company.zip_code } }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { active: @company.active, address: @company.address, address_number: @company.address_number, city: @company.city, cnpj: @company.cnpj, complement: @company.complement, corporate_reason: @company.corporate_reason, email: @company.email, mobile01: @company.mobile01, mobile02: @company.mobile02, name_fantasy: @company.name_fantasy, neighborhood: @company.neighborhood, phone01: @company.phone01, phone02: @company.phone02, state: @company.state, zip_code: @company.zip_code } }
    assert_redirected_to company_url(@company)
  end

  test "should destroy company" do
    assert_difference("Company.count", -1) do
      delete company_url(@company)
    end

    assert_redirected_to companies_url
  end
end
