require 'rails_helper'

RSpec.describe "affected_body_parts/new", type: :view do
  before(:each) do
    assign(:affected_body_part, AffectedBodyPart.new())
  end

  it "renders new affected_body_part form" do
    render

    assert_select "form[action=?][method=?]", affected_body_parts_path, "post" do
    end
  end
end
