require 'rails_helper'

RSpec.describe "affected_body_parts/index", type: :view do
  before(:each) do
    assign(:affected_body_parts, [
      AffectedBodyPart.create!(),
      AffectedBodyPart.create!()
    ])
  end

  it "renders a list of affected_body_parts" do
    render
  end
end
