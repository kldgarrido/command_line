

def read_file(fileName)
	begin
    contents = File.open(fileName, 'rb') { |file| file.read }
    contents
  rescue
    nil
  end
end

def read_file2(fileName)
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

