def count_multibyte(string)
  string.split('').keep_if{|c| c.bytesize>1}.length
end
