class FilmFile < Sinatra::Base
  get '/films' do
    erb :films_index
  end

  get '/directors' do
    erb :directors_index
  end

  get '/directors/:id' do
    @director = Director.find(params[:id])
    erb :show
  end
end
