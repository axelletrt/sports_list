# frozen_string_literal: true

require 'test_helper'

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get disciplines_index_url
    assert_response :success
  end

  test 'should get show' do
    get disciplines_show_url
    assert_response :success
  end

  test 'should get yoga' do
    get disciplines_yoga_url
    assert_response :success
  end

  test 'should get surf' do
    get disciplines_surf_url
    assert_response :success
  end

  test 'should get scuba_diving' do
    get disciplines_scuba_diving_url
    assert_response :success
  end
end
