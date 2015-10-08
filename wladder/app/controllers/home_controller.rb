class HomeController < ApplicationController
 load "#{Rails.root}/lib/ladder.rb"
 def index
  @start_word = dictionary.sample 
  @end_word = dictionary.sample 
 end

 def results
  @step1 = params[:step1]
  @step2 = params[:step2]
  @step3 = params[:step3]
  @step4 = params[:step4]
  @step5 = params[:step5]
  @start_word = params[:start_word]
  @end_word =  params[:end_word]

  @steps = [params[:step1]]
  @steps = [params[:step2]]
  @steps = [params[:step3]]
  @steps = [params[:step4]]
  @steps = [params[:step5]]

  @win_state = true

=begin
  @steps.each do |word1, word2|
   if edit_distance_of_one(word1,word2) == false
    @win_state = false
   end
  end 
=end
puts @step1
if edit_distance_of_one(@step1, @step2) == false
 @win_state = false
elsif edit_distance_of_one(@step3, @step4) == false
 @win_state = false
elsif edit_distance_of_one(@step4, @step5) == false
 @win_state = false
else
 @win_state = true
end

  if legal(@steps) == false
    @win_state = false
  end
 end
end
