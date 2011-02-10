class MyLoggerParticipant
  include Ruote::LocalParticipant

  def initialize(opts)
    @opts = opts
  end

  def consume(workitem)
    Rails.logger.debug('\033[0;31m HELLO ' + workitem.inspect)
    workitem.fields['log_me'] = true
    reply_to_engine(workitem)
  end

end
