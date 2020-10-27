Plain english explanation of this problem

So basically, we have a string A for which we use to generate another string s, where s = merge(reverse(A), shuffle(A))

                                   Notice that if we reverse s (let's call this new string s') , the resulting string will contain the exact order of the characters in the original string A . The question now is how can we extract the original characters of A from s'?

Well, that is easy to do. We already know that the length of s' is twice the length of A. So, A should contain half of each character count in the string s' .

A naive way to obtain A, therefore, is to iterate through s', adding each character to a new string A, so long the total of each character added to A does not violate the condition above.

                                     A second way which adds a bit of complexity to the problem is doing the same thing as in 1. with the following requirement: the character at position i, A[i], is the minimum/smallest out of all possible variations of A that can generate s. And this is what this question is also about.

                                     Python code here



                                   def reverseShuffleMerge(s):
                                     # Total character counts in s
                                     char_count = Counter(s)

                                     # Character counts we need in our final string
                                   string_chars = {
                                     char: int(count / 2) for char, count in char_count.items()
                                                            }

                                                            # Character counts we need in the shuffled
                                                            # version of our original string
                                                            shuffled_chars = {
                                                              char: int(count / 2) for char, count in char_count.items()
                                                                                     }

                                                                                     string = []

                                                                                     for char in reversed(s):
                                                                                       if string_chars[char] > 0:
                                                                                         # See if this character should appear before any
                                                                                         # previous ones. Basically, if this char is smaller
                                                                                         # than the previous char, and the previous char
                                                                                         # still occurs in the chars of the shuffled string,
                                                                                         # we can the safely replace the previous char
                                                                                         # with this one. That's so because we should be
                                                                                         # able to still create a valid string which contains
                                                                                         # both characters although the order will differs.
                                                                                         while string and string[-1] > char and shuffled_chars[string[-1]] > 0:
                                                                                           removed = string.pop()
                                                                                           string_chars[removed] += 1
                                                                                           shuffled_chars[removed] -= 1

                                                                                           string.append(char)
                                                                                           string_chars[char] -= 1
                                                                                           else:
                                                                                             shuffled_chars[char] -= 1

                                                                                           return ''.join(string)
