require 'rails_helper'

RSpec.describe "plans/edit", type: :view do
  before(:each) do
    @plan = assign(:plan, Plan.create!(
      :user => nil,
      :notes => "MyText"
    ))
  end

  it "renders the edit plan form" do
    render

    assert_select "form[action=?][method=?]", plan_path(@plan), "post" do

      assert_select "input#plan_user_id[name=?]", "plan[user_id]"

      assert_select "textarea#plan_notes[name=?]", "plan[notes]"
    end
  end
end
