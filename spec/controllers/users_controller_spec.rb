require 'spec_helper'

describe UsersController do
	
	before do
		@user = build(:user)

		describe "GET show" do
			context "User is logged in" do
				before do
					sign_in @user
				end
				it "should load the correct user details" do
					get:show, id:@user.id
					expect(response.status).to eq 200
					expect(assigns(:user)).to eq @user
				end
    		end

    		context "No user is logged in" do
		    	it "should redirect to login" do
		    		get:show, id:@user.id
		    		expect(response).to redirect_to(new_user_session_path)
		    	end
    		end
    	end
    end
end


	
