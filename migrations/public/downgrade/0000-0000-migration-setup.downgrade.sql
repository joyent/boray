START TRANSACTION;

DROP FUNCTION IF EXISTS vnode_migration_exists(TEXT, INTEGER, INTEGER);

DROP FUNCTION IF EXISTS public_migration_exists(INTEGER, INTEGER);

DROP FUNCTION IF EXISTS execute(TEXT);

DROP TABLE public.migrations;

COMMIT;
