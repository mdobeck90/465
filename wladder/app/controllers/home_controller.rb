class HomeController < ApplicationController
 def index
 end

 def results
  @step1 = params[:step1]
  @step2 = params[:step2]
  @step3 = params[:step3]
  @step4 = params[:step4]
  @step5 = params[:step5]

 end
end
