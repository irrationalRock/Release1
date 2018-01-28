class PhoneNumberController < ApplicationController
    #kinda not safe but needed because of postman. might remove with rspec testing
    protect_from_forgery :except => [:file] 
    
    
    def test
       @stuff = ["905-234-3423"]
       render json:  @stuff
    end
    
    def nothing
       @stuff = []
       
       render json: @stuff
    end
    
    def accept
        phone_object = TelephoneNumber.parse(params[:id], :ca)
        
        if phone_object.valid?
            render json: [phone_object.national_number(formatted: true)]
        else
            render json: []
        end
        

    end
    
    def file
        #note there is currently a bug right now where 
        #p request.body.string.is_a?(String)
        #p request.body.string.squish
        @derp = request.body.string.squish.scan(/\d{2}[\s\d-]{5,}/).flatten
        
        phone_object = TelephoneNumber.parse(@derp, :ca)
        p phone_object.valid?
        if phone_object.valid?
            render json: phone_object.national_number(formatted: true)
        else
            render json: []
        end
        
    end
    
end
