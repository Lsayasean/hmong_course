class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def create
    @fact = Fact.new(facts_param)
    if @fact.save 
      redirect_to facts_path
      flash[:success] = "Fact Created"
    else 
      flash[:error] = "Fact Not Created"
    end
  end

  def update
    @fact = Fact.find(params[:id])
    if @fact.update(facts_param)
      redirect_to facts_path
      flash[:success] = "Fact Updated"
    else
      flash[:error] = "Fact Not Updated"
    end
  end

  def edit
    @fact = Fact.find(params[:id])
  end

  def destroy
    @fact = Fact.find(params[:id])
    if @fact.destroy
      redirect_to root_path
      flash[:success] = "Fact Destroyed"
    else 
      flash[:error] = "Fact Not Destroyed"
    end 
  end

  def show
    @fact = Fact.find(params[:id])
  end

  private 

  def facts_param
    params.require(:fact).permit(:answer, :question)
  end
  
end
