class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @demos = Demonstration.where(demo_status: 'active')
    @dealers = Dealer.where(call: false)
    @prodsample =Prodsample.all
    @fieldassistants = Position.where(form:nil )
    @farmers = Farmer.where(callverified: nil)
    @positions = Position.all

  end
end
