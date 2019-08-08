require 'rails_helper'

RSpec.describe "affected_body_parts/edit", type: :view do
  before(:each) do
    @affected_body_part = assign(:affected_body_part, AffectedBodyPart.create!())
  end

  it "renders the edit affected_body_part form" do
    render

    assert_select "form[action=?][method=?]", affected_body_part_path(@affected_body_part), "post" do
    end
  end
end
