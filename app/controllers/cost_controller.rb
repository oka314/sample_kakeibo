class CostController < ApplicationController
  def index
    @costs = Costs.order(created_at: :asc)
  end

  def show
    @costs = Costs.find(params[:id])
  end

  def new
    @costs = Costs.new()
  end

  def edit
    @costs = Costs.find(params[:id])
  end

  def create
    @costs = Costs.new(params[:costs])
    if @costs.save
      redirect_to @costs, notice: "つかったお金をとうろくしたよ"
    else
      render "new"
    end
  end

  def update
    @costs = Costs.find(params[:id])
    @costs.assign_attributes(params[:costs])
    if @costs.save
      redirect_to @costs, notice: "つかったお金をとうろくしたよ"
    else
      render "new"
    end
  end


  def destroy
    @costs = Costs.find(params[:id])
    @costs.destroy
    redirect_to :costs, notice: "とうろくをけしたよ"
  end

end
