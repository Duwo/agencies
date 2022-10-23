require 'rails_helper'

RSpec.describe 'agents/index', type: :view do
  before(:each) do
    assign(:agents, [
             Agent.create!(
               name: 'Name1',
               premium: false,
               seller_favorite: false,
               registered: false,
               profile_pageviews: 2,
               overall_rating: 3,
               review_count: 4,
               recommendation_count: 5,
               image: 'Image',
               url: 'Url'
             ),
             Agent.create!(
               name: 'Name2',
               premium: false,
               seller_favorite: false,
               registered: false,
               profile_pageviews: 2,
               overall_rating: 3,
               review_count: 4,
               recommendation_count: 5,
               image: 'Image',
               url: 'Url'
             )
           ])
  end

  it 'renders a list of agents' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name1'.to_s), count: 1
    assert_select cell_selector, text: Regexp.new('Name2'.to_s), count: 1
  end
end
