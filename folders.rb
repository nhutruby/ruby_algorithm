=begin
For names = ["doc", "doc", "image", "doc(1)", "doc"], the output should be fileNaming(names) = ["doc", "doc(1)", "image", "doc(1)(1)", "doc(2)"].
=end
names = ["doc", "doc", "image", "doc(1)", "doc", "doc"]
#names = ["a(1)","a(6)","a","a","a","a","a","a","a","a","a","a"]
def f(xs)
  c = {}
  t = ->(x, n) { "#{x}(#{n})" }

  xs.map do |x|
    n = c[x] || 0
    c[x] = n + 1
    p '############'
    p n
    p c[x]
    p c
    p x
    if n.zero?
      x
    else
      p '...fff'
      p n
      p c[t.call(x, n)]
      while c[t.call(x, n)]
        n += 1
      end
      p n
      p '...fff'
      c[t.call(x, n)] = 1
      t.call(x, n)
    end
  end
end
p f(names)