ansible-dgraph
=========

[![Build Status](https://travis-ci.org/ernestas-poskus/ansible-dgraph.svg?branch=master)](https://travis-ci.org/ernestas-poskus/ansible-dgraph)

Dgraph — an open source, scalable, distributed, highly available and fast graph database.

Playbook includes extensive configuration options check default/main.yml

Installation
------------

ansible-galaxy install ernestas-poskus.ansible-dgraph

Requirements
------------

Systemd

Role Variables
--------------

```yaml
---
# defaults file for ansible-dgraph

prometheus_version: '0.8.2'
prometheus_platform_architecture: 'linux-amd64'

dgraph_owner: 'dgraph'
dgraph_group: 'dgraph'

dgraph_install_dir: "/var/lib/{{ dgraph_owner }}"
dgraph_data_dir: "{{ dgraph_install_dir }}/data"

############################################################
# Auto generated
############################################################

dgraph_bindall: '0.0.0.0'
# Use 0.0.0.0 instead of localhost to bind to all addresses on local machine.
dgraph_block:
# Block profiling rate
dgraph_config:
# YAML configuration file containing dgraph settings.
dgraph_cpu:
# write cpu profile to file
dgraph_debugmode:
# enable debug mode for more debug information
dgraph_dumpsg:
# Directory to save subgraph for testing, debugging
dgraph_expand_edge: true
# Enables the expand() feature. This is very expensive for large data loads because it doubles the number of mutations going on in the system. (default true)
dgraph_export: 'export'
# Folder in which to store exports. (default "export")
dgraph_expose_trace:
# Allow trace endpoint to be accessible from remote
dgraph_gentlecommit: 0.1
# Fraction of dirty posting lists to commit every few seconds. (default 0.1)
dgraph_group_conf:
# group configuration file
dgraph_groups: '0,1'
# RAFT groups handled by this server. (default "0,1")
dgraph_grpc_port: 9080
# Port to run gRPC service on. (default 9080)
dgraph_idx: 1
# RAFT ID that this server will use to join RAFT groups. (default 1)
dgraph_mem:
# write memory profile to file
dgraph_memory_mb: -1
# Estimated memory the process can take. Actual usage would be slightly more than specified here. (default -1)
dgraph_my:
# addr:port of this server, so other Dgraph servers can talk to this.
dgraph_nomutations:
# Don't allow mutations on this server.
dgraph_p: 'p'
# Directory to store posting lists. (default "p")
dgraph_peer:
# IP_ADDRESS:PORT of any healthy peer.
dgraph_pending_proposals: 2000
# Number of pending mutation proposals. Useful for rate limiting. (default 2000)
dgraph_port: 8080
# Port to run HTTP service on. (default 8080)
dgraph_port_offset:
# Value added to all listening port numbers.
dgraph_posting_tables: 'loadtoram'
# Specifies how Badger LSM tree is stored. Options are loadtoram, memorymap and fileio; which consume most to least RAM while providing best to worst performance respectively. (default "loadtoram")
dgraph_sc: 1000
# Max number of pending entries in wal after which snapshot is taken (default 1000)
dgraph_tls__ca_certs:
# CA Certs file path.
dgraph_tls__cert:
# Certificate file path.
dgraph_tls__cert_key:
# Certificate key file path.
dgraph_tls__cert_key_passphrase:
# Certificate key passphrase.
dgraph_tls__client_auth:
# Enable TLS client authentication
dgraph_tls__max_version: 'TLS12'
# TLS max version. (default "TLS12")
dgraph_tls__min_version: 'TLS11'
# TLS min version. (default "TLS11")
dgraph_tls__on:
# Use TLS connections with clients.
dgraph_tls__use_system_ca:
# Include System CA into CA Certs.
dgraph_trace:
# The ratio of queries to trace.
dgraph_ui:
# Directory which contains assets for the user interface (default "/usr/local/share/dgraph/assets")
dgraph_w: 'w'
# Directory to store raft write-ahead logs. (default "w")
dgraph_workerport: 12345
# Port used by worker for internal communication. (default 12345)
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: all
  roles:
     - { role: ernestas-poskus.ansible-dgraph }
```

License
-------

BSD 3-Clause License

Copyright (c) 2017, Ernestas Poskus
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Author Information
------------------

Twitter: @ernestas_poskus
