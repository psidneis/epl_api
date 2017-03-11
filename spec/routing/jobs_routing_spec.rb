require "rails_helper"

RSpec.describe Api::V1::JobsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "v1/jobs").to route_to("api/v1/jobs#index")
    end

    it "routes to #create" do
      expect(post: "v1/jobs").to route_to("api/v1/jobs#create")
    end

    it "routes to #activate via PATCH" do
      expect(patch: "v1/jobs/1/activate").to route_to("api/v1/jobs#activate", job_id: "1")
    end

  end
end
