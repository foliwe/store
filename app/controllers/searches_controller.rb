class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]
 

 def new
  @search = Search.new

 end
  # GET /searches
  # GET /searches.json
  def index
    @search = Search.all
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
     @search = Search.find(params[:id])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def show
    @search = Search.find(params[:id])
  end

  # POST /searches
  # POST /searches.json
  def create
    #raise params.inspect
    @search = Search.create(search_params)
    redirect_to @search
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json


  # DELETE /searches/1
  # DELETE /searches/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:keyword, :category_id, :age_ids =>[])
    end
end
