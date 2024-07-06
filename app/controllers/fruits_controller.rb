class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.order(created_at: :asc)
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(fruit_params)
    
    if @fruit.save
      redirect_to fruit_path(@fruit)  
    else
      render :new
    end
  end
  
  def show
    @fruit = Fruit.find(params[:id])
  end

  def edit 
    @fruit = Fruit.find(params[:id])
  end

  def update 
    @fruit = Fruit.find(params[:id])
    
    if @fruit.update(fruit_params)
      redirect_to fruit_path(@fruit)
    else
      render :edit
    end
  end

  def destroy
    @fruit = Fruit.find(params[:id])
    
    @fruit.destroy 

    redirect_to fruits_path
  end

  private 

  def fruit_params
    params.require(:fruit).permit(:name, :color)
  end
end
