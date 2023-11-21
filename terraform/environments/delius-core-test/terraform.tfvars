vpc_id                    = "vpc-01d7a2da8f9f1dfec"
environment               = "test"
namespace                 = "delius-core"
target_group_arn          = "arn:aws:elasticloadbalancing:eu-west-2:326912278139:targetgroup/test-ldap/0f49b4b9796935f6"
service_security_group_id = "sg-084c1e0fe952966d8"
mp_subnet_prefix          = "hmpps-development"
efs_id                    = "fs-06ab053fd5f1f9bb0"
efs_access_point_id       = "fsap-0716e30b38348b32c"
s3_migration_seed_uri     = "s3://delius-core-dev-ldap-20230727141945630400000001/migration/migration/migration090623.ldif"
slapd_log_level           = "config"
ecs_task_cpu              = "8192"
ecs_task_memory           = "16384"
ecs_desired_task_count             = 1
deployment_minimum_healthy_percent = 0
deployment_maximum_percent         = 100