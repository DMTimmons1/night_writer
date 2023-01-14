class ReadFile
  def read
    handle = ARGV[0]
    File.read(handle)
  end
end