# Anagrams 2 Generating Anagrams

##Learning Competencies

* Model a simple real-world system in Ruby code
* Method definition, arguments, and return values
* Express the looping control structure in Ruby
* Basic performance analysis
* Write tests to handle edge cases in your code

##Summary

An **anagram** is a word formed by rearranging the letters of another word, e.g., *iceman* is an anagram of *cinema*.

We're going to write a method called `anagrams_for` that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.

You should look back and possibly re-use some of the code and tests you wrote in your `is_anagram?` method.  You may or may not re-use the method itself, but at the very least you'll want the code handy for reference.

##Releases
###Release 0 : Pseudocode Implementation of `anagrams_for`

Before you start writing a single line of Ruby code, sit down and ask yourself, "Given a word and a dictionary, could I create a list of anagrams of that word by hand, tediousness aside?"

Your `anagrams_for` method will be a model of you performing this task, so the more clearly you understand how to do this task yourself the easier it will be for you to write the code.  Do you understand it well enough to teach someone else how to create an anagram list?  How do you know the other person understands how to create an anagram list?

Write pseudocode that outlines your own mental procedure in a way that's easy for a human to both understand and translate into their favorite programming language. Also write pseudocode for the tests you think you're going to need.

###Release 1 : Ruby Implementation of `anagrams_for`

Write a method called `anagrams_for` that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.  Like `is_anagram?`, the method should be *case insensitive*.  Remember, a word is always an anagram of itself.

`anagrams_for` should return an empty arrray (`[]`) if no anagrams are found in the dictionary.  You don't have to worry about the order of the returned `Array`.

#### Guidelines

 * The dictionary is just an arbitrary collection of strings. It need not contain English words, e.g., 'etlsm' is a valid word.
 * If the input word itself happens to be in the dictionary, it should be in the the returned array, too.
 * If the input word is not in the dictionary, anagrams should still be returned
 * If there are no anagrams, an empty array should be returned
 * Detecting anagrams should be case insensitive. e.g. "Cesar" is an anagram of "cares"

As usual, you'll want to write tests to ensure that your code follows the guidelines above.

##Optimize Your Learning

Consider the following:
  * Is my program doing any duplicate work?  Is there a way to remove that duplicate work?
  * Am I iterating over the dictionary multiple times or just once?
  * If I'm re-using `is_anagram?`, what happens if I call `is_anagram?(word1, word2)` and then later call `is_anagram?(word1, word100)`?  Is there any duplicate work?

##Resources

* [Anagram on Wikipedia](http://en.wikipedia.org/wiki/Anagram)
