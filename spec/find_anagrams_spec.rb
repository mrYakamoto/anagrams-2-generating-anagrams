require_relative '../find_anagrams'

describe 'find_anagrams' do
  it 'returns any anagrams from the provided list' do
    possible_anagrams = ['nighthawks', 'caret', 'react', 'trace', 'otters']
    found_anagrams    = find_anagrams('crate', possible_anagrams)

    expect(found_anagrams).to match_array ['caret', 'react', 'trace']
  end
  it 'anagrams are case-insensitive' do
    possible_anagrams = ['nighThawks', 'cAreT', 'reaCt', 'tRace', 'ottErS']
    found_anagrams    = find_anagrams('CRaTE', possible_anagrams)

    expect(found_anagrams).to match_array ["cAreT", "reaCt", "tRace"]
  end
  it 'A word is an anagram of itself' do
    possible_anagrams = ['nighthawks', 'caret', 'react', 'trace', 'otters', 'crate']
    found_anagrams    = find_anagrams('crate', possible_anagrams)

    expect(found_anagrams).to match_array ['caret', 'react', 'trace', 'crate']
  end
  it 'If the list contains no anagrams of the target word, the return value is empty' do
    possible_anagrams = ['Juwana', 'Long', 'xylophone', 'Xena', 'pudgy']
    found_anagrams    = find_anagrams('crate', possible_anagrams)

    expect(found_anagrams).to match_array []
  end
  it 'Neither the target word nor the words in the list need to be real English words.' do
    possible_anagrams = ['ghstby1', '1hsgbty', 'react', 'trace', 'otters']
    found_anagrams    = find_anagrams('ybgths1', possible_anagrams)

    expect(found_anagrams).to match_array ['ghstby1', '1hsgbty']
  end
end
