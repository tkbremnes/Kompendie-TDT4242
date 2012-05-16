preamble = "% Kompendie \n% TDT4242"
output = preamble
defList = "\n\n\#Definisjoner\n\n"

fileListString = %x[find . -name '*.md']
fileList = fileListString.split(/\n/)

fileList.each do |filename|
	# fname = filename.chomp!

	file = File.new(filename, "r")
	# prevLine = ""
	# prevDef = ""
	

		# if line[0] == 58
		# 	if not prevLine[0] == 58
		# 		defList += prevLine + line
		# 	else
		# 		defList += line
		# 	end
		# end
		# prevLine = line
	# end

	file = File.new(filename, "r")
	file.each do |line|
		if line[0] == '!'
			puts "bilde!"
			
			replacement = filename.split(/\//)[0]
			puts replacement
		end
	end	
	if filename != './README.md'
		file = File.new(filename, "r")
		output += "\n\n"
		output += file.read
	end
end

# output += defList

f = File.new("output.md", "w")
f.write(output)
f.close

%x[pandoc output.md --output Kompendie.pdf --toc]
%x[pandoc output.md --output Kompendie.epub]
%x[rm output.md]
