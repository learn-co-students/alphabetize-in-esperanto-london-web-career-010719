def alphabetize(arr)
  # code here
  max = arr.max_by(&:length).size
  sorted = arr.sort_by {|word| priority_number(word,max)}
  return sorted
end


def priority_number (word,max)
  alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  order = alphabet.split(//)
  number_array = []

  word.split(//).each do |character|
    number_array << order.index(character)
  end

  (max-number_array.size).times do
    number_array << "0"
  end
  return number_array
end
