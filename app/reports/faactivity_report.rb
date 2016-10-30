
class FaactivityReport < Dossier::Report
  def sql
    "Select name from farmers"
  end
end