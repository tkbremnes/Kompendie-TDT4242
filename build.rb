preamble = "% Kompendie \n% TDT4242"
output = preamble
defList = "\n\n\#Definisjoner\n\n"

file = File.new('README.md', "r")
output += "\n\n" + file.read

fileListString = %x[find . -name '*.md']
fileList = fileListString.split(/\n/).sort


fileList.each do |filename|
	# fname = filename.chomp!

	file = File.new(filename, "r")
	prevLine = ""
	prevDef = ""
	
	file.each do |line|
		 if line[0] == 58
		 	if not prevLine[0] == 58
		 		defList += "**"+prevLine+"** ("+filename[2,filename.length-5]+") \n\n*\t" + line[2,line.length] +"\n\n"
		 	else
		 		defList += "*\t" + line[2,line.length] +"\n\n"
		 	end
		 end
		 prevLine = line
	end

	file = File.new(filename, "r")
	
	if filename != './README.md'
		file = File.new(filename, "r")
		output += "\n\n"
		output += file.read
	end
end

output += defList

f = File.new("output.md", "w")
f.write(output)
f.close

%x[pandoc output.md --output Kompendie.pdf --toc]
#%x[pandoc output.md --output Kompendie.tex --toc]
%x[pandoc output.md --output Kompendie.epub]
%x[rm output.md]
