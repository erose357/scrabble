class Scrabble

  def score(word)
    return 0 if word == nil
    word_upcase = word.upcase.chars
    sum = 0
      word_upcase.each do |letter|
        sum += point_values[letter]
      end
    return sum
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, ""=>0, " "=>0
    }
  end

end
