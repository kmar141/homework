require_relative 'db/sql_runner'

class TicketDetails

  def initialize(options)
    @customer_name = options['customer']
    @film_name = options['film']
  end

  def self.all()
    sql = "SELECT customers.name, films.name FROM customers INNER JOIN tickets ON customer.id = tickets.customer_id INNER JOIN films ON films.id = tickets.film_id;"
    details = SqlRunner.run(sql)
    return details.map {|ticket| TicketDetails.new(ticket)}
  end

end