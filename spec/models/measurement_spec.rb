require 'rails_helper'

RSpec.describe Measurement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :measuring_point }
    it { is_expected.to belong_to :recording }
  end
   
  describe 'validations' do
    it { is_expected.to validate_presence_of :value }
    it { is_expected.to validate_numericality_of :value }
  end
end
