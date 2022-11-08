return {
    postgres = {
      up = [[
        CREATE TABLE IF NOT EXISTS "cache_entries" (
            "revision"   bigint   NOT NULL,
            "key"        TEXT     UNIQUE NOT NULL,
            "value"      BYTEA    NULL
            );

        CREATE SEQUENCE "cache_revision";
      ]]
    },
    cassandra = {
    },
  }