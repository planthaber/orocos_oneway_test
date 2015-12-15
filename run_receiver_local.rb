
require 'rock/bundle'
#require 'orocos/async'

Orocos::CORBA.max_message_size = 80000000

Bundles.initialize

if ARGV.size == 1
    if File.directory? ARGV[0] or File.exists? ARGV[0]
        replay = Orocos::Log::Replay.open(ARGV)
    else
        host_address = ARGV[0]
        Orocos::name_service << Orocos::CORBA::NameService.new(host_address)
    end
end

Bundles.run 'oneway_test::Task' => 'oneway_recv_local', :output => nil do

              
    recv = Orocos.name_service.get 'oneway_recv_local'
    recv.start
    
    
    Orocos.watch(recv)
    
end