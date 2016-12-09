class Timer
  def initialize
  	@seconds = 0
  end

  def seconds
  	@seconds
  end

  def seconds=(val)
  	@seconds = val
  end

  def time_string
  	out = ""
  	hrs = @seconds/3600
  	remainder = @seconds - hrs*3600
  	mins = remainder/60
  	secs = remainder - mins*60
  	out += padded(hrs) + ":"
  	out += padded(mins) + ":"
  	out += padded(secs)
  end

  def padded(val)
  	out = ""
  	if (val.to_i < 10)
  		out = "0"
  	end
  	out += val.to_s
  end
end
