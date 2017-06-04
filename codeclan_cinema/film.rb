require_relative 'db/sql_runner'

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize( options )
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING *;"
    films = SqlRunner.run(sql).first
    @id = films['id'].to_i
  end

  def update()
    sql = "UPDATE films SET(title, price) = ('#{@title}, #{price}') WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM films;"
    films = SqlRunner.run(sql)
    result = films.map {|film| Film.new(film)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM films;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE from films WHERE id = #{@id};"
  end

  def customers()
    sql = "SELECT customers.* from customers INNER JOIN tickets ON customers.id = tickets.customer_id WHERE tickets.film_id = @#{id};"
    results = SqlRunner.run(sql)
    return results.map {|customer| customer['name']}
  end

end