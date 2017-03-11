require 'rails_helper'

RSpec.describe Job, type: :model do

  describe '#activate' do
    subject { create(:job) }

    it "should return a job activate" do
      subject.activate
      expect(subject.activated?).to eq(true)
    end
  end

end
