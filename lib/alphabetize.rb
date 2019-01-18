require 'pry'

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

# sort_by
# creates a hash of key value pairs where each key is an integer eg. 1..5
# assigns each item to compare to a value eg. 1 => "first thing"
# compares 1 to 2 and switches depending on order etc...


def alphabetize(arr)
  arr.sort_by do |string|
    string.split("").map do |character|
      ESPERANTO_ALPHABET.index(character)
    end
  end
end
