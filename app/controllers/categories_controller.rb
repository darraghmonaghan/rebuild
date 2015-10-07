class CategoriesController < ApplicationController
  def index
    redirect_to "/"
  end

  def show
    @category = Category.find_by({id: params[:id]})
    @performer = Performer.order(created_at: :desc).where(["category_id = #{@category.id}"])
  end
end
