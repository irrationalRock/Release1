require 'rails_helper'

RSpec.describe PhoneNumberController, type: :controller do

    describe "testing both get and post request:" do
        
        
      it 'sending a phone number' do
        get :accept, params:{ id: '613-555-0183' }
        json = JSON.parse(response.body)
        expect(response).to be_success
        expect(json).to eq(["(613) 555-0183"])
      end
      
      it 'sending a bad phone number' do
        get :accept, params:{ id: 'nothing' }
        json = JSON.parse(response.body)
        expect(response).to be_success
        expect(json).to eq([])
      end
      
      
      #problem with testing post file
      #it 'testing file post' do
      #  expect(PhoneNumberController).to receive(:file).with("test.txt")
      #  post :file, file: "test.txt"
        #expect(response).to be_success
      #end
      
    end

end