it "should not validate users without an email address" do
	user = build(:user, email: "not_an_email")
	user.should_not be_valid
end

it "should not validate users without a first name" do
	user = build(:user, first_name: "not_a_first_name")
	user.should_not be_valid
end
it "should not validate users without a last name" do
	user = build(:user, last_name: "not_a_last_name")
	user.should_not be_valid
end
it "should not validate users without a password" do
	user = build(:user, password: "not_a_password")
	user.should_not be_valid
end