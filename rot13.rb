def rot13(message)
    alphabet = 'A-Za-z'
    rot_13 = 'N-ZA-Mn-za-m'
    message.tr(alphabet, rot_13)
end