preamble = "% Kompendie \n% @kartoffelmos"
output = preamble
defList = "\n\n\#Definisjoner\n\n"

fileList = %x[find . -name '*.md']

fileList.each do |filename|
	fname = filename.chomp!

	file = File.new(fname, "r")
	prevLine = ""
	prevDef = ""
	file.each do |line|
		if line[0] == 58
			if not prevLine[0] == 58
				defList += prevLine + line
			else
				defList += line
			end
		end
		prevLine = line
	end

	file = File.new(fname, "r")
	output += "\n\n"
	output += file.read
end

output += defList

f = File.new("output.md", "w")
f.write(output)
f.close

%x[pandoc output.md -o Kompendie.epub]
%x[rm output.md]