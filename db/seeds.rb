# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

State.delete_all
State.create!(state: 'Alabama')
State.create!(state: 'Alaska')
State.create!(state: 'Arizona')

District.delete_all
District.create!(district: 'Queens')
District.create!(district: 'Bronx')
District.create!(district: 'Harlem')
District.create!(district: 'Kansas')
District.create!(district: 'San Diego')
District.create!(district: 'Miami')

Crop.delete_all
Crop.create!(crop: 'Corn')
Crop.create!(crop: 'Lettuce')
Crop.create!(crop: 'Wheat')

Taluka.delete_all
Taluka.create!(taluka: 'Austin')
Taluka.create!(taluka: 'Houston')
Taluka.create!(taluka: 'Dallas')

Village.delete_all
Village.create!(village: 'Goat')
Village.create!(village: 'Buffalo')
Village.create!(village: 'Yak')
