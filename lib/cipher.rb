def caesar_cipher(string, num)
  # New array for the cipher
  cipher_array = []
  
  # Split string into array of chars
  split_string = string.split('')

  # Loop through array, check if they are upper, lower case. Leave the same if not a char
  split_string.each do |char|
    # Convert char into ascii number
    ascii_char = char.ord
    if /[[:upper:]]/.match(char)
      ascii_num = (((ascii_char - 65) + num) % 26) + 65
    elsif /[[:lower:]]/.match(char)
      ascii_num = (((ascii_char - 97) + num) % 26) + 97
    else
      ascii_num = ascii_char
    end
    # Convert back to char and push into array
    new_char = ascii_num.chr
    cipher_array.push(new_char)
  end
  # rejoin array and return
  cipher_array.join('')

end


