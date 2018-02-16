  # Story: As a developer, I can add all of my Tasks to a TaskList.
  # Hint: A TaskList has-many Tasks
  #
  # Story: As a developer with a TaskList, I can get the completed items.
  #
  # Story: As a developer with a TaskList, I can get the incomplete items.
  #
  # Epic: Due Date
  # Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
  # Hint: Use the built-in Ruby Date class
  #
  # Story: As a developer, I can print an item with a due date with labels and values.
  # Hint: When implementing to_s, use super to call to_s on the super class.
  #
  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.
  #
  # Story: As a developer with a TaskList, I can list all the not completed items that are due today.
  #
  # Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
  #
  # Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.


class TaskList
  def initialize(name = "tasklist", date)
    @listitems = []
    @complete = false
    @name = name
    @date = date
  end

  def mark_done
    @complete = true
  end

  def name(name)
    @name = name
  end

  def date(date)
    @date = date
  end

  def newtask(newtask)
    @listitems << newtask
  end
end

todo = TaskList.new("list","2-16-2018")
p todo

todo.name("Todo")
p todo

todo.name("done")
p todo

todo.mark_done
p todo

todo.date("10-20-1985")
p todo



class Task
  def initialize(title)
    @title = title
    @complete = false
  end

  def mark_done
    @complete = true
  end


end

laundry = Task.new("laundry")
p laundry
laundry.mark_done
p laundry

todo.newtask(laundry)
p todo
