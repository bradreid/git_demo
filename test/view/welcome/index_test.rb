require_relative '../../test_helper'

module Welcome
  class IndexTest < ActionView::TestCase

    setup do
      ActionController::Base.prepend_view_path 'app/views/welcome/'
      render template: 'index'
    end

    should 'have a heading' do
      assert_select 'h3', 'Welcome'
    end
  end
end
