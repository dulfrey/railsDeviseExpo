class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  rescue_from ActiveRecord::RecordNotFound, with => record_not_found

    def record_not_found
        
        render plain: "record not found"
    end
end
