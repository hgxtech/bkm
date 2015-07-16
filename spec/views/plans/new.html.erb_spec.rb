require 'rails_helper'

RSpec.describe "plans/new", type: :view do
  before(:each) do
    assign(:plan, Plan.new(
      :user => nil,
      :notes => "MyText"
    ))
  end

  it "renders new plan form" do
    render

    assert_select "form[action=?][method=?]", plans_path, "post" do

      assert_select "input#plan_user_id[name=?]", "plan[user_id]"

      assert_select "textarea#plan_notes[name=?]", "plan[notes]"
    end
  end
end
