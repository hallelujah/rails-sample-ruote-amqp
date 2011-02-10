class PingPongDefinition

  def self.launch
    defi =  Ruote.process_definition(:name => 'Ping Pong') do
      ping :command => '/ping_pong/ping'
      log_me
      pong :command => '/ping_pong/pong'
    end
    RuoteKit.engine.launch(defi)
  end

end
