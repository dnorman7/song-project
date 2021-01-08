class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :artist, :playlist_id
end
