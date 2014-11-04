class ChargesController < ApplicationController
skip_before_filter  :verify_authenticity_token, :authenticate_user!
	def new
	end

	def create
		#amount in cents
		

		customer = Stripe::Customer.create(
			:email => 'example@stripe.com',
			:card => params[:stripeToken],
			#:first_name => "FirstName",
			#:last_name => "LastName",
			#:billing_address => "BillingAddress",
			#:billing_city => "City",
			#:billing_state => "State",
			#:billing_zip => "zip",
			#:shipping_address => "BillingAddress",
			#:shipping_city => "City",
			#:shipping_state => "State",
			#:shipping_zip => "zip"


			)

		charge = Stripe::Charge.create(
			:customer => customer.id,
			:amount => params[:amount],
			:description => 'Rails Stripe customer',
			:currency => 'usd'
			)

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to charges_path
	end

end
