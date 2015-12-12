load "./job_names.rb"

#reference.  Delete after done
=begin
users = User.create(
  [
    { name: 'alice', password: 'a', firewall: 5, honeypot: 2, zeroday: 2 },    
    { name: 'bob', password: 'b', firewall: 2, honeypot: 2, active_firewall: 5, active_honeypot: 3 },    
    { name: 'charlie', password: 'c' },    
    { name: 'david', password: 'd' }    
    { name: 'david', payout: integer, reward: string, difficulty: integer, description:string, time_to_complete: integer }    
  ]
)
=end
open("job_seed.txt", 'w') {|file|
  #format textually
file.puts('jobs = Job.create(
['
  for i in 1..1000
    file.puts("name: #{job_names.sample}, payout: #{rand(0..2000)}, reward: 'Placeholder Item', difficulty: #{rand(1..12)}, description: 'Placeholder Description', time_to_complete: #{rand(30..180)} "))
  end
file.puts(']
)'
}

 job_name = job_names.sample
