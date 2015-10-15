class HighScoresController<ApplicationController

 #before_action function has two arguements; :set_high_score AND the only: hash
 before_action :set_high_score, only: [:show, :edit, :update, :destroy]

 #GET /high_scores
  def index
   @high_scores = HighScore.all 
  end

 #GET /high_scores/1
 def show
  #old code that is now handled by before_action
  #@high_score = HighScore.find(params[:id])
 end

 #GET /high_scores/new
 def new
  @high_score = HighScore.new
 end  

 #POST /high_scores
 def create
  @high_score = HighScore.new(high_score_params)
  if @high_score.save
   redirect_to @high_score, notice: "High Score was successfully created."
  else
   render :new
  end
 end

 #GET /high_scores/1/edit
 def edit
  #old code.  Currently handled by before_action filter
  #@high_score = HighScore.find(params[:id])
 end

 #PATCH /high_scores/1
 def update
  #old code.  Handled by before_action filter
  #@high_score = HighScore.find(params[:id]) 
  if @high_score.update(high_score_params)
   redirect_to @high_score, notice: 'High Score was successfully updated.'
  else
   render :edit
  end
 end

 #DELETE /high_scores/1
 def destroy
  #old code.  Handled by before_action filter
  #@high_score = HighScore.find(params[:id])
  @high_score.destroy
   redirect_to high_scores_url, notice: 'High Score was destroyed successfully.'
 end

 private
  #will be executed preemptively when HighScore.find is needed
  def set_high_score
   @high_score = HighScore.find(params[:id])
  end

  #only allow authorized paramters into a high_score object
  def high_score_params
   params.require(:high_score).permit(:user, :game, :score)
  end

end
