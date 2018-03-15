class ConstacsController < ApplicationController
    
    def index
        @contacts = Contact.all
        render json: @contacs, status: :ok
        
    end
end