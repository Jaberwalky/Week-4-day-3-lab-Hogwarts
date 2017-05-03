require_relative('../db/sqlrunner.rb')

class House

  attr_reader :id
  attr_accessor :name, :logo

  def initialize(params)
    @id = params['id'].to_i
    @name = params['name']
    @logo = params['logo'] 
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ('#{name}', '#{logo}') RETURNING *;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end
  def House.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def House.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house| House.new(house)}
    return result
  end

  def House.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id}"
    result = SqlRunner.run(sql).first
    return House.new(result)
  end

end