
class FarmersReport < Dossier::Report
  def sql
    "SELECT        states.state as 'State', users.sur_name, users.first_name, pockets.pocket_name as 'Pocket', pocket_dats.village as 'Village', farmers.name as 'Farmer', dealers.name AS 'Dealer', positions.first_name AS 'FAFname', positions.surname as 'FASname'
    FROM            farmers INNER JOIN
    states ON farmers.state_id = states.id INNER JOIN
    pockets ON farmers.pocket_id = pockets.id INNER JOIN
    dealers ON farmers.dealer_id = dealers.id INNER JOIN
    pocket_dats ON farmers.pocket_dat_id = pocket_dats.id INNER JOIN
    positions ON farmers.position_id = positions.id INNER JOIN
    users ON farmers.user_id = users.id AND farmers.manager_id = users.manager_id"
  end
end