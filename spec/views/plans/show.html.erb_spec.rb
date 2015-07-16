require 'rails_helper'

RSpec.describe "plans/show", type: :view do
  before(:each) do
    @plan = assign(:plan, Plan.create!(
      :user => nil,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
