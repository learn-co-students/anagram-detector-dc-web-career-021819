class Anagram
  attr_accessor :start_word

  def initialize(start_word)
    @start_word = start_word
  end

  def match(words)
    matches = []
    word_array = []

    words.each do | word |
      word_array << word.split("")
    end

    start_word_array = self.start_word.split("").sort

    word_array.each do | word |
      if word.sort == start_word_array
        matches << word.join
      end
    end
    matches
  end
end
