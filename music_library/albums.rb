require 'pg'
require_relative 'db/sql_runner'

class Album

  attr_accessor :title, :genre, :artist_id

  def initialize( options )
    @id = options['id'].to_i() if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end

  def save()
      sql = "INSERT INTO albums (title, genre, artist_id) VALUES ('#{@title}', '#{@genre}', #{artist_id}) RETURNING * ;"
      result = SqlRunner.run(sql)[0]['id'].to_i
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE albums SET (title, genre, artist_id) VALUES ('#{@title}', '#{@genre}', #{artist_id})"
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    db.close
    return albums.map { |album_hash| Album.new(album_hash)}
  end

  def self.delete_all()
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = #{@id};"
    result = SqlRunner.run(sql)
    album_hash = result.first
    album = Album.new(album_hash)
    return album
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    results = SqlRunner.run(sql)
    artist_data = results[0]
    artist = Artist.new( artist_data )
    return artist
  end


end