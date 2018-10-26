require 'test_helper'

class CohortsstudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cohortsstudents_new_url
    assert_response :success
  end

  test "should get create" do
    get cohortsstudents_create_url
    assert_response :success
  end

end
