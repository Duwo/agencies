require 'rails_helper'

RSpec.describe "agents/edit", type: :view do
  let(:agent) {
    Agent.create!(
      name: "MyString",
      premium: false,
      seller_favorite: false,
      registered: false,
      profile_pageviews: 1,
      overall_rating: 1,
      review_count: 1,
      recommendation_count: 1,
      image: "MyString",
      url: "MyString"
    )
  }

  before(:each) do
    assign(:agent, agent)
  end

  it "renders the edit agent form" do
    render

    assert_select "form[action=?][method=?]", agent_path(agent), "post" do

      assert_select "input[name=?]", "agent[name]"

      assert_select "input[name=?]", "agent[premium]"

      assert_select "input[name=?]", "agent[seller_favorite]"

      assert_select "input[name=?]", "agent[registered]"

      assert_select "input[name=?]", "agent[profile_pageviews]"

      assert_select "input[name=?]", "agent[overall_rating]"

      assert_select "input[name=?]", "agent[review_count]"

      assert_select "input[name=?]", "agent[recommendation_count]"

      assert_select "input[name=?]", "agent[image]"

      assert_select "input[name=?]", "agent[url]"
    end
  end
end
