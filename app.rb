require 'sinatra/base'

class Application < Sinatra::Base
  # GET /
  # Root path (homepage, index page)

  post '/sort-names' do
    names = params[:names]
    return "#{names.split(",").sort.join(",")}"
  end
end
  

#   get '/names' do
#     name = params[:name]
#     return "#{name}"
#   end
# end
  

  
#   post '/submit' do
#     name = params[:name]
#     message = params[:message]

#     return "Thanks #{name}, you sent this message: #{message}"
#   end
# end


  
  # GET /
  # Root path (homepage, index page)
#   get '/' do

#     return 'Hello!'
#   end

#   get '/posts' do
#     name = params[:name]
#     cohort_name = params[:cohort_name]

#     return "Hello #{name}, you are in the cohort #{cohort_name}!"
#   end

#   post '/posts' do
#     title = params[:title]

#     return "Post was created with title: #{title}"
#   end
# end



# Routes:

# GET /    -> execute some code

# GET /todos/1  -> execute some different piece of code

# POST /todos  -> execute some different code

