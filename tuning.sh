#/bin/bash

echo "Perf tuning..."

sysctl -w fs.file-max="9999999"
sysctl -w fs.nr_open="9999999"
sysctl -w net.core.netdev_max_backlog="4096"
sysctl -w net.core.rmem_max="16777216"
sysctl -w net.core.somaxconn="65535"
sysctl -w net.core.wmem_max="16777216"
sysctl -w net.ipv4.ip_local_port_range="1025       65535"
sysctl -w net.ipv4.tcp_fin_timeout="30"
sysctl -w net.ipv4.tcp_keepalive_time="30"
sysctl -w net.ipv4.tcp_max_syn_backlog="20480"
sysctl -w net.ipv4.tcp_max_tw_buckets="400000"
sysctl -w net.ipv4.tcp_no_metrics_save="1"
sysctl -w net.ipv4.tcp_syn_retries="2"
sysctl -w net.ipv4.tcp_synack_retries="2"
sysctl -w net.ipv4.tcp_tw_recycle="1"
sysctl -w net.ipv4.tcp_tw_reuse="1"
sysctl -w vm.min_free_kbytes="65536"
sysctl -w vm.overcommit_memory="1"
ulimit -n 9999999

echo "Done!"
