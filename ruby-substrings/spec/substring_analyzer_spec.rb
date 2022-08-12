require 'spec_helper'
require_relative '../lib/substring_analyzer'

RSpec.describe 'Substring analyzer method' do
    it 'Should return a hash with every word count in 1 if every word is a substring and is not repeated' do
      dictionary = ["bat", "man"]
      expect(substrings("batman", dictionary)).to eq ({ "bat" => 1, "man" => 1 } )
    end

    it 'Should return a hash with every word count if every word is a substring' do
      dictionary = ["bat", "man", "bat"]
      expect(substrings("batman", dictionary)).to eq ({ "bat" => 2, "man" => 1 } )
    end

    it 'Should return an empty hash if every word is not a substring' do
      dictionary = ["world", "hello"]
      expect(substrings("batman", dictionary)).to eq ({} )
    end

    it 'Should have the same result as the original assignment (many words)' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(substrings("below", dictionary)).to eq ({ "below" => 1, "low" => 1 } )
    end

    it 'Should handle text with many words' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq ({ "down" => 1, "go" => 1, "going" => 1,
                                                                                          "how" => 2, "howdy" => 1, "it" => 2,
                                                                                          "i" => 3, "own" => 1, "part" => 1,
                                                                                          "partner" => 1, "sit" => 1 })
    end
end