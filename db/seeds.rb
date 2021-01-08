# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

playlists = Playlist.create([
{
    name: "Today's Hits",
    image_url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages-02.slacker.com%2Fe1%2Fisv1%2Fstation%2Fv00001478613a078%2F42%2Fweb%2F2%2Fcenter%2F5%2C0%2F383.jpg&f=1&nofb=1"
},
{
    name: "Homework",
    image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fstudy.com%2Fcimages%2Fmultimages%2F16%2Fstudy-1968077_1280.jpg&f=1&nofb=1"
},
{
    name: "Bangers",
    image_url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.themusicninja.com%2Fwp-content%2Fuploads%2F2010%2F11%2Felectro-house-music-dance-banger-2010.gif&f=1&nofb=1"
},
{
    name: "Synthwave",
    image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2F5E4uPA2wwjY%2Fmaxresdefault.jpg&f=1&nofb=1"
}
])

songs = Song.create([
{
    title: "Blinding Lights",
    artist: "The Weeknd",
    playlist: playlists.first
},
{
    title: "Mind Over Matter",
    artist: "Young the Giant",
    playlist: playlists.second
},
{
    title: "The Business",
    artist: "Tiesto",
    playlist: playlists.third
},
{
    title: "'85 Again",
    artist: "Robert Parker, Miss K",
    playlist: playlists.fourth
}
])