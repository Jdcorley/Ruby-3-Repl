class RubyFile
  attr_accessor :file_name, :path
  
  def initialize(file_name, path)
    
    unless file_name[-1..3] == ".rb"
      @file_name = file_name + ".rb"
    else 
      @file_name = file_name
    end
    
    @self = File.new(path + @file_name, "w+")
  end

end