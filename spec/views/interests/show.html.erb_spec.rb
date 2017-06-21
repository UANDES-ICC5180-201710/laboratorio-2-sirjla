require 'rails_helper'

RSpec.describe "interests/show", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :person => "Person",
      :course => "Course"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Person/)
    expect(rendered).to match(/Course/)
  end
end
