class StoreController < ApplicationController
  include ActionView::Helpers::TextHelper
  before_action :set_counter

  def index
    @products = Product.order(:title)
  end

  private

    def set_counter
      if session[:counter].nil?
        session[:counter] = 0
      end

      session[:counter] += 1

      @counter = session[:counter]
      @counter_text = pluralize(@counter, 'access')
    end
end
