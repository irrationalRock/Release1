require 'rails_helper'

RSpec.describe PhoneNumberController, type: :controller do

    describe "testing both get and post request" do
        
        
      it 'sending a phone number' do
          get :accept, params:{ id: '903-234-2342' }
          json = JSON.parse(response.body)
          expect(response).to be_success
          #need to update testing 
          expect(json).to eq(["(903) 234 2342"])
      end
      
      it 'testing post' do
        post :file, params: { "Accept" => "plain/text", "Content-Type" => "plain/text", "body" => "902-324-2342"}
        json = JSON.parse(response.body)
        expect(response).to be_success
        expect(json).to eq(["(902) 324 2342"])
      end
      
    end

end