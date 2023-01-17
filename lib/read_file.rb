class ReadFile
  def read
    read_file = ARGV[0]
    File.read(read_file)
  end
end