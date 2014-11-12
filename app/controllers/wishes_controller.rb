class WishesController < ApplicationController
  
  def index
    @wishes = Wish.all
  end
  
  def show
    @wish = Wish.find(params[:id])
  end
  
  def new
    @wish = Wish.new
  end

  def edit
    @wish = Wish.find(params[:id])
  end
  
  def create
    @wish = Wish.new(wish_params)
    if @wish.save
      redirect_to @wish, notice: 'Wish was successfully created.'
    else
      render :new
    end
  end
  
  def update
    @wish = Wish.find(params[:id])
    if @wish.update(wish_params)
      redirect_to @wish, notice: 'Wish was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy
    redirect_to wishes_url, notice: 'Wish was successfully destroyed.'
  end

  private
  
  def wish_params
    params.require(:wish).permit(:title, :description)
  end

end
