module DaemonKit
  class RuoteWorkitem
    class << self
      def reply_via_amqp( response )
        DaemonKit.logger.debug("Replying to engine via AMQP with #{response.inspect}")
        # If no reply_queue passed, use default reply_queue from participant registration
        ::MQ.queue( response['params']['reply_queue'] || response['params']['participant_options']['reply_queue'], :durable => true ).publish( response.to_json )

        response
      end
    end
  end
end

