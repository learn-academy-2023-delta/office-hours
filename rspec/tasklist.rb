require 'date'

class Task
  attr_accessor :title, :description, :status, :due
  def initialize(status='in progress',due=Date.today + 7)
    @title = title
    @description = description
    @status = status
    @due = due
  end

  def complete
    @status = 'done'
  end

end

my_task = Task.new
# p my_task
# When initializing a new task, status is set to "in progress" and due date one week out.
#<Task:0x0000000152113778 @title=nil, @description=nil, @status="in progress", @due=#<Date: 2023-06-14 ((2460110j,0s,0n),+0s,2299161j)>>

class Tasklist
  attr_accessor :list
  def initialize
    @list = []
  end

  def add task
    @list << task
  end

  def finished list
    list.select { |task| task.status == 'done' }
  end

  def sorted list 
    list.select { |task| task.status == 'in progress' }
    .sort_by { |task| task.due }
  end

end
