class JSONReader

  def initialize(filename)
    @json = String.new
    File.foreach(filename, "r") do |line|
        @json = @json + line
    end

    #@json.close # this seems to create an error

    #binding.pry
  end

  def to_hash
    return JSON.parse(@json)
  end

end
