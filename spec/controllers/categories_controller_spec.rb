
require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new contact" do
        @contact = {name: "ministry"}
        post :create, params: {contact: @contact.as_json}
        expect(Category.count).to eq(1)
      end
    end
  end
    
    
    
    
  end