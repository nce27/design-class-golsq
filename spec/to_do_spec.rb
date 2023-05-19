require "to_do_list"

RSpec.describe TodoList do
  context "given no tasks" do 
    xit "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end
  context "given a task" do
    xit "has the task in the list" do
      todo_list = TodoList.new 
      todo_list.add("Wash the car")
      expect(todo_list.list).to eq ["Wash the car"]
    end
  end
  context "when we complete given tasks" do
    xit "has two tasks in the list" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      todo_list.add("Wash the dog")
      todo_list.complete("Wash the car")
      expect(todo_list.list).to eq ["Wash the dog"]
    end
  end

  context "when we try complete a non existent task" do
    xit "fails" do
      todo_list = TodoList.new
      todo_list.add("Wash the car")
      expect { todo_list.complete("Wash the sheep") }.to raise_error "No such tasks"
    end
  end

end