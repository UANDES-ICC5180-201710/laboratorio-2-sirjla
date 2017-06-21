require 'rails_helper'

RSpec.describe "interests/new", type: :view do
  before(:each) do
    assign(:interest, Interest.new(
      :person => "MyString",
      :course => "MyString"
    ))
  end

  it "renders new interest form" do
    render

    assert_select "form[action=?][method=?]", interests_path, "post" do

      assert_select "input#interest_person[name=?]", "interest[person]"

      assert_select "input#interest_course[name=?]", "interest[course]"
    end
  end
end
