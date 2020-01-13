class SongsController < ApplicationController
    def new
        @song = Song.new
      end
    
      def show
        @song = Song.find(params[:id])
      end
    
    
      def create
        song = Song.create(song_params)
        redirect_to song_path(song)
      end
    
      def show
        @song = Song.find(params[:id])

        if @song.genre_id
            genreId = @song.genre_id
            @genre = Genre.find(genreId).name
        end
        if @song.artist_id
            artistId = @song.artist_id
            @artist = Artist.find(artistId).name
        end
      end
    
      def edit
        @song = Song.find(params[:id])
      end
    
      def update
        song = Song.create(song_params)
        redirect_to song
      end
    
      private
        def song_params
          params.require(:song).permit(:name)
        end
end
