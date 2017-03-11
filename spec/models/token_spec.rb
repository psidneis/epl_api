require 'rails_helper'

RSpec.describe Token, type: :model do
  
  describe '.generate_api_key' do 
    it "should return a new token persisted for api key" do
      expect(Token.generate_api_key).to be_persisted
    end
  end

end
