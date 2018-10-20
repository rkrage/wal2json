#!/usr/bin/env bash

echo "wal_level = logical" >> /var/lib/postgresql/data/postgresql.conf
echo "max_replication_slots = 4" >> /var/lib/postgresql/data/postgresql.conf
echo "max_wal_senders = 8" >> /var/lib/postgresql/data/postgresql.conf
echo "wal_keep_segments = 4" >> /var/lib/postgresql/data/postgresql.conf

echo "local replication all trust" >> /var/lib/postgresql/data/pg_hba.conf
echo "host replication all 0.0.0.0/0 trust" >> /var/lib/postgresql/data/pg_hba.conf
