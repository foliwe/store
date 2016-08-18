class CategoriesController < ApplicationController
  def new
    @cate = Category.new
    @books = Book.all
  end

  def create
  	 @cate = Category.new(cate_params)
      if @cate.save
        redirect_to root_path
    end
  end

private

def cate_params
  params.require(:category).permit(:name)
end
end


