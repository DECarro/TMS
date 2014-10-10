class PagesController < ApplicationController
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

  def get_started
  end

  def shop
    @products = Product.all
  end

end
