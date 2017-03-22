

def read_file(fileName)
	contents = []
	begin
	    File.readlines(fileName).each do |line|
	    	contents.push(line.delete!("\n"))
	    end
	    contents
	rescue
	   	[]
  	end
end

