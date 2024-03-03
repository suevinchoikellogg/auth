class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new
    @activity["contact_id"] = params["contact_id"]
    @activity["activity_type"] = params["activity_type"]
    @activity["note"] = params["note"]
    @activity["user_id"] = session["user_id"]
      ## 이렇게 하게되면 내가 아닌 다른사람의 액티비티를 추가하는 것이 불가해짐! 
    @activity.save
    redirect_to "/contacts/#{@activity["contact_id"]}"
  end

end
