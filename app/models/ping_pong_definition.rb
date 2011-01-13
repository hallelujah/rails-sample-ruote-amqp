class PingPongDefinition

  def self.launch
    defi =  Ruote.process_definition(:name => 'Ping Pong') do
      ping :command => '/ping_pong/ping', :reply_queue => 'ruote_workitems', :queue => 'ping'
      log_me
      pong :command => '/ping_pong/pong', :reply_queue => 'ruote_workitems',:queue => 'pong'
    end
    RuoteKit.engine.launch(defi)
  end

end
