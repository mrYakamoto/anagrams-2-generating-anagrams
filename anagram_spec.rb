require_relative 'anagram'

describe 'anagrams_for' do
  let(:dictionary) {['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm', 'shazam']}

  it "should detect anagrams in a dictionary" do
    expect(anagrams_for('smelt', dictionary)).to eq(['smelt', 'melts', 'etlsm'])
  end

  it "should return the input word if it's in the dictionary" do
    raise "Test needed!"
  end

  it "should detect anagrams in a dictionary even if the input is not" do
    raise "Test needed!"
  end

  #You'll need to add more tests. Look to the "Guidelines" section for
  # inspiration of you can't think of anything.
end
