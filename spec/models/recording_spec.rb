require 'rails_helper'

RSpec.describe Recording, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :affected_body_part }
    it { is_expected.to have_many(:measurements).dependent :destroy }
  end
  
  describe "validations" do
    it { is_expected.to validate_presence_of :recorded_at }
    it { is_expected.to validate_presence_of :affected_body_part_id }
  end
end
