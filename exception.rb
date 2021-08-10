class Job

  def perform(value)
    if value
      raise UnavailableError, "unavailable"
    else
      raise MismatchedChecksum, "mismatched-checksum"
    end
  rescue => e
    puts e.message
  end
end

job = Job.new

job.perform(true)
job.perform(false)
