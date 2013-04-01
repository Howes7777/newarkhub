require 'test_helper'

class OrganisationsControllerTest < ActionController::TestCase
  setup do
    @organisation = organisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organisation" do
    assert_difference('Organisation.count') do
      post :create, organisation: { Address1: @organisation.Address1, Address2: @organisation.Address2, AddressCounty: @organisation.AddressCounty, AddressTown: @organisation.AddressTown, Contact: @organisation.Contact, Email: @organisation.Email, OrganisationName: @organisation.OrganisationName, OtherInfo: @organisation.OtherInfo, Phone: @organisation.Phone, Postcode: @organisation.Postcode, Website: @organisation.Website }
    end

    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should show organisation" do
    get :show, id: @organisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organisation
    assert_response :success
  end

  test "should update organisation" do
    put :update, id: @organisation, organisation: { Address1: @organisation.Address1, Address2: @organisation.Address2, AddressCounty: @organisation.AddressCounty, AddressTown: @organisation.AddressTown, Contact: @organisation.Contact, Email: @organisation.Email, OrganisationName: @organisation.OrganisationName, OtherInfo: @organisation.OtherInfo, Phone: @organisation.Phone, Postcode: @organisation.Postcode, Website: @organisation.Website }
    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should destroy organisation" do
    assert_difference('Organisation.count', -1) do
      delete :destroy, id: @organisation
    end

    assert_redirected_to organisations_path
  end
end
