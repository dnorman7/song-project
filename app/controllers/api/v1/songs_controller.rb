module Api
    module V1
        class SongsController < ApplicationController

            def create
                song = Song.new(song_params)

                if song.save
                    render json: SongSerializer.new(song).serialized_json
                else
                    render json: { error: song.errors.messages }, status: 422
                end
            end

            def destroy
                song = Song.find(params[:id])

                if song.destroy
                    head :no_content
                else
                    render json: { error: song.errors.messages }, status: 422
                end
            end

            private

            def song_params
                params.require(:song).permit(:title, :artist, :playlist_id)
        end
    end
end