def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# p rolling_buffer1([1],2,2)
# p rolling_buffer1([1,2], 2, 3)

# p rolling_buffer2([1], 2, 2)
# p rolling_buffer2([1,2], 2, 3)

# I do not think there is a difference --> WRONG

# correct answer:
# rolling_buffer1 modifies the caller ( << is a destructive method)
# buffer will have its value changed after the call
# rolling_buffer2 does not modify the caller
# input_array will not have its value changed after the call
