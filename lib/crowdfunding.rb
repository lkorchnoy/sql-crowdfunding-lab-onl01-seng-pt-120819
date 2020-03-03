class Crowdfunding
 
  attr_accessor :title, :category, :funding_goal, :start_date, :end_date, :id
 
  def initialize(title, category, funding_goal, start_date, end_date, id=nil)
    @title = title
    @category = category
    @funding_goal = funding_goal
    @start_date = start_date
    @end_date = end_date
    @id = id
  end
 
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS projects (
      id INTEGER PRIMARY KEY,
       title TEXT, 
       category TEXT, 
       funding_goal INTEGER, 
       start_date INTEGER, 
       end_date INTEGER);
        
    SQL
    DB[:conn].execute(sql) 
  end
 
end