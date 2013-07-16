get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  # @grandma = params[:user_input]
  said = params[:user_input]
  if said == said.upcase
    oldbat = "Can't knock your hustle"
  else
    oldbat = "Speak up, kiddo!"
  end
  redirect to("/?grandma=#{oldbat}")
end
