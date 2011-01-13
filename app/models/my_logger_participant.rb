class MyLoggerParticipant
  include Ruote::LocalParticipant

  def initialize(opts)
    @opts = opts
    @seen = []
  end

  def consume(workitem)
    Rails.logger.debug('\033[0;31m HELLO ' + workitem.fields.inspect)
    reply_to_engine(workitem)
  end

end
