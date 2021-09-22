# Make a function that takes in a STRING and an array of words = DICTIONARY
# Function makes hash which counts ocurrences of each word in str


def substrings(str, dictionary)
  ocurrences_hash = {}

  dictionary.each do |word|
    ocurrences_hash[word] = 0
  end

  str.downcase.gsub(/[^a-z0-9\s]/i, " ").split.each do |each_word|
    ocurrences_hash[each_word] += 1 if ocurrences_hash.has_key?(each_word)
  end
  ocurrences_hash
end

sentence = "Hello, how are you ? You like you"
test_array = ["hello", "how", "you"]
puts substrings(sentence, test_array)
