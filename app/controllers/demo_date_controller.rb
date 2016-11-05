class DemoDateController < ApplicationController
  def populate_dates
    @populates = Position.find(params[:pre_demo_id])

    respond_to do |format|

      format.js

    end
  end
end
