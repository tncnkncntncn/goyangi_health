class CatsController < ApplicationController
  def index
  end

  def new
    @cat = Cat.new
  end

  private

  def cat_params
    params.require(:cat).permit(:image,:name,:gender,:type,:castration,:cat_weight,:birth_day,:family_day,:hospital  ).merge(user_id: current_user.id)
  end
end
