1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have:
 - User would like a program that marks tasks as either complete or not.


2. Design the Class Interface:


class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end


class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end
initializer = TodoList and Todo

- done: todo 
- non-done: todo 

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

Empty list example: 
todo = TodoList.new
list_of_music_tracks #=> []

Example music track:
music = Music.new
music.extract_music_tracks("It's Beginning To Look A Lot Like Christmas - Michael Bublé")
list_of_music_tracks #=> ["It's Beginning To Look A Lot Like Christmas - Michael Bublé"]

Adding all music track entries to list:
music = Music.new
music.extract_music_tracks("It's Beginning To Look A Lot Like Christmas - Michael Bublé")
music.extract_music_tracks("Last Christmas - Wham!")
list_of_music_tracks #=> ["It's Beginning To Look A Lot Like Christmas - Michael Bublé", "Last Christmas - Wham!"]

No duplicates of music track in list:
music = Music.new
music.extract_music_tracks("Last Christmas - Wham!")
music.extract_music_tracks("Last Christmas - Wham!")
list_of_music_tracks #=> ["Last Christmas - Wham!"]


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

