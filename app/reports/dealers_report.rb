
class DealersReport < Dossier::Report
  def sql
    "SELECT        states.state as 'State', CONCAT(users.first_name, ' ', users.sur_name)  as 'State Manager', pockets.pocket_name as 'Pocket', dealers.name as 'Dealer', dealers.annturnover as 'Annual Turnover', dealers.bioturnover as 'Bio Turnover'
FROM            dealers INNER JOIN
                         states ON dealers.state_id = states.id INNER JOIN
                         users ON dealers.user_id = users.id INNER JOIN
                         pockets ON dealers.pocket_id = pockets.id AND states.id = pockets.state_id
WHERE dealers.name != 'Not Assigned'"
  end
end