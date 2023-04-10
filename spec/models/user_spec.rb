require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    user = User.create!(name: "My user Name",email: "my@gmail.com", password: "newpassword") # creating a new user 'instance'
    expect(user.name).to eq("My user Name") # this is our expectation
  end
end

RSpec.describe User, type: :model do
  it "cannot have invalid email" do
    user = User.new(name: "My user Name",email: "my", password: "newpassword") # creating a new user 'instance'
    expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid) # this is our expectation
  end
end

RSpec.describe User, type: :model do
  it "cannot have short password" do
    user = User.new(name: "My user Name",email: "my@gmail.com", password: "new").should_not be_valid # creating a new user 'instance'
  end
end
