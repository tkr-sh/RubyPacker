origin = File.open "origin.rb"
golfed = File.open("golfed.rb", 'w')


code = origin.read
golfed_code = ""


i = 0


while i < code.length
    a = code[i].ord << 8

    if code[i+1] != nil
        b = code[i+1].ord
    end

    golfed_code += (a+b).chr(Encoding::UTF_8)
    
    i += 2
end

golfed.write "eval'#{golfed_code}'.encode('UTF-16be').b"
