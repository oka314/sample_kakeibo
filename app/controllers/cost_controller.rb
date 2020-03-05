class CostController < ApplicationController
  def index
    @costs = Cost.order(created_at: :asc)
  end

  def show
    @costs = Cost.find(params[:id])
  end

  def new
    @costs = Cost.new()
  end

  def edit
    @costs = Cost.find(params[:id])
  end

  def create
    @costs = Cost.new(params[:cost])
    if @costs.save
      redirect_to @costs, notice: "つかったお金をとうろくしたよ"
    else
      render "new"
    end
  end

  def update
    @costs = Cost.find(params[:id])
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
