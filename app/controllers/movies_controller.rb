class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end
  def show
    movie_id = params[:id]
    movie = Movie.find(params[:id])
    render json: movie
  end
end
