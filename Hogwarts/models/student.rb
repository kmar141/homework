require_relative  '../db/SqlRunner'
require_relative  'house'
require 'pry-byebug'

class Student

  attr_accessor :first_name, :last_name, :house_name, :age
  attr_reader :id


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_name = options['house_name'].to_i
    @age = options['age']
  end

  def full_name
    return @first_name + " " + @last_name
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = #{@house_name};"
    results = SqlRunner.run(sql)
    house_data = results[0]
    selected_house = House.new(house_data)
    return selected_house
  end

  def save
    sql = "INSERT INTO students (first_name, last_name, house_name, age) VALUES ('#{@first_name}', '#{@last_name}', #{@house_name}, #{@age}) RETURNING * ;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def update(options)
    sql = "UPDATE students SET (first_name, last_name, house_name, age) = (
      '#{options['first_name']}',
      '#{options['last_name']}',
      #{options['house_name']},
      '#{options['age']}') 
    WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM students WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

  def self.all()
    sql =  "SELECT * FROM students;"
    students = SqlRunner.run(sql)
    return students.map { |options| Student.new(options)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    result = SqlRunner.run( sql )
    student = Student.new( result.first )
    return student
  end

end