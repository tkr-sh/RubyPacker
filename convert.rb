origin = File.open "origin.rb"
golfed = File.open("golfed.rb", 'w')


code = origin.read
golfed_code = ""


i = 0


while i < code.length
    a = code[i].ord << 8

    if code[i+1]
        b = code[i+1].ord
    else
        b = 0
    end

    golfed_code += (a+b).chr(Encoding::UTF_8)
    
    i += 2
end

golfed.write "eval'#{golfed_code}'.encode('UTF-16be').b"
