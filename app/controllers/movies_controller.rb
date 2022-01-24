class MoviesController < ApplicationController
  
  def index
    movies = Movie.where(english: "t")
    render json: movies
  end
  
  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie.as_json
    else
      render json: {message: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    if movie.save
      render json: movie.as_json
    else
      render json: {message: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    render json: {message: "Movie successfully destroyed"}
  end

end

