require_relative '../test_helper'

class WelcomeControllerTest < ActionController::TestCase

  context '#index' do
    should 'render the index template' do
      get :index
      assert_template :index
      assert_response :ok
    end
  end
end
