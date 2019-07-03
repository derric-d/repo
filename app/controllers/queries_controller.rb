class QueriesController < ApplicationController
  def index
    @queries = Query.all
  end
  def create
    @query = query.new(query_params)
    if @query.save
      redirect_to @query
    else
      render :new
    end
  end
  def new
    @query = Query.new
  end

  private

  def query_params
    params.require(:cocktail).permit(:name)
  end
end
