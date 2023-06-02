with base as (

    select *
    from dbt_artifacts_ci_tests.dbt_artifacts_test_commit__adf735861224874ff84ce59e5c4ae287b7856413.stg_dbt__seeds

),

seeds as (

    select
        seed_execution_id,
        command_invocation_id,
        node_id,
        run_started_at,
        database,
        schema,
        name,
        package_name,
        path,
        checksum,
        meta,
        alias
    from base

)

select * from seeds