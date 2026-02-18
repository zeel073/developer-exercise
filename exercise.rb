class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str.split.map do |word|
      # Separate word body and punctuation (e.g., "today?")
      match = word.match(/^([A-Za-z]+)([^A-Za-z]*)$/)

      if match
        text = match[1]
        punctuation = match[2]

        if text.length > 4
          replacement = text[0] == text[0].upcase ? "Marklar" : "marklar"
          replacement + punctuation
        else
          word
        end
      else
        word
      end
    end.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    return 0 if nth < 3

    a, b = 1, 1
    sum = 0

    (3..nth).each do
      c = a + b
      sum += c if c.even?
      a = b
      b = c
    end

    sum
  end

end
