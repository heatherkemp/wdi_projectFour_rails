# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

heather = User.create({name: "Heather", email: "hkemp77@gmail.com", password: "love"})
rik = User.create({name: "Rik", email: "rik@riksansone.com", password: "bruins"})

jobOne = Job.create({company: "XYZ", title: "Junior Web Developer", url: "http://xyz.com/job", user_id: 1})

jobTwo = Job.create({company: "ABC", title: "Junior Web Developer", url: "http://abc.com/job", user_id: 1})

jobThree = Job.create({company: "Cool Developers", title: "Web Developer", url: "http://cooldevs.com/job", user_id: 2})