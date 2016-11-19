
class FarmersReport < Dossier::Report
  def sql
    "SELECT        states.state AS 'State', CONCAT(users.first_name, '', users.sur_name) AS 'State Manager', farmers.name AS 'Farmer', pocket_dats.village AS 'Village', pockets.pocket_name AS 'Pocket', 
                         dealers.name AS 'Dealer'
FROM            states INNER JOIN
                         farmers ON states.id = farmers.state_id INNER JOIN
                         dealers ON farmers.dealer_id = dealers.id INNER JOIN
                         pockets ON states.id = pockets.state_id INNER JOIN
                         pocket_dats ON pockets.id = pocket_dats.pocket_id INNER JOIN
                         users ON states.id = users.state_id "
  end
end