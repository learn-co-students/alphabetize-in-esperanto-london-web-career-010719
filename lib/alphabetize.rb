require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def esp_map
  esp_map = {}
  ESPERANTO_ALPHABET.chars.each_with_index do |letter, index|
    esp_map[letter] = index
  end
  esp_map
end

def alphabetize(arr)
  arr.sort do |a, b|
    index = 0
    while (a[index] == b[index])
      index += 1
    end
    esp_map[a[index]] <=> esp_map[b[index]]
  end
end
