# to use this encryptor
# load the script in irb
# create a new object from the Encryptor class: "e = Encryptor.new"
# pass a word in and use the encrypt method: "e.encrypt('MyWord')"

class Encryptor
    def cipher
        {'a' => '@', 'b' => 'o', 'c' => 'p', 'd' => '*',
     'e' => 'r', 'f' => 's', 'g' => '&', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => '^', 'o' => 'b', 'p' => '|',
     'q' => 'd', 'r' => '+', 's' => '%', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
    end
    def uncipher
        { '@' => 'a',
 'o' => 'b',
'p' => 'c',
'*' => 'd',
'r' => 'e',
's' => 'f',
'&' => 'g',
'u' => 'h',
'v' => 'i',
'w' => 'j',
'x' => 'k',
'y' => 'l',
'z' => 'm',
'^' => 'n',
'b' => 'o',
'|' => 'p',
'd' => 'q',
'+' => 'r',
'%' => 's',
'g' => 't',
'h' => 'u',
'i' => 'v',
'j' => 'w',
'k' => 'x',
'l' => 'y',
'm' => 'z'}
    end

    def encrypt_letter(letter)
        lowercase_letter = letter.downcase
        cipher[lowercase_letter]
    end

    def decrypt_letter(letter)
        lowercase_letter = letter.downcase
        uncipher[lowercase_letter]
    end

    def encrypt(string)
        letters = string.split("")

        results = []
        letters.each do |letter|
            encrypted_letter = encrypt_letter(letter)
            results.push(encrypted_letter)
        end
        results = results.join
    end

    def decrypt(string)
        letters = string.split("")

        results = []
        letters.each do |letter|
            decrypted_letter = decrypt_letter(letter)
            results.push(decrypted_letter)
        end
        results = results.join
    end
end