
class FarmersReport < Dossier::Report
  def sql
    "SELECT        farmers.stid as 'State', farmers.useridstmgr as 'State Manager', farmers.useridamgr as 'Area Manager' , farmers.useridsr as ' Sales Rep', farmers.pocketid as 'Pocket', farmers.dealerid as 'Dealer', farmers.name as 'Name', farmers.villageid as 'Village', farmcrops.acreage as 'Acreage'
FROM            farmers
INNER JOIN                         farmcrops ON farmers.id = farmcrops.farmer_id"
  end
end