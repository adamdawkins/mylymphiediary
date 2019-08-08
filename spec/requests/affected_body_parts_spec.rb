require 'rails_helper'

RSpec.describe "AffectedBodyParts", type: :request do
  describe "GET /affected_body_parts" do
    it "works! (now write some real specs)" do
      get affected_body_parts_path
      expect(response).to have_http_status(200)
    end
  end
end
