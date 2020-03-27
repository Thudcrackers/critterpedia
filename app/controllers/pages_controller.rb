class PagesController < ApplicationController
  before_action :get_months, only: [:home]

  def home
    @months = Month.all.order('id DESC')
  end

  private
  def get_months
    @months = Month.all.order('id DESC')
  end
end
