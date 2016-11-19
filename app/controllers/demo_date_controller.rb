class DemoDateController < ApplicationController
  def populate_dates
    @populates = State.find(params[:pre_demo_id])
    @state_manager = User.where(role: 'state_manager').where(state_id: @populates.id)

    respond_to do |format|

      format.js

    end
  end
end
