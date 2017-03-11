require 'rails_helper'

RSpec.describe "Jobs", type: :request do
  describe "GET v1/jobs" do
    before(:each) do
      @token = create(:token)
    end

    describe 'with a valid api key' do
      it "should return status 200" do
        get "/v1/jobs", headers: { "Authorization" => "Token token=#{@token.api_key}" }
        expect(response).to have_http_status(200)
      end
    end

    describe 'with a invalid api key' do
      it "should return status 401" do
        get "/v1/jobs", headers: { "Authorization" => "Token token=invalidApiKey" }
        expect(response).to have_http_status(401)
      end
    end

    describe 'without a api key' do
      it "should return status 401" do
        get "/v1/jobs"
        expect(response).to have_http_status(401)
      end
    end
  end
end
