require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  # POST /
  context 'POST /sort-names' do
    it 'should return "Alice,Joe,Julia,Kieran,Zoe"' do
      response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')

      expect(response.status).to eq(200)
      expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
    end
  end
end



  
  
#   context 'GET /names' do
#     it 'should return "Julia"' do
#       response = get('/names?name=Julia')

#       expect(response.status).to eq(200)
#       expect(response.body).to eq('Julia')
      
#     end
  
#     it 'should return "Mary"' do
#       response = get('/names?name=Mary')

#       expect(response.status).to eq(200)
#       expect(response.body).to eq('Mary')
      
#     end

#     it 'should return "Karim"' do
#       response = get('/names?name=Karim')

#       expect(response.status).to eq(200)
#       expect(response.body).to eq('Karim')
      
#     end
#   end
# end

