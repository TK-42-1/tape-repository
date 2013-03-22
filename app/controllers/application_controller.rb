class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :format_for_iphone
  
  def format_for_iphone
    if request.env["HTTP_USER_AGENT"] and request.env["HTTP_USER_AGENT"][/(Mobile\/.+Safari)/]
      request.format = :iphone
    end
  end
end
