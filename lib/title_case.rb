def title_case(title)
  exception_words = ["a", "the", "by", "of", "an"]
  title_array = title.split
  title_array[0].capitalize!
  title_array[1..-1].each do |word|
    if word.start_with?("mc")
      word[2] = word[2].upcase
      word[0] = word[0].upcase
    elsif !exception_words.include? word
      word.capitalize!
    end
  end
  new_title = title_array.join(" ")
  return new_title
end

# title_case("dog")
# title_case("the dog jumps often")
