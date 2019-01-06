def alphabetize(arr)
  # code here
  
  esp_alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  arr.sort_by do |words|
    words.chars.collect do |c|
        esp_alph.index(c)
        end
      end
end
