SELECT 'CREATE DATABASE strings'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'strings')\gexec

SELECT 'CREATE DATABASE exp'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'exp')\gexec

