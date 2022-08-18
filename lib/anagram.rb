class Anagram
    attr_reader :word 
    def initialize(word)
        @word = word 
    end 

    def match(arr)
        it_matches = []
        arr.map do |indv_word|
            sort_chars = indv_word.chars.sort
            sort_word = @word.chars.sort
            if sort_word == sort_chars
                it_matches.push(indv_word)
            end
        end 
        it_matches
    end 
end
