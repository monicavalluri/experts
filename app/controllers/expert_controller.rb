class ExpertController < ApplicationController
  before_action :set_defaults

  def set_defaults
    @search_results ||= []    
  end

  def index
  end
  
  def search_expert
    @search_results = Expert.where("expertise like ?", "#{params[:search_text]}")
    render action: "index"
  end

  def show
    @expert = Expert.find(params[:id])
  end
end
