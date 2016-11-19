
class SractivityReport < Dossier::Report
  def sql
    "Select sr_activities.date as 'Date', states.state as 'State', users.first_name + ' '+ users.sur_name as 'Sales Representative', 
sr_activities.pactivity as 'Activity' from sr_activities inner join states on states.id=sr_activities.state_id
inner join users on users.id = sr_activities.user_id"
  end
end