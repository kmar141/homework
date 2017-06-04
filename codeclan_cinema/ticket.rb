require_relative 'db/sql_runner'

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize ( options )
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  def save()
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES (#{@customer_id}, #{@film_id}) RETURNING id;"
    ticket = SqlRunner.run(sql).first
    @id = ticket['id'].to_i
  end

  def update()
    sql = "UPDATE tickets SET (customer_id, film_id) = (#{@customer_id}, #{@film_id});"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT customers.id, films.id FROM customers INNER JOIN tickets ON customers.id = tickets.customer_id INNER JOIN films ON films.id = tickets.film_id;"
    tickets = SqlRunner.run(sql)
    result = tickets.map{|ticket| Ticket.new(ticket)}
    return result
  end

  def delete()
    sql = "DELETE from tickets WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM tickets"
    SqlRunner.run(sql)
  end

end