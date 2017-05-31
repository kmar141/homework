require 'pry-byebug'
require_relative 'artists'
require_relative 'albums'

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({
  'name' => 'Knxledge'
  })

artist2 = Artist.new({
  'name' => 'Ahwlee'
  })

artist1.save
artist2.save

album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Ovrstnd',
  'genre' => 'hip-hop'
  })

album2 = Album.new({
  'artist_id' => artist2.id,
  'title' => '1991',
  'genre' => 'beats'
  })

album1.save
album2.save

binding.pry
nil
