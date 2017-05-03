require_relative ('../db/sqlrunner.rb')


class Student

  attr_reader :id
  attr_accessor :first_name, :second_name, :house_id, :age

  def initialize(params)
    @id = params['id'].to_i
    @first_name = params['first_name']
    @second_name = params['second_name']
    @house_id = params['house_id'].to_i
    @age = params['age'].to_i
  end

  def save()
    sql = "INSERT INTO students
    (first_name,second_name,house_id,age)
    VALUES
    ('#{first_name}','#{second_name}',#{house_id},#{age}) RETURNING *"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
  end

  def Student.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map{|student| Student.new(student)}
    return result
  end

  def Student.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def Student.find(id)
    sql = "SELECT * FROM students WHERE id = #{id}"
    result = SqlRunner.run(sql).first
    return Student.new(result)
  end


end