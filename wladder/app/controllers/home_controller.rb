class HomeController < ApplicationController
load "#{Rails.root}/lib/ladder.rb"
 def index
  @start_word = ["#{Rails.root}/lib/words4.rb", "#{Rails.root}/lib/words5.rb"]
  @start_word.sample
 end

 def results
  @step1 = params[:step1]
  @step2 = params[:step2]
  @step3 = params[:step3]
  @step4 = params[:step4]
  @step5 = params[:step5]

 end
end
