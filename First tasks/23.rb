# Accepted
str = 'i love ruby'

def formatize(str, format)
  arr = str.split
  case format
  when :camel
    arr.map(&:capitalize).join
  when :underscore
    arr.map(&:downcase).join('_')
  when :css
    arr.map(&:downcase).join('-')
  else
    str
  end
end

p formatize(str, :camel)
p formatize(str, :underscore)
p formatize(str, :css)
p formatize(str, :csa)
