  namespace :ruote do
    desc 'Run a worker thread for ruote'
    task :run_worker => :environment do
      RuoteKit.run_worker(RUOTE_STORAGE)
#      RuoteKit.run_worker(RUOTE_STORAGE,false)
#      RuoteAMQP::Receiver.new(RuoteKit.engine, :queue => 'done', :launchitems => false)
#      RuoteKit.engine.context.worker.run
    end
  end
