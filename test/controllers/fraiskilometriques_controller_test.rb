require 'test_helper'

class FraiskilometriquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fraiskilometrique = fraiskilometriques(:one)
  end

  test "should get index" do
    get fraiskilometriques_url
    assert_response :success
  end

  test "should get new" do
    get new_fraiskilometrique_url
    assert_response :success
  end

  test "should create fraiskilometrique" do
    assert_difference('Fraiskilometrique.count') do
      post fraiskilometriques_url, params: { fraiskilometrique: { chevaux: @fraiskilometrique.chevaux, date: @fraiskilometrique.date, km: @fraiskilometrique.km, nom: @fraiskilometrique.nom, total: @fraiskilometrique.total } }
    end

    assert_redirected_to fraiskilometrique_url(Fraiskilometrique.last)
  end

  test "should show fraiskilometrique" do
    get fraiskilometrique_url(@fraiskilometrique)
    assert_response :success
  end

  test "should get edit" do
    get edit_fraiskilometrique_url(@fraiskilometrique)
    assert_response :success
  end

  test "should update fraiskilometrique" do
    patch fraiskilometrique_url(@fraiskilometrique), params: { fraiskilometrique: { chevaux: @fraiskilometrique.chevaux, date: @fraiskilometrique.date, km: @fraiskilometrique.km, nom: @fraiskilometrique.nom, total: @fraiskilometrique.total } }
    assert_redirected_to fraiskilometrique_url(@fraiskilometrique)
  end

  test "should destroy fraiskilometrique" do
    assert_difference('Fraiskilometrique.count', -1) do
      delete fraiskilometrique_url(@fraiskilometrique)
    end

    assert_redirected_to fraiskilometriques_url
  end
end
