require 'rails_helper'

describe UsersController do
	
	before do
		@user = User.create(first_name: "David", last_name: "Smith", email: "davidsmith@email.com")
	end

describe "GET show" do
	context "User is logged in"do
	before do
		session[:user_id]= @user.user_id
	end
	it "should load the correct user details" do
		get:show
		expect(response.status).to eq 200
		expect(assigns(:user)).to eq @user
	end
    end

    context "No user is logged in" do
    	it "should redirect to login" do
    		get:show
    		expect(response).to redirect_to(sign_up_path)
    	end
    end
end	
	
end