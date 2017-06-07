require_relative  '../db/SqlRunner'
require 'pry-byebug'

class House

  attr_accessor :name, :url
  attr_reader :id


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @url = options['url']
  end

  def save
    sql = "INSERT INTO houses (name, url) VALUES ('#{@name}', '#{@url}') RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def update(options)
    sql = "UPDATE houses SET (name, url) = (
      '#{options['name']}',
      '#{options['url']}') 
    WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql =  "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    return houses.map { |options| House.new(options)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id};"
    result = SqlRunner.run( sql )
    house = House.new( result.first )
    return house
  end

end