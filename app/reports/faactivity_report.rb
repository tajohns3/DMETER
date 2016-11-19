
class FaactivityReport < Dossier::Report
  def sql
    "select date as Date,states.state,users.first_name +' '+ users.sur_name as 'Sales Representative', 
pockets.pocket_name as 'Pocket', positions.first_name +' '+positions.surname as 'Field Assistant'
, fa_activities.activity as Activity  from  
fa_activities inner join states on fa_activities.state_id = states.id
inner join users on users.id= fa_activities.user_id inner join
pockets on pockets.id = fa_activities.pocket_id inner join positions on
positions.id = fa_activities.position_id "
  end
end