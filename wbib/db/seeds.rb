# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

topics = Topic.create(
  [
    {title: "Trump 4 Prez", description: "Industry titan Donald Trump is leading the presidential race."}
  ]
)

references = Reference.create(
  [
    {url: "https://www.donaldjtrump.com/", description: "Make America great again!", topic_id: topics[0].id}
  ]
)