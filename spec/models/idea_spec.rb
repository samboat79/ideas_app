require 'rails_helper'

RSpec.describe Idea, type: :model do
  
  
    before(:all) do
    @user = User.create(email: "yaa540@gmail.com", password: "church")
    @category = Category.create(name: "ministry")
     
  end
  
  it "is valid with no category" do
    expect(@user).to be_truthy
  end
   
  
  it "is valid" do
    idea = Idea.create(name: "check", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(@category).to be_truthy
   end
 it "empty idea and name is not valid" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: @category.id, user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it " idea is empty and content is valid" do
    idea = Idea.create(name:"check", content: "", category_id: @category.id, user_id: @user.id)
    expect(idea).to be_valid
  end

  it "empty Idea and category is not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it "empty Idea and user is not valid" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: @category_id, user_id: "")
    expect(idea).not_to be_valid
  end

  it "no Idea but content and category is not valid" do
    idea = Idea.create(name:"check", content: "", category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it "no Idea but content and user is not valid" do
    idea = Idea.create(name:"check", content: "", category_id: @category_id, user_id: "")
    expect(idea).not_to be_valid
  end

  it "no Idea with invalid category and name" do
    idea = Idea.create(name:"check", content: Faker::Name.name, category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end

  it "empty idea, with invalid name and content" do
    idea = Idea.create(name:"", content: "", category_id: @category.id, user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it "empty idea with invalid category and name" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it "empty idea with invalid name and user" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: @category.id, user_id: "")
    expect(idea).not_to be_valid
  end

  it "empty idea name, invalid category and user" do
    idea = Idea.create(name:"", content: Faker::Name.name, category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end

  it "empty idea name, invalid content and category" do
    idea = Idea.create(name:"", content: "", category_id: "", user_id: @user.id)
    expect(idea).not_to be_valid
  end

  it "empty idea name, with invalid content and user" do
    idea = Idea.create(name:"", content: "", category_id: @category_id, user_id: "")
    expect(idea).not_to be_valid
  end

  it "Invalid idea field: All fields invalid" do
    idea = Idea.create(name: "", content: "", category_id: "", user_id: "")
    expect(idea).not_to be_valid
  end

end