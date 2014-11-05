# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.find_or_create_by(:name => "music")
Category.find_or_create_by(:name => "fashion")
Category.find_or_create_by(:name => "cars")
Category.find_or_create_by(:name => "art")
