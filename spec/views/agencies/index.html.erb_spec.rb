require 'rails_helper'

RSpec.describe 'agencies/index', type: :view do
  before(:each) do
    assign(:agencies, [
             Agency.create!(
               name: 'Name1'
             ),
             Agency.create!(
               name: 'Name2'
             )
           ])
  end

  it 'renders a list of agencies' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name1'.to_s), count: 1
    assert_select cell_selector, text: Regexp.new('Name2'.to_s), count: 1
  end
end
