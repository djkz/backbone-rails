class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    gon.rabl
  end
end
