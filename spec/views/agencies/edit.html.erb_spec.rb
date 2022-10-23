require 'rails_helper'

RSpec.describe "agencies/edit", type: :view do
  let(:agency) {
    Agency.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:agency, agency)
  end

  it "renders the edit agency form" do
    render

    assert_select "form[action=?][method=?]", agency_path(agency), "post" do

      assert_select "input[name=?]", "agency[name]"
    end
  end
end
