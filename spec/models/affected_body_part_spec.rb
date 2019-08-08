require 'rails_helper'

RSpec.describe AffectedBodyPart, type: :model do
  describe "associations" do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :body_part }
    it { is_expected.to have_many(:measuring_points).dependent(:destroy) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to validate_presence_of :body_part_id }
    it do
      pending 
      throw "Validating uniquness having problems with foreign key constraints"
      # is_expected.to validate_uniqueness_of(:body_part_id).scoped_to(:user_id)
    end
  end

end
