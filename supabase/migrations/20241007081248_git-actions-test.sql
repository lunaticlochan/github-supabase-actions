create sequence "public"."cloud_test_id_seq";

create table "public"."cloud_test" (
    "id" integer not null default nextval('cloud_test_id_seq'::regclass),
    "name" character varying(255) not null,
    "email" character varying(255) not null,
    "phone_number" character varying(20) not null,
    "address" character varying(255) not null
);


alter sequence "public"."cloud_test_id_seq" owned by "public"."cloud_test"."id";

CREATE UNIQUE INDEX cloud_test_pkey ON public.cloud_test USING btree (id);

alter table "public"."cloud_test" add constraint "cloud_test_pkey" PRIMARY KEY using index "cloud_test_pkey";

grant delete on table "public"."cloud_test" to "anon";

grant insert on table "public"."cloud_test" to "anon";

grant references on table "public"."cloud_test" to "anon";

grant select on table "public"."cloud_test" to "anon";

grant trigger on table "public"."cloud_test" to "anon";

grant truncate on table "public"."cloud_test" to "anon";

grant update on table "public"."cloud_test" to "anon";

grant delete on table "public"."cloud_test" to "authenticated";

grant insert on table "public"."cloud_test" to "authenticated";

grant references on table "public"."cloud_test" to "authenticated";

grant select on table "public"."cloud_test" to "authenticated";

grant trigger on table "public"."cloud_test" to "authenticated";

grant truncate on table "public"."cloud_test" to "authenticated";

grant update on table "public"."cloud_test" to "authenticated";

grant delete on table "public"."cloud_test" to "service_role";

grant insert on table "public"."cloud_test" to "service_role";

grant references on table "public"."cloud_test" to "service_role";

grant select on table "public"."cloud_test" to "service_role";

grant trigger on table "public"."cloud_test" to "service_role";

grant truncate on table "public"."cloud_test" to "service_role";

grant update on table "public"."cloud_test" to "service_role";


