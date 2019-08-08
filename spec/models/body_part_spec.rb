require 'rails_helper'

RSpec.describe BodyPart, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:affected_body_parts).dependent(:nullify) }  
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  end
end
