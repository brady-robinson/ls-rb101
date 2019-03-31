# problem: take in a block of text, determine longest sentence
# and count the words in the longest sentence

# data: string, array

# alg: 
# - replace all ! and ? with .
# - split along the .
# - run a count of each value of split array
# - store the value in a hash with the index as key and size as value
# - on each iteration compare the size to the value
#   - if size bigger replace both key and value
#   - else continue
# - return the sentence corresponding to the key index

def longest_sentence(text)
  hash = {0 => 1}
  text_mod = text.gsub(/[!?]/, '.').split('.').each {|sentence| sentence.squeeze(" ")}
  
  text_mod.each_with_index do |sentence, index|
    if sentence.split.size > hash.values[0]
      hash[index] = sentence.strip.split.size
    else
      next
    end
  end

  "The longest sentence in this book is: #{text_mod[hash.keys[0]]}. It has #{hash.values[0]} words."
end

puts longest_sentence("Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.")
