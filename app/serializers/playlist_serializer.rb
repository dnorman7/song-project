class PlaylistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url
end
