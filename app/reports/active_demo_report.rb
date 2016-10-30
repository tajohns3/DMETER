
class ActiveDemoReport < Dossier:: Report
  def sql
    "select name from farmers"
  end
end