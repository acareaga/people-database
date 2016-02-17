# PersonDatabase should be initialized with an array of Person objects

# people = [...]
# people_db = PeopleDatabase.new(people)

require './person'
require 'pry'

class PeopleDatabase

  def initialize
    @person = Person.new
  end

  def self.add(attributes)
    Person.new(attributes)
  end
end

people_db = PeopleDatabase.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")
