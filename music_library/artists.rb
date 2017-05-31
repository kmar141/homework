require 'pg'
require_relative 'db/sql_runner'

class Artist

  attr_accessor :name, :id

  def initialize ( options )
    @id = options['id'].to_i() if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i 
  end

  def update()
    sql = "UPDATE artists SET (name) = ('#{@name}' WHERE id = #{@id};"
  end

  def self.delete_all
    sql = "DELETE FROM artists;"
    result = SqlRunner.run(sql)
  end

  def albums()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id};"
    result = SqlRunner.run(sql)
    albums = result.map { |album_hash| Album.new(album_hash)}
    return albums
  end

  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run(sql)
    return artists.map { |artist| Artist.new(artist)}
  end

end