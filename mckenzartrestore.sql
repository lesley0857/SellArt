--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_user_permissions" DROP CONSTRAINT IF EXISTS "userapp_custombaseus_permission_id_b3cf12e8_fk_auth_perm";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_groups" DROP CONSTRAINT IF EXISTS "userapp_custombaseus_group_id_5e3fc934_fk_auth_grou";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_user_permissions" DROP CONSTRAINT IF EXISTS "userapp_custombaseus_custombaseuser_id_265b62b2_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_groups" DROP CONSTRAINT IF EXISTS "userapp_custombaseus_custombaseuser_id_208e9737_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT IF EXISTS "socialaccount_social_user_id_8146e70c_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT IF EXISTS "socialaccount_social_app_id_636a42d7_fk_socialacc";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT IF EXISTS "socialaccount_social_account_id_951f210e_fk_socialacc";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_p_solar_id_a87ce72c_fk_django_ce";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_p_interval_id_a8ca27da_fk_django_ce";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_p_crontab_id_d3cba168_fk_django_ce";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_p_clocked_id_47a69f82_fk_django_ce";
ALTER TABLE IF EXISTS ONLY "public"."django_admin_log" DROP CONSTRAINT IF EXISTS "django_admin_log_user_id_c564eba6_fk_userapp_custombaseuser_id";
ALTER TABLE IF EXISTS ONLY "public"."django_admin_log" DROP CONSTRAINT IF EXISTS "django_admin_log_content_type_id_c4bce8eb_fk_django_co";
ALTER TABLE IF EXISTS ONLY "public"."cart_cartmodel" DROP CONSTRAINT IF EXISTS "cart_cartmodel_user_id_8dfc308f_fk_userapp_custombaseuser_id";
ALTER TABLE IF EXISTS ONLY "public"."cart_cartmodel" DROP CONSTRAINT IF EXISTS "cart_cartmodel_product_id_1db1c0d4_fk_artapp_artproduct_id";
ALTER TABLE IF EXISTS ONLY "public"."auth_permission" DROP CONSTRAINT IF EXISTS "auth_permission_content_type_id_2f476e4b_fk_django_co";
ALTER TABLE IF EXISTS ONLY "public"."auth_group_permissions" DROP CONSTRAINT IF EXISTS "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id";
ALTER TABLE IF EXISTS ONLY "public"."auth_group_permissions" DROP CONSTRAINT IF EXISTS "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroup" DROP CONSTRAINT IF EXISTS "auction_app_auctiong_user_online_id_bfa6c861_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroupchat" DROP CONSTRAINT IF EXISTS "auction_app_auctiong_group_id_008b5e68_fk_auction_a";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroupchat" DROP CONSTRAINT IF EXISTS "auction_app_auctiong_author_id_568ab41f_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroupchat" DROP CONSTRAINT IF EXISTS "auction_app_auctiong_Artproduct_id_eed26ce3_fk_artapp_ar";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artproduct" DROP CONSTRAINT IF EXISTS "artapp_artproduct_owner_id_ee4b5574_fk_userapp_c";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artproduct" DROP CONSTRAINT IF EXISTS "artapp_artproduct_category_id_2cd86f05_fk_artapp_category_id";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artproduct" DROP CONSTRAINT IF EXISTS "artapp_artproduct_brand_id_bea7e8d9_fk_artapp_brand_id";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artpicturemodel" DROP CONSTRAINT IF EXISTS "artapp_artpicturemod_pic_name_id_217d2b05_fk_artapp_ar";
ALTER TABLE IF EXISTS ONLY "public"."account_emailconfirmation" DROP CONSTRAINT IF EXISTS "account_emailconfirm_email_address_id_5b7f8c58_fk_account_e";
ALTER TABLE IF EXISTS ONLY "public"."account_emailaddress" DROP CONSTRAINT IF EXISTS "account_emailaddress_user_id_2c513194_fk_userapp_c";
DROP INDEX IF EXISTS "public"."userapp_custombaseuser_user_permissions_permission_id_b3cf12e8";
DROP INDEX IF EXISTS "public"."userapp_custombaseuser_use_custombaseuser_id_265b62b2";
DROP INDEX IF EXISTS "public"."userapp_custombaseuser_groups_group_id_5e3fc934";
DROP INDEX IF EXISTS "public"."userapp_custombaseuser_groups_custombaseuser_id_208e9737";
DROP INDEX IF EXISTS "public"."userapp_custombaseuser_email_002bf874_like";
DROP INDEX IF EXISTS "public"."unique_verified_email";
DROP INDEX IF EXISTS "public"."unique_primary_email";
DROP INDEX IF EXISTS "public"."socialaccount_socialtoken_app_id_636a42d7";
DROP INDEX IF EXISTS "public"."socialaccount_socialtoken_account_id_951f210e";
DROP INDEX IF EXISTS "public"."socialaccount_socialaccount_user_id_8146e70c";
DROP INDEX IF EXISTS "public"."django_session_session_key_c0390e0f_like";
DROP INDEX IF EXISTS "public"."django_session_expire_date_a5c62663";
DROP INDEX IF EXISTS "public"."django_celery_results_taskresult_task_id_de0d95bf_like";
DROP INDEX IF EXISTS "public"."django_celery_results_groupresult_group_id_a085f1a9_like";
DROP INDEX IF EXISTS "public"."django_celery_results_chordcounter_group_id_1f70858c_like";
DROP INDEX IF EXISTS "public"."django_celery_beat_periodictask_solar_id_a87ce72c";
DROP INDEX IF EXISTS "public"."django_celery_beat_periodictask_name_265a36b7_like";
DROP INDEX IF EXISTS "public"."django_celery_beat_periodictask_interval_id_a8ca27da";
DROP INDEX IF EXISTS "public"."django_celery_beat_periodictask_crontab_id_d3cba168";
DROP INDEX IF EXISTS "public"."django_celery_beat_periodictask_clocked_id_47a69f82";
DROP INDEX IF EXISTS "public"."django_cele_worker_d54dd8_idx";
DROP INDEX IF EXISTS "public"."django_cele_task_na_08aec9_idx";
DROP INDEX IF EXISTS "public"."django_cele_status_9b6201_idx";
DROP INDEX IF EXISTS "public"."django_cele_date_do_f59aad_idx";
DROP INDEX IF EXISTS "public"."django_cele_date_do_caae0e_idx";
DROP INDEX IF EXISTS "public"."django_cele_date_cr_f04a50_idx";
DROP INDEX IF EXISTS "public"."django_cele_date_cr_bd6c1d_idx";
DROP INDEX IF EXISTS "public"."django_admin_log_user_id_c564eba6";
DROP INDEX IF EXISTS "public"."django_admin_log_content_type_id_c4bce8eb";
DROP INDEX IF EXISTS "public"."cart_cartmodel_user_id_8dfc308f";
DROP INDEX IF EXISTS "public"."cart_cartmodel_product_id_1db1c0d4";
DROP INDEX IF EXISTS "public"."auth_permission_content_type_id_2f476e4b";
DROP INDEX IF EXISTS "public"."auth_group_permissions_permission_id_84c5c92e";
DROP INDEX IF EXISTS "public"."auth_group_permissions_group_id_b120cbf9";
DROP INDEX IF EXISTS "public"."auth_group_name_a6ea08ec_like";
DROP INDEX IF EXISTS "public"."auction_app_auctiongroupchat_group_id_008b5e68";
DROP INDEX IF EXISTS "public"."auction_app_auctiongroupchat_author_id_568ab41f";
DROP INDEX IF EXISTS "public"."auction_app_auctiongroupchat_Artproduct_id_eed26ce3";
DROP INDEX IF EXISTS "public"."auction_app_auctiongroup_user_online_id_bfa6c861";
DROP INDEX IF EXISTS "public"."artapp_artproduct_owner_id_ee4b5574";
DROP INDEX IF EXISTS "public"."artapp_artproduct_category_id_2cd86f05";
DROP INDEX IF EXISTS "public"."artapp_artproduct_brand_id_bea7e8d9";
DROP INDEX IF EXISTS "public"."artapp_artpicturemodel_pic_name_id_217d2b05";
DROP INDEX IF EXISTS "public"."account_emailconfirmation_key_f43612bd_like";
DROP INDEX IF EXISTS "public"."account_emailconfirmation_email_address_id_5b7f8c58";
DROP INDEX IF EXISTS "public"."account_emailaddress_user_id_2c513194";
DROP INDEX IF EXISTS "public"."account_emailaddress_email_03be32b2_like";
DROP INDEX IF EXISTS "public"."account_emailaddress_email_03be32b2";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_user_permissions" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_user_permissions_pkey";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_user_permissions" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_u_custombaseuser_id_permis_cbdb251c_uniq";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_pkey";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_groups" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_groups_pkey";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser_groups" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_g_custombaseuser_id_group__243a0018_uniq";
ALTER TABLE IF EXISTS ONLY "public"."userapp_custombaseuser" DROP CONSTRAINT IF EXISTS "userapp_custombaseuser_email_key";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT IF EXISTS "socialaccount_socialtoken_pkey";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialtoken" DROP CONSTRAINT IF EXISTS "socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialapp" DROP CONSTRAINT IF EXISTS "socialaccount_socialapp_pkey";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT IF EXISTS "socialaccount_socialaccount_provider_uid_fc810c6e_uniq";
ALTER TABLE IF EXISTS ONLY "public"."socialaccount_socialaccount" DROP CONSTRAINT IF EXISTS "socialaccount_socialaccount_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_session" DROP CONSTRAINT IF EXISTS "django_session_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_migrations" DROP CONSTRAINT IF EXISTS "django_migrations_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_content_type" DROP CONSTRAINT IF EXISTS "django_content_type_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_content_type" DROP CONSTRAINT IF EXISTS "django_content_type_app_label_model_76bd3d3b_uniq";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_taskresult" DROP CONSTRAINT IF EXISTS "django_celery_results_taskresult_task_id_key";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_taskresult" DROP CONSTRAINT IF EXISTS "django_celery_results_taskresult_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_groupresult" DROP CONSTRAINT IF EXISTS "django_celery_results_groupresult_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_groupresult" DROP CONSTRAINT IF EXISTS "django_celery_results_groupresult_group_id_key";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_chordcounter" DROP CONSTRAINT IF EXISTS "django_celery_results_chordcounter_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_results_chordcounter" DROP CONSTRAINT IF EXISTS "django_celery_results_chordcounter_group_id_key";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_solarschedule" DROP CONSTRAINT IF EXISTS "django_celery_beat_solarschedule_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_solarschedule" DROP CONSTRAINT IF EXISTS "django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictasks" DROP CONSTRAINT IF EXISTS "django_celery_beat_periodictasks_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_periodictask_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_periodictask" DROP CONSTRAINT IF EXISTS "django_celery_beat_periodictask_name_key";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_intervalschedule" DROP CONSTRAINT IF EXISTS "django_celery_beat_intervalschedule_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_crontabschedule" DROP CONSTRAINT IF EXISTS "django_celery_beat_crontabschedule_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_celery_beat_clockedschedule" DROP CONSTRAINT IF EXISTS "django_celery_beat_clockedschedule_pkey";
ALTER TABLE IF EXISTS ONLY "public"."django_admin_log" DROP CONSTRAINT IF EXISTS "django_admin_log_pkey";
ALTER TABLE IF EXISTS ONLY "public"."cart_cartmodel" DROP CONSTRAINT IF EXISTS "cart_cartmodel_pkey";
ALTER TABLE IF EXISTS ONLY "public"."auth_permission" DROP CONSTRAINT IF EXISTS "auth_permission_pkey";
ALTER TABLE IF EXISTS ONLY "public"."auth_permission" DROP CONSTRAINT IF EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq";
ALTER TABLE IF EXISTS ONLY "public"."auth_group" DROP CONSTRAINT IF EXISTS "auth_group_pkey";
ALTER TABLE IF EXISTS ONLY "public"."auth_group_permissions" DROP CONSTRAINT IF EXISTS "auth_group_permissions_pkey";
ALTER TABLE IF EXISTS ONLY "public"."auth_group_permissions" DROP CONSTRAINT IF EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq";
ALTER TABLE IF EXISTS ONLY "public"."auth_group" DROP CONSTRAINT IF EXISTS "auth_group_name_key";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroupchat" DROP CONSTRAINT IF EXISTS "auction_app_auctiongroupchat_pkey";
ALTER TABLE IF EXISTS ONLY "public"."auction_app_auctiongroup" DROP CONSTRAINT IF EXISTS "auction_app_auctiongroup_pkey";
ALTER TABLE IF EXISTS ONLY "public"."artapp_category" DROP CONSTRAINT IF EXISTS "artapp_category_pkey";
ALTER TABLE IF EXISTS ONLY "public"."artapp_brand" DROP CONSTRAINT IF EXISTS "artapp_brand_pkey";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artproduct" DROP CONSTRAINT IF EXISTS "artapp_artproduct_pkey";
ALTER TABLE IF EXISTS ONLY "public"."artapp_artpicturemodel" DROP CONSTRAINT IF EXISTS "artapp_artpicturemodel_pkey";
ALTER TABLE IF EXISTS ONLY "public"."account_emailconfirmation" DROP CONSTRAINT IF EXISTS "account_emailconfirmation_pkey";
ALTER TABLE IF EXISTS ONLY "public"."account_emailconfirmation" DROP CONSTRAINT IF EXISTS "account_emailconfirmation_key_key";
ALTER TABLE IF EXISTS ONLY "public"."account_emailaddress" DROP CONSTRAINT IF EXISTS "account_emailaddress_user_id_email_987c8728_uniq";
ALTER TABLE IF EXISTS ONLY "public"."account_emailaddress" DROP CONSTRAINT IF EXISTS "account_emailaddress_pkey";
DROP TABLE IF EXISTS "public"."userapp_custombaseuser_user_permissions";
DROP TABLE IF EXISTS "public"."userapp_custombaseuser_groups";
DROP TABLE IF EXISTS "public"."userapp_custombaseuser";
DROP TABLE IF EXISTS "public"."socialaccount_socialtoken";
DROP TABLE IF EXISTS "public"."socialaccount_socialapp";
DROP TABLE IF EXISTS "public"."socialaccount_socialaccount";
DROP TABLE IF EXISTS "public"."django_session";
DROP TABLE IF EXISTS "public"."django_migrations";
DROP TABLE IF EXISTS "public"."django_content_type";
DROP TABLE IF EXISTS "public"."django_celery_results_taskresult";
DROP TABLE IF EXISTS "public"."django_celery_results_groupresult";
DROP TABLE IF EXISTS "public"."django_celery_results_chordcounter";
DROP TABLE IF EXISTS "public"."django_celery_beat_solarschedule";
DROP TABLE IF EXISTS "public"."django_celery_beat_periodictasks";
DROP TABLE IF EXISTS "public"."django_celery_beat_periodictask";
DROP TABLE IF EXISTS "public"."django_celery_beat_intervalschedule";
DROP TABLE IF EXISTS "public"."django_celery_beat_crontabschedule";
DROP TABLE IF EXISTS "public"."django_celery_beat_clockedschedule";
DROP TABLE IF EXISTS "public"."django_admin_log";
DROP TABLE IF EXISTS "public"."cart_cartmodel";
DROP TABLE IF EXISTS "public"."auth_permission";
DROP TABLE IF EXISTS "public"."auth_group_permissions";
DROP TABLE IF EXISTS "public"."auth_group";
DROP TABLE IF EXISTS "public"."auction_app_auctiongroupchat";
DROP TABLE IF EXISTS "public"."auction_app_auctiongroup";
DROP TABLE IF EXISTS "public"."artapp_category";
DROP TABLE IF EXISTS "public"."artapp_brand";
DROP TABLE IF EXISTS "public"."artapp_artproduct";
DROP TABLE IF EXISTS "public"."artapp_artpicturemodel";
DROP TABLE IF EXISTS "public"."account_emailconfirmation";
DROP TABLE IF EXISTS "public"."account_emailaddress";
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = "heap";

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."account_emailaddress" (
    "id" integer NOT NULL,
    "email" character varying(254) NOT NULL,
    "verified" boolean NOT NULL,
    "primary" boolean NOT NULL,
    "user_id" bigint NOT NULL
);


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."account_emailaddress" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."account_emailaddress_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."account_emailconfirmation" (
    "id" integer NOT NULL,
    "created" timestamp with time zone NOT NULL,
    "sent" timestamp with time zone,
    "key" character varying(64) NOT NULL,
    "email_address_id" integer NOT NULL
);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."account_emailconfirmation" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."account_emailconfirmation_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: artapp_artpicturemodel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."artapp_artpicturemodel" (
    "id" bigint NOT NULL,
    "file" character varying(100),
    "pic_name_id" bigint NOT NULL
);


--
-- Name: artapp_artpicturemodel_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."artapp_artpicturemodel" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."artapp_artpicturemodel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: artapp_artproduct; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."artapp_artproduct" (
    "id" bigint NOT NULL,
    "name" character varying(150) NOT NULL,
    "description" "text" NOT NULL,
    "creation_date" timestamp with time zone,
    "category_id" bigint,
    "owner_id" bigint,
    "price" character varying(100),
    "brand_id" bigint,
    "frame" boolean,
    "height" integer,
    "length" integer,
    "weight" integer,
    "width" integer,
    "auction_activated" character varying(200),
    "auction_time" timestamp with time zone,
    "auction_stop_time" timestamp with time zone
);


--
-- Name: artapp_artproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."artapp_artproduct" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."artapp_artproduct_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: artapp_brand; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."artapp_brand" (
    "id" bigint NOT NULL,
    "name" character varying(150) NOT NULL
);


--
-- Name: artapp_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."artapp_brand" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."artapp_brand_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: artapp_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."artapp_category" (
    "id" bigint NOT NULL,
    "name" character varying(150) NOT NULL,
    "description" "text" NOT NULL
);


--
-- Name: artapp_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."artapp_category" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."artapp_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auction_app_auctiongroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auction_app_auctiongroup" (
    "id" bigint NOT NULL,
    "name" character varying(150) NOT NULL,
    "user_online_id" bigint
);


--
-- Name: auction_app_auctiongroup_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."auction_app_auctiongroup" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auction_app_auctiongroup_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auction_app_auctiongroupchat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auction_app_auctiongroupchat" (
    "id" bigint NOT NULL,
    "auction_value" character varying(150) NOT NULL,
    "created" timestamp with time zone,
    "author_id" bigint,
    "group_id" bigint,
    "Artproduct_id" bigint
);


--
-- Name: auction_app_auctiongroupchat_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."auction_app_auctiongroupchat" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auction_app_auctiongroupchat_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_group" (
    "id" integer NOT NULL,
    "name" character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."auth_group" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auth_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_group_permissions" (
    "id" bigint NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."auth_group_permissions" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auth_group_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."auth_permission" (
    "id" integer NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."auth_permission" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."auth_permission_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cart_cartmodel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."cart_cartmodel" (
    "id" bigint NOT NULL,
    "quantity" integer,
    "user_id" bigint,
    "product_id" bigint
);


--
-- Name: cart_cartmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."cart_cartmodel" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."cart_cartmodel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_admin_log" (
    "id" integer NOT NULL,
    "action_time" timestamp with time zone NOT NULL,
    "object_id" "text",
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" "text" NOT NULL,
    "content_type_id" integer,
    "user_id" bigint NOT NULL,
    CONSTRAINT "django_admin_log_action_flag_check" CHECK (("action_flag" >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_admin_log" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_admin_log_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_beat_clockedschedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_clockedschedule" (
    "id" integer NOT NULL,
    "clocked_time" timestamp with time zone NOT NULL
);


--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_beat_clockedschedule" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_beat_clockedschedule_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_beat_crontabschedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_crontabschedule" (
    "id" integer NOT NULL,
    "minute" character varying(240) NOT NULL,
    "hour" character varying(96) NOT NULL,
    "day_of_week" character varying(64) NOT NULL,
    "day_of_month" character varying(124) NOT NULL,
    "month_of_year" character varying(64) NOT NULL,
    "timezone" character varying(63) NOT NULL
);


--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_beat_crontabschedule" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_beat_crontabschedule_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_beat_intervalschedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_intervalschedule" (
    "id" integer NOT NULL,
    "every" integer NOT NULL,
    "period" character varying(24) NOT NULL
);


--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_beat_intervalschedule" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_beat_intervalschedule_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_beat_periodictask; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_periodictask" (
    "id" integer NOT NULL,
    "name" character varying(200) NOT NULL,
    "task" character varying(200) NOT NULL,
    "args" "text" NOT NULL,
    "kwargs" "text" NOT NULL,
    "queue" character varying(200),
    "exchange" character varying(200),
    "routing_key" character varying(200),
    "expires" timestamp with time zone,
    "enabled" boolean NOT NULL,
    "last_run_at" timestamp with time zone,
    "total_run_count" integer NOT NULL,
    "date_changed" timestamp with time zone NOT NULL,
    "description" "text" NOT NULL,
    "crontab_id" integer,
    "interval_id" integer,
    "solar_id" integer,
    "one_off" boolean NOT NULL,
    "start_time" timestamp with time zone,
    "priority" integer,
    "headers" "text" NOT NULL,
    "clocked_id" integer,
    "expire_seconds" integer,
    CONSTRAINT "django_celery_beat_periodictask_expire_seconds_check" CHECK (("expire_seconds" >= 0)),
    CONSTRAINT "django_celery_beat_periodictask_priority_check" CHECK (("priority" >= 0)),
    CONSTRAINT "django_celery_beat_periodictask_total_run_count_check" CHECK (("total_run_count" >= 0))
);


--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_beat_periodictask" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_beat_periodictask_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_beat_periodictasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_periodictasks" (
    "ident" smallint NOT NULL,
    "last_update" timestamp with time zone NOT NULL
);


--
-- Name: django_celery_beat_solarschedule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_beat_solarschedule" (
    "id" integer NOT NULL,
    "event" character varying(24) NOT NULL,
    "latitude" numeric(9,6) NOT NULL,
    "longitude" numeric(9,6) NOT NULL
);


--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_beat_solarschedule" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_beat_solarschedule_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_results_chordcounter; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_results_chordcounter" (
    "id" integer NOT NULL,
    "group_id" character varying(255) NOT NULL,
    "sub_tasks" "text" NOT NULL,
    "count" integer NOT NULL,
    CONSTRAINT "django_celery_results_chordcounter_count_check" CHECK (("count" >= 0))
);


--
-- Name: django_celery_results_chordcounter_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_results_chordcounter" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_results_chordcounter_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_results_groupresult; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_results_groupresult" (
    "id" integer NOT NULL,
    "group_id" character varying(255) NOT NULL,
    "date_created" timestamp with time zone NOT NULL,
    "date_done" timestamp with time zone NOT NULL,
    "content_type" character varying(128) NOT NULL,
    "content_encoding" character varying(64) NOT NULL,
    "result" "text"
);


--
-- Name: django_celery_results_groupresult_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_results_groupresult" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_results_groupresult_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_celery_results_taskresult" (
    "id" integer NOT NULL,
    "task_id" character varying(255) NOT NULL,
    "status" character varying(50) NOT NULL,
    "content_type" character varying(128) NOT NULL,
    "content_encoding" character varying(64) NOT NULL,
    "result" "text",
    "date_done" timestamp with time zone NOT NULL,
    "traceback" "text",
    "meta" "text",
    "task_args" "text",
    "task_kwargs" "text",
    "task_name" character varying(255),
    "worker" character varying(100),
    "date_created" timestamp with time zone NOT NULL,
    "periodic_task_name" character varying(255)
);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_celery_results_taskresult" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_celery_results_taskresult_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_content_type" (
    "id" integer NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_content_type" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_content_type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_migrations" (
    "id" bigint NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."django_migrations" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."django_migrations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" "text" NOT NULL,
    "expire_date" timestamp with time zone NOT NULL
);


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."socialaccount_socialaccount" (
    "id" integer NOT NULL,
    "provider" character varying(200) NOT NULL,
    "uid" character varying(191) NOT NULL,
    "last_login" timestamp with time zone NOT NULL,
    "date_joined" timestamp with time zone NOT NULL,
    "extra_data" "jsonb" NOT NULL,
    "user_id" bigint NOT NULL
);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."socialaccount_socialaccount" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."socialaccount_socialaccount_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."socialaccount_socialapp" (
    "id" integer NOT NULL,
    "provider" character varying(30) NOT NULL,
    "name" character varying(40) NOT NULL,
    "client_id" character varying(191) NOT NULL,
    "secret" character varying(191) NOT NULL,
    "key" character varying(191) NOT NULL,
    "provider_id" character varying(200) NOT NULL,
    "settings" "jsonb" NOT NULL
);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."socialaccount_socialapp" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."socialaccount_socialapp_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."socialaccount_socialtoken" (
    "id" integer NOT NULL,
    "token" "text" NOT NULL,
    "token_secret" "text" NOT NULL,
    "expires_at" timestamp with time zone,
    "account_id" integer NOT NULL,
    "app_id" integer
);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."socialaccount_socialtoken" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."socialaccount_socialtoken_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: userapp_custombaseuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."userapp_custombaseuser" (
    "id" bigint NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamp with time zone,
    "alternative_number" integer,
    "marital_status" character varying(200),
    "next_of_kin" character varying(150) NOT NULL,
    "next_of_kin_number" integer,
    "about_user" "text" NOT NULL,
    "email" character varying(254) NOT NULL,
    "name" character varying(150) NOT NULL,
    "birth_date" "date",
    "joined_date" timestamp with time zone,
    "phone_number" integer,
    "profile_pic" character varying(100),
    "email_verified" boolean NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_superuser" boolean NOT NULL,
    "products" character varying(150),
    CONSTRAINT "userapp_custombaseuser_alternative_number_check" CHECK (("alternative_number" >= 0)),
    CONSTRAINT "userapp_custombaseuser_next_of_kin_number_check" CHECK (("next_of_kin_number" >= 0)),
    CONSTRAINT "userapp_custombaseuser_phone_number_67304476_check" CHECK (("phone_number" >= 0))
);


--
-- Name: userapp_custombaseuser_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."userapp_custombaseuser_groups" (
    "id" bigint NOT NULL,
    "custombaseuser_id" bigint NOT NULL,
    "group_id" integer NOT NULL
);


--
-- Name: userapp_custombaseuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."userapp_custombaseuser_groups" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."userapp_custombaseuser_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: userapp_custombaseuser_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."userapp_custombaseuser" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."userapp_custombaseuser_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: userapp_custombaseuser_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."userapp_custombaseuser_user_permissions" (
    "id" bigint NOT NULL,
    "custombaseuser_id" bigint NOT NULL,
    "permission_id" integer NOT NULL
);


--
-- Name: userapp_custombaseuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE "public"."userapp_custombaseuser_user_permissions" ALTER COLUMN "id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "public"."userapp_custombaseuser_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."account_emailaddress" ("id", "email", "verified", "primary", "user_id") FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."account_emailconfirmation" ("id", "created", "sent", "key", "email_address_id") FROM stdin;
\.


--
-- Data for Name: artapp_artpicturemodel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."artapp_artpicturemodel" ("id", "file", "pic_name_id") FROM stdin;
6	images/S1-3.jpg	3
7	images/Series_2.jpg	4
4	images/S1-1_VrlKxwf.jpg	3
5	images/S1-2_2MknoZA.jpg	3
8	images/IMG-20240822-WA0011.jpg	5
\.


--
-- Data for Name: artapp_artproduct; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."artapp_artproduct" ("id", "name", "description", "creation_date", "category_id", "owner_id", "price", "brand_id", "frame", "height", "length", "weight", "width", "auction_activated", "auction_time", "auction_stop_time") FROM stdin;
3	Oil_Paintings	An expression of the Masochism of man.\r\nLife is Love---Pain and joy---Sorrow	2024-08-11 15:12:15.906574+00	2	\N	700	\N	t	\N	24	\N	36	Deactivated	2024-08-11 00:00:00+00	2024-08-18 00:00:00+00
4	Charcoal	Print	2024-08-11 15:24:51.192897+00	2	\N	85	\N	t	\N	24	\N	36	Activated	\N	\N
5	Sun_View	Different views of the Sun	2024-08-30 14:13:21.201913+00	3	\N	90	\N	\N	\N	12	\N	16	None	\N	\N
\.


--
-- Data for Name: artapp_brand; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."artapp_brand" ("id", "name") FROM stdin;
\.


--
-- Data for Name: artapp_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."artapp_category" ("id", "name", "description") FROM stdin;
2	Smiling_Through_Pain	jsjs
3	Original	Original Arts
4	Prints	Prints of the original piece
5	Commission	Commissioned Art piece
\.


--
-- Data for Name: auction_app_auctiongroup; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."auction_app_auctiongroup" ("id", "name", "user_online_id") FROM stdin;
171	Oil_Paintings	\N
\.


--
-- Data for Name: auction_app_auctiongroupchat; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."auction_app_auctiongroupchat" ("id", "auction_value", "created", "author_id", "group_id", "Artproduct_id") FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."auth_group" ("id", "name") FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."auth_group_permissions" ("id", "group_id", "permission_id") FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."auth_permission" ("id", "name", "content_type_id", "codename") FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add email address	6	add_emailaddress
22	Can change email address	6	change_emailaddress
23	Can delete email address	6	delete_emailaddress
24	Can view email address	6	view_emailaddress
25	Can add email confirmation	7	add_emailconfirmation
26	Can change email confirmation	7	change_emailconfirmation
27	Can delete email confirmation	7	delete_emailconfirmation
28	Can view email confirmation	7	view_emailconfirmation
29	Can add social account	8	add_socialaccount
30	Can change social account	8	change_socialaccount
31	Can delete social account	8	delete_socialaccount
32	Can view social account	8	view_socialaccount
33	Can add social application	9	add_socialapp
34	Can change social application	9	change_socialapp
35	Can delete social application	9	delete_socialapp
36	Can view social application	9	view_socialapp
37	Can add social application token	10	add_socialtoken
38	Can change social application token	10	change_socialtoken
39	Can delete social application token	10	delete_socialtoken
40	Can view social application token	10	view_socialtoken
41	Can add auctiongroup	11	add_auctiongroup
42	Can change auctiongroup	11	change_auctiongroup
43	Can delete auctiongroup	11	delete_auctiongroup
44	Can view auctiongroup	11	view_auctiongroup
45	Can add auctiongroup chat	12	add_auctiongroupchat
46	Can change auctiongroup chat	12	change_auctiongroupchat
47	Can delete auctiongroup chat	12	delete_auctiongroupchat
48	Can view auctiongroup chat	12	view_auctiongroupchat
49	Can add custombaseuser	13	add_custombaseuser
50	Can change custombaseuser	13	change_custombaseuser
51	Can delete custombaseuser	13	delete_custombaseuser
52	Can view custombaseuser	13	view_custombaseuser
53	Can add category	14	add_category
54	Can change category	14	change_category
55	Can delete category	14	delete_category
56	Can view category	14	view_category
57	Can add artproduct	15	add_artproduct
58	Can change artproduct	15	change_artproduct
59	Can delete artproduct	15	delete_artproduct
60	Can view artproduct	15	view_artproduct
61	Can add artpicture model	16	add_artpicturemodel
62	Can change artpicture model	16	change_artpicturemodel
63	Can delete artpicture model	16	delete_artpicturemodel
64	Can view artpicture model	16	view_artpicturemodel
65	Can add brand	17	add_brand
66	Can change brand	17	change_brand
67	Can delete brand	17	delete_brand
68	Can view brand	17	view_brand
69	Can add task result	18	add_taskresult
70	Can change task result	18	change_taskresult
71	Can delete task result	18	delete_taskresult
72	Can view task result	18	view_taskresult
73	Can add chord counter	19	add_chordcounter
74	Can change chord counter	19	change_chordcounter
75	Can delete chord counter	19	delete_chordcounter
76	Can view chord counter	19	view_chordcounter
77	Can add group result	20	add_groupresult
78	Can change group result	20	change_groupresult
79	Can delete group result	20	delete_groupresult
80	Can view group result	20	view_groupresult
81	Can add crontab	21	add_crontabschedule
82	Can change crontab	21	change_crontabschedule
83	Can delete crontab	21	delete_crontabschedule
84	Can view crontab	21	view_crontabschedule
85	Can add interval	22	add_intervalschedule
86	Can change interval	22	change_intervalschedule
87	Can delete interval	22	delete_intervalschedule
88	Can view interval	22	view_intervalschedule
89	Can add periodic task	23	add_periodictask
90	Can change periodic task	23	change_periodictask
91	Can delete periodic task	23	delete_periodictask
92	Can view periodic task	23	view_periodictask
93	Can add periodic tasks	24	add_periodictasks
94	Can change periodic tasks	24	change_periodictasks
95	Can delete periodic tasks	24	delete_periodictasks
96	Can view periodic tasks	24	view_periodictasks
97	Can add solar event	25	add_solarschedule
98	Can change solar event	25	change_solarschedule
99	Can delete solar event	25	delete_solarschedule
100	Can view solar event	25	view_solarschedule
101	Can add clocked	26	add_clockedschedule
102	Can change clocked	26	change_clockedschedule
103	Can delete clocked	26	delete_clockedschedule
104	Can view clocked	26	view_clockedschedule
105	Can add cartmodel	27	add_cartmodel
106	Can change cartmodel	27	change_cartmodel
107	Can delete cartmodel	27	delete_cartmodel
108	Can view cartmodel	27	view_cartmodel
\.


--
-- Data for Name: cart_cartmodel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."cart_cartmodel" ("id", "quantity", "user_id", "product_id") FROM stdin;
3	\N	2	4
4	\N	2	3
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") FROM stdin;
1	2024-08-07 22:06:42.198619+00	1	Paintings	1	[{"added": {}}]	14	2
2	2024-08-07 22:09:31.658938+00	1	Colour_Paints	1	[{"added": {}}]	15	2
3	2024-08-07 22:10:27.131381+00	1	Colour_Paints	2	[{"added": {"name": "artpicture model", "object": "Colour_Paints--images/russell_hobbs.png"}}, {"added": {"name": "artpicture model", "object": "Colour_Paints--images/pfeiffer.png"}}]	15	2
4	2024-08-07 22:11:59.321485+00	1	Colour_Paints	2	[{"changed": {"fields": ["Auction time"]}}]	15	2
5	2024-08-07 22:13:01.612051+00	1	Colour_Paints	2	[{"changed": {"fields": ["Auction time"]}}]	15	2
6	2024-08-07 22:18:54.418534+00	1	Colour_Paints	2	[{"changed": {"fields": ["Auction time", "Auction stop time"]}}, {"changed": {"name": "artpicture model", "object": "Colour_Paints--images/Artisan_Technology.png", "fields": ["File"]}}]	15	2
7	2024-08-07 23:15:14.545469+00	1	Colour_Paints	2	[{"changed": {"fields": ["Auction activated", "Auction time", "Auction stop time"]}}]	15	2
8	2024-08-08 21:03:51.693917+00	1	Colour_Paints	2	[{"changed": {"name": "artpicture model", "object": "Colour_Paints--images/icon_yellow.png", "fields": ["File"]}}]	15	2
9	2024-08-08 21:09:08.079265+00	2	Scribes	1	[{"added": {}}, {"added": {"name": "artpicture model", "object": "Scribes--images/circle_icon_black_and_white.png"}}]	15	2
10	2024-08-08 22:30:47.375103+00	1	Colour_Paints	2	[{"changed": {"name": "artpicture model", "object": "Colour_Paints--images/labom.jpeg", "fields": ["File"]}}]	15	2
11	2024-08-08 23:10:36.178479+00	1	Colour_Paints	2	[{"changed": {"name": "artpicture model", "object": "Colour_Paints--images/apogee.png", "fields": ["File"]}}]	15	2
12	2024-08-11 15:10:50.817241+00	2	Smiling_Through_Pain	1	[{"added": {}}]	14	2
13	2024-08-11 15:12:15.989903+00	3	Oil_Paintings	1	[{"added": {}}, {"added": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg"}}, {"added": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg"}}]	15	2
14	2024-08-11 15:17:50.690138+00	1	Paintings	3		14	2
15	2024-08-11 15:20:42.951956+00	3	Original	1	[{"added": {}}]	14	2
16	2024-08-11 15:23:13.528024+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Description", "Length", "Width", "Frame", "Auction activated"]}}, {"added": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-3.jpg"}}]	15	2
17	2024-08-11 15:24:51.196982+00	4	Charcoal	1	[{"added": {}}, {"added": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg"}}]	15	2
18	2024-08-11 15:35:03.902965+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
19	2024-08-11 16:16:27.735431+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}]	15	2
20	2024-08-11 16:17:25.316279+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
21	2024-08-11 16:19:28.836992+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
22	2024-08-11 16:27:48.824438+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}]	15	2
23	2024-08-11 16:28:06.100304+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
24	2024-08-11 17:03:36.545687+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
25	2024-08-11 17:04:33.653344+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
26	2024-08-11 17:06:17.74354+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2_slGXzEY.jpg", "fields": ["File"]}}]	15	2
27	2024-08-11 17:08:13.344077+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}]	15	2
28	2024-08-11 17:09:07.846233+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
29	2024-08-11 17:10:13.557995+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
30	2024-08-11 17:19:58.213885+00	21	Oil_Paintings	3		11	2
31	2024-08-11 17:19:58.217296+00	7	Oil_Paintings	3		11	2
32	2024-08-11 17:19:58.219358+00	6	Stars	3		11	2
33	2024-08-11 17:22:09.643945+00	7	Nweke Les	3		13	2
34	2024-08-11 21:52:17.25953+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
35	2024-08-11 21:52:43.549416+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
36	2024-08-11 22:45:26.341979+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
37	2024-08-11 22:46:05.143625+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
38	2024-08-11 23:01:32.40777+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
39	2024-08-11 23:02:34.892782+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction activated", "Auction time"]}}]	15	2
40	2024-08-11 23:05:11.658359+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction activated", "Auction stop time"]}}]	15	2
41	2024-08-11 23:09:22.97168+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
42	2024-08-11 23:10:05.079905+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
43	2024-08-11 23:14:51.666289+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
44	2024-08-11 23:17:15.466865+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
45	2024-08-11 23:17:36.094318+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction activated"]}}]	15	2
46	2024-08-11 23:18:47.114975+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
47	2024-08-12 07:27:54.043849+00	34	Oil_Paintings	3		11	2
48	2024-08-14 19:42:50.790115+00	90	Oil_Paintings	3		11	2
49	2024-08-14 19:43:21.65942+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction stop time"]}}]	15	2
50	2024-08-14 20:02:06.775648+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-3.jpg", "fields": ["File"]}}]	15	2
51	2024-08-14 20:02:34.00031+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
52	2024-08-14 21:02:34.583183+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
53	2024-08-14 21:03:25.270146+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-3.jpg", "fields": ["File"]}}]	15	2
54	2024-08-14 21:39:57.468613+00	4	Charcoal	2	[{"changed": {"fields": ["Description"]}}]	15	2
55	2024-08-15 21:41:55.188089+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
56	2024-08-15 21:43:52.007486+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-3.jpg", "fields": ["File"]}}]	15	2
57	2024-08-15 21:44:15.28083+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2_tEMKsO3.jpg", "fields": ["File"]}}]	15	2
58	2024-08-18 00:25:50.249096+00	3	Oil_Paintings	2	[{"changed": {"fields": ["Auction activated"]}}]	15	2
59	2024-08-20 23:29:18.469979+00	2	Oly--Charcoal----85	3		27	2
60	2024-08-20 23:29:18.473142+00	1	Oly--Oil_Paintings----700	3		27	2
61	2024-08-20 23:46:24.814506+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1_yUktlRS.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
62	2024-08-20 23:47:04.122525+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
63	2024-08-28 19:33:02.168593+00	4	Charcoal	2	[{"changed": {"name": "artpicture model", "object": "Charcoal--images/Series_2.jpg", "fields": ["File"]}}]	15	2
64	2024-08-28 19:34:24.76799+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2.jpg", "fields": ["File"]}}]	15	2
65	2024-08-28 19:35:34.723395+00	3	Oil_Paintings	2	[{"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-1_VrlKxwf.jpg", "fields": ["File"]}}, {"changed": {"name": "artpicture model", "object": "Oil_Paintings--images/S1-2_2MknoZA.jpg", "fields": ["File"]}}]	15	2
66	2024-08-28 21:00:39.579778+00	4	Charcoal	2	[{"changed": {"fields": ["Auction activated"]}}]	15	2
67	2024-08-30 14:01:42.963105+00	4	Prints	1	[{"added": {}}]	14	2
68	2024-08-30 14:03:20.209179+00	5	Commission	1	[{"added": {}}]	14	2
69	2024-08-30 14:13:21.206497+00	5	Sun_View	1	[{"added": {}}]	15	2
70	2024-08-30 14:15:43.12093+00	5	Sun_View	2	[{"added": {"name": "artpicture model", "object": "Sun_View--images/IMG-20240822-WA0011.jpg"}}]	15	2
\.


--
-- Data for Name: django_celery_beat_clockedschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_clockedschedule" ("id", "clocked_time") FROM stdin;
\.


--
-- Data for Name: django_celery_beat_crontabschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_crontabschedule" ("id", "minute", "hour", "day_of_week", "day_of_month", "month_of_year", "timezone") FROM stdin;
1	0	4	*	*	*	UTC
2	*	*	*	*	*	UTC
\.


--
-- Data for Name: django_celery_beat_intervalschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_intervalschedule" ("id", "every", "period") FROM stdin;
\.


--
-- Data for Name: django_celery_beat_periodictask; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_periodictask" ("id", "name", "task", "args", "kwargs", "queue", "exchange", "routing_key", "expires", "enabled", "last_run_at", "total_run_count", "date_changed", "description", "crontab_id", "interval_id", "solar_id", "one_off", "start_time", "priority", "headers", "clocked_id", "expire_seconds") FROM stdin;
3	Deactivate Auction	auction_app.tasks.auction_deactivation	[]	{}	\N	\N	\N	\N	t	2024-08-12 04:37:00.262913+00	384	2024-08-12 04:37:20.414968+00		2	\N	\N	f	\N	\N	{}	\N	\N
2	Start Auction	auction_app.tasks.auction_activation	[]	{}	\N	\N	\N	\N	t	2024-08-12 04:37:00.063477+00	370	2024-08-12 04:37:20.463512+00		2	\N	\N	f	\N	\N	{}	\N	\N
1	celery.backend_cleanup	celery.backend_cleanup	[]	{}	\N	\N	\N	\N	t	2024-08-12 04:00:00.163489+00	1	2024-08-12 04:00:30.546182+00		1	\N	\N	f	\N	\N	{}	\N	43200
\.


--
-- Data for Name: django_celery_beat_periodictasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_periodictasks" ("ident", "last_update") FROM stdin;
1	2024-08-11 23:22:25.280398+00
\.


--
-- Data for Name: django_celery_beat_solarschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_beat_solarschedule" ("id", "event", "latitude", "longitude") FROM stdin;
\.


--
-- Data for Name: django_celery_results_chordcounter; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_results_chordcounter" ("id", "group_id", "sub_tasks", "count") FROM stdin;
\.


--
-- Data for Name: django_celery_results_groupresult; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_results_groupresult" ("id", "group_id", "date_created", "date_done", "content_type", "content_encoding", "result") FROM stdin;
\.


--
-- Data for Name: django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_celery_results_taskresult" ("id", "task_id", "status", "content_type", "content_encoding", "result", "date_done", "traceback", "meta", "task_args", "task_kwargs", "task_name", "worker", "date_created", "periodic_task_name") FROM stdin;
1	bb5fa858-89a1-47a6-8681-e1bdf5134cc2	SUCCESS	application/json	utf-8	null	2024-08-07 22:03:04.65501+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:03:04.654971+00	\N
2	96875d93-ea19-4c81-bba6-20703f2f5872	SUCCESS	application/json	utf-8	null	2024-08-07 22:03:11.290964+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:03:11.290934+00	\N
3	3c29e9bc-58af-4d0d-a12d-2359a389675a	SUCCESS	application/json	utf-8	null	2024-08-07 22:04:03.209162+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:04:03.209143+00	\N
4	2e0a6687-1b32-4864-9fbf-8750142b9040	SUCCESS	application/json	utf-8	null	2024-08-07 22:04:06.850439+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:04:06.850406+00	\N
5	40f5f789-95af-40c4-ad05-03cbbf4caffc	SUCCESS	application/json	utf-8	null	2024-08-07 22:05:04.568323+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:05:04.568293+00	\N
6	a2cdb2d4-7a3d-49a8-bd1d-31b795e60288	SUCCESS	application/json	utf-8	null	2024-08-07 22:05:08.003674+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:05:08.003643+00	\N
7	24a20f40-c37b-4ce5-9e12-5c8c425fd31a	SUCCESS	application/json	utf-8	null	2024-08-07 22:06:04.849487+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:06:04.849457+00	\N
8	8eb9004c-2538-413f-a5be-177fd46ef001	SUCCESS	application/json	utf-8	null	2024-08-07 22:06:09.204629+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:06:09.204613+00	\N
9	e27275c8-b20c-401f-a5ae-1dd2308e0648	SUCCESS	application/json	utf-8	null	2024-08-07 22:07:05.218987+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:07:05.218959+00	\N
10	838615ae-2a4b-403c-bd13-901e12032a90	SUCCESS	application/json	utf-8	null	2024-08-07 22:07:08.924808+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:07:08.924779+00	\N
11	570f01d7-b7c9-497c-8706-c40430707bf5	SUCCESS	application/json	utf-8	null	2024-08-07 22:08:04.74981+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:08:04.749747+00	\N
12	6c774161-a4e8-4439-a435-1dbc43ab4e20	SUCCESS	application/json	utf-8	null	2024-08-07 22:08:08.321618+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:08:08.321601+00	\N
13	ef88a7e0-231e-4d0f-8f5e-a20de779af8b	SUCCESS	application/json	utf-8	null	2024-08-07 22:09:07.469346+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:09:07.469304+00	\N
14	411e36d7-3acc-4e96-ad8c-4b9836816a05	SUCCESS	application/json	utf-8	null	2024-08-07 22:09:10.974627+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:09:10.974559+00	\N
15	12b683f3-ca40-47ec-8145-a4c4b4f043c1	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:10:04.708622+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:10:04.708588+00	\N
16	c4abdd86-8865-4dcf-a757-a576bde5153a	SUCCESS	application/json	utf-8	null	2024-08-07 22:10:09.00988+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:10:09.009837+00	\N
17	9f769628-20d2-42c1-a8b7-e7ecaf71a275	SUCCESS	application/json	utf-8	null	2024-08-07 22:11:05.376971+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:11:05.376932+00	\N
18	e6d2463c-5bbf-428e-85a4-120a9ae7afc5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:11:08.912114+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:11:08.912034+00	\N
19	f0814477-12ca-4fcc-8535-9a1cb5923566	SUCCESS	application/json	utf-8	null	2024-08-07 22:12:05.437373+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:12:05.437336+00	\N
20	fe3c7104-4061-4936-97c3-9398adf7af38	SUCCESS	application/json	utf-8	null	2024-08-07 22:12:09.515212+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:12:09.515184+00	\N
21	da5d8bae-245a-4e72-8b83-37dabea9e2cd	SUCCESS	application/json	utf-8	null	2024-08-07 22:13:04.55193+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:13:04.551888+00	\N
22	989b35d0-8ae0-4f6b-8fc7-43f3568ee3ad	SUCCESS	application/json	utf-8	null	2024-08-07 22:13:10.38453+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:13:10.38446+00	\N
23	2cdd78d3-0b11-4dbd-95e3-6f68f89ba424	SUCCESS	application/json	utf-8	null	2024-08-07 22:14:05.546548+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:14:05.546491+00	\N
24	22f246d2-9445-43bc-ab54-d526bc8b2187	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:14:09.639525+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:14:09.639483+00	\N
25	6a6d2c40-9c32-4420-859e-f14338013542	SUCCESS	application/json	utf-8	null	2024-08-07 22:15:05.760568+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:15:05.760542+00	\N
26	906e4d25-762b-4644-abf6-bb3c90b98af3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:15:09.74674+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:15:09.746706+00	\N
27	989b4794-3966-4c4f-8931-035087b379c7	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:16:08.18848+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:16:08.188448+00	\N
28	dd5d57c4-ce28-43dd-8d28-ababb6d53904	SUCCESS	application/json	utf-8	null	2024-08-07 22:16:13.335308+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:16:13.335276+00	\N
29	599d334c-b04a-49cd-9d4b-ac25f2813c4c	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:17:07.400946+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:17:07.40091+00	\N
30	ecf622ad-f4e3-4905-8f64-2954f4e36952	SUCCESS	application/json	utf-8	null	2024-08-07 22:17:11.535188+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:17:11.535148+00	\N
31	a4aac229-8d48-4608-830d-88092b7155d2	SUCCESS	application/json	utf-8	null	2024-08-07 22:18:06.103134+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:18:06.103082+00	\N
32	05144cb3-190f-4886-8438-e396ac7aaf63	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-07 22:18:10.374396+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:18:10.374332+00	\N
33	53955296-d8d5-469a-990d-da55694a5f50	SUCCESS	application/json	utf-8	null	2024-08-07 22:19:07.101684+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:19:07.101649+00	\N
34	7611d616-15e1-453d-8322-dfe6bdd8806f	SUCCESS	application/json	utf-8	null	2024-08-07 22:19:11.504826+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:19:11.504777+00	\N
35	a0215a03-9065-405b-8a1d-8970cf472e58	SUCCESS	application/json	utf-8	null	2024-08-07 22:20:04.221789+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:20:04.221751+00	\N
36	3fe378ca-d953-4492-a20f-30930f7f19f8	SUCCESS	application/json	utf-8	null	2024-08-07 22:20:09.000109+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:20:09.000084+00	\N
37	7bb99e7a-8a84-4396-b8ce-751e9add7dbc	SUCCESS	application/json	utf-8	null	2024-08-07 22:21:03.125276+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:21:03.12523+00	\N
38	1a1dad1c-2db1-435a-8949-955b9348ae93	SUCCESS	application/json	utf-8	null	2024-08-07 22:21:07.110852+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:21:07.110822+00	\N
39	fe3ae61d-3a33-4b90-97ef-5b217951569d	SUCCESS	application/json	utf-8	null	2024-08-07 22:22:19.517847+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:22:19.517794+00	\N
40	a1dc7ddd-5f3d-49f0-8191-a952787498a2	SUCCESS	application/json	utf-8	null	2024-08-07 22:22:24.111968+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:22:24.111892+00	\N
41	fe1f00e3-3b5c-43f4-a968-64c9e15520dd	SUCCESS	application/json	utf-8	null	2024-08-07 22:23:05.516325+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:23:05.516292+00	\N
42	c2a8dd4b-f623-49ff-8141-9e54c1c38fd2	SUCCESS	application/json	utf-8	null	2024-08-07 22:23:09.474349+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:23:09.474321+00	\N
43	2860a1c8-00f3-4bb4-900f-41430daf7ac0	SUCCESS	application/json	utf-8	null	2024-08-07 22:24:05.94527+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:24:05.945182+00	\N
44	b1843eb3-ab8b-4766-ae26-52f577335ee9	SUCCESS	application/json	utf-8	null	2024-08-07 22:24:09.745153+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:24:09.745126+00	\N
45	aab246f5-3ff3-4722-91d4-32c3b86abb77	SUCCESS	application/json	utf-8	null	2024-08-07 22:25:06.23924+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:25:06.23919+00	\N
46	9654fd02-9809-4121-96b0-66e7f5ecda4d	SUCCESS	application/json	utf-8	null	2024-08-07 22:25:10.678235+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:25:10.678207+00	\N
47	9f9f59e9-0e5f-44ea-97cf-a118b9cbd63b	SUCCESS	application/json	utf-8	null	2024-08-07 22:26:06.84042+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:26:06.840377+00	\N
48	ace286d1-fbe7-499f-823b-ce27cd6a25dd	SUCCESS	application/json	utf-8	null	2024-08-07 22:26:12.251636+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-07 22:26:12.251594+00	\N
49	0472f556-e279-4f96-979c-99f336fd7288	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:56:36.359594+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:56:36.359573+00	\N
50	6391454c-9b9e-4917-a1ea-cf1fc47203b4	SUCCESS	application/json	utf-8	null	2024-08-11 22:56:36.584696+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:56:36.584676+00	\N
51	d0ec250c-fe04-4036-ac33-f9fcd3bf91b8	SUCCESS	application/json	utf-8	null	2024-08-11 22:57:00.458654+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:57:00.458635+00	\N
52	8bb3eaef-9cd1-4331-ac05-d31acd7ca3c0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:57:00.663008+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:57:00.662987+00	\N
53	aaa7c26f-d7b5-4301-9aa9-8f7b3ccc3153	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:57:24.863164+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:57:24.863147+00	\N
54	d3e61243-1654-4088-8aee-5ad8173526e3	SUCCESS	application/json	utf-8	null	2024-08-11 22:57:25.259452+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:57:25.259435+00	\N
55	8ac32d4d-12ea-4846-9733-760e08775105	SUCCESS	application/json	utf-8	null	2024-08-11 22:58:00.561909+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:58:00.561891+00	\N
56	bf324959-e26e-46e4-8a30-dc4bdbbb98cb	SUCCESS	application/json	utf-8	null	2024-08-11 22:58:00.861688+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:58:00.861673+00	\N
57	e1754c6d-b638-469a-a567-5ab481986361	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:58:00.966399+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:58:00.966385+00	\N
58	8fdff624-0159-4a2d-9f75-8f5bf2b4162e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:58:01.06791+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:58:01.067897+00	\N
59	0ae07379-3086-4277-996b-fd2525764a57	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:59:00.364537+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:59:00.364522+00	\N
60	a0731459-a975-4fa6-af5d-dc099bda813c	SUCCESS	application/json	utf-8	null	2024-08-11 22:59:00.659047+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:59:00.659032+00	\N
61	5eae4fe0-d809-41a3-b6d6-a785a39e0335	SUCCESS	application/json	utf-8	null	2024-08-11 22:59:00.961741+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:59:00.961719+00	\N
62	571ea88a-5d2e-4438-96db-3ee7ef3aa0e8	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 22:59:00.96237+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 22:59:00.962354+00	\N
63	579570cb-0036-475a-8289-e43dde39051e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:00:00.561789+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:00:00.561761+00	\N
64	39da08e9-ac39-4112-b6b9-97ff1f527350	SUCCESS	application/json	utf-8	null	2024-08-11 23:00:00.661214+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:00:00.661196+00	\N
65	27cbcec6-f780-47e9-8508-cf83c264be45	SUCCESS	application/json	utf-8	null	2024-08-11 23:00:00.961945+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:00:00.961928+00	\N
66	ceebff46-4f9f-4117-b807-0daa46fef3ee	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:00:00.967803+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:00:00.967781+00	\N
67	41b52252-4085-43bc-9391-56ea35ecf407	SUCCESS	application/json	utf-8	null	2024-08-11 23:01:00.659886+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:01:00.659864+00	\N
68	29c787ca-00db-47e2-8044-b4336cddd098	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:01:00.861586+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:01:00.861569+00	\N
69	fd6dbfbc-8ada-4027-a52f-c66359abfadb	SUCCESS	application/json	utf-8	null	2024-08-11 23:01:00.865063+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:01:00.865036+00	\N
70	f23d5a8d-96b6-423b-a15f-09eb7892446d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:01:01.064367+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:01:01.06435+00	\N
71	3a148b72-9b29-4f98-96ae-49d2edc403df	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:02:00.761019+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:02:00.761+00	\N
72	f3c4ce54-7362-4dd2-bc2c-135f916c973d	SUCCESS	application/json	utf-8	null	2024-08-11 23:02:00.859242+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:02:00.859228+00	\N
73	0367ad84-93e1-4fb6-be80-521b588f0757	SUCCESS	application/json	utf-8	null	2024-08-11 23:02:00.860882+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:02:00.86082+00	\N
74	35319b30-9da4-4e3f-9fa0-5e471b6a9c9d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:02:01.067538+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:02:01.067516+00	\N
75	894a5e8b-411f-4234-b5cf-d7f5d3a9bf6a	SUCCESS	application/json	utf-8	null	2024-08-11 23:03:00.560171+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:03:00.560156+00	\N
76	9c26e785-d4ef-41bd-b905-44439e92697d	SUCCESS	application/json	utf-8	null	2024-08-11 23:03:00.658849+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:03:00.65883+00	\N
77	4d8a3856-bad1-4b7b-89ab-a5889389802d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:03:00.964138+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:03:00.964123+00	\N
78	e4301132-c34f-4e9d-b15c-9a6f5b06bc9e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:03:01.062321+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:03:01.062305+00	\N
79	ce2de1f5-eb2a-41e1-a063-052c73c333b4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:04:00.762178+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:04:00.762163+00	\N
80	f65711d9-8cc1-442e-9672-805fdffcabe7	SUCCESS	application/json	utf-8	null	2024-08-11 23:04:00.85876+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:04:00.858743+00	\N
81	2e99b62f-3dfa-4d3e-b448-6da6923451c2	SUCCESS	application/json	utf-8	null	2024-08-11 23:04:01.160158+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:04:01.160141+00	\N
82	f083f4e6-cf51-4f19-a19f-854fc68b98ce	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:04:01.162353+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:04:01.162335+00	\N
83	cbfe1934-6738-4504-afc8-b8e87b23de51	SUCCESS	application/json	utf-8	null	2024-08-11 23:05:00.659827+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:05:00.659809+00	\N
84	a1fe510f-10dd-4365-b8c4-1fc9dfeadfa5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:05:00.662222+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:05:00.662203+00	\N
85	da2b1188-8a58-4088-aeef-8302eaa9325b	SUCCESS	application/json	utf-8	null	2024-08-11 23:05:00.861856+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:05:00.861834+00	\N
162	88530287-c26e-438f-a37e-61f7ad0ab7cc	SUCCESS	application/json	utf-8	null	2024-08-11 23:33:00.566075+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:33:00.566057+00	\N
86	99944590-3f35-4c11-9ee5-d4683d5b9853	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:05:01.062864+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:05:01.062846+00	\N
87	92c6dd47-cbaf-488c-8f12-358b53d605af	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:06:00.658736+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:06:00.658718+00	\N
88	6731df05-e137-408f-bc98-6cf2b23657f0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:06:00.761416+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:06:00.761395+00	\N
89	eced72b3-0592-416a-be80-d8e32ae7c57f	SUCCESS	application/json	utf-8	null	2024-08-11 23:06:01.060024+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:06:01.060005+00	\N
90	0cc1bc4d-823b-4233-b9b0-3ae8b925c889	SUCCESS	application/json	utf-8	null	2024-08-11 23:06:01.060615+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:06:01.060599+00	\N
91	a127d16f-dd1e-423f-a616-32721fb8338b	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:07:00.662425+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:07:00.662396+00	\N
92	3388dcd9-7de2-4443-8e94-bc0f28d28df6	SUCCESS	application/json	utf-8	null	2024-08-11 23:07:00.759237+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:07:00.759218+00	\N
93	42a3a68b-2b62-4a6b-8a27-f1b985ffcbe7	SUCCESS	application/json	utf-8	null	2024-08-11 23:07:01.064795+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:07:01.064775+00	\N
94	91ef06ce-54fe-4f6d-a900-936d8afd1088	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:07:01.166307+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:07:01.166292+00	\N
95	1a91b497-96e2-461c-a5ce-f70261019f18	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:08:00.661114+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:08:00.661096+00	\N
96	7a765e48-ea58-4f72-8dd3-2dc2c51a4889	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:08:00.762022+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:08:00.762003+00	\N
97	ffe35c23-81b7-4781-9bb4-24692f413af0	SUCCESS	application/json	utf-8	null	2024-08-11 23:08:00.96163+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:08:00.961613+00	\N
98	b6f74295-f1a8-4383-a003-24959e84334c	SUCCESS	application/json	utf-8	null	2024-08-11 23:08:01.06698+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:08:01.06696+00	\N
99	073c0339-b82b-41d2-b100-11df172cee20	SUCCESS	application/json	utf-8	null	2024-08-11 23:09:00.464116+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:09:00.464096+00	\N
100	7d08106c-b6b3-4326-b52a-0110e29b7823	SUCCESS	application/json	utf-8	null	2024-08-11 23:09:00.866192+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:09:00.866172+00	\N
101	b87e215f-6689-49a1-bc91-bae65bd22ab8	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:09:00.977016+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:09:00.976994+00	\N
102	53276e8c-482a-4b28-a4d6-ef116d4f3df5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:09:01.067045+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:09:01.067027+00	\N
103	948d2d0c-76d3-4aa2-9416-86feb406d038	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:10:00.566938+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:10:00.56692+00	\N
104	5c4f0993-a89c-43b2-8705-5c1878ead280	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:10:00.965763+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:10:00.965742+00	\N
105	7a19dfc5-9c2e-44a9-be2b-1c4a59e6164f	SUCCESS	application/json	utf-8	null	2024-08-11 23:10:01.063779+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:10:01.063762+00	\N
106	3a3a9f3b-8f44-497d-bfb3-217690a65d8e	SUCCESS	application/json	utf-8	null	2024-08-11 23:10:01.165506+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:10:01.165488+00	\N
107	94704f77-206d-42d0-bf74-72985eab39f0	SUCCESS	application/json	utf-8	null	2024-08-11 23:11:00.565284+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:11:00.56526+00	\N
108	7e930909-04e9-43fd-a704-eb52ac5ad4c0	SUCCESS	application/json	utf-8	null	2024-08-11 23:11:00.867021+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:11:00.867+00	\N
109	1fe2a086-6a24-4f3f-ae79-fd2ca76acfeb	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:11:00.973964+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:11:00.973943+00	\N
110	e44f98c8-150d-428a-bb1a-f1aae1f4e591	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:11:01.082414+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:11:01.082392+00	\N
111	358c2e1a-f5a2-4fcb-b1fd-373a91bd5fc0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:12:00.851094+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:12:00.851075+00	\N
112	d18d3dbb-0ac4-4401-a273-31f338c6a117	SUCCESS	application/json	utf-8	null	2024-08-11 23:12:00.964022+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:12:00.964005+00	\N
113	0353909d-c7f6-443c-b80e-94a03594e308	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:12:01.068174+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:12:01.068157+00	\N
114	9503bace-d578-4609-9701-e2cf65a0f579	SUCCESS	application/json	utf-8	null	2024-08-11 23:12:01.174666+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:12:01.174639+00	\N
115	479cd0fb-0c7f-42db-ace6-084133c5d579	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:13:00.467807+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:13:00.467785+00	\N
116	ead44526-92eb-4345-a9d9-bd9a1b027531	SUCCESS	application/json	utf-8	null	2024-08-11 23:13:00.765336+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:13:00.76532+00	\N
117	c4acda81-7baa-433c-8692-69ff4a1a7aee	SUCCESS	application/json	utf-8	null	2024-08-11 23:13:00.868493+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:13:00.868478+00	\N
118	296cefec-bada-45fe-9066-32934d633cc6	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:13:00.992663+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:13:00.99264+00	\N
119	76b8d5d1-0110-47ce-b5f1-f9c63e49183e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:14:00.461148+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:14:00.461129+00	\N
120	890819d7-cd84-435d-86ae-f21ae512e95c	SUCCESS	application/json	utf-8	null	2024-08-11 23:14:00.568845+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:14:00.568824+00	\N
121	94f45377-4bcd-4867-9f93-f687b35be5c0	SUCCESS	application/json	utf-8	null	2024-08-11 23:15:00.663626+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:15:00.663609+00	\N
122	12319d02-ff8e-4237-aa4b-a36be031615e	SUCCESS	application/json	utf-8	null	2024-08-11 23:15:00.865466+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:15:00.86545+00	\N
123	6abfebef-2177-405a-a08d-a34b10cb0da0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:15:00.972183+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:15:00.972165+00	\N
124	73d1f433-e64a-4479-b8d7-5ae4e42cafec	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:15:01.085034+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:15:01.085018+00	\N
125	f2d48703-08dc-44d9-b372-388ac1de79fb	SUCCESS	application/json	utf-8	null	2024-08-11 23:16:00.365147+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:16:00.365126+00	\N
126	46519967-6e9e-46f7-82e5-a58e88c98df4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:16:00.567988+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:16:00.567967+00	\N
127	c67b2aed-2a36-47bd-9bc3-548971a51e59	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:17:00.360957+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:17:00.360937+00	\N
128	e046ebd5-fb29-402e-9f03-2bc7008f8101	SUCCESS	application/json	utf-8	null	2024-08-11 23:17:00.46884+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:17:00.468817+00	\N
129	56797930-9786-473c-8c5b-ea99fe7d1d1c	SUCCESS	application/json	utf-8	null	2024-08-11 23:18:00.361265+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:18:00.361246+00	\N
130	3477cdb2-0f22-4d25-ba74-a90ff95ce16f	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:18:00.766975+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:18:00.766958+00	\N
131	a2e0ad5c-c573-4e31-93e5-ceb7d34b7517	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:19:00.367629+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:19:00.367607+00	\N
132	f014fa5e-5819-4529-90e4-4d7803345322	SUCCESS	application/json	utf-8	null	2024-08-11 23:19:00.569828+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:19:00.56981+00	\N
133	04136171-aaa3-45f4-9214-1cb7c8de5edb	SUCCESS	application/json	utf-8	null	2024-08-11 23:20:00.36014+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:20:00.360121+00	\N
134	499267f1-7381-4b3d-ad0c-484e9c12098d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:20:00.469978+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:20:00.469955+00	\N
135	e0aa942a-e0e7-4c53-9298-75f0b4326f12	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:21:00.364984+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:21:00.364962+00	\N
136	d83bf97e-cfba-4862-beea-bc20e1bd05af	SUCCESS	application/json	utf-8	null	2024-08-11 23:21:00.564043+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:21:00.564021+00	\N
137	9416341c-81af-442a-ae57-8aaf811a726f	SUCCESS	application/json	utf-8	null	2024-08-11 23:22:00.265146+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:22:00.265124+00	\N
138	f2bd4782-268e-4178-aa73-07929f69ac66	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:22:00.466532+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:22:00.466513+00	\N
139	72b311e2-40ca-46d9-b72a-529a956ca994	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:22:26.459403+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:22:26.459381+00	\N
140	db6e8d6c-ef39-47d0-8e21-68812b804724	SUCCESS	application/json	utf-8	null	2024-08-11 23:22:26.670385+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:22:26.670367+00	\N
141	3b4753b7-fa37-40f9-a01b-da5b78f0d218	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:23:00.270021+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:23:00.270002+00	\N
142	0ab89dbd-5809-48e7-8c3d-3fe0b06d4bbd	SUCCESS	application/json	utf-8	null	2024-08-11 23:23:00.468423+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:23:00.468396+00	\N
143	63dfd393-f283-4b78-b1a5-0726c85e5de2	SUCCESS	application/json	utf-8	null	2024-08-11 23:24:00.366691+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:24:00.366672+00	\N
144	c949293f-798c-466d-9aa5-c7b35290fc3a	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:24:00.660067+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:24:00.66004+00	\N
145	6493e859-82a6-4c20-a27e-09e28fcdd1b8	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:25:00.360375+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:25:00.360301+00	\N
146	189aa9e4-8542-475c-8f6b-084d0fbfe8da	SUCCESS	application/json	utf-8	null	2024-08-11 23:25:00.565275+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:25:00.565247+00	\N
147	63e5457c-3e9e-4bc4-b237-44d50d49ed80	SUCCESS	application/json	utf-8	null	2024-08-11 23:26:00.3646+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:26:00.364574+00	\N
148	123f8c0c-fa53-4286-ac35-016f3f70ae23	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:26:00.659401+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:26:00.659382+00	\N
149	e2cab4c8-7a30-4471-87e3-9089a27977fd	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:27:00.266565+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:27:00.266544+00	\N
150	528fbff7-68a2-43ff-b396-c148ba4c3f85	SUCCESS	application/json	utf-8	null	2024-08-11 23:27:00.46339+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:27:00.463366+00	\N
151	be31e6e0-3433-4357-8568-44f2e748279c	SUCCESS	application/json	utf-8	null	2024-08-11 23:28:00.363561+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:28:00.363538+00	\N
152	d8e99f53-380f-4d72-acc1-6f91cecd2608	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:28:00.564279+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:28:00.56426+00	\N
153	b5044841-c621-4f80-94fb-1b571c987fcc	SUCCESS	application/json	utf-8	null	2024-08-11 23:29:00.366095+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:29:00.366071+00	\N
154	0cba2b10-7732-4aa0-98c4-764ed9b5bce5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:29:00.660396+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:29:00.660377+00	\N
155	b99be6c2-b0a6-4398-8d25-6f6bb4c13654	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:30:00.45997+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:30:00.45989+00	\N
156	60e3616c-9af9-4ee0-ad42-672c24aa7ff5	SUCCESS	application/json	utf-8	null	2024-08-11 23:30:00.564352+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:30:00.564333+00	\N
157	0ea5378f-03d2-475c-a92c-b20842065705	SUCCESS	application/json	utf-8	null	2024-08-11 23:31:00.362743+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:31:00.362718+00	\N
158	55b779bb-0c81-4b4b-8166-28e50b65453e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:31:00.56664+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:31:00.566622+00	\N
159	4902b151-0920-4138-8732-b4bd763dbb63	SUCCESS	application/json	utf-8	null	2024-08-11 23:32:00.364548+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:32:00.364527+00	\N
160	789357e4-a8b4-485d-aeb8-741dd5c6bbe9	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:32:00.566508+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:32:00.566489+00	\N
161	6164088e-096b-4e78-b392-09bf99011a85	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:33:00.364332+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:33:00.364313+00	\N
163	f305cf72-1b06-4e6f-ac6e-7a7db03976de	SUCCESS	application/json	utf-8	null	2024-08-11 23:34:00.35982+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:34:00.3598+00	\N
164	3d5175dd-21f5-4fac-8828-e4de30325ba3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:34:00.564919+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:34:00.564899+00	\N
165	475eb435-fe6f-4c9b-8108-01770080280d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:35:00.366614+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:35:00.366595+00	\N
166	dbf3ae6a-265b-4d90-9b6a-364770d00325	SUCCESS	application/json	utf-8	null	2024-08-11 23:35:00.563127+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:35:00.563107+00	\N
167	5ed3cb46-08e4-4228-ac1d-656b34f4b248	SUCCESS	application/json	utf-8	null	2024-08-11 23:36:00.362615+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:36:00.36259+00	\N
168	9e8b31de-02ce-40e3-9da0-6ea3765f1b79	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:36:00.465352+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:36:00.465331+00	\N
169	86ab3905-7f97-4b1e-b63c-234d52ecf8a2	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:37:00.366932+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:37:00.366912+00	\N
170	87ea49b6-c90e-4edf-b3e6-83e485c60b7b	SUCCESS	application/json	utf-8	null	2024-08-11 23:37:00.564467+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:37:00.56445+00	\N
171	cc526191-812d-4df3-b456-849d166679ac	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:38:00.35842+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:38:00.358402+00	\N
172	e07d9074-cbcd-4379-acde-4c71a9df4942	SUCCESS	application/json	utf-8	null	2024-08-11 23:38:00.562722+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:38:00.562704+00	\N
173	8d43ec77-5163-422a-8164-86d23be0e9b4	SUCCESS	application/json	utf-8	null	2024-08-11 23:39:00.362748+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:39:00.362725+00	\N
174	e166e337-45bb-4554-bed5-cabbf62a880d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:39:00.566107+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:39:00.566088+00	\N
175	4656b3fb-bb82-4640-ad5e-3af879ca8c7f	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:40:00.464178+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:40:00.464155+00	\N
176	a11aa4c4-3c26-4f64-a4a1-5c6948a7c851	SUCCESS	application/json	utf-8	null	2024-08-11 23:40:00.765748+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:40:00.765727+00	\N
177	f501643b-c8b5-4c01-a3ea-f9baf0eed8ff	SUCCESS	application/json	utf-8	null	2024-08-11 23:41:00.268223+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:41:00.268204+00	\N
178	54b141ba-16df-42ae-bd93-a4dc100da0d0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:41:00.471505+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:41:00.471484+00	\N
179	fbcb5943-b9a8-45ae-83ed-334ae3881f1d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:42:00.459411+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:42:00.459391+00	\N
180	503f8307-b4f8-4657-a37c-17cb8720c38d	SUCCESS	application/json	utf-8	null	2024-08-11 23:42:00.465266+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:42:00.465249+00	\N
181	de379454-73c9-4611-b0c7-b66edefcfda2	SUCCESS	application/json	utf-8	null	2024-08-11 23:43:00.460591+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:43:00.46057+00	\N
182	a706e2a2-e510-4588-bdf8-48eaad93efb4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:43:00.560378+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:43:00.560346+00	\N
183	318816e9-d78a-4c28-81ba-21e5b479c6fc	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:44:00.364323+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:44:00.364304+00	\N
184	ef288ccc-4410-4f38-9b6a-c8ebd9235421	SUCCESS	application/json	utf-8	null	2024-08-11 23:44:00.565121+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:44:00.565102+00	\N
185	b1ba9158-23c9-4f46-920a-2e8b8d6a617d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:45:00.460172+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:45:00.460152+00	\N
186	70ed4c85-c619-4072-98d6-eb2dce0fc06f	SUCCESS	application/json	utf-8	null	2024-08-11 23:45:00.464586+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:45:00.464563+00	\N
187	e1abe9f9-1f10-4930-8dc9-67652e83212c	SUCCESS	application/json	utf-8	null	2024-08-11 23:46:00.360138+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:46:00.360116+00	\N
188	7912d713-1c1f-4628-852c-c2eda6961c8a	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:46:00.560058+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:46:00.56004+00	\N
189	881b519b-195d-4ba8-9404-fbff3063c9a0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:47:00.367554+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:47:00.367505+00	\N
190	80d2abdc-08b3-4d0a-95db-e4822f5de8d1	SUCCESS	application/json	utf-8	null	2024-08-11 23:47:00.563905+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:47:00.563888+00	\N
191	c8b425e5-e48e-4f14-8ae5-83c557458dfe	SUCCESS	application/json	utf-8	null	2024-08-11 23:48:00.362771+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:48:00.362751+00	\N
192	80dcbb30-bf25-4642-b349-62768eefbea3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:48:00.565072+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:48:00.565052+00	\N
193	f8e3050d-eb64-427f-995e-9f379cadc21e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:49:00.367777+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:49:00.367755+00	\N
194	db253022-9eb3-45cc-bd8b-9a3d1663d17a	SUCCESS	application/json	utf-8	null	2024-08-11 23:49:00.560223+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:49:00.560205+00	\N
195	5e7c52b0-926a-4c10-b2cf-92924b00bdf7	SUCCESS	application/json	utf-8	null	2024-08-11 23:50:00.265208+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:50:00.265191+00	\N
196	b7ead386-3431-400b-a9e8-756556317516	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:50:00.468043+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:50:00.468021+00	\N
197	d4850c2e-c174-414a-9f29-226e7df416c4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:51:00.367057+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:51:00.367037+00	\N
198	31a3b05e-da2a-48df-93a6-2a593f0dd6f3	SUCCESS	application/json	utf-8	null	2024-08-11 23:51:00.566393+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:51:00.566376+00	\N
199	4512c679-68fa-4722-9b1e-9f2b5e4be51f	SUCCESS	application/json	utf-8	null	2024-08-11 23:52:00.364385+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:52:00.364368+00	\N
200	287aa1ad-4a35-42c3-9140-5a0444d1feec	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:52:00.566836+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:52:00.566818+00	\N
201	c77cd452-8b2f-41b7-9628-852be8041708	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:53:00.27028+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:53:00.270259+00	\N
202	4ae2f57d-20e4-423d-8b35-8f853a9734c9	SUCCESS	application/json	utf-8	null	2024-08-11 23:53:00.560058+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:53:00.560038+00	\N
203	7d2138fe-b90e-465c-af92-d4a154b7bf44	SUCCESS	application/json	utf-8	null	2024-08-11 23:54:00.460207+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:54:00.460189+00	\N
204	62802335-a6b4-4a8c-bfea-254e013ceb5d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:54:00.567998+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:54:00.567976+00	\N
205	fa50d808-3b43-40e6-9ff3-6a05935f837b	SUCCESS	application/json	utf-8	null	2024-08-11 23:55:00.462634+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:55:00.462613+00	\N
206	f7e22a45-5917-4a45-b907-4e531b007034	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:55:00.518299+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:55:00.518282+00	\N
207	e25d7c13-6684-4c96-81f3-c43a86065de0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:56:00.360282+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:56:00.360258+00	\N
208	94b48042-8d4b-4809-b29c-9f709dc792fa	SUCCESS	application/json	utf-8	null	2024-08-11 23:56:00.559193+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:56:00.559175+00	\N
209	dc36427f-88e5-440d-a35c-c2bb31b62f95	SUCCESS	application/json	utf-8	null	2024-08-11 23:57:00.363382+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:57:00.363361+00	\N
210	f90406a1-5718-41c3-999d-28a37934000c	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:57:00.565447+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:57:00.565429+00	\N
211	ac5b7413-a8f4-499e-ae1d-3e4dbbf02a7c	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:58:00.267932+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:58:00.267913+00	\N
212	7a2eec5c-7d08-491d-a914-bf28b01b47eb	SUCCESS	application/json	utf-8	null	2024-08-11 23:58:00.465843+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:58:00.465824+00	\N
213	49f9424a-57d3-4c20-b3fe-8db1e3d903c9	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-11 23:59:00.459954+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:59:00.459932+00	\N
214	87ed9a35-0470-4077-9b9b-4b3760f66569	SUCCESS	application/json	utf-8	null	2024-08-11 23:59:00.564354+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-11 23:59:00.564337+00	\N
215	400a88ba-86b9-431e-9a24-9fd211d78b47	SUCCESS	application/json	utf-8	null	2024-08-12 00:00:00.365578+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:00:00.365562+00	\N
216	259715b2-999b-4b47-9779-0d57ee6f4d8d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:00:00.565999+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:00:00.56598+00	\N
217	ad51123e-a51e-4fab-b2dd-6b828632313f	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:01:00.366384+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:01:00.366366+00	\N
218	067719ad-456d-4dab-a1e1-b15a8176a797	SUCCESS	application/json	utf-8	null	2024-08-12 00:01:00.559377+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:01:00.559358+00	\N
219	c25601cd-8383-4e59-92a0-5ac0b501e822	SUCCESS	application/json	utf-8	null	2024-08-12 00:02:00.359595+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:02:00.359572+00	\N
220	9f0bb975-4773-421c-9e55-78cc1ebb5d57	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:02:00.466165+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:02:00.466141+00	\N
221	60f88cbd-b49b-4665-9633-9fbb924ce5e9	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:03:00.365747+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:03:00.365725+00	\N
222	4ea089cb-c5ca-4a9c-add8-33a661cd5e0e	SUCCESS	application/json	utf-8	null	2024-08-12 00:03:00.565817+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:03:00.56579+00	\N
223	9814def5-dcb4-45b4-9f61-792a71cdc8ae	SUCCESS	application/json	utf-8	null	2024-08-12 00:04:00.363176+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:04:00.363155+00	\N
224	ac847439-dbf9-4f9c-a574-b707fe499128	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:04:00.563052+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:04:00.563034+00	\N
225	8e0283c3-5954-40f1-85ce-b0ca91d418f5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:05:00.380179+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:05:00.380147+00	\N
226	79d6f43f-e66e-43df-adac-a54ec7539429	SUCCESS	application/json	utf-8	null	2024-08-12 00:05:00.662595+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:05:00.662577+00	\N
227	5d7e6f92-9a0e-4696-9375-ab2e2b45ad0d	SUCCESS	application/json	utf-8	null	2024-08-12 00:06:00.361729+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:06:00.36171+00	\N
228	60be4214-6b94-4528-b766-747be8dec5ea	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:06:00.464705+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:06:00.464682+00	\N
229	35029d4b-fe87-4ea6-bad9-fd7e8702b6e3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:07:00.365198+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:07:00.365174+00	\N
230	836da0a2-2713-4e5d-9fa6-7dc8bf2a00c7	SUCCESS	application/json	utf-8	null	2024-08-12 00:07:00.565797+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:07:00.565778+00	\N
231	5d5262ce-9a31-4219-aed5-e4c07d92aa36	SUCCESS	application/json	utf-8	null	2024-08-12 00:08:00.265786+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:08:00.265764+00	\N
232	5ef72094-2665-4691-bfaa-dccefef14c8d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:08:00.470354+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:08:00.470335+00	\N
233	fc77193c-2a62-4619-9b0e-c689b7b5b877	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:09:00.3662+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:09:00.366182+00	\N
234	662a3b4f-3e68-4450-a210-4fe72ee5559c	SUCCESS	application/json	utf-8	null	2024-08-12 00:09:00.564867+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:09:00.564848+00	\N
235	b3c6b453-0700-4966-a79c-c92af7265ab5	SUCCESS	application/json	utf-8	null	2024-08-12 00:10:00.361992+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:10:00.361969+00	\N
236	d1cef61a-3f1e-487f-a662-39b449720a51	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:10:00.464842+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:10:00.464818+00	\N
237	e1df4895-e208-4875-bbbf-b74e82512cc3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:11:00.268748+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:11:00.268722+00	\N
238	ced97ad8-e51b-4d28-a6bf-908d12f4e1a2	SUCCESS	application/json	utf-8	null	2024-08-12 00:11:00.461389+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:11:00.46137+00	\N
239	d4b82bd7-8e16-481d-8597-e71e8a09365a	SUCCESS	application/json	utf-8	null	2024-08-12 00:12:00.562687+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:12:00.562659+00	\N
240	aa5bf8fc-1590-4b5f-bd71-073b50ff52be	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:12:00.65919+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:12:00.659172+00	\N
241	9e9c7a9c-a7c9-4668-87f6-1ffa451ae12b	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:13:00.363605+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:13:00.363586+00	\N
242	9ec05034-a8ad-4386-9ea0-8f77ae8b2ef8	SUCCESS	application/json	utf-8	null	2024-08-12 00:13:00.366706+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:13:00.366683+00	\N
243	30f5c3ee-6a5b-474c-a15d-a15a7bf3bfaf	SUCCESS	application/json	utf-8	null	2024-08-12 00:14:00.363509+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:14:00.363486+00	\N
244	789c11c2-a47b-44a6-8c98-5622f543af94	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:14:00.565003+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:14:00.56498+00	\N
245	db6e8351-25d6-4034-b00d-d09adddd45a8	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:15:00.367214+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:15:00.367195+00	\N
246	66977cec-4022-4a57-b6f4-330341ab192c	SUCCESS	application/json	utf-8	null	2024-08-12 00:15:00.565434+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:15:00.565398+00	\N
247	180b76a7-02a5-4cf7-8cdb-925904cd4489	SUCCESS	application/json	utf-8	null	2024-08-12 00:16:00.360684+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:16:00.360664+00	\N
248	7d52818e-eb95-4bbf-8340-43c4272addde	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:16:00.565831+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:16:00.565814+00	\N
249	85fa61da-b1db-4192-8824-8ac6124dc4d7	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:17:00.463694+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:17:00.463671+00	\N
250	0a65b764-fcdc-4db4-b189-d77f4c25fd86	SUCCESS	application/json	utf-8	null	2024-08-12 00:17:00.561193+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:17:00.561174+00	\N
251	aa7076cd-68d9-4740-9f23-1cfe6534d848	SUCCESS	application/json	utf-8	null	2024-08-12 00:18:00.36442+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:18:00.364402+00	\N
252	cd491cde-b3c3-49d2-b71b-74cc7dfc3d26	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:18:00.562541+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:18:00.562519+00	\N
253	9257a8f4-9ad5-41e2-a08d-0e576852d8c5	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:19:00.363074+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:19:00.363049+00	\N
254	957a19a5-06b7-41bc-bac1-db1c5ca8a729	SUCCESS	application/json	utf-8	null	2024-08-12 00:19:00.564914+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:19:00.564895+00	\N
255	a838a8ce-046e-4af6-9b2d-3681a2810a46	SUCCESS	application/json	utf-8	null	2024-08-12 00:20:00.363647+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:20:00.363624+00	\N
256	2354754b-d9b9-4c42-a5ff-32114955993e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:20:00.562617+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:20:00.562599+00	\N
257	ba2fc814-c107-4a07-8f6d-b1943c5bc399	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:21:00.266532+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:21:00.266508+00	\N
258	44408bb9-7961-493f-b1a4-65dd01c3aa88	SUCCESS	application/json	utf-8	null	2024-08-12 00:21:00.563772+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:21:00.563753+00	\N
259	e4d85c80-0638-4dbe-83c2-0c83b9b0a512	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:22:00.362454+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:22:00.362437+00	\N
260	0d82769b-c505-4935-a2f6-f844d228ed98	SUCCESS	application/json	utf-8	null	2024-08-12 00:22:00.561817+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:22:00.561798+00	\N
261	d3a23206-d716-4bfa-9321-b1b341dc0b18	SUCCESS	application/json	utf-8	null	2024-08-12 00:23:00.558252+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:23:00.558229+00	\N
262	b66572bd-7623-4157-90ec-273c8f6421a7	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:23:00.658967+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:23:00.658941+00	\N
263	9239571f-0c86-4a43-9f92-b5d3cf5f4108	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:24:00.362412+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:24:00.362393+00	\N
264	d6debb75-50a4-486d-ac18-98b800395ae8	SUCCESS	application/json	utf-8	null	2024-08-12 00:24:00.561131+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:24:00.561112+00	\N
265	93b4927f-46ff-474e-b782-2530cba9656b	SUCCESS	application/json	utf-8	null	2024-08-12 00:25:00.266332+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:25:00.266313+00	\N
266	ab6173e2-b96f-4ff1-a8f2-20ccd99d8140	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:25:00.562833+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:25:00.562814+00	\N
267	6530f09f-1766-4b34-8c67-4f8d119523b6	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:26:00.267536+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:26:00.267513+00	\N
268	8403e8ed-9d73-4484-8e5b-21db356bb347	SUCCESS	application/json	utf-8	null	2024-08-12 00:26:00.665262+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:26:00.665244+00	\N
269	91c307f9-f231-4164-9aa3-c4003ba378e7	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:27:00.265722+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:27:00.265701+00	\N
270	66652346-7fc2-4fa1-8d33-afd37f693848	SUCCESS	application/json	utf-8	null	2024-08-12 00:27:00.558484+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:27:00.558466+00	\N
271	4a2d4844-3b6c-44c1-a929-2a192b5da062	SUCCESS	application/json	utf-8	null	2024-08-12 00:28:00.363704+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:28:00.363683+00	\N
272	ed3460dd-f23c-43d0-966a-583d277cd7f6	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:28:00.56464+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:28:00.564623+00	\N
273	e643ac20-33a3-4c0f-be11-dcfbb6e251b3	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:29:00.457577+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:29:00.457556+00	\N
274	0203cef9-a3c9-42f8-b06d-1f7b0565c3e1	SUCCESS	application/json	utf-8	null	2024-08-12 00:29:00.55866+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:29:00.558638+00	\N
275	5d9ce8cf-133e-48a4-867b-df0971dcd25c	SUCCESS	application/json	utf-8	null	2024-08-12 00:30:00.364448+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:30:00.364426+00	\N
276	45f05d76-69c8-4951-bd04-ca0c7dc602d9	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:30:00.570593+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:30:00.570573+00	\N
277	043c0674-bc57-49a2-897e-5fdfd5bbe8fc	SUCCESS	application/json	utf-8	null	2024-08-12 00:31:00.361269+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:31:00.361251+00	\N
278	d4d3814d-3a51-48c3-9332-6fc04a8f8bd0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:31:00.563989+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:31:00.563972+00	\N
279	a63fc884-093d-4920-be6c-acd1d8564929	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:32:00.658923+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:32:00.658903+00	\N
280	2ddd4a60-b4df-45fc-8850-217527f71cbf	SUCCESS	application/json	utf-8	null	2024-08-12 00:32:00.76265+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:32:00.762634+00	\N
281	dda6aede-8bbd-448a-b455-45dc0410f677	SUCCESS	application/json	utf-8	null	2024-08-12 00:33:00.458632+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:33:00.458613+00	\N
282	57862ff0-c935-4b07-a7aa-ddabb12e0e0a	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:33:00.466242+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:33:00.466217+00	\N
283	c19915f1-d42c-4922-80ee-047417bdb35b	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:34:00.559041+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:34:00.559022+00	\N
284	de8cdfe5-b5e1-417f-aa1e-110519c53bd1	SUCCESS	application/json	utf-8	null	2024-08-12 00:34:00.65801+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:34:00.657991+00	\N
285	bd315120-4188-4039-8955-c76999a95644	SUCCESS	application/json	utf-8	null	2024-08-12 00:35:00.374452+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:35:00.374429+00	\N
286	4ca6ea75-e87d-4e71-ac56-151b8b93e0bf	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:35:00.566434+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:35:00.566413+00	\N
287	2130b9c8-d25a-427e-96f3-c826582542de	SUCCESS	application/json	utf-8	null	2024-08-12 00:36:00.363709+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:36:00.363691+00	\N
288	901f8232-77ae-4993-9ebc-ce58a85b7435	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:36:00.664294+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:36:00.664277+00	\N
289	66561122-d652-49a5-80ba-488c91f04608	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:37:00.364392+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:37:00.364374+00	\N
290	90e26435-22b7-4cd6-a27d-d1e0a3ff771c	SUCCESS	application/json	utf-8	null	2024-08-12 00:37:00.660838+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:37:00.660821+00	\N
291	21d72e26-eb2e-4516-be35-04aa078d5f71	SUCCESS	application/json	utf-8	null	2024-08-12 00:38:00.363926+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:38:00.363903+00	\N
292	200dce15-d221-43d7-a254-9ecf55313b1e	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:38:00.56406+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:38:00.564042+00	\N
293	6362536b-6515-4b1a-ba31-29602dead3b1	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:39:00.362717+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:39:00.362698+00	\N
294	f85abbf6-ebcc-4537-9796-5b429c11fded	SUCCESS	application/json	utf-8	null	2024-08-12 00:39:00.557739+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:39:00.55772+00	\N
295	4570ffdf-1da5-4131-a35e-3de65ed78178	SUCCESS	application/json	utf-8	null	2024-08-12 00:40:00.264145+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:40:00.264125+00	\N
296	671e44e1-4a39-4e1a-a155-a3dde3c06d39	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:40:00.559336+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:40:00.559308+00	\N
297	5b01aa9e-7855-45a2-aaa3-e21654225964	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:41:00.35886+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:41:00.358837+00	\N
298	198dccc9-38fb-4c36-b20b-a774f3cdb28e	SUCCESS	application/json	utf-8	null	2024-08-12 00:41:00.46327+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:41:00.463253+00	\N
299	f21a3a0e-402e-41b9-9abd-f0cffb6857e8	SUCCESS	application/json	utf-8	null	2024-08-12 00:42:00.3643+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:42:00.364282+00	\N
300	a666793d-3034-46f4-8959-965b0e53f5c8	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:42:00.568342+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:42:00.568326+00	\N
301	f0058633-a350-43d4-908e-3e8cf6453658	SUCCESS	application/json	utf-8	null	2024-08-12 00:43:00.362766+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:43:00.36275+00	\N
302	c1ac64c5-1004-4b27-b4d3-626ce5d379c7	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:43:00.564471+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:43:00.564452+00	\N
303	f2bb7c58-5c6d-48b7-ad4c-429e06a09133	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:44:00.368868+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:44:00.368849+00	\N
304	04caeed1-a540-4f31-a2c8-337c109c3038	SUCCESS	application/json	utf-8	null	2024-08-12 00:44:00.561702+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:44:00.561679+00	\N
305	384e604c-6391-47a5-8fd3-c2328c7d02e5	SUCCESS	application/json	utf-8	null	2024-08-12 00:45:00.364439+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:45:00.36442+00	\N
306	de4828d3-8969-46f3-a149-789e0da69316	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:45:00.563205+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:45:00.563186+00	\N
307	c129b41d-894a-41d3-b9d6-347675f5cce6	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:46:00.363513+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:46:00.363493+00	\N
308	0a86fb43-f9b3-42e4-b1bd-8bc3cc34bcd9	SUCCESS	application/json	utf-8	null	2024-08-12 00:46:00.566231+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:46:00.566216+00	\N
309	a5b387de-dbc9-47ef-8e02-9292f4fe4159	SUCCESS	application/json	utf-8	null	2024-08-12 00:47:00.361508+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:47:00.361487+00	\N
310	ab0d3c40-f0ba-429f-8a5c-fe12b616f8b9	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:47:00.569479+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:47:00.56945+00	\N
311	6a10abc7-5ed6-4825-85ff-c98eec5531cc	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:48:00.363299+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:48:00.36328+00	\N
312	6cc9411f-1f85-44c0-9a37-58769537c6dc	SUCCESS	application/json	utf-8	null	2024-08-12 00:48:00.561057+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:48:00.561033+00	\N
313	2d58fb25-bdc5-48d3-ab16-61e846a117be	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:49:00.464525+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:49:00.464508+00	\N
314	96eb962e-9ce9-4fea-9d37-81bbfa7c225e	SUCCESS	application/json	utf-8	null	2024-08-12 00:49:00.557814+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:49:00.557789+00	\N
315	1adc1298-0258-4575-a594-df10d9e103a4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:50:00.269573+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:50:00.269551+00	\N
316	8a6d1ea1-f639-4877-9ade-867e7222e30c	SUCCESS	application/json	utf-8	null	2024-08-12 00:50:00.561969+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:50:00.561954+00	\N
317	5a6afdf4-ac38-49a1-8901-a9a067bbb5bf	SUCCESS	application/json	utf-8	null	2024-08-12 00:51:00.364186+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:51:00.364163+00	\N
318	00671d72-8304-4d67-a1cd-23b31621c4af	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:51:00.564162+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:51:00.564143+00	\N
319	59a9d724-74c3-4292-9d7f-df60066523ea	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:52:00.358781+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:52:00.358758+00	\N
320	46ba8d5f-b322-4acd-bcd9-987c3a44ee11	SUCCESS	application/json	utf-8	null	2024-08-12 00:52:00.659346+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:52:00.659324+00	\N
321	c0468100-7a0d-41cc-a9dc-e210ba5c49f2	SUCCESS	application/json	utf-8	null	2024-08-12 00:53:00.362513+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:53:00.362489+00	\N
322	39fc4b36-bddd-41ed-bf04-b72b7dbaaba2	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:53:00.558111+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:53:00.558094+00	\N
323	efa6f09b-486d-40d0-a19a-30d333bf290a	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:54:00.458562+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:54:00.45854+00	\N
324	28272cd9-2966-4e12-9d8a-00b28b9bb010	SUCCESS	application/json	utf-8	null	2024-08-12 00:54:00.661539+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:54:00.661522+00	\N
325	3a435910-5c22-4cc5-9693-4e1c0ddd55c0	SUCCESS	application/json	utf-8	null	2024-08-12 00:55:00.26099+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:55:00.260969+00	\N
326	1bbb6f22-5185-42dd-b3e5-feccbb1c4422	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:55:00.466306+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:55:00.466283+00	\N
327	a34bb824-b1ce-4fd3-b430-9799045d1eee	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:56:00.458087+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:56:00.458068+00	\N
328	7476dc3a-bff8-4edc-a678-795df2445ec4	SUCCESS	application/json	utf-8	null	2024-08-12 00:56:00.462718+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:56:00.462699+00	\N
329	46e3c132-9665-4c20-8431-6b58c8deac32	SUCCESS	application/json	utf-8	null	2024-08-12 00:57:00.367552+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:57:00.367529+00	\N
330	12e4e1ac-5546-4047-8c6d-1574df2c1ce4	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:57:00.558128+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:57:00.55811+00	\N
331	1561d540-6cba-4d0d-99df-da0ea50fd671	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:58:00.363039+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:58:00.363014+00	\N
332	2c55892c-4cb4-4771-9611-b434a2c29557	SUCCESS	application/json	utf-8	null	2024-08-12 00:58:00.461716+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:58:00.461696+00	\N
333	8e711b41-f986-4ba8-b097-b19c87224ccb	SUCCESS	application/json	utf-8	null	2024-08-12 00:59:00.3631+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:59:00.36308+00	\N
334	d7d11d14-a9e3-4df5-9e1d-92ea6d67370d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 00:59:00.563955+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 00:59:00.563937+00	\N
335	a09e483a-77d0-41d9-8c55-be71c9a271a0	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:00:00.362683+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:00:00.362664+00	\N
336	226356e1-172e-4b9f-b181-fcae30f0c2b4	SUCCESS	application/json	utf-8	null	2024-08-12 01:00:00.461222+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:00:00.461205+00	\N
337	bcbdf279-77a1-4101-8b2a-b6b96863a946	SUCCESS	application/json	utf-8	null	2024-08-12 01:01:00.366443+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:01:00.366423+00	\N
338	884e9f93-eb27-4314-8fca-fb560819b543	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:01:00.5652+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:01:00.565181+00	\N
339	343eaed8-b7e2-418b-91be-f2dddaca2fc2	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:02:00.270717+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:02:00.270698+00	\N
340	b09aeb8d-52c0-4456-a55d-54875758c67b	SUCCESS	application/json	utf-8	null	2024-08-12 01:02:00.465873+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:02:00.465855+00	\N
341	bdbae913-001f-45fa-a625-463071879e48	SUCCESS	application/json	utf-8	null	2024-08-12 01:03:00.363546+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:03:00.363523+00	\N
342	fd6f4d39-79f1-4aeb-99f1-e2ac457f4a93	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:03:00.564646+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:03:00.564625+00	\N
343	707985a3-d74e-4c45-ace3-05ca59044a86	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:04:00.368613+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:04:00.368591+00	\N
344	69176836-a99e-4099-a90b-6f9734c883d7	SUCCESS	application/json	utf-8	null	2024-08-12 01:04:00.560909+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:04:00.560887+00	\N
345	21ad5387-6237-415e-acdb-9c5571aa986f	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:05:00.357978+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:05:00.357953+00	\N
346	0e700303-8843-4a14-a5fd-eb3724dda1ac	SUCCESS	application/json	utf-8	null	2024-08-12 01:05:00.557951+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:05:00.55793+00	\N
347	c3eeda2b-a064-4cd2-a8a6-7d670faf4584	SUCCESS	application/json	utf-8	null	2024-08-12 01:06:00.365546+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:06:00.365525+00	\N
348	cd5ee7f8-6e0e-4684-b735-1700754cc84d	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:06:00.567634+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:06:00.567616+00	\N
349	2c9fde72-ea54-4cbf-a680-b825bc7a4edb	FAILURE	application/json	utf-8	{"exc_type": "AttributeError", "exc_message": ["'NoneType' object has no attribute 'day'"], "exc_module": "builtins"}	2024-08-12 01:07:00.364746+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:07:00.364721+00	\N
350	56a1e845-e282-4c64-971f-e14505e97571	SUCCESS	application/json	utf-8	null	2024-08-12 01:07:00.558577+00	\N	{"children": []}	\N	\N	\N	\N	2024-08-12 01:07:00.558555+00	\N
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_content_type" ("id", "app_label", "model") FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	account	emailaddress
7	account	emailconfirmation
8	socialaccount	socialaccount
9	socialaccount	socialapp
10	socialaccount	socialtoken
11	auction_app	auctiongroup
12	auction_app	auctiongroupchat
13	userapp	custombaseuser
14	artapp	category
15	artapp	artproduct
16	artapp	artpicturemodel
17	artapp	brand
18	django_celery_results	taskresult
19	django_celery_results	chordcounter
20	django_celery_results	groupresult
21	django_celery_beat	crontabschedule
22	django_celery_beat	intervalschedule
23	django_celery_beat	periodictask
24	django_celery_beat	periodictasks
25	django_celery_beat	solarschedule
26	django_celery_beat	clockedschedule
27	cart	cartmodel
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_migrations" ("id", "app", "name", "applied") FROM stdin;
1	contenttypes	0001_initial	2024-08-07 20:22:47.271765+00
2	contenttypes	0002_remove_content_type_name	2024-08-07 20:22:49.1533+00
3	auth	0001_initial	2024-08-07 20:22:54.502176+00
4	auth	0002_alter_permission_name_max_length	2024-08-07 20:22:55.793941+00
5	auth	0003_alter_user_email_max_length	2024-08-07 20:22:57.082166+00
6	auth	0004_alter_user_username_opts	2024-08-07 20:22:58.309471+00
7	auth	0005_alter_user_last_login_null	2024-08-07 20:22:59.593307+00
8	auth	0006_require_contenttypes_0002	2024-08-07 20:23:00.83521+00
9	auth	0007_alter_validators_add_error_messages	2024-08-07 20:23:02.092611+00
10	auth	0008_alter_user_username_max_length	2024-08-07 20:23:03.395239+00
11	auth	0009_alter_user_last_name_max_length	2024-08-07 20:23:04.676537+00
12	auth	0010_alter_group_name_max_length	2024-08-07 20:23:06.314161+00
13	auth	0011_update_proxy_permissions	2024-08-07 20:23:07.587167+00
14	auth	0012_alter_user_first_name_max_length	2024-08-07 20:23:08.788024+00
15	userapp	0001_initial	2024-08-07 20:23:14.741086+00
16	account	0001_initial	2024-08-07 20:23:18.587776+00
17	account	0002_email_max_length	2024-08-07 20:23:19.959587+00
18	account	0003_alter_emailaddress_create_unique_verified_email	2024-08-07 20:23:21.879151+00
19	account	0004_alter_emailaddress_drop_unique_email	2024-08-07 20:23:24.439686+00
20	account	0005_emailaddress_idx_upper_email	2024-08-07 20:23:25.990414+00
21	account	0006_emailaddress_lower	2024-08-07 20:23:27.936008+00
22	account	0007_emailaddress_idx_email	2024-08-07 20:23:30.123066+00
23	account	0008_emailaddress_unique_primary_email_fixup	2024-08-07 20:23:31.721244+00
24	account	0009_emailaddress_unique_primary_email	2024-08-07 20:23:33.28109+00
25	admin	0001_initial	2024-08-07 20:23:36.558856+00
26	admin	0002_logentry_remove_auto_add	2024-08-07 20:23:37.514847+00
27	admin	0003_logentry_add_action_flag_choices	2024-08-07 20:23:38.744784+00
28	artapp	0001_initial	2024-08-07 20:23:42.636263+00
29	artapp	0002_alter_artproduct_category	2024-08-07 20:23:43.556805+00
30	artapp	0003_artproduct_owner	2024-08-07 20:23:45.120001+00
31	artapp	0004_artproduct_images_artpicturemodel	2024-08-07 20:23:48.319994+00
32	artapp	0005_remove_artproduct_images	2024-08-07 20:23:49.586713+00
33	artapp	0006_alter_artproduct_owner	2024-08-07 20:23:53.387432+00
34	artapp	0007_artproduct_price	2024-08-07 20:23:54.953965+00
35	artapp	0008_brand_artproduct_brand	2024-08-07 20:23:57.552854+00
36	artapp	0009_artproduct_profile_pic	2024-08-07 20:23:59.316105+00
37	artapp	0010_remove_artproduct_profile_pic	2024-08-07 20:24:01.117985+00
38	artapp	0011_artproduct_frame_artproduct_height_artproduct_length_and_more	2024-08-07 20:24:04.079907+00
39	artapp	0012_alter_artproduct_height_alter_artproduct_length_and_more	2024-08-07 20:24:06.661059+00
40	artapp	0013_artproduct_auction_activated	2024-08-07 20:24:08.584488+00
41	artapp	0014_artproduct_auction_time	2024-08-07 20:24:10.224337+00
42	artapp	0015_alter_artproduct_auction_time	2024-08-07 20:24:11.466711+00
43	artapp	0016_alter_artproduct_auction_time	2024-08-07 20:24:12.752274+00
44	artapp	0017_alter_artproduct_auction_activated	2024-08-07 20:24:14.33597+00
45	artapp	0018_artproduct_auction_stop_time	2024-08-07 20:24:15.946045+00
46	auction_app	0001_initial	2024-08-07 20:24:19.430954+00
47	auction_app	0002_alter_auctiongroupchat_author	2024-08-07 20:24:22.957118+00
48	auction_app	0003_auctiongroupchat_artproduct_and_more	2024-08-07 20:24:27.765122+00
49	auction_app	0004_alter_auctiongroupchat_artproduct	2024-08-07 20:24:31.248827+00
50	auction_app	0005_alter_auctiongroupchat_artproduct	2024-08-07 20:24:35.180226+00
51	auction_app	0006_auctiongroup_user_online	2024-08-07 20:24:38.75829+00
52	auction_app	0007_remove_auctiongroup_user_online_and_more	2024-08-07 20:24:42.163543+00
53	auction_app	0008_auctiongroupchat_auction_mode	2024-08-07 20:24:43.833399+00
54	auction_app	0009_remove_auctiongroupchat_auction_mode	2024-08-07 20:24:45.430008+00
55	django_celery_beat	0001_initial	2024-08-07 20:24:50.157192+00
56	django_celery_beat	0002_auto_20161118_0346	2024-08-07 20:24:52.380929+00
57	django_celery_beat	0003_auto_20161209_0049	2024-08-07 20:24:53.714404+00
58	django_celery_beat	0004_auto_20170221_0000	2024-08-07 20:24:55.015181+00
59	django_celery_beat	0005_add_solarschedule_events_choices	2024-08-07 20:24:56.294721+00
60	django_celery_beat	0006_auto_20180322_0932	2024-08-07 20:24:59.237491+00
61	django_celery_beat	0007_auto_20180521_0826	2024-08-07 20:25:01.520715+00
62	django_celery_beat	0008_auto_20180914_1922	2024-08-07 20:25:02.838047+00
63	django_celery_beat	0006_auto_20180210_1226	2024-08-07 20:25:04.159235+00
64	django_celery_beat	0006_periodictask_priority	2024-08-07 20:25:05.876457+00
65	django_celery_beat	0009_periodictask_headers	2024-08-07 20:25:07.819396+00
66	django_celery_beat	0010_auto_20190429_0326	2024-08-07 20:25:09.464961+00
67	django_celery_beat	0011_auto_20190508_0153	2024-08-07 20:25:11.991668+00
68	django_celery_beat	0012_periodictask_expire_seconds	2024-08-07 20:25:13.258937+00
69	django_celery_beat	0013_auto_20200609_0727	2024-08-07 20:25:14.554016+00
70	django_celery_beat	0014_remove_clockedschedule_enabled	2024-08-07 20:25:16.091718+00
71	django_celery_beat	0015_edit_solarschedule_events_choices	2024-08-07 20:25:17.325184+00
72	django_celery_beat	0016_alter_crontabschedule_timezone	2024-08-07 20:25:18.636264+00
73	django_celery_beat	0017_alter_crontabschedule_month_of_year	2024-08-07 20:25:19.93424+00
74	django_celery_beat	0018_improve_crontab_helptext	2024-08-07 20:25:21.169138+00
75	django_celery_results	0001_initial	2024-08-07 20:25:23.740106+00
76	django_celery_results	0002_add_task_name_args_kwargs	2024-08-07 20:25:25.773707+00
77	django_celery_results	0003_auto_20181106_1101	2024-08-07 20:25:27.057859+00
78	django_celery_results	0004_auto_20190516_0412	2024-08-07 20:25:29.892916+00
79	django_celery_results	0005_taskresult_worker	2024-08-07 20:25:32.362129+00
80	django_celery_results	0006_taskresult_date_created	2024-08-07 20:25:34.912938+00
81	django_celery_results	0007_remove_taskresult_hidden	2024-08-07 20:25:36.195111+00
82	django_celery_results	0008_chordcounter	2024-08-07 20:25:38.425918+00
83	django_celery_results	0009_groupresult	2024-08-07 20:25:49.663821+00
84	django_celery_results	0010_remove_duplicate_indices	2024-08-07 20:25:51.634917+00
85	django_celery_results	0011_taskresult_periodic_task_name	2024-08-07 20:25:53.154402+00
86	sessions	0001_initial	2024-08-07 20:25:55.705411+00
87	socialaccount	0001_initial	2024-08-07 20:26:00.634419+00
88	socialaccount	0002_token_max_lengths	2024-08-07 20:26:02.553083+00
89	socialaccount	0003_extra_data_default_dict	2024-08-07 20:26:03.834929+00
90	socialaccount	0004_app_provider_id_settings	2024-08-07 20:26:06.673565+00
91	socialaccount	0005_socialtoken_nullable_app	2024-08-07 20:26:09.595624+00
92	socialaccount	0006_alter_socialaccount_extra_data	2024-08-07 20:26:11.218472+00
93	userapp	0002_rename_firstname_custombaseuser_name_and_more	2024-08-07 20:26:13.463926+00
94	userapp	0003_custombaseuser_products	2024-08-07 20:26:15.672841+00
95	userapp	0004_remove_custombaseuser_products	2024-08-07 20:26:17.912711+00
96	userapp	0005_custombaseuser_products	2024-08-07 20:26:19.514535+00
97	cart	0001_initial	2024-08-20 23:23:05.611329+00
98	cart	0002_remove_cartmodel_product_cartmodel_product	2024-08-20 23:23:05.68608+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."django_session" ("session_key", "session_data", "expire_date") FROM stdin;
ptz54n0hjvts21jun74076fxs5d3gzgy	.eJxVjEEOwiAQRe_C2pAWpsC4dO8ZCMOMUjU0Ke3KeHfbpAvdvvf-f6uY1qXEtckcR1Zn1avTL6OUn1J3wY9U75POU13mkfSe6MM2fZ1YXpej_TsoqZVtDQSIGCDYDDYRWu-og2xgCJaRvfPdgNYQO8lAvRMnG0g3AEIBg-rzBbipNwM:1sbnoN:BmqdZLvv3w5NAu0YtqqO0c9YVCRbCYZHjI5MsZmW25c	2024-08-21 21:03:11.210068+00
ngqa1ie09u8uplnytzlv80xuidexkosx	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sbnqT:5AhJ-bsNRxKR8aesksYL20449sGImc4-McOa5uAilC4	2024-08-21 21:05:21.710792+00
qz6lw092ng1kseufm3hx6pbanan2plka	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sbolt:zzMm6ayPZeod0mTeIr-ijzdGKYm0ARPn4CZwimD2mU4	2024-08-21 22:04:41.872069+00
hvl65aypj0a7eyqjeha2f9wh2tf4rf2g	.eJxVjEEOwiAQRe_C2pAWpsC4dO8ZCMOMUjU0Ke3KeHfbpAvdvvf-f6uY1qXEtckcR1Zn1avTL6OUn1J3wY9U75POU13mkfSe6MM2fZ1YXpej_TsoqZVtDQSIGCDYDDYRWu-og2xgCJaRvfPdgNYQO8lAvRMnG0g3AEIBg-rzBbipNwM:1scAC2:mr7t8pttpcszWWH0qP3zDBTCnvVkB_W4v7tAFsnEA-M	2024-08-22 20:57:06.143143+00
s3xpo52fw4yedrgk2l9l9386ir1lpnvt	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1scAHZ:5mTyL6yRP4dAGR2hmBOWo44c4L_RGcQ6Qv5DS3NUd7s	2024-08-22 21:02:49.078586+00
rxw5z1o2y1mxfwt0gn11drabmxuphauo	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1scCEa:GjZnkW-CRczLWf7tMjZscTlxrWGIdmczcsw4n2nWw0k	2024-08-22 23:07:52.707537+00
b4tsdh9ukygxtt4dmo9ppgag6umzuo0u	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sciMY:husp_ft38eIsznjVg4fTz2cfVFzxXl7pko-Gr9IiD44	2024-08-24 09:26:14.950034+00
80iusjya9f0wsuq3ldn83xu6vop9mfdf	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sdACG:9aIDVW784kfDSkEfz3DiAMRqI6N75ISeK7vFoI6e3uo	2024-08-25 15:09:28.092364+00
lepgpmmmxy8gg3lwashtkut9l2ngxeto	.eJxVjEEOwiAQRe_C2pAWpsC4dO8ZCMOMUjU0Ke3KeHfbpAvdvvf-f6uY1qXEtckcR1Zn1avTL6OUn1J3wY9U75POU13mkfSe6MM2fZ1YXpej_TsoqZVtDQSIGCDYDDYRWu-og2xgCJaRvfPdgNYQO8lAvRMnG0g3AEIBg-rzBbipNwM:1sdAiU:k9w3rDz4oD7rybh4XZqf4hPKphQYZGDhb2OXwLOFzk4	2024-08-25 15:42:46.53595+00
b7wvgm72hosvr99g1z6drv7x5lmbawqd	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sdBvd:bAal-xM6MZJ482P9Tc33uxNwjPiOVWLg3Geq8rIWD9U	2024-08-25 17:00:25.252098+00
j2mxyb5vk2v1g7eazi321g6tyyxzkmc1	.eJxVjMEOwiAQRP-FsyHQFgoevfcbyC67SNVAUtqT8d9tkx70Npn3Zt4iwLbmsDVewkziKpy4_HYI8cnlAPSAcq8y1rIuM8pDkSdtcqrEr9vp_h1kaHlfc2eTTmg75ZIfDVhUA2C03htOioC0ZudwQMuUet4DaBhdD8oY8MmLzxcDDDjM:1sdByd:tD_QTGq22Vp7_L5W8KJa-GWwSZhys3p35uUtZUjSabo	2024-08-25 17:03:31.760311+00
xvfjttczcf5i7xvfbg2mw0tvtx8orzg3	.eJxVjDsOwjAQRO_iGlnxNzYlPWewdtcLDiBbipMKcXcSKQV0o3lv5i0SrEtJa-c5TVmcRRSn3w6Bnlx3kB9Q701Sq8s8odwVedAury3z63K4fwcFetnWQNmhyRGdDXRTQDQGY0zwDCo7dtbyoBC1Ckp5PVrcArOPQ7DaRnDi8wX2izdw:1sdC4K:7LVzJosGMNZkvVHobAprXcAOrP-aYDDnifPuY4n8hxI	2024-08-25 17:09:24.445705+00
6qz82tcn2o6movu8vi3qfydhdl7tnnq6	.eJxVjMsOwiAQRf-FtSE8CgSX7v0GMjOMUjWQlHbV-O9K0oVu7znn7iLBtpa0dV7SnMVZaCVOvyMCPbkOkh9Q701Sq-syoxyKPGiX15b5dTncv4MCvXxrmAIHq41XLirU5B1ivBE69AYyRjYalCKAPBlvlbYYIrlIMDCTFe8PBWc4aw:1sdC4T:mA7jlZeRyxWaYfX3IzR8I74CUPdzxLnUWklDg--wnLI	2024-08-25 17:09:33.052315+00
efi5feznmv42hd2kxxrhajz8rqdwffia	.eJxVjEEOwiAQRe_C2hBGBmRcuvcMZCiDrRpISrsy3l2bdKHb_977LxV5Xca4dpnjlNVZAajD75h4eEjdSL5zvTU9tLrMU9Kbonfa9bVleV529-9g5D5-ay-GyDprC4grJ-uzLYkzeJAQwCeHnB1JQDA0iGEkQyglETq0RyT1_gD09jdZ:1sdCbT:-f4RwLA-6D5tUHJ4O3KfHQ5ORqL5q-ze9PlOgHEMtzY	2024-08-25 17:43:39.052153+00
k3ssw0eikm0q1a9ged3ocnvvk401leod	.eJxVjEsOAiEQBe_C2hCYofm4dO8ZSNMNMmogmc_KeHedZBa6fVX1XiLitta4LXmOE4uz0IM4_Y4J6ZHbTviO7dYl9bbOU5K7Ig-6yGvn_Lwc7t9BxaV-awSvgAKS1iYpVwwQwOiVLcSlGJfA68wc3ABGJ7DEwXs15sEa411A8f4A_gY3iQ:1sdD5o:HDE0GVrP7PJv4TVGP3MoO8-lymAy9Mdhmy8kx_QhpFQ	2024-08-25 18:15:00.944692+00
j0ljzl8fdn0pn7aewh5jkjudml54spto	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1seKBi:Vz_l7kWXIeKAqQ_NN80-A8Bsp9RxWwJ6ded4wqWbscY	2024-08-28 20:01:42.482153+00
lm2jj46q3h5ofr37evehni5ea2hhihab	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1seiEh:iMh8EJeMGc47mXzr8C4LXupeB2e7JzMBPuLPD51nv2o	2024-08-29 21:42:23.000676+00
663tq65k20j2dbzc184pqy8n5elvpilg	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1seiFZ:_Q5SODjPqiGUIz9fdb97-MIyzfnk6jh8X01wiZaln6Q	2024-08-29 21:43:17.591809+00
2sv0l0g84qahh6ja1yuwd3fb9khktf7u	.eJxVjMEOwiAQRP-FsyFgKawevfcbmmXZlaqBpLQn47_bJj1o5jbvzbzViOuSx7XxPE5JXZXt1Om3jEhPLjtJDyz3qqmWZZ6i3hV90KaHmvh1O9y_g4wtb2ti64jI-csWAGBBKxEBvUDXQ_BI0QXhICA-nQMZ6kGSBe-EjBH1-QIoXzjv:1seyC8:-VsfmnPF89Y3n8eEKryhXFdrUXDnwhFcAfVIpmV7jZU	2024-08-30 14:44:48.010484+00
87f3jqkvc25ixjas3yi1zkbsdv6hh56i	.eJxVjEEOwiAQRe_C2pAWpsC4dO8ZCMOMUjU0Ke3KeHfbpAvdvvf-f6uY1qXEtckcR1Zn1avTL6OUn1J3wY9U75POU13mkfSe6MM2fZ1YXpej_TsoqZVtDQSIGCDYDDYRWu-og2xgCJaRvfPdgNYQO8lAvRMnG0g3AEIBg-rzBbipNwM:1sfO2k:VXGA4gOTVW1DOO50Ku7Lrc36wb-JVp_gRC-qIC2Yx-g	2024-08-31 18:20:50.068741+00
efmid7wgoz8cg1t688ikltyir4c5a45q	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sgYP2:sDvohl6DsJbs8yHZTkEPgp-siG4pwt2JVaXykL0bsXY	2024-09-03 23:36:40.309011+00
0oyg8r2sat99zd2pkm8hxc6gji69u6id	.eJxVjMsOwiAURP-FtSEFoRdcuvcbyH2AVE2blHZl_HfbpAvdzGLOmXmrhOtS09rynAZRF2XV6bcj5GcedyAPHO-T5mlc5oH0ruiDNn2bJL-uh_t3ULHVbY1UfAidSC_UxUDegCML0Vnf0TmaABkkQOnZFQ4RPBhEs2Vhz6436vMF2nM3XQ:1sk29q:qvNv4mBQPlvm33oVk2nxZWJL3V_z9DIoZg8l4wWocjc	2024-09-13 13:59:22.3518+00
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."socialaccount_socialaccount" ("id", "provider", "uid", "last_login", "date_joined", "extra_data", "user_id") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."socialaccount_socialapp" ("id", "provider", "name", "client_id", "secret", "key", "provider_id", "settings") FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."socialaccount_socialtoken" ("id", "token", "token_secret", "expires_at", "account_id", "app_id") FROM stdin;
\.


--
-- Data for Name: userapp_custombaseuser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."userapp_custombaseuser" ("id", "password", "last_login", "alternative_number", "marital_status", "next_of_kin", "next_of_kin_number", "about_user", "email", "name", "birth_date", "joined_date", "phone_number", "profile_pic", "email_verified", "is_staff", "is_superuser", "products") FROM stdin;
11	pbkdf2_sha256$600000$laMIEr38xiKvoTiGx04dmI$4gF7QoAvXwHo7yqm9u2nmrrJIDcXxOMspCkigwI4QFk=	2024-08-11 17:43:39.048279+00	\N	STATUS[0]	Nulll	\N		lazarusokpogo@gmail.com	Lazarus Chigozie Okpogo 	\N	2024-08-11 17:43:14.872927+00	\N	/variac.jpeg/	f	f	f	\N
12	pbkdf2_sha256$600000$E0NSPtmPDzoAz44copNeOr$lG7w6ZPsQlGhQ46Qn+3drHAM2S8uvHvzr29Qf0XR/64=	2024-08-11 18:15:00.856814+00	\N	STATUS[0]	Nulll	\N		gozoeze@gmail.com	Chidubem	\N	2024-08-11 18:14:38.453304+00	\N	/variac.jpeg/	f	f	f	\N
5	pbkdf2_sha256$600000$gOe4fsWkYrlU8yAjmXzaFO$PSLfZlGAalEibTc7RlZKzkLs9e0F6NqySh5YDaSWOPU=	\N	\N	STATUS[0]	Nulll	\N		les@gmail.com	Nweke Les	\N	2024-08-08 20:53:29.050973+00	\N	/variac.jpeg/	f	f	f	\N
13	pbkdf2_sha256$600000$6BBImihrSduBvADkbZd6dw$JuQ5KAfzk1c+J7bgrmLKpsux5YaPKKzAUsTTqTmbdkI=	2024-08-16 14:44:48.004246+00	\N	STATUS[0]	Nulll	\N		Stanokekeudo@gmail.com	Stanimart	\N	2024-08-16 14:44:31.409935+00	\N	/variac.jpeg/	f	f	f	\N
1	pbkdf2_sha256$600000$Sey67d9Jq35yCZtDJgkbFY$v40isvcAyNnL4exjit4x8w4iNWkmORizW8fi/s5+w3w=	2024-08-17 18:20:50.061321+00	\N	STATUS[0]	Nulll	\N		nwekelesley@gmail.com	Lesley 	\N	2024-08-07 20:55:55.512712+00	\N	images/Screenshot_20221102-093702_qNkFhmZ.jpg	f	f	f	\N
2	pbkdf2_sha256$600000$j9gc6FYzAgf4D8kVkFC3L8$/KkYw8eTiSoDofGtw6hgecQzcUS2+RiZJoyH2ZENoyI=	2024-08-30 13:59:22.346069+00	\N	STATUS[0]	Nulll	\N		nwekelesley9@gmail.com	Oly	\N	2024-08-07 21:04:27.757723+00	\N	/variac.jpeg/	f	t	t	\N
8	pbkdf2_sha256$600000$hJXyYiGQUZiY8w5zR8627p$Oe7tlNiGIJk2TCg0XwI8ppaHQ+8+rkOh67ynz+NZiIo=	2024-08-11 17:03:31.755312+00	\N	STATUS[0]	Nulll	\N		kennethanaekee21@gmail.com	Kenneth	\N	2024-08-11 17:03:10.059937+00	\N	/variac.jpeg/	f	f	f	\N
9	pbkdf2_sha256$600000$dBP9VI3d7D0B22I2ow29FW$5WoKhPlk/Ei9bJ1MdwG8qx0e0i1211FLheBzRExnqZ4=	2024-08-11 17:09:24.360882+00	\N	STATUS[0]	Nulll	\N		okoliechukwunonsok@gmail.com	Kingsley Okolie	\N	2024-08-11 17:09:11.653139+00	\N	/variac.jpeg/	f	f	f	\N
10	pbkdf2_sha256$600000$Y9tqMwMNFBYlYNGVElwGyq$ui/P1IJO1bAZoU52Louc+JsTYSNXfMiRuRFK7i4luI8=	2024-08-11 17:09:32.745734+00	\N	STATUS[0]	Nulll	\N		okerekechisom9@gmail.com	Chisom Mamamia	\N	2024-08-11 17:09:14.962713+00	\N	/variac.jpeg/	f	f	f	\N
\.


--
-- Data for Name: userapp_custombaseuser_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."userapp_custombaseuser_groups" ("id", "custombaseuser_id", "group_id") FROM stdin;
\.


--
-- Data for Name: userapp_custombaseuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."userapp_custombaseuser_user_permissions" ("id", "custombaseuser_id", "permission_id") FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."account_emailaddress_id_seq"', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."account_emailconfirmation_id_seq"', 1, false);


--
-- Name: artapp_artpicturemodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."artapp_artpicturemodel_id_seq"', 8, true);


--
-- Name: artapp_artproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."artapp_artproduct_id_seq"', 5, true);


--
-- Name: artapp_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."artapp_brand_id_seq"', 1, false);


--
-- Name: artapp_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."artapp_category_id_seq"', 5, true);


--
-- Name: auction_app_auctiongroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auction_app_auctiongroup_id_seq"', 191, true);


--
-- Name: auction_app_auctiongroupchat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auction_app_auctiongroupchat_id_seq"', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_group_id_seq"', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_group_permissions_id_seq"', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."auth_permission_id_seq"', 108, true);


--
-- Name: cart_cartmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."cart_cartmodel_id_seq"', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_admin_log_id_seq"', 70, true);


--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_beat_clockedschedule_id_seq"', 1, false);


--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_beat_crontabschedule_id_seq"', 2, true);


--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_beat_intervalschedule_id_seq"', 1, false);


--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_beat_periodictask_id_seq"', 3, true);


--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_beat_solarschedule_id_seq"', 1, false);


--
-- Name: django_celery_results_chordcounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_results_chordcounter_id_seq"', 1, false);


--
-- Name: django_celery_results_groupresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_results_groupresult_id_seq"', 1, false);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_celery_results_taskresult_id_seq"', 350, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_content_type_id_seq"', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."django_migrations_id_seq"', 98, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."socialaccount_socialaccount_id_seq"', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."socialaccount_socialapp_id_seq"', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."socialaccount_socialtoken_id_seq"', 1, false);


--
-- Name: userapp_custombaseuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."userapp_custombaseuser_groups_id_seq"', 1, false);


--
-- Name: userapp_custombaseuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."userapp_custombaseuser_id_seq"', 13, true);


--
-- Name: userapp_custombaseuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."userapp_custombaseuser_user_permissions_id_seq"', 1, false);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_pkey" PRIMARY KEY ("id");


--
-- Name: account_emailaddress account_emailaddress_user_id_email_987c8728_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_user_id_email_987c8728_uniq" UNIQUE ("user_id", "email");


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_key_key" UNIQUE ("key");


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirmation_pkey" PRIMARY KEY ("id");


--
-- Name: artapp_artpicturemodel artapp_artpicturemodel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artpicturemodel"
    ADD CONSTRAINT "artapp_artpicturemodel_pkey" PRIMARY KEY ("id");


--
-- Name: artapp_artproduct artapp_artproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artproduct"
    ADD CONSTRAINT "artapp_artproduct_pkey" PRIMARY KEY ("id");


--
-- Name: artapp_brand artapp_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_brand"
    ADD CONSTRAINT "artapp_brand_pkey" PRIMARY KEY ("id");


--
-- Name: artapp_category artapp_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_category"
    ADD CONSTRAINT "artapp_category_pkey" PRIMARY KEY ("id");


--
-- Name: auction_app_auctiongroup auction_app_auctiongroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroup"
    ADD CONSTRAINT "auction_app_auctiongroup_pkey" PRIMARY KEY ("id");


--
-- Name: auction_app_auctiongroupchat auction_app_auctiongroupchat_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroupchat"
    ADD CONSTRAINT "auction_app_auctiongroupchat_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group"
    ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");


--
-- Name: cart_cartmodel cart_cartmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."cart_cartmodel"
    ADD CONSTRAINT "cart_cartmodel_pkey" PRIMARY KEY ("id");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_clockedschedule"
    ADD CONSTRAINT "django_celery_beat_clockedschedule_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_crontabschedule"
    ADD CONSTRAINT "django_celery_beat_crontabschedule_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_intervalschedule"
    ADD CONSTRAINT "django_celery_beat_intervalschedule_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_periodictask_name_key" UNIQUE ("name");


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_periodictask_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictasks"
    ADD CONSTRAINT "django_celery_beat_periodictasks_pkey" PRIMARY KEY ("ident");


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_solarschedule"
    ADD CONSTRAINT "django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq" UNIQUE ("event", "latitude", "longitude");


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_solarschedule"
    ADD CONSTRAINT "django_celery_beat_solarschedule_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_chordcounter"
    ADD CONSTRAINT "django_celery_results_chordcounter_group_id_key" UNIQUE ("group_id");


--
-- Name: django_celery_results_chordcounter django_celery_results_chordcounter_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_chordcounter"
    ADD CONSTRAINT "django_celery_results_chordcounter_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_results_groupresult django_celery_results_groupresult_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_groupresult"
    ADD CONSTRAINT "django_celery_results_groupresult_group_id_key" UNIQUE ("group_id");


--
-- Name: django_celery_results_groupresult django_celery_results_groupresult_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_groupresult"
    ADD CONSTRAINT "django_celery_results_groupresult_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_taskresult"
    ADD CONSTRAINT "django_celery_results_taskresult_pkey" PRIMARY KEY ("id");


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_results_taskresult"
    ADD CONSTRAINT "django_celery_results_taskresult_task_id_key" UNIQUE ("task_id");


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_content_type"
    ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_migrations"
    ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_session"
    ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_pkey" PRIMARY KEY ("id");


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_socialaccount_provider_uid_fc810c6e_uniq" UNIQUE ("provider", "uid");


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialapp"
    ADD CONSTRAINT "socialaccount_socialapp_pkey" PRIMARY KEY ("id");


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq" UNIQUE ("app_id", "account_id");


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_socialtoken_pkey" PRIMARY KEY ("id");


--
-- Name: userapp_custombaseuser userapp_custombaseuser_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser"
    ADD CONSTRAINT "userapp_custombaseuser_email_key" UNIQUE ("email");


--
-- Name: userapp_custombaseuser_groups userapp_custombaseuser_g_custombaseuser_id_group__243a0018_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_groups"
    ADD CONSTRAINT "userapp_custombaseuser_g_custombaseuser_id_group__243a0018_uniq" UNIQUE ("custombaseuser_id", "group_id");


--
-- Name: userapp_custombaseuser_groups userapp_custombaseuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_groups"
    ADD CONSTRAINT "userapp_custombaseuser_groups_pkey" PRIMARY KEY ("id");


--
-- Name: userapp_custombaseuser userapp_custombaseuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser"
    ADD CONSTRAINT "userapp_custombaseuser_pkey" PRIMARY KEY ("id");


--
-- Name: userapp_custombaseuser_user_permissions userapp_custombaseuser_u_custombaseuser_id_permis_cbdb251c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_user_permissions"
    ADD CONSTRAINT "userapp_custombaseuser_u_custombaseuser_id_permis_cbdb251c_uniq" UNIQUE ("custombaseuser_id", "permission_id");


--
-- Name: userapp_custombaseuser_user_permissions userapp_custombaseuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_user_permissions"
    ADD CONSTRAINT "userapp_custombaseuser_user_permissions_pkey" PRIMARY KEY ("id");


--
-- Name: account_emailaddress_email_03be32b2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "account_emailaddress_email_03be32b2" ON "public"."account_emailaddress" USING "btree" ("email");


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "account_emailaddress_email_03be32b2_like" ON "public"."account_emailaddress" USING "btree" ("email" "varchar_pattern_ops");


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "account_emailaddress_user_id_2c513194" ON "public"."account_emailaddress" USING "btree" ("user_id");


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "account_emailconfirmation_email_address_id_5b7f8c58" ON "public"."account_emailconfirmation" USING "btree" ("email_address_id");


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "account_emailconfirmation_key_f43612bd_like" ON "public"."account_emailconfirmation" USING "btree" ("key" "varchar_pattern_ops");


--
-- Name: artapp_artpicturemodel_pic_name_id_217d2b05; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "artapp_artpicturemodel_pic_name_id_217d2b05" ON "public"."artapp_artpicturemodel" USING "btree" ("pic_name_id");


--
-- Name: artapp_artproduct_brand_id_bea7e8d9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "artapp_artproduct_brand_id_bea7e8d9" ON "public"."artapp_artproduct" USING "btree" ("brand_id");


--
-- Name: artapp_artproduct_category_id_2cd86f05; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "artapp_artproduct_category_id_2cd86f05" ON "public"."artapp_artproduct" USING "btree" ("category_id");


--
-- Name: artapp_artproduct_owner_id_ee4b5574; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "artapp_artproduct_owner_id_ee4b5574" ON "public"."artapp_artproduct" USING "btree" ("owner_id");


--
-- Name: auction_app_auctiongroup_user_online_id_bfa6c861; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auction_app_auctiongroup_user_online_id_bfa6c861" ON "public"."auction_app_auctiongroup" USING "btree" ("user_online_id");


--
-- Name: auction_app_auctiongroupchat_Artproduct_id_eed26ce3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auction_app_auctiongroupchat_Artproduct_id_eed26ce3" ON "public"."auction_app_auctiongroupchat" USING "btree" ("Artproduct_id");


--
-- Name: auction_app_auctiongroupchat_author_id_568ab41f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auction_app_auctiongroupchat_author_id_568ab41f" ON "public"."auction_app_auctiongroupchat" USING "btree" ("author_id");


--
-- Name: auction_app_auctiongroupchat_group_id_008b5e68; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auction_app_auctiongroupchat_group_id_008b5e68" ON "public"."auction_app_auctiongroupchat" USING "btree" ("group_id");


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING "btree" ("group_id");


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING "btree" ("permission_id");


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING "btree" ("content_type_id");


--
-- Name: cart_cartmodel_product_id_1db1c0d4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "cart_cartmodel_product_id_1db1c0d4" ON "public"."cart_cartmodel" USING "btree" ("product_id");


--
-- Name: cart_cartmodel_user_id_8dfc308f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "cart_cartmodel_user_id_8dfc308f" ON "public"."cart_cartmodel" USING "btree" ("user_id");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING "btree" ("content_type_id");


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING "btree" ("user_id");


--
-- Name: django_cele_date_cr_bd6c1d_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_date_cr_bd6c1d_idx" ON "public"."django_celery_results_groupresult" USING "btree" ("date_created");


--
-- Name: django_cele_date_cr_f04a50_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_date_cr_f04a50_idx" ON "public"."django_celery_results_taskresult" USING "btree" ("date_created");


--
-- Name: django_cele_date_do_caae0e_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_date_do_caae0e_idx" ON "public"."django_celery_results_groupresult" USING "btree" ("date_done");


--
-- Name: django_cele_date_do_f59aad_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_date_do_f59aad_idx" ON "public"."django_celery_results_taskresult" USING "btree" ("date_done");


--
-- Name: django_cele_status_9b6201_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_status_9b6201_idx" ON "public"."django_celery_results_taskresult" USING "btree" ("status");


--
-- Name: django_cele_task_na_08aec9_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_task_na_08aec9_idx" ON "public"."django_celery_results_taskresult" USING "btree" ("task_name");


--
-- Name: django_cele_worker_d54dd8_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_cele_worker_d54dd8_idx" ON "public"."django_celery_results_taskresult" USING "btree" ("worker");


--
-- Name: django_celery_beat_periodictask_clocked_id_47a69f82; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_beat_periodictask_clocked_id_47a69f82" ON "public"."django_celery_beat_periodictask" USING "btree" ("clocked_id");


--
-- Name: django_celery_beat_periodictask_crontab_id_d3cba168; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_beat_periodictask_crontab_id_d3cba168" ON "public"."django_celery_beat_periodictask" USING "btree" ("crontab_id");


--
-- Name: django_celery_beat_periodictask_interval_id_a8ca27da; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_beat_periodictask_interval_id_a8ca27da" ON "public"."django_celery_beat_periodictask" USING "btree" ("interval_id");


--
-- Name: django_celery_beat_periodictask_name_265a36b7_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_beat_periodictask_name_265a36b7_like" ON "public"."django_celery_beat_periodictask" USING "btree" ("name" "varchar_pattern_ops");


--
-- Name: django_celery_beat_periodictask_solar_id_a87ce72c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_beat_periodictask_solar_id_a87ce72c" ON "public"."django_celery_beat_periodictask" USING "btree" ("solar_id");


--
-- Name: django_celery_results_chordcounter_group_id_1f70858c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_results_chordcounter_group_id_1f70858c_like" ON "public"."django_celery_results_chordcounter" USING "btree" ("group_id" "varchar_pattern_ops");


--
-- Name: django_celery_results_groupresult_group_id_a085f1a9_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_results_groupresult_group_id_a085f1a9_like" ON "public"."django_celery_results_groupresult" USING "btree" ("group_id" "varchar_pattern_ops");


--
-- Name: django_celery_results_taskresult_task_id_de0d95bf_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_celery_results_taskresult_task_id_de0d95bf_like" ON "public"."django_celery_results_taskresult" USING "btree" ("task_id" "varchar_pattern_ops");


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING "btree" ("expire_date");


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING "btree" ("session_key" "varchar_pattern_ops");


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "socialaccount_socialaccount_user_id_8146e70c" ON "public"."socialaccount_socialaccount" USING "btree" ("user_id");


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "socialaccount_socialtoken_account_id_951f210e" ON "public"."socialaccount_socialtoken" USING "btree" ("account_id");


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "socialaccount_socialtoken_app_id_636a42d7" ON "public"."socialaccount_socialtoken" USING "btree" ("app_id");


--
-- Name: unique_primary_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "unique_primary_email" ON "public"."account_emailaddress" USING "btree" ("user_id", "primary") WHERE "primary";


--
-- Name: unique_verified_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "unique_verified_email" ON "public"."account_emailaddress" USING "btree" ("email") WHERE "verified";


--
-- Name: userapp_custombaseuser_email_002bf874_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "userapp_custombaseuser_email_002bf874_like" ON "public"."userapp_custombaseuser" USING "btree" ("email" "varchar_pattern_ops");


--
-- Name: userapp_custombaseuser_groups_custombaseuser_id_208e9737; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "userapp_custombaseuser_groups_custombaseuser_id_208e9737" ON "public"."userapp_custombaseuser_groups" USING "btree" ("custombaseuser_id");


--
-- Name: userapp_custombaseuser_groups_group_id_5e3fc934; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "userapp_custombaseuser_groups_group_id_5e3fc934" ON "public"."userapp_custombaseuser_groups" USING "btree" ("group_id");


--
-- Name: userapp_custombaseuser_use_custombaseuser_id_265b62b2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "userapp_custombaseuser_use_custombaseuser_id_265b62b2" ON "public"."userapp_custombaseuser_user_permissions" USING "btree" ("custombaseuser_id");


--
-- Name: userapp_custombaseuser_user_permissions_permission_id_b3cf12e8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "userapp_custombaseuser_user_permissions_permission_id_b3cf12e8" ON "public"."userapp_custombaseuser_user_permissions" USING "btree" ("permission_id");


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailaddress"
    ADD CONSTRAINT "account_emailaddress_user_id_2c513194_fk_userapp_c" FOREIGN KEY ("user_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."account_emailconfirmation"
    ADD CONSTRAINT "account_emailconfirm_email_address_id_5b7f8c58_fk_account_e" FOREIGN KEY ("email_address_id") REFERENCES "public"."account_emailaddress"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artapp_artpicturemodel artapp_artpicturemod_pic_name_id_217d2b05_fk_artapp_ar; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artpicturemodel"
    ADD CONSTRAINT "artapp_artpicturemod_pic_name_id_217d2b05_fk_artapp_ar" FOREIGN KEY ("pic_name_id") REFERENCES "public"."artapp_artproduct"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artapp_artproduct artapp_artproduct_brand_id_bea7e8d9_fk_artapp_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artproduct"
    ADD CONSTRAINT "artapp_artproduct_brand_id_bea7e8d9_fk_artapp_brand_id" FOREIGN KEY ("brand_id") REFERENCES "public"."artapp_brand"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artapp_artproduct artapp_artproduct_category_id_2cd86f05_fk_artapp_category_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artproduct"
    ADD CONSTRAINT "artapp_artproduct_category_id_2cd86f05_fk_artapp_category_id" FOREIGN KEY ("category_id") REFERENCES "public"."artapp_category"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: artapp_artproduct artapp_artproduct_owner_id_ee4b5574_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."artapp_artproduct"
    ADD CONSTRAINT "artapp_artproduct_owner_id_ee4b5574_fk_userapp_c" FOREIGN KEY ("owner_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auction_app_auctiongroupchat auction_app_auctiong_Artproduct_id_eed26ce3_fk_artapp_ar; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroupchat"
    ADD CONSTRAINT "auction_app_auctiong_Artproduct_id_eed26ce3_fk_artapp_ar" FOREIGN KEY ("Artproduct_id") REFERENCES "public"."artapp_artproduct"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auction_app_auctiongroupchat auction_app_auctiong_author_id_568ab41f_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroupchat"
    ADD CONSTRAINT "auction_app_auctiong_author_id_568ab41f_fk_userapp_c" FOREIGN KEY ("author_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auction_app_auctiongroupchat auction_app_auctiong_group_id_008b5e68_fk_auction_a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroupchat"
    ADD CONSTRAINT "auction_app_auctiong_group_id_008b5e68_fk_auction_a" FOREIGN KEY ("group_id") REFERENCES "public"."auction_app_auctiongroup"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auction_app_auctiongroup auction_app_auctiong_user_online_id_bfa6c861_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auction_app_auctiongroup"
    ADD CONSTRAINT "auction_app_auctiong_user_online_id_bfa6c861_fk_userapp_c" FOREIGN KEY ("user_online_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_group_permissions"
    ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."auth_permission"
    ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartmodel cart_cartmodel_product_id_1db1c0d4_fk_artapp_artproduct_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."cart_cartmodel"
    ADD CONSTRAINT "cart_cartmodel_product_id_1db1c0d4_fk_artapp_artproduct_id" FOREIGN KEY ("product_id") REFERENCES "public"."artapp_artproduct"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_cartmodel cart_cartmodel_user_id_8dfc308f_fk_userapp_custombaseuser_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."cart_cartmodel"
    ADD CONSTRAINT "cart_cartmodel_user_id_8dfc308f_fk_userapp_custombaseuser_id" FOREIGN KEY ("user_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_userapp_custombaseuser_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_admin_log"
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_userapp_custombaseuser_id" FOREIGN KEY ("user_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_p_clocked_id_47a69f82_fk_django_ce" FOREIGN KEY ("clocked_id") REFERENCES "public"."django_celery_beat_clockedschedule"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_p_crontab_id_d3cba168_fk_django_ce" FOREIGN KEY ("crontab_id") REFERENCES "public"."django_celery_beat_crontabschedule"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_p_interval_id_a8ca27da_fk_django_ce" FOREIGN KEY ("interval_id") REFERENCES "public"."django_celery_beat_intervalschedule"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."django_celery_beat_periodictask"
    ADD CONSTRAINT "django_celery_beat_p_solar_id_a87ce72c_fk_django_ce" FOREIGN KEY ("solar_id") REFERENCES "public"."django_celery_beat_solarschedule"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_social_account_id_951f210e_fk_socialacc" FOREIGN KEY ("account_id") REFERENCES "public"."socialaccount_socialaccount"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialtoken"
    ADD CONSTRAINT "socialaccount_social_app_id_636a42d7_fk_socialacc" FOREIGN KEY ("app_id") REFERENCES "public"."socialaccount_socialapp"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."socialaccount_socialaccount"
    ADD CONSTRAINT "socialaccount_social_user_id_8146e70c_fk_userapp_c" FOREIGN KEY ("user_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userapp_custombaseuser_groups userapp_custombaseus_custombaseuser_id_208e9737_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_groups"
    ADD CONSTRAINT "userapp_custombaseus_custombaseuser_id_208e9737_fk_userapp_c" FOREIGN KEY ("custombaseuser_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userapp_custombaseuser_user_permissions userapp_custombaseus_custombaseuser_id_265b62b2_fk_userapp_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_user_permissions"
    ADD CONSTRAINT "userapp_custombaseus_custombaseuser_id_265b62b2_fk_userapp_c" FOREIGN KEY ("custombaseuser_id") REFERENCES "public"."userapp_custombaseuser"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userapp_custombaseuser_groups userapp_custombaseus_group_id_5e3fc934_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_groups"
    ADD CONSTRAINT "userapp_custombaseus_group_id_5e3fc934_fk_auth_grou" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: userapp_custombaseuser_user_permissions userapp_custombaseus_permission_id_b3cf12e8_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."userapp_custombaseuser_user_permissions"
    ADD CONSTRAINT "userapp_custombaseus_permission_id_b3cf12e8_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--
