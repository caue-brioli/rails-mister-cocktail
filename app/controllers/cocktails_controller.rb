class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])

  end

  def new
    @cocktail = Cocktail.new
    @cocktail.doses.build
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # @cocktail.photo = 'http://amoraseamores.com/wp-content/uploads/2017/01/best-summer-cocktails-with-alcohol-drinks-on-bar-1080x608.jpg' if @cocktail.photo.nil?
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache, :doses_attributes => [:description, :ingredient_id, :cocktail_id])
  end
end
