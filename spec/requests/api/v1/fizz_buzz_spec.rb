require 'rails_helper'

describe Api::V1::FizzBuzzController, :type => :request do


  describe "without query parameters" do

    before(:each) do

    end

    describe "GET /api/v1/fizzbuzz/list" do
      it "sends a list of 100 formatted numbers" do

        get '/api/v1/fizzbuzz/list'

        # test for the 200 status-code
        expect(response.status).to be(200)
        expect(response).to be_success

        # check to make sure the right amount of profiles are returned
        expect(JSON.parse(response.body).length).to eq(100)
      end
    end

    describe "GET /api/v1/fizzbuzz/list?maxViewingValue=1000&page=5&page_size=50" do
      it "sends a list of 50 formatted numbers if page size is set to 50" do

        get '/api/v1/fizzbuzz/list?maxViewingValue=1000&page=5&page_size=50'

        # test for the 200 status-code
        expect(response.status).to be(200)
        expect(response).to be_success

        # check to make sure the right amount of profiles are returned
        expect(JSON.parse(response.body).length).to eq(50)
      end
    end

    describe "GET /api/v1/fizzbuzz/list?maxViewingValue=10000&page=5&page_size=10000" do
      it "sends a list of 10000 formatted numbers if page size is set to 10000" do

        get '/api/v1/fizzbuzz/list?maxViewingValue=10000&page=1&page_size=10000'

        # test for the 200 status-code
        expect(response.status).to be(200)
        expect(response).to be_success

        # check to make sure the right amount of profiles are returned
        expect(JSON.parse(response.body).length).to eq(10000)
      end
    end



  end

end
