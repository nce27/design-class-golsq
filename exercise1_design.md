# {{PROBLEM}} Method Design Recipe



## 1. Describe the Problem

 ### Problem 1
 
  As a user
  So that I can keep track of my tasks
  I want a program that I can add todo tasks to and see a list of them.

 ### Problem 2
 
  As a user
  So that I can focus on tasks to complete
  I want to mark tasks as complete and have them disappear from the list.  

## 2. Design the Method Signature

_Include the name of the class, the method, its parameters, return value, and side effects._

```ruby
class TodoList

  def initialize
    #@task = []

  end

  def add_task(task)
    #@task << task

  end

  def view_task
    return @task

  end

  def mark_task_as_complete(task)
    is_completed = false 

    @task.delete_at()

  end

end

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ['Wash the car"]
# 3
todo_list = TodoList.new 
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.list # => ["Wash the car", "Wash the dog"]

# 4

todo_list= Todolist.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.complete("Wash the car")
todo_list.list # => ["Wash the dog"]

# 5
todo_list = TodoList.new 
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.complete ("Wash the car")
todo list.list # failure no such task
# => ["wash the dog"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
