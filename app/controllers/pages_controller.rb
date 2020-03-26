class PagesController < ApplicationController
  before_action :get_bugs, only: [:home]

  def home
  end

  private
  def get_bugs
    @bugs = Bug.all
  end
end
