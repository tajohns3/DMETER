# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#List of states
Dealer.delete_all
Dealer.new(state_id: '1', name: 'Not Assigned', user_id: '1', pocket_id: '1').save(validate:false)

#List of states
Farmer.delete_all
Farmer.new(name: 'Not Assigned').save(validate:false)

#List of states
Position.delete_all
Position.new(first_name: 'Not', surname:'Assigned').save(validate:false)

#List of states
Pocket.delete_all
Pocket.new(pocket_name: 'Not Assigned', state_id: '1').save(validate: false)

#List of states
PocketDat.delete_all
PocketDat.new(taluka: 'Not Assigned', village: 'Not Assigned').save(validate: false)


