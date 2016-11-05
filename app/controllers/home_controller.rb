class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @demos = Demonstration.where(demo_status: 'active')
  end
end
