require 'rails_helper'

describe User do 
	context "first and last name present" do
		before { @user = User.new(first_name:"John", last_name: "Smith")}

		it "should return first and last" do
		expect(@user.full_name).to eq "John Smith"
		end
	
	end

	context "first name missing" do
		before { @user = User.new(last_name: "Smith")}

		it "should return last name only" do
			expect(@user.full_name).to eq " Smith"
		end
	end

	context "last name missing" do
		before { @user = User.new(first_name: "John")}

		it "should return first name only" do
			expect(@user.full_name).to eq "John "
		end
	end
	context "no names present" do
		before {@user = User.new()}

		it "should return nothing" do
			expect(@user.full_name).to eq " "
		end 
	end
end

