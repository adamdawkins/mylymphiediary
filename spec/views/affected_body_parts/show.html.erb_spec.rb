require 'rails_helper'

RSpec.describe "affected_body_parts/show", type: :view do
  before(:each) do
    @affected_body_part = assign(:affected_body_part, AffectedBodyPart.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
