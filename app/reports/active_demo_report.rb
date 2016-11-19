
class ActiveDemoReport < Dossier:: Report
  def sql
    "SELECT        states.state as 'State', pre_demonstrations.demo_code as 'Demo Code', crops.crop as 'Crop', pre_demonstrations.condition as 'Condition', applications.app_date as 'Application Date', applications.follow_date as 'Follow-up Date', products.name as 'Product'
FROM            states INNER JOIN
                         applications INNER JOIN
                         pre_demonstrations ON applications.pre_demonstration_id = pre_demonstrations.id INNER JOIN
                         demonstrations ON pre_demonstrations.id = demonstrations.pre_demonstration_id INNER JOIN
                         farmers ON pre_demonstrations.farmer_id = farmers.id ON states.id = farmers.state_id INNER JOIN
                         crops ON pre_demonstrations.crop_id = crops.id INNER JOIN
                         product_applications ON applications.id = product_applications.application_id INNER JOIN
                         products ON product_applications.product_id = products.id CROSS JOIN
                         post_demonstrations"
  end
end