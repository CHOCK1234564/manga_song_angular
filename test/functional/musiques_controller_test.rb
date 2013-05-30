require 'test_helper'

class MusiquesControllerTest < ActionController::TestCase
  setup do
    @musique = musiques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musiques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musique" do
    assert_difference('Musique.count') do
      post :create, musique: { title: @musique.title, url: @musique.url }
    end

    assert_redirected_to musique_path(assigns(:musique))
  end

  test "should show musique" do
    get :show, id: @musique
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musique
    assert_response :success
  end

  test "should update musique" do
    put :update, id: @musique, musique: { title: @musique.title, url: @musique.url }
    assert_redirected_to musique_path(assigns(:musique))
  end

  test "should destroy musique" do
    assert_difference('Musique.count', -1) do
      delete :destroy, id: @musique
    end

    assert_redirected_to musiques_path
  end
end
