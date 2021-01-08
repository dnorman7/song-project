module Api
    module V1
        class PlaylistsController < ApplicationController
            def index
                playlists = Playlist.all

                render json: PlaylistSerializer.new(playlists).serialized_json
            end

            def show
                playlist = Playlist.find_by(slug: params[:slug])

                render json: PlaylistSerializer.new(playlist).serialized_json
            end

            def create
                playlist = Playlist.new(playlist_params)

                if playlist.save
                    render json: PlaylistSerializer.new(playlist).serialized_json
                else
                    render json: {error: playlist.errors.messages}, status: 422
                end
            end

            def update
                playlist = Playlist.find_by(slug: params[:slug])

                if playlist.update(playlist_params)
                    render json: PlaylistSerializer.new(playlist).serialized_json
                else
                    render json: {error: playlist.errors.messages}, status: 422
                end
            end

            def destroy
                playlist = Playlist.find_by(slug: params[:slug])

                if playlist.destroy
                    head :no_content
                else
                    render json: {error: playlist.errors.messages}, status: 422
                end
            end

            private

            def playlist_params
                params.require(:playlist).permit(:name, :image_url)
            end
        end
    end
end
