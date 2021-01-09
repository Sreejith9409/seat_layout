require 'rails_helper'

RSpec.describe  SeatLayoutsController, type: :controller do
  describe ".index" do
    it "opens_index_page" do
      get :index
      expect(response.content_type).to eq('text/html')
    end
  end
  describe ".construct_layout" do 
    it "should_construct_seat_layout" do
      params = {"no_of_pass"=>"20", "layout"=>{"cols"=>{"0"=>"1", "1"=>"2", "2"=>"5", "3"=>"2"}, "rows"=>{"0"=>"2", "1"=>"2", "2"=>"4", "3"=>"3"}}, "commit"=>"Submit", "id"=>"requests_form"}
      post :construct_layout, params: params, format: :js, xhr: true
      expect(response.status).to eq 200
    end
    it "should_construct_seat_layout" do
      params = {"no_of_pass"=>"20", "layout"=>{"cols"=>{"0"=>"1", "1"=>"2", "2"=>"5", "3"=>"2"}, "rows"=>{"0"=>"2", "1"=>"2", "2"=>"4", "3"=>"3"}}, "commit"=>"Submit", "id"=>"requests_form"}
      post :construct_layout, params: params, format: :js, xhr: true
      expect(response).to eq "Enter number of passengers"
    end
  end
end