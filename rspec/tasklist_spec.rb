require 'rspec'
require_relative 'tasklist'

# 📚 User Stories
# As a developer, I can create a Task.

describe 'Task' do
  it 'has to be real' do
    expect{ Task.new }.to_not raise_error
  end
  
  # As a developer, I can give a Task a title and retrieve it.
  it 'has a title' do
    my_task = Task.new
    my_task.title = 'laundry'
    expect(my_task.title).to be_a String
    expect(my_task.title).to eq 'laundry'
  end
  
  # As a developer, I can give a Task a description and retrieve it.
  it 'has a description' do
    my_task = Task.new
    my_task.description = 'wash clothes'
    expect(my_task.description).to be_a String
    expect(my_task.description).to eq 'wash clothes'
  end

  # As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
  it 'allows me to mark a task as done' do
    my_task = Task.new
    expect(my_task.status).to eq 'in progress'
    expect{ my_task.complete }.to change{ my_task.status }.from('in progress').to('done')
  end

  # As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
  it 'has a due date one week out' do
    my_task = Task.new
    date = Date.today + 7
    expect(my_task.due).to eq date
  end

end

describe 'Tasklist' do
  it 'has to be real' do
    expect{ Tasklist.new }.to_not raise_error
  end

  # As a developer, I can add all of my Tasks to a TaskList.
  it 'allows me to add all my tasks to a tasklist' do
    my_task = Task.new
    my_task2 = Task.new
    my_tasklist = Tasklist.new
    my_tasklist.add my_task
    my_tasklist.add my_task2
    expect(my_tasklist.list).to_not be_empty
    expect(my_tasklist.list.length).to eq 2
  end

  # As a developer with a TaskList, I can print the completed items.
  it 'allows me to list the completed items' do
    my_task = Task.new
    my_task.complete
    my_task2 = Task.new
    my_tasklist = Tasklist.new
    my_tasklist.add my_task
    my_tasklist.add my_task2
    expect(my_tasklist.finished(my_tasklist.list)).to contain_exactly(my_task)
  end

  # As a developer with a TaskList, I can list all the incomplete items in order of due date.
  it 'allows me to list the incomplete items by order of due date' do
    my_task = Task.new
    my_task2 = Task.new('in progress', Date.today)
    my_task3 = Task.new('in progress', Date.today)
    my_task4 = Task.new('in progress', Date.today + 3)
    my_task5 = Task.new('in progress', Date.today + 2)
    my_tasklist = Tasklist.new
    my_tasklist.add my_task
    my_tasklist.add my_task2
    my_tasklist.add my_task3
    my_tasklist.add my_task4
    my_tasklist.add my_task5
    expected = [my_task2, my_task3, my_task5, my_task4, my_task]
    expect(my_tasklist.sorted(my_tasklist.list)).to eq(expected)
  end
end
