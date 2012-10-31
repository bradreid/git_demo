require_relative '../../test_helper'

module Welcome
  class IndexTest < ActionView::TestCase
    should 'have a heading' do
      assert_select 'h3', 'welcome'
    end
  end
end
