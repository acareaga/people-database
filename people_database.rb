# PersonDatabase should be initialized with an array of Person objects

# people = [...]
# people_db = PeopleDatabase.new(people)

require './person'
require 'pry'

class PersonDatabase

  def initialize
    @person = Person.new
  end

  def self.add
    Person.new()
    # people_db.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")
  end
end
