class IncomesController < ApplicationController
  def index
    @incomes = Incomes.order(created_at: :asc)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def destroy
  end

  def update
  end

  
end
