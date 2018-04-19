class Student

  attr_accessor :name, :grade
  attr_reader :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)}
 end

 def self.create_table

  def self.create(name:, grade:)
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end
 end

end
