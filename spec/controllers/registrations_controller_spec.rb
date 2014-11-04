require 'spec_helper'

describe RegistrationsController do

	describe "GET create" do

	    it "should not validate users without an email address" do
	    	user = build(:user, email: "not_an_email")
	    	user.should_not be_valid
	    end

	    it "should not validate users without a password" do
	    	user = build(:user, password: '')
	    	user.should_not be_valid
	    end
	end	
end