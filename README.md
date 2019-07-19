# _Anagrams and Antigrams_

#### _Independent Project for Week 8 at the coding school, Epicodus, written on July 19, 2019._

#### By _**Tae Lee**_

## Description

_You're an aspiring junior dev on the lookout for your first tech job. You've had a few interviews and even made it to the final round for a back-end position at a local startup, but the company hired someone with more experience.

The next step: meet-ups! Your first meet-up begins with a code challenge. It seems a bit silly (Anagrams and Antigrams?), but the organizers want to get a sense of everyone's skill level. Just as importantly. many of the participants are developers at companies you're interested in. This is a chance to get to know other developers and make a good impression!

One other thing: the organizers have set up a friendly competition. The coder with the best method wins a cool t-shirt. (This is a theoretical t-shirt, by the way...)_

## Setup/Installation Requirements

* _Clone this repository_
* _Open terminal and type 'git clone [git link]'_
* _Navigate to project directory using cd in terminal_
* _Open project in text editor (atom .)_
* _Type 'bundle install' in terminal to load Gems_
* _To run tests, type 'rspec' in terminal_

## Specs
| Behavior      | Input         | Output |
| ------------- |:-------------:| ------:|
| Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams." |
| It takes two words and save it as an separated string |
| It converts a string to an array of characters in each string |
| It makes a logic to compare the each characters in one word with the other word |
| It compares each characters of one string in another | "ruby", "bury" | "These words are anagrams." |
| Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat". |
| It compares each characters of one string in another | "Tea", "Eat" | "These words are anagrams." |
| Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.) |
| It compares each characters of one string in another | "cccc", "bury" | "You need to input actual words." |
| It compares each characters of one string in another | "bcdf", "bury" | "You need to input actual words." |
| It compares each characters of one string in another | "bury", "bcdf" | "You need to input actual words." |
| If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams." |
| It compares each characters of one string in another | "hi", "bye" | "These words have no letter matches and are antigrams." |
| Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters. |
| It compares each characters of one string in another | "hi?", "b ye " | "These words have no letter matches and are antigrams." |
| It compares each characters of one string in another | "ruby&", "@bury" | "These words are anagrams." |


## Known Bugs

_No known bugs_

## Support and contact details

_Please contact us if you have any issues at: taebumlee@gmail.com_

## Technologies Used

* Ruby
* RubyGems
* Atom
* GitHub

### License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Tae Lee_**
