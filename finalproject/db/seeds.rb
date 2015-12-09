# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Time.now + 3

users = User.create(
  [
    { name: 'alice', password: 'a', firewall: 5, honeypot: 2 },    
    { name: 'bob', password: 'b' },    
    { name: 'charlie', password: 'c' },    
    { name: 'david', password: 'd' }    
  ]
)

breaches = Breach.create(
  [
    #alice is targeting bob OR bob is targeted by alice
    {user_id: 1, target_id: 2, breached: false},
    {user_id: 1, target_id: 3, breached: true},
    {user_id: 1, target_id: 2, breached: false},

    {user_id: 2, target_id: 1, breached: false},
    {user_id: 2, target_id: 4, breached: false},

    {user_id: 3, target_id: 1, breached: false},

    {user_id: 4, target_id: 1, breached: false},
    {user_id: 4, target_id: 2, breached: false}
  ]
)

operatives = Operative.create(
  [
    { user_id: 1, name: 'Smiling Gibbon', status: 'deployed', skill: 7, job_id: 1 },
    { user_id: 1, name: 'Sitting Tofu', status: 'injured', skill: 4, job_id: nil },
    { user_id: 1, name: 'Fuze', status: 'injured', skill: 4, job_id: nil },
    { user_id: 1, name: 'Black Swan', status: 'mia', skill: 3, job_id: nil },

    { user_id: 2, name: 'Daft Adder', status: 'injured', skill: 6, job_id: nil },
    { user_id: 2, name: 'Stale Hammer', status: 'deployed', skill: 2, job_id: nil },
    { user_id: 2, name: 'Orange Rocket', status: 'deployed', skill: 3, job_id: nil },
    { user_id: 2, name: 'Steel Sun', status: 'deployed', skill: 4, job_id: nil },

    { user_id: 4, name: 'Yoga', status: 'deployed', skill: 1, job_id: nil },
    { user_id: 4, name: 'Cunning Turtle', status: 'deployed', skill: 1, job_id: nil },
    { user_id: 4, name: 'Gypsy', status: 'dead', skill: 4, job_id: nil },
    { user_id: 4, name: 'Alpha', status: 'mia', skill: 8, job_id: nil }

  ]
)
