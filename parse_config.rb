input = <<eos
-bindall
Use 0.0.0.0 instead of localhost to bind to all addresses on local machine.
-block int
Block profiling rate
-config string
YAML configuration file containing dgraph settings.
-cpu string
write cpu profile to file
-debugmode
enable debug mode for more debug information
-dumpsg string
Directory to save subgraph for testing, debugging
-expand_edge
Enables the expand() feature. This is very expensive for large data loads because it doubles the number of mutations going on in the system. (default true)
-export string
Folder in which to store exports. (default "export")
-expose_trace
Allow trace endpoint to be accessible from remote
-gentlecommit float
Fraction of dirty posting lists to commit every few seconds. (default 0.1)
-group_conf string
group configuration file
-groups string
RAFT groups handled by this server. (default "0,1")
-grpc_port int
Port to run gRPC service on. (default 9080)
-idx uint
RAFT ID that this server will use to join RAFT groups. (default 1)
-mem string
write memory profile to file
-memory_mb float
Estimated memory the process can take. Actual usage would be slightly more than specified here. (default -1)
-my string
addr:port of this server, so other Dgraph servers can talk to this.
-nomutations
Don't allow mutations on this server.
-p string
Directory to store posting lists. (default "p")
-peer string
IP_ADDRESS:PORT of any healthy peer.
-pending_proposals int
Number of pending mutation proposals. Useful for rate limiting. (default 2000)
-port int
Port to run HTTP service on. (default 8080)
-port_offset int
Value added to all listening port numbers.
-posting_tables string
Specifies how Badger LSM tree is stored. Options are loadtoram, memorymap and fileio; which consume most to least RAM while providing best to worst performance respectively. (default "loadtoram")
-sc uint
Max number of pending entries in wal after which snapshot is taken (default 1000)
-tls.ca_certs string
CA Certs file path.
-tls.cert string
Certificate file path.
-tls.cert_key string
Certificate key file path.
-tls.cert_key_passphrase string
Certificate key passphrase.
-tls.client_auth string
Enable TLS client authentication
-tls.max_version string
TLS max version. (default "TLS12")
-tls.min_version string
TLS min version. (default "TLS11")
-tls.on
Use TLS connections with clients.
-tls.use_system_ca
Include System CA into CA Certs.
-trace float
The ratio of queries to trace.
-ui string
Directory which contains assets for the user interface (default "/usr/local/share/dgraph/assets")
-version
Prints the version of Dgraph
-w string
Directory to store raft write-ahead logs. (default "w")
-workerport int
Port used by worker for internal communication. (default 12345)
eos

PREFIX = 'dgraph'
i = 0

puts '############################################################'
puts '# Auto generated'
puts '############################################################'
puts 'dgraph_service_config:'
input.each_line do |line|
  i += 1
  line = line.chomp
  next if line.empty?
  if line.start_with?('-')
    argument = line[1..line.size-1].split[0]
    # puts %Q(  - ['#{argument}', "{{ #{PREFIX}_#{argument.gsub('.', '__').gsub('-', '_')} }}"])
    puts %Q(#{PREFIX}_#{argument.gsub('.', '__').gsub('-', '_')}:)
  else
    puts "# #{line}" if i % 2
  end
end
