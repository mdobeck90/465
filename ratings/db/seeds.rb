# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
professors = Professor.create(
  [
    { first: 'Alex', last: 'Jones', university: 'Chico State'},
    { first: 'Jake', last: 'Schmidy', university: 'Chico State'},
    { first: 'Gwennifer', last: 'Raphael', university: 'Chico State'}
  ]
)

ratings = Rating.create(
  [
    {course: 'PHYS 201A', comment: 'Hard class without any help from the TA', rating: 4, professor_id:professors[0]},
    {course: 'PHYS 201B', comment: 'Cakewalk.  I built my first rocket at three and that told me all I need to know about Physics', 
      rating: 4, professor_id:professors[0]},
    {course: 'POLISCI 301', comment: 'Trump 4 prez', rating: 2, professor_id:professors[1]},
  ]
)
