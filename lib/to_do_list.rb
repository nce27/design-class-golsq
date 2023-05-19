class ErrorMssg < Exception
  def initialize(message) 
    super("ErrorMssg occured: #{message}")
  end
end

class TodoList

  def initialize
    @tasks = [] #initialized tasks as an array
  end
  
  def add(task) #method responsible for adding a task

    @tasks << task #adds a task to the tasks array

  end

  def complete(task) #method responsible for completing & removing a task
    if @tasks.include? task
      @tasks.delete(task) # deletes the task that has been passed into the complete method from the array
    else
      #fail
      raise ErrorMssg.new("No such tasks")
    end
  end

  def list

    return @tasks

  end

end
