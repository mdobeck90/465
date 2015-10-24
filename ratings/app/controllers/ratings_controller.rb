#This controller does not have a show function
#because ratings are shown by professor (1 prof to many ratings)

class RatingsController < ApplicationController

  before_action :set_rating, only: [:edit, :update, :destroy]

  #GET /professors/:professor_id/ratings
  def index
    # index is now all the ratings for a single professor (not all the ratings)
    # the URL will contain the id of the current professor (:professor_id)
    # use the :professor_id parameter to find all the ratings
    @professor = Professor.find params[:professor_id]
    # the has_many function called in app/models/professor.rb created the 
    # function "ratings" which will return an array of all the ratings 
    # with the professor foreign key matching @professor
    @ratings = @professor.ratings
  end 
 
  #GET /professors/:professor_id/ratings/new
  def new
    #find the professor_id in the professors table
    @professor = Professor.find params[:professor_id] 
    #create a new rating object in the ratings table with
    #the previously found professor_id
    @rating = @professor.ratings.new
  end
  
  #GET /ratings/1/edit
  def edit
    #edit routes not nested because we know our professor's foreign key
  end

  #POST /professors/:professor_id/ratings
  def create
    #find professor_id again
    @professor = Professor.find params[:professor_id]
    #grab the users rating and put it in the corresponding
    #professor's ratings using the professor_id
    @rating = @professor.ratings.new(rating_params)

    if @rating.save
      redirect_to professor_ratings_url(@professor),  notice: "Rating was successfully created."
    else
      render :new
    end
  end

  #PATCH/PUT /ratings/1
  def update
    if @ratings.update(rating_params)
      redirect_to professor_ratings_url(@rating.professor), notice: "Rating was updated."
    end
  end

  #DELETE /ratings/1
  def destroy
    @rating.destroy
    redirect_to professor_ratings_url(@rating.professor), notice: "Rating was destroyed."
  end

  private
    def set_rating
      @rating = Rating.find(params[:id])
    end
  
    def rating_params
      params.require(:rating).permit(:course, :comment, :rating)
    end

end
