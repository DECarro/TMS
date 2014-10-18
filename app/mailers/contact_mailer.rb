class ContactMailer < ActionMailer::Base
	default from: "danielle@tmsmerchant.com"

	def get_started_email(x)
		@body = x[:body]
		@subject = x[:subject]

		mail(:to => "sales@tmsmerchant.com", :from => x[:from], :subject => x[:subject])

	end
end