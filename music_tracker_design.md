# {{PROBLEM}} Method Design Recipe



## 1. Describe the Problem

 ### Problem 1
 
    As a user
    So that I can keep track of my music listening
    I want to add tracks I've listened to and see a list of them.


## 2. Design the Method Signature

_Include the name of the class, the method, its parameters, return value, and side effects._

```ruby

class Music
  def initialize
      @tracks = [] #empty array for tracks
  end

  def tracklist
      return @tracks #returns the array track
  end

  def add(track)
      @tracks << track #adds to the track array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# 1 - creates an empty tracklist
music_tracks = Music.new
expect(music_track.tracklist).to eq []

music_tracks.tracklist # => []

# 2 - test responsible for adding a new track to the tracklist
music_tracks = Music.new
music_tracks.add("Can't stop coding")
music_tracks.tracklist # => ["Can't stop coding"]


# 3 - test responsible for adding two new tracks to the tracklist

music_tracks = TodoList.new 
music_tracks.add("Can't stop coding")
music_tracks.add("Don't give up")
music_tracks.tracklist # => ["Can't stop coding", "Don't give up"]


# 4 - test responsible for adding more new tracks to the tracklist

music_tracks = TodoList.new 
music_tracks.add("Can't stop coding")
music_tracks.add("Don't give up")
music_tracks.add("Consistency")
music_tracks.add("Object Orienation")
music_tracks.tracklist # => ["Can't stop coding", "Don't give up", "Consistency", "Object Orienation"]

# 5 - test responsible for failing nothing is added to the tracklist
todo_list = TodoList.new 
todo_list.add("")
#todo_list.empty?()
todo_list.tracklist # => fails - no track in the string


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
