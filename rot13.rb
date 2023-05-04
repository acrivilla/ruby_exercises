#In this challenge, your task is to write a method which takes an array of strings
#(containing secret enemy message bits!) and decodes its elements using ROT13 cipher system;
#returning an array containing the final messages.

#For example, this is how ROT13 algorithm works,
#
#Original text:
#
#Why did the chicken cross the road?
#Gb trg gb gur bgure fvqr!
#
#Output:
#Jul qvq gur puvpxra pebff gur ebnq?
#To get to the other side!
#_____________________________________________________________________________________________


def rot13(secret_messages)
  input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'

  encoding = secret_messages.to_s.chars.map do |letter|
    if input.match(letter)
      output[input.match(letter).begin(0)]
    else
      letter
    end
  rescue
    letter
  end

  encoding.join
end

secret_messages = 'Why did the chicken cross the road?
Gb trg gb gur bgure fvqr!'

p rot13(secret_messages)