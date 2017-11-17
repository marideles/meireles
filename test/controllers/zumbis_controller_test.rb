require 'test_helper'

class ZumbisControllerTest < ActionController::TestCase
  setup do
    @zumbi = zumbis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zumbis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zumbi" do
    assert_difference('Zumbi.count') do
      post :create, zumbi: { bio: @zumbi.bio, idade: @zumbi.idade, nome: @zumbi.nome }
    end

    assert_redirected_to zumbi_path(assigns(:zumbi))
  end

  test "should show zumbi" do
    get :show, id: @zumbi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zumbi
    assert_response :success
  end

  test "should update zumbi" do
    patch :update, id: @zumbi, zumbi: { bio: @zumbi.bio, idade: @zumbi.idade, nome: @zumbi.nome }
    assert_redirected_to zumbi_path(assigns(:zumbi))
  end

  test "should destroy zumbi" do
    assert_difference('Zumbi.count', -1) do
      delete :destroy, id: @zumbi
    end

    assert_redirected_to zumbis_path
  end
end
