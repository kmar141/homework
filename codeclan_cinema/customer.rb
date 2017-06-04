require_relative 'db/sql_runner'

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_i
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def update()
    sql = "UPDATE customers (name, funds) = ('#{@name}', #{@funds}) WHERE id = #{@id};"
  end

  def self.all()
    sql = "SELECT * FROM customers;"
    customers = SqlRunner.run(sql)
    result = customers.map {|customer| Customer.new(customer)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM customers;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM customers WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def film()
    sql = "SELECT films.* from films INNER JOIN tickets ON films.id = tickets.film_id WHERE tickets.customer_id = #{@id};"
    results = SqlRunner.run(sql)
    return films = results.map {|film| film['title']}
  end


end
