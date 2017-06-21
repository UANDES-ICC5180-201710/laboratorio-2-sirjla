require 'rails_helper'

RSpec.describe "interests/edit", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :person => "MyString",
      :course => "MyString"
    ))
  end

  it "renders the edit interest form" do
    render

    assert_select "form[action=?][method=?]", interest_path(@interest), "post" do

      assert_select "input#interest_person[name=?]", "interest[person]"

      assert_select "input#interest_course[name=?]", "interest[course]"
    end
  end
end
