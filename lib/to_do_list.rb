class TodoList

  def initialize

    @tasks = [] #initialized tasks as an array

  end
  
  def add(task) #method responsible for adding a task

    @tasks << task #adds a task to the tasks array

  end

  def list

    return @tasks

  end

end