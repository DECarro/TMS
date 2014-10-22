class PagesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def landing_page
  end

  def contact
  end

  def about
  end

  def pricing
  end

  def features
  end

  def get_started_email
    name = params['name']
    store_name = params['store_name']
    phone_number = params['phone_number']
    email = params['email_address']

    ContactMailer.get_started_email(:from => email, :subject => name + " from " + store_name + " wants to get started", :body => phone_number).deliver
    redirect_to '/get_started'
  end

  def shop
    @products = Product.all
  end

  def get_started

  end

end
