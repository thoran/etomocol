class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def input; end
  
  def output
    respond_to do |format|
      format.json {render :json => {:valid => valid?.to_s}}
    end
  end
  
  def valid?
    params[:input] =~ /^([apqz]*[B-M]+[apqz]*)+$/ ? true : false
  end
  
end
