class IncomesController < ApplicationController
  def index
    @incomes = Income.order(created_at: :asc)
  end

  def show
    @income = Income.find(params[:id])
  end

  def new
    @income = Income.new()
  end

  def edit
    @income = Income.find(params[:id])
  end

  def create
    @income = Income.new(@params[:income])
    if @income.save
      redirect_to @income, notice: "おしごとを作ったよ！"
    else
      render "new"
    end
  end
  
  def update
    @income = Income.find(params[:id])
    @income.assign
  end
  
  def destroy
  end
  
end
