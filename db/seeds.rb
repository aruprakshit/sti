# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tag = Tag.create(name: '4-wheeler')

Car.create name: 'Honda', weight: 20
Van.create name: 'Ford Transit', weight: 100

Car.find_by_name('Honda').taggings.create(tag: tag)
Van.find_by_name('Ford Transit').taggings.create(tag: tag)
