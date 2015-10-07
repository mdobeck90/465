class HomeController < ApplicationController
load "#{Rails.root}/lib/ladder.rb"
load "#{Rails.root}/lib/words4.rb"
load "#{Rails.root}/lib/words5.rb"
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
 end
end
