load "./job_names.rb"

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
    file.puts("name: #{job_names.sample}, payout: #{rand(0..2000)}, reward: 'Placeholder Item', difficulty: #{rand(1..12)}, description: 'Placeholder Description', time_to_complete: #{rand(30..180)}, xp: #{rand(0..100)} ")
  end
  file.puts(']
    )')
}

 job_name = job_names.sample
