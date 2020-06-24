hash = {a: 'ant', b: 'bear'}
p hash.shift

# as per documentation: shift removes a key-value pair from hsh and returns it as the two-item array
# [key, value].
# * shift is a destructive method => the original array will be altered *

# answer: [:a, 'ant']