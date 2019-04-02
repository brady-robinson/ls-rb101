ADVERBS    = %w(brazenly quickly slowly hesitatingly).freeze
NOUNS      = %w(hat dog cat blouse tree).freeze
VERBS      = %w(go hop call stop).freeze
ADJECTIVES = %w(nice mean good bad).freeze

File.open('data.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample
                      verb: VERBS.sample
                      adjective: ADJECTIVES.sample
                      adverb: ADVERBS.sample)
  end
end
