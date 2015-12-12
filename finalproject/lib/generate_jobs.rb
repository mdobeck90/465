load "./job_names.rb"
load "./items.rb"
load "./description.rb"

#reference.  Delete after done
=begin
users = User.create(
  [
    { name: 'david', payout: integer, reward: string, difficulty: integer, description:string, time_to_complete: integer, xp: integer }    
  ]
)
=end
#open("job_seed.txt", 'w') {|file|
open("./../db/seeds.rb",'a+'){|file|
  #format textually
  file.puts('jobs = Job.create(
    [')
  for i in 1..400
    diff_rating = rand(1..12)
    xp_amt = rand(0..100) * diff_rating
    file.puts("name: '#{job_names.sample}', payout: #{rand(0..2000)}, reward: '#{items.sample}', difficulty: #{diff_rating}, description: '#{ descriptions.sample}', time_to_complete: #{rand(30..180)}, xp: #{xp_amt} },")
  end

  diff_rating = rand(1..12)
  xp_amt = rand(0..100) * diff_rating
  file.puts("name: '#{job_names.sample}', payout: #{rand(0..2000)}, reward: '#{items.sample}', difficulty: #{diff_rating}, description: '#{ descriptions.sample}', time_to_complete: #{rand(30..180)}, xp: #{xp_amt} }
]
    )")
}
