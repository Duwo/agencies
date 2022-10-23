require 'rails_helper'

RSpec.describe "agents/show", type: :view do
  before(:each) do
    assign(:agent, Agent.create!(
      name: "Name",
      premium: false,
      seller_favorite: false,
      registered: false,
      profile_pageviews: 2,
      overall_rating: 3,
      review_count: 4,
      recommendation_count: 5,
      image: "Image",
      url: "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Url/)
  end
end
