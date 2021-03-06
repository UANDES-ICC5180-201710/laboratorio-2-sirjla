require 'rails_helper'

RSpec.describe "interests/index", type: :view do
  before(:each) do
    assign(:interests, [
      Interest.create!(
        :person => "Person",
        :course => "Course"
      ),
      Interest.create!(
        :person => "Person",
        :course => "Course"
      )
    ])
  end

  it "renders a list of interests" do
    render
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
  end
end
