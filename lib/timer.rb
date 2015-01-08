class GameTimer
  
  def start_timer
    @start_time = Time.now
  end

  def elapsed_time
    Time.now - @start_time
  end

  def readable_time
    total_seconds = elapsed_time.to_i
    minutes = total_seconds / 60
    seconds = total_seconds % 60
    e_time = "#{minutes}:#{seconds.to_s.rjust(2, "0")}"
  end
end