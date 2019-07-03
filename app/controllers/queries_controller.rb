class QueriesController < ApplicationController
  def index
    @queries = Query.all
  end
  def new
    @query = Query.new
  end
end
