class SongsController < ApplicationController
    
    def index
        @songs = Song.all
    end
    
    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        # byebug
        # @artist = Artist.create(name: params[:name])
        # @genre = Genre.create(name: params[:name])
        # @song = Song.create(name: song_params[:name], artist_id: @artist.id, genre_id: @genre.id)
        # byebug
        @song = Song.create(song_params)
        redirect_to @song
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    private

    def song_params
		params.require(:song).permit(:name, :artist, :genre)
    end    
end
