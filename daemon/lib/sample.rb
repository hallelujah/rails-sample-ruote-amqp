# See http://gist.github.com/144861 for a test engine
class PingPong < DaemonKit::RuotePseudoParticipant

  on_exception :dammit

  on_complete do |workitem|
    workitem['success'] = true
  end

  def pong
    workitem["msg"] = 'pong'
  end

  def ping
    workitem["msg"] = 'ping'
  end

  def err
    raise ArgumentError, "Does not compute"
  end

  def dammit( exception )
    workitem["error"] = exception.message
  end

end
