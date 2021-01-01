# A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].
def isBalanced(string)
  pairs = { '{' => '}', '[' => ']', '(' => ')' }

  stack = []
  string.chars do |bracket|
    if expectation = pairs[bracket]
      stack << expectation
      p stack
    else
      p '....'
      p bracket
      pp = stack.pop
      p pp
      p '.......'
      return "NO" unless pp == bracket
    end
  end
  stack.empty? ? 'YES' : 'NO'
end
p isBalanced('{[()]}')
p isBalanced('{{[[(())]]}}')