require 'rails_helper'

RSpec.describe "agencies/new", type: :view do
  before(:each) do
    assign(:agency, Agency.new(
      name: "MyString"
    ))
  end

  it "renders new agency form" do
    render

    assert_select "form[action=?][method=?]", agencies_path, "post" do

      assert_select "input[name=?]", "agency[name]"
    end
  end
end
