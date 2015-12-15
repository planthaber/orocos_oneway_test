
require 'rock/bundle'


Orocos::CORBA.max_message_size = 80000000

Bundles.initialize

if ARGV.size == 1
    if File.directory? ARGV[0] or File.exists? ARGV[0]
        replay = Orocos::Log::Replay.open(ARGV)
    else
        host_address = ARGV[0]
        Orocos::name_service << Orocos::CORBA::NameService.new(host_address)
        Orocos::Async.name_service << Orocos::Async::CORBA::NameService.new(host_address)
    end
else
  Orocos::Async.name_service << Orocos::Async::CORBA::NameService.new('127.0.0.1')
end

Bundles.run 'oneway_test::Task' => 'onway_recv', :output => nil do

              
    recv = Orocos.name_service.get 'onway_recv'
    recv.start
    
    
    Orocos.watch(recv)
    
end