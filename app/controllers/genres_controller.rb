class GenresController < ApplicationController

    def index 
        @genres = Genre.all 
    end 

    def new 
    end 

    def show 
        @genre = Genre.find(params[:id])
    end 

    def create 
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end 

    def edit 
        @genre = Genre.find(params[:id])
    end 

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end 

    private 

    def genre_params(*arg)
        params.require(:genre).permit(*arg)
    end 
end
