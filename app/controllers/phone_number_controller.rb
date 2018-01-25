class PhoneNumberController < ApplicationController
    #kinda not safe but needed because of postman. might remove with rspec testing
    protect_from_forgery :except => [:file] 
    
    #def ensure_json_request  
    #    return if request.format == :json
    #    render :nothing => true, :status => 406  
    #end 
    
    def test
       @stuff = ["905-234-3423"]
       render json:  @stuff
    end
    
    def nothing
       @stuff = []
       
       render json: @stuff
    end
    
    def accept
        if Phonelib.possible? (params[:id])
            @extract = /\d{2}[\s\d-]{5,}/.match(params[:id])
            #@extract = params[:id].scan(/\d{2}[\s\d-]{5,}/).flatten
            @test = @extract.to_a
            #@test.each do | x |
               #number_to_phone(x)
            #end
            #string.scan(/regex/).flatten 
            #render json: @extract
            render json: @test
        else
            render json: []
        end

    end
    
    def file
        #@stuff = request.raw_post
        @stuff = request.params
        #p @stuff["body"]
        if Phonelib.possible? (@stuff["body"])
            #@extract = /\d{2}[\s\d-]{5,}/.match(@stuff)
            #@test = @extract.to_a
            render json: [@stuff["body"]]
        else
            render json: []
        end
    end
    
end
