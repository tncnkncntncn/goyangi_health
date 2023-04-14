class CatsController < ApplicationController
  def index
    @cat = Cat.all
  end

  def new
    @cat = Cat.new
  end
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  private

  def cat_params
    params.require(:cat).permit(:image,:name,:gender,:cat_type,:castration,:cat_weight,:birth_day,:family_day,:hospital  ).merge(user_id: current_user.id)
  end
end
