--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


ALTER TABLE public.active_admin_comments OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: address_proofs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE address_proofs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.address_proofs OWNER TO postgres;

--
-- Name: address_proofs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE address_proofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_proofs_id_seq OWNER TO postgres;

--
-- Name: address_proofs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE address_proofs_id_seq OWNED BY address_proofs.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role character varying(255)
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: assets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE assets (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.assets OWNER TO postgres;

--
-- Name: assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assets_id_seq OWNER TO postgres;

--
-- Name: assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE assets_id_seq OWNED BY assets.id;


--
-- Name: b_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE b_documents (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.b_documents OWNER TO postgres;

--
-- Name: b_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE b_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.b_documents_id_seq OWNER TO postgres;

--
-- Name: b_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE b_documents_id_seq OWNED BY b_documents.id;


--
-- Name: business_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE business_documents (
    id integer NOT NULL,
    business_id integer,
    work_servey_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer
);


ALTER TABLE public.business_documents OWNER TO postgres;

--
-- Name: business_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE business_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.business_documents_id_seq OWNER TO postgres;

--
-- Name: business_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE business_documents_id_seq OWNED BY business_documents.id;


--
-- Name: business_verifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE business_verifications (
    id integer NOT NULL,
    user_id integer,
    customer_id integer,
    business_id integer,
    tab_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.business_verifications OWNER TO postgres;

--
-- Name: business_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE business_verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.business_verifications_id_seq OWNER TO postgres;

--
-- Name: business_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE business_verifications_id_seq OWNED BY business_verifications.id;


--
-- Name: businesses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE businesses (
    id integer NOT NULL,
    application_ref_no character varying(255),
    agency_name character varying(255),
    document_required boolean,
    fh_code character varying(255),
    applicant_name character varying(255),
    application_status character varying(255),
    landmark character varying(255),
    address text,
    country_name character varying(255),
    country_state character varying(255),
    country_city character varying(255),
    pincode_id integer,
    slug character varying(255),
    latitude double precision,
    longitude double precision,
    status character varying(255),
    customer_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_name character varying(255),
    pan_number character varying(255),
    emp_code character varying(255)
);


ALTER TABLE public.businesses OWNER TO postgres;

--
-- Name: businesses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE businesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.businesses_id_seq OWNER TO postgres;

--
-- Name: businesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE businesses_id_seq OWNED BY businesses.id;


--
-- Name: client_verifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client_verifications (
    id integer NOT NULL,
    co_applicant_business_id integer,
    tab_id integer,
    user_id integer,
    customer_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.client_verifications OWNER TO postgres;

--
-- Name: client_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE client_verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_verifications_id_seq OWNER TO postgres;

--
-- Name: client_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE client_verifications_id_seq OWNED BY client_verifications.id;


--
-- Name: co_applicant_business_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_business_documents (
    id integer NOT NULL,
    co_applicant_business_id integer,
    co_applicant_work_detail_id integer,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.co_applicant_business_documents OWNER TO postgres;

--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_business_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_business_documents_id_seq OWNER TO postgres;

--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_business_documents_id_seq OWNED BY co_applicant_business_documents.id;


--
-- Name: co_applicant_businesses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_businesses (
    id integer NOT NULL,
    application_ref_no character varying(255),
    agency_name character varying(255),
    document_required boolean,
    fh_code character varying(255),
    applicant_name character varying(255),
    application_status character varying(255),
    landmark character varying(255),
    address text,
    country character varying(255),
    city character varying(255),
    state character varying(255),
    pincode_id integer,
    slug character varying(255),
    latitude double precision,
    longitude double precision,
    status character varying(255),
    customer_id integer,
    company_name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    pan_number character varying(255),
    emp_code character varying(255)
);


ALTER TABLE public.co_applicant_businesses OWNER TO postgres;

--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_businesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_businesses_id_seq OWNER TO postgres;

--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_businesses_id_seq OWNED BY co_applicant_businesses.id;


--
-- Name: co_applicant_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_documents (
    id integer NOT NULL,
    co_applicant_id integer,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    co_applicant_servey_id integer
);


ALTER TABLE public.co_applicant_documents OWNER TO postgres;

--
-- Name: co_applicant_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_documents_id_seq OWNER TO postgres;

--
-- Name: co_applicant_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_documents_id_seq OWNED BY co_applicant_documents.id;


--
-- Name: co_applicant_serveys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_serveys (
    id integer NOT NULL,
    co_applicant_id integer,
    tab_id integer,
    address_confirmed boolean,
    name_and_stay_confirm boolean,
    date_of_visit date,
    time_of_visit time without time zone,
    person_contacted character varying(255),
    relation_with_applicant character varying(255),
    years_lived_at_current_address integer,
    residence_status character varying(255),
    educational_qualification character varying(255),
    marital_status character varying(255),
    no_of_family_members integer,
    working_member integer,
    children integer,
    spouse_working boolean,
    spouse_working_detail character varying(255),
    name_plate_seen boolean,
    credit_card boolean,
    card_no character varying(255),
    card_limit double precision,
    issuing_bank character varying(255),
    expiry_date date,
    customer_beaviour character varying(255),
    neighbour_ref character varying(255),
    name_varified_from character varying(255),
    type_of_residence character varying(255),
    locality_of_residence character varying(255),
    ease_of_location character varying(255),
    construction_of_residence character varying(255),
    comments_of_exteriors character varying(255),
    carpet_area_in_sq_feet double precision,
    interior_condition character varying(255),
    asset_seen_at_residence character varying(255),
    potrait_on_wall boolean,
    applicant_residing_detail boolean,
    application_availibility_time character varying(255),
    no_of_family_member_in_the_house integer,
    verifiers_remark text,
    accept_or_decline boolean,
    refer_to_bank character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    photo_required boolean,
    date_of_birth date,
    pancard_number character varying(255),
    passport_number character varying(255),
    driving_licence_number character varying(255),
    electricity_acc_number character varying(255)
);


ALTER TABLE public.co_applicant_serveys OWNER TO postgres;

--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_serveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_serveys_id_seq OWNER TO postgres;

--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_serveys_id_seq OWNED BY co_applicant_serveys.id;


--
-- Name: co_applicant_verifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_verifications (
    id integer NOT NULL,
    co_applicant_id integer,
    user_id integer,
    customer_id integer,
    tab_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.co_applicant_verifications OWNER TO postgres;

--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_verifications_id_seq OWNER TO postgres;

--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_verifications_id_seq OWNED BY co_applicant_verifications.id;


--
-- Name: co_applicant_work_details; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicant_work_details (
    id integer NOT NULL,
    co_applicant_business_id integer,
    office_address character varying(255) DEFAULT 'N/A'::character varying,
    latitude double precision,
    longitude double precision,
    name_and_employee_confirm boolean,
    applicant_designation character varying(255) DEFAULT 'N/A'::character varying,
    date_of_visit date,
    time_of_visit time without time zone,
    person_met character varying(255),
    designation_of_person_met character varying(255),
    telephone_number character varying(255),
    ext_number character varying(255),
    mobile_number character varying(255),
    number_of_years_in_present_employment integer,
    visiting_card_obtained boolean,
    name_of_the_company character varying(255),
    type_of_business character varying(255),
    nature_of_business character varying(255),
    nob_in_detail character varying(255),
    office_ownership character varying(255),
    no_of_employees character varying(255),
    no_of_branches character varying(255),
    average_monthly_turn_over double precision,
    no_of_customer_per_date integer,
    type_of_job character varying(255),
    working_as character varying(255),
    job_transferable boolean,
    salary_drawn double precision,
    no_of_years_worked double precision,
    board_seen boolean,
    name_verified_from character varying(255),
    type_of_office character varying(255),
    locality_of_office character varying(255),
    construction_of_office character varying(255),
    exterior character varying(255),
    interior character varying(255),
    office_area double precision,
    ease_of_location character varying(255),
    activity_level character varying(255),
    no_of_employees_sighted integer,
    no_of_customer_seen integer,
    political_party boolean,
    no_of_item_seen character varying(255),
    verifier_remark text,
    positive boolean,
    refer_to_bank character varying(255),
    user_id integer,
    verifier_signature integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    co_applicant_id integer,
    pincode_id integer,
    customer_id integer,
    status character varying(255),
    document_required boolean,
    company_name character varying(255),
    landmark character varying(255),
    city character varying(255),
    state character varying(255),
    application_ref_no integer,
    company_name_new character varying(255),
    tab_id integer
);


ALTER TABLE public.co_applicant_work_details OWNER TO postgres;

--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicant_work_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicant_work_details_id_seq OWNER TO postgres;

--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicant_work_details_id_seq OWNED BY co_applicant_work_details.id;


--
-- Name: co_applicants; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_applicants (
    id integer NOT NULL,
    applicant_name character varying(255),
    agency_name character varying(255),
    document_required boolean,
    fh_code character varying(255),
    landmark character varying(255),
    country_name character varying(255),
    country_state character varying(255),
    country_city character varying(255),
    slug character varying(255),
    status character varying(255),
    customer_id integer,
    address character varying(255),
    latitude double precision,
    longitude double precision,
    application_status character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    contact_number character varying(255),
    application_ref_no integer,
    pincode_id integer,
    state character varying(255),
    d_o_b date
);


ALTER TABLE public.co_applicants OWNER TO postgres;

--
-- Name: co_applicants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_applicants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_applicants_id_seq OWNER TO postgres;

--
-- Name: co_applicants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_applicants_id_seq OWNED BY co_applicants.id;


--
-- Name: customer_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customer_documents (
    id integer NOT NULL,
    customer_id integer,
    photo character varying(255),
    photo_name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    servey_id integer
);


ALTER TABLE public.customer_documents OWNER TO postgres;

--
-- Name: customer_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customer_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_documents_id_seq OWNER TO postgres;

--
-- Name: customer_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE customer_documents_id_seq OWNED BY customer_documents.id;


--
-- Name: customer_verifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customer_verifications (
    id integer NOT NULL,
    user_id integer,
    customer_id integer,
    tab_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    verify_co_applicant_address_1 boolean,
    verify_co_applicant_address_2 boolean,
    work_servey_id integer
);


ALTER TABLE public.customer_verifications OWNER TO postgres;

--
-- Name: customer_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customer_verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_verifications_id_seq OWNER TO postgres;

--
-- Name: customer_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE customer_verifications_id_seq OWNED BY customer_verifications.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customers (
    id integer NOT NULL,
    application_ref_no character varying(255),
    agency_name character varying(255),
    fh_code character varying(255),
    applicant_name character varying(255),
    address text,
    landmark character varying(255),
    d_o_b date,
    pincode_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255),
    latitude double precision,
    longitude double precision,
    gmaps boolean,
    contact_number character varying(255),
    status character varying(255),
    pin integer,
    country_state character varying(255),
    country_city character varying(255),
    country_name character varying(255),
    snapshot character varying(255),
    application_status character varying(255),
    photo_required boolean
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: headshot_photos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE headshot_photos (
    id integer NOT NULL,
    description character varying(255),
    image_file_name character varying(255),
    image_content_type character varying(255),
    image_file_size integer,
    capturable_id integer,
    capturable_type character varying(255),
    image_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.headshot_photos OWNER TO postgres;

--
-- Name: headshot_photos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE headshot_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.headshot_photos_id_seq OWNER TO postgres;

--
-- Name: headshot_photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE headshot_photos_id_seq OWNED BY headshot_photos.id;


--
-- Name: office_assets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE office_assets (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.office_assets OWNER TO postgres;

--
-- Name: office_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE office_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.office_assets_id_seq OWNER TO postgres;

--
-- Name: office_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE office_assets_id_seq OWNED BY office_assets.id;


--
-- Name: pincodes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pincodes (
    id integer NOT NULL,
    name character varying(255),
    pin_number integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pincodes OWNER TO postgres;

--
-- Name: pincodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pincodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pincodes_id_seq OWNER TO postgres;

--
-- Name: pincodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pincodes_id_seq OWNED BY pincodes.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE profiles (
    id integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    photo_file_name character varying(255),
    photo_content_type character varying(255),
    photo_file_size integer,
    slug character varying(255),
    contact_no_1 character varying(255),
    contact_no_2 character varying(255),
    blood_group character varying(255),
    address text,
    date_of_birth date,
    verification_area character varying(255),
    hobbies text
);


ALTER TABLE public.profiles OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profiles_id_seq OWNED BY profiles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: serveys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE serveys (
    id integer NOT NULL,
    customer_id integer,
    tab_id integer,
    address_confirmed boolean,
    name_and_stay_confirm boolean,
    date_of_visit date,
    time_of_visit time without time zone,
    person_contacted character varying(255),
    relation_with_applicant character varying(255),
    years_lived_at_current_address integer,
    residence_status character varying(255),
    educational_qualification character varying(255),
    marital_status character varying(255),
    no_of_family_members integer,
    working_member integer,
    children integer,
    spouse_working boolean,
    spouse_working_detail character varying(255),
    name_plate_seen boolean,
    credit_card boolean,
    card_no character varying(255),
    card_limit double precision,
    issuing_bank character varying(255),
    expiry_date date,
    customer_beaviour character varying(255),
    neighbour_ref character varying(255),
    name_varified_from character varying(255),
    type_of_residence character varying(255),
    locality_of_residence character varying(255),
    ease_of_location character varying(255),
    construction_of_residence character varying(255),
    comments_of_exteriors character varying(255),
    carpet_area_in_sq_feet double precision,
    interior_condition character varying(255),
    asset_seen_at_residence character varying(255),
    potrait_on_wall boolean,
    applicant_residing_detail boolean,
    application_availibility_time character varying(255),
    no_of_family_member_in_the_house integer,
    verifiers_remark text,
    accept_or_decline boolean,
    refer_to_bank character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    date_of_birth date,
    pancard_number character varying(255),
    passport_number character varying(255),
    driving_licence_number character varying(255),
    electricity_acc_number character varying(255)
);


ALTER TABLE public.serveys OWNER TO postgres;

--
-- Name: serveys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.serveys_id_seq OWNER TO postgres;

--
-- Name: serveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE serveys_id_seq OWNED BY serveys.id;


--
-- Name: tabs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tabs (
    id integer NOT NULL,
    name character varying(255),
    tab_code character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    pin_code character varying(255),
    mac_address character varying(255),
    pincode_id integer
);


ALTER TABLE public.tabs OWNER TO postgres;

--
-- Name: tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tabs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tabs_id_seq OWNER TO postgres;

--
-- Name: tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tabs_id_seq OWNED BY tabs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role character varying(255),
    name character varying(255),
    tab_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: webcam_pictures; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE webcam_pictures (
    id integer NOT NULL,
    name character varying(255),
    snapshot character varying(255),
    customer_id integer,
    servey_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.webcam_pictures OWNER TO postgres;

--
-- Name: webcam_pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE webcam_pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webcam_pictures_id_seq OWNER TO postgres;

--
-- Name: webcam_pictures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE webcam_pictures_id_seq OWNED BY webcam_pictures.id;


--
-- Name: work_servey_verifications; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE work_servey_verifications (
    id integer NOT NULL,
    user_id integer,
    work_servey_id integer,
    tab_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.work_servey_verifications OWNER TO postgres;

--
-- Name: work_servey_verifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE work_servey_verifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_servey_verifications_id_seq OWNER TO postgres;

--
-- Name: work_servey_verifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE work_servey_verifications_id_seq OWNED BY work_servey_verifications.id;


--
-- Name: work_serveys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE work_serveys (
    id integer NOT NULL,
    business_id integer,
    office_address character varying(255) DEFAULT 'N/A'::character varying,
    latitude double precision,
    longitude double precision,
    name_and_employee_confirm boolean,
    applicant_designation character varying(255) DEFAULT 'N/A'::character varying,
    date_of_visit date,
    time_of_visit time without time zone,
    person_met character varying(255),
    designation_of_person_met character varying(255),
    telephone_number character varying(255),
    ext_number character varying(255),
    mobile_number character varying(255),
    number_of_years_in_present_employment integer,
    visiting_card_obtained boolean,
    name_of_the_company character varying(255),
    type_of_business character varying(255),
    nature_of_business character varying(255),
    nob_in_detail character varying(255),
    office_ownership character varying(255),
    no_of_employees character varying(255),
    no_of_branches character varying(255),
    average_monthly_turn_over double precision,
    no_of_customer_per_date integer,
    type_of_job character varying(255),
    working_as character varying(255),
    job_transferable boolean,
    salary_drawn double precision,
    no_of_years_worked double precision,
    board_seen boolean,
    name_verified_from character varying(255),
    type_of_office character varying(255),
    locality_of_office character varying(255),
    construction_of_office character varying(255),
    exterior character varying(255),
    interior character varying(255),
    office_area double precision,
    ease_of_location character varying(255),
    activity_level character varying(255),
    no_of_employees_sighted integer,
    no_of_customer_seen integer,
    political_party boolean,
    no_of_item_seen character varying(255),
    verifier_remark text,
    positive boolean,
    refer_to_bank character varying(255),
    user_id integer,
    verifier_signature integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    pincode_id integer,
    customer_id integer,
    status character varying(255),
    tab_id integer,
    company_name_new character varying(255)
);


ALTER TABLE public.work_serveys OWNER TO postgres;

--
-- Name: work_serveys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE work_serveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_serveys_id_seq OWNER TO postgres;

--
-- Name: work_serveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE work_serveys_id_seq OWNED BY work_serveys.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address_proofs ALTER COLUMN id SET DEFAULT nextval('address_proofs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY assets ALTER COLUMN id SET DEFAULT nextval('assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY b_documents ALTER COLUMN id SET DEFAULT nextval('b_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY business_documents ALTER COLUMN id SET DEFAULT nextval('business_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY business_verifications ALTER COLUMN id SET DEFAULT nextval('business_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY businesses ALTER COLUMN id SET DEFAULT nextval('businesses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client_verifications ALTER COLUMN id SET DEFAULT nextval('client_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_business_documents ALTER COLUMN id SET DEFAULT nextval('co_applicant_business_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_businesses ALTER COLUMN id SET DEFAULT nextval('co_applicant_businesses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_documents ALTER COLUMN id SET DEFAULT nextval('co_applicant_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_serveys ALTER COLUMN id SET DEFAULT nextval('co_applicant_serveys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_verifications ALTER COLUMN id SET DEFAULT nextval('co_applicant_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicant_work_details ALTER COLUMN id SET DEFAULT nextval('co_applicant_work_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_applicants ALTER COLUMN id SET DEFAULT nextval('co_applicants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer_documents ALTER COLUMN id SET DEFAULT nextval('customer_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer_verifications ALTER COLUMN id SET DEFAULT nextval('customer_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY headshot_photos ALTER COLUMN id SET DEFAULT nextval('headshot_photos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY office_assets ALTER COLUMN id SET DEFAULT nextval('office_assets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pincodes ALTER COLUMN id SET DEFAULT nextval('pincodes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profiles ALTER COLUMN id SET DEFAULT nextval('profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY serveys ALTER COLUMN id SET DEFAULT nextval('serveys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tabs ALTER COLUMN id SET DEFAULT nextval('tabs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY webcam_pictures ALTER COLUMN id SET DEFAULT nextval('webcam_pictures_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY work_servey_verifications ALTER COLUMN id SET DEFAULT nextval('work_servey_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY work_serveys ALTER COLUMN id SET DEFAULT nextval('work_serveys_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY active_admin_comments (id, resource_id, resource_type, author_id, author_type, body, created_at, updated_at, namespace) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: address_proofs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY address_proofs (id, name, created_at, updated_at) FROM stdin;
1	Ration Card	2013-07-29 07:21:18.88529	2013-07-29 07:21:18.88529
2	Electricity Bill	2013-07-29 07:21:18.947707	2013-07-29 07:21:18.947707
3	Telephone Bill	2013-07-29 07:21:18.95591	2013-07-29 07:21:18.95591
4	Bank Statement card	2013-07-29 07:21:18.964207	2013-07-29 07:21:18.964207
5	Driving licence	2013-07-29 07:21:18.972539	2013-07-29 07:21:18.972539
6	Passport	2013-07-29 07:21:18.980904	2013-07-29 07:21:18.980904
\.


--
-- Name: address_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('address_proofs_id_seq', 6, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
1	admin@example.com	$2a$10$REUdAQg6.MYmD2My3pyY4.U7F0dQRtchUCDn5uTU8TdBmvlihLi/q	\N	\N	\N	0	\N	\N	\N	\N	2013-07-29 07:20:59.833817	2013-07-29 07:20:59.833817	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2013-07-29 07:21:19.057801	2013-07-29 07:21:19.057801
2	Air Conditioner	2013-07-29 07:21:19.064556	2013-07-29 07:21:19.064556
3	Refrigrator	2013-07-29 07:21:19.072346	2013-07-29 07:21:19.072346
4	Music System	2013-07-29 07:21:19.080702	2013-07-29 07:21:19.080702
\.


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assets_id_seq', 4, true);


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2013-07-29 07:21:19.007693	2013-07-29 07:21:19.007693
2	Salary Slip	2013-07-29 07:21:19.014677	2013-07-29 07:21:19.014677
3	Mobile Bill	2013-07-29 07:21:19.022529	2013-07-29 07:21:19.022529
4	Pan Card	2013-07-29 07:21:19.030829	2013-07-29 07:21:19.030829
\.


--
-- Name: b_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('b_documents_id_seq', 4, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
1	3	1	2013-07-31 13:09:09.792783	2013-07-31 13:09:09.792783	\N	\N	\N
2	1	2	2013-07-31 13:12:38.282801	2013-07-31 13:12:38.282801	\N	\N	\N
3	2	3	2013-07-31 13:15:50.876349	2013-07-31 13:15:50.876349	\N	\N	\N
4	5	4	2013-08-01 13:33:30.701666	2013-08-01 13:33:30.701666	\N	\N	\N
5	6	5	2013-08-01 13:37:08.37242	2013-08-01 13:37:08.37242	\N	\N	\N
6	7	6	2013-08-01 13:40:28.002951	2013-08-01 13:40:28.002951	\N	\N	\N
7	8	7	2013-08-02 10:45:09.625655	2013-08-02 10:45:09.625655	\N	\N	\N
8	10	8	2013-08-02 11:37:21.638862	2013-08-02 11:37:21.638862	\N	\N	\N
9	9	9	2013-08-02 12:19:44.587394	2013-08-02 12:19:44.587394	\N	\N	\N
10	12	10	2013-08-03 11:00:11.302116	2013-08-03 11:00:11.302116	\N	\N	\N
11	16	11	2013-08-05 14:02:58.248942	2013-08-05 14:02:58.248942	\N	\N	\N
12	15	12	2013-08-05 14:06:16.855	2013-08-05 14:06:16.855	\N	\N	\N
13	14	13	2013-08-05 14:08:28.241567	2013-08-05 14:08:28.241567	\N	\N	\N
14	13	14	2013-08-05 14:11:42.94648	2013-08-05 14:11:42.94648	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 14, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
1	2	\N	1	5	2013-07-31 06:58:32.240115	2013-07-31 06:58:32.282201
2	2	\N	2	5	2013-07-31 07:00:52.735912	2013-07-31 07:00:52.757293
3	2	\N	3	5	2013-07-31 07:05:47.02741	2013-07-31 07:05:47.046318
4	2	\N	4	5	2013-08-01 05:54:24.213598	2013-08-01 05:54:24.243218
5	2	\N	7	5	2013-08-01 11:59:56.031098	2013-08-01 11:59:56.056981
6	2	\N	6	5	2013-08-01 12:00:25.076732	2013-08-01 12:00:25.096237
7	2	\N	5	5	2013-08-01 12:01:39.571988	2013-08-01 12:01:39.592588
8	2	\N	8	5	2013-08-02 08:35:58.801887	2013-08-02 08:35:58.842469
9	2	\N	9	5	2013-08-02 08:37:35.539853	2013-08-02 08:37:35.551327
10	2	\N	10	5	2013-08-02 10:56:15.128784	2013-08-02 10:56:15.154637
11	2	\N	11	1	2013-08-03 06:43:49.586596	2013-08-03 06:43:49.601092
12	2	\N	12	5	2013-08-03 06:50:32.394206	2013-08-03 06:50:32.420548
13	2	\N	13	5	2013-08-05 07:17:12.905209	2013-08-05 07:17:12.921351
14	2	\N	14	5	2013-08-05 07:19:14.056408	2013-08-05 07:19:14.073575
15	2	\N	15	5	2013-08-05 07:25:19.3136	2013-08-05 07:25:19.337901
16	2	\N	16	5	2013-08-05 07:27:08.393878	2013-08-05 07:27:08.409292
17	2	\N	17	5	2013-08-06 08:06:51.834864	2013-08-06 08:06:51.848771
18	2	\N	18	5	2013-08-06 08:09:22.871043	2013-08-06 08:09:22.889613
19	2	\N	19	5	2013-08-06 08:11:28.804305	2013-08-06 08:11:28.838102
20	2	\N	20	5	2013-08-06 08:15:41.075147	2013-08-06 08:15:41.099429
21	2	\N	21	5	2013-08-06 08:17:28.211589	2013-08-06 08:17:28.231753
22	2	\N	22	5	2013-08-07 08:21:45.129128	2013-08-07 08:21:45.18744
23	2	\N	23	5	2013-08-07 08:23:33.119684	2013-08-07 08:23:33.13582
24	2	\N	24	5	2013-08-07 08:27:41.099829	2013-08-07 08:27:41.143509
25	2	\N	25	5	2013-08-07 08:34:25.102689	2013-08-07 08:34:25.128715
26	2	\N	26	5	2013-08-07 08:36:39.119118	2013-08-07 08:36:39.135596
27	2	\N	27	5	2013-08-07 08:38:41.162169	2013-08-07 08:38:41.179127
28	2	\N	28	5	2013-08-07 08:40:25.901512	2013-08-07 08:40:25.921845
29	2	\N	29	5	2013-08-07 08:45:36.874479	2013-08-07 08:45:36.895171
30	2	\N	30	5	2013-08-07 08:47:11.201958	2013-08-07 08:47:11.222776
31	2	\N	31	5	2013-08-08 08:05:23.13309	2013-08-08 08:05:23.162529
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 31, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code) FROM stdin;
4	1004	Scorp Enterprises	f	1004	SWATI PITALE	BUSINESS		SHAILENDRA DEGREE COLLEGE, SHAILENDRA NAGAR, DAHISAR (E), MUMBAI 400 068\r\n	INDIA	MAHARASHTRA	MUMBAI	64	swati-pitale	19.0759836999999983	72.8776558999999935	submitted	4	2013-08-01 05:54:11.265671	2013-08-01 05:54:11.265671	SHAILENDRA DEGREE COLLEGE	\N	\N
3	1003	Scorp Enterprises	f	1003	VASANT RAMESH PATIL	BUSINESS		VINOBHA BHAVE NAGAR, POLICE STATION, KURLA WEST, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	66	vasant-ramesh-patil	19.071677600000001	72.8842422000000028	verified	3	2013-07-31 07:05:37.335899	2013-07-31 07:05:37.335899	VINOBHA BHAVE NAGAR, POLICE STATION,	\N	\N
7	1008	Scorp Enterprises	f	1008	MATHEW E YOHANNAN 	BUSINESS		BROTHER INTERNATIONAL PVT LTD. UNIT-111,1 ST FLR,C-WING,215,ATRIUM ANDHERI KURLA ROAD,ANDHERI-E-400059. \r\n	INDIA	MAHARASHTRA	MUMBAI	55	mathew-e-yohannan	19.1095982999999983	72.8761361999999906	verified	8	2013-08-01 11:58:46.783997	2013-08-01 11:58:46.783997	BROTHER INTERNATIONAL PVT LTD.	\N	\N
6	1007	Scorp Enterprises	f	1007	REKHA PRABODH KUDTARKAR	BUSINESS		REKHA KUDTARKAR & ASSOCIATES, EMP 66/502, EVERSHINE MARS CHS, THAKUR VILLAGE, KANDIVALI EAST, MUMBAI 400101\r\n	INDIA	MAHARASHTRA	MUMBAI	91	rekha-prabodh-kudtarkar	19.2147067000000007	72.9106201999999968	verified	7	2013-08-01 11:51:26.671086	2013-08-01 11:51:26.671086	REKHA KUDTARKAR & ASSOCIATES	\N	\N
5	1005	Scorp Enterprises	f	1005	Mr.ANKIT ANKUR GUPTA.	BUSINESS		LINKDIN TECHNOLOGY INFORMATION PVT LTD.LEVEL-2,C-59,PLATINA BUILDING.BKC.MUMBAI-400051\r\n	INDIA	MAHARASHTRA	MUMBAI	47	mr-ankit-ankur-gupta	19.062756499999999	72.8545019000000025	verified	5	2013-08-01 11:46:44.550326	2013-08-01 11:46:44.550326	LINKDIN TECHNOLOGY INFORMATION PVT LTD	\N	\N
2	1002	Scorp Enterprises	f	1002	DR. SUNIL ANANDA SHELAR 	BUSINESS		"M/S RASHTRIYA CHEMICALS & FERTILIZERS LTD.  MAHUL ROAD CHEMBUR MUMBAI - 400074          \r\n"\r\n	INDIA	MAHARASHTRA	MUMBAI	69	dr-sunil-ananda-shelar	19.0759836999999983	72.8776558999999935	verified	2	2013-07-31 07:00:41.619196	2013-07-31 07:00:41.619196	M/S RASHTRIYA CHEMICALS & FERTILIZERS LTD.	\N	\N
8	1009	Scorp Enterprises	f	1009	MR SACHIN PUNDLIK PATKAR 	BUSINESS		"K RAHEJA CORPORATE SERVICES PVT LTD\r\nPLOT NO C-30, BLOCK G, OPP SIDBI\r\nBANDRA KURLA COMPLEX,\r\nBANDRA EAST\r\nMUMBAI 400051\r\n"\r\n	INDIA	MAHARASHTRA	MUMBAI	47	mr-sachin-pundlik-patkar	19.0759836999999983	72.8776558999999935	verified	9	2013-08-02 08:35:50.421173	2013-08-02 08:35:50.421173	K RAHEJA CORPORATE SERVICES PVT LTD	\N	\N
10	1006	Scorp Enterprises	f	1006	PRASHANT VERMA. 	BUSINESS		PIONEER PUBLICITY CORP PVT LTD.410-416,B-WING,ANJANI COMPLEX,PEREIRA HILL ROAD. OPP.GURUNANAK PETROL PUMP,ANDHERI-KURLA ROAD,MUMBAI-99. \r\n	INDIA	MAHARASHTRA	MUMBAI	90	prashant-verma	19.0759836999999983	72.8776558999999935	verified	6	2013-08-02 10:56:05.828229	2013-08-02 10:56:05.828229	PIONEER PUBLICITY CORP PVT LTD	\N	\N
1	1001	Scorp Enterprises	f	1001	CHARITRA P SAHARE	BUSINESS		VLCC HEALTH CARE LTD, MADHuram, 398/B, 8TH ROAD NEAR KOTAK MAHINDRA BANK, NEXT TO AHOBILA MUTT, CHEMBUR, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	67	charitra-p-sahare	19.0176169000000002	72.8561287999999934	verified	1	2013-07-31 06:58:18.593679	2013-07-31 06:58:18.593679	VLCC HEALTH CARE LTD	\N	\N
9	1010	Scorp Enterprises	f	1010	DR PRASAD GOVIND KADAM	BUSINESS		1, ANANDI NIWAS, PRABHAKAR KELUSKAR MARG, MATUL FACTORY LANE, KURLA WEST, MUMBAI 400070\r\n	INDIA	MAHARASHTRA	MUMBAI	66	dr-prasad-govind-kadam	19.0707531999999986	72.878132199999996	verified	10	2013-08-02 08:37:28.13179	2013-08-02 08:37:28.13179	DR PRASAD GOVIND KADAM	\N	\N
11	1011	Scorp Enterprises	f	1011	RAJESH VIDYABHUSHAN TRIPATHI	BUSINESS		AMPLIFON INDIA PVT LTD, SHOP NO 10, LAXMI PALACE, 60 FEET RD, GHATKPOAR EAST, NR STANDARD CHARTERED BANK, MUMBAI 400077\r\n	INDIA	MAHARASHTRA	MUMBAI	72	rajesh-vidyabhushan-tripathi	19.0777314999999987	72.9061902999999916	submitted	11	2013-08-03 06:43:41.130112	2013-08-03 06:43:41.130112	AMPLIFON INDIA PVT LTD	\N	\N
12	1012	Scorp Enterprises	f	1012	MANOJ PADMAKAR KATHE	BUSINESS		KURLA CARSHAED, DEPARTMENT ELECTRONIC, JUNIOR ENGINEER, KURLA\r\n	INDIA	MAHARASHTRA	MUMBAI	66	manoj-padmakar-kathe	19.0719889999999985	72.8840819999999923	verified	12	2013-08-03 06:50:20.165331	2013-08-03 06:50:20.165331	KURLA CARSHAED, 	\N	\N
14	1015	Scorp Enterprises	f	1015	AMIT KAISTHA 	BUSINESS		KOTAK MAHINDRA BANK LTD KOTAK INFINITY 6TH FLOOR BLDG NO 21 INFINITY PARK OFF WESTERN EXPRESS HIGHWAY MALAD EAST MUMBAI 400097 \r\n	INDIA	MAHARASHTRA	MUMBAI	88	amit-kaistha	19.1808735000000006	72.8574557999999968	verified	15	2013-08-05 07:19:06.868153	2013-08-05 07:19:06.868153	KOTAK MAHINDRA BANK LTD 	\N	\N
13	1014	Scorp Enterprises	f	1014	RASHMI ASHWIN PAWAR	BUSINESS		STATE BANK OF INDIA COMMERCIAL SAKINAKA BR, 14897, 1ST FLOOR LEKHRAJ BHAVAN, SAKI VIHAR RD, SAKINAKA ,ANDHERIEAST\r\n	INDIA	MAHARASHTRA	MUMBAI	85	rashmi-ashwin-pawar	19.0759836999999983	72.8776558999999935	verified	14	2013-08-05 07:17:04.966407	2013-08-05 07:17:04.966407	STATE BANK OF INDIA 	\N	\N
16	1018	Scorp Enterprises	f	1018	VISHNU THURPATH. 	BUSINESS		INDUS VALLEY PARTNERS,UNIT 154,SDF 5,SEEPZ SEZ,ANDHERI-EAST,MUMBAI-400096.  \r\n	INDIA	MAHARASHTRA	MUMBAI	87	vishnu-thurpath	19.1266573999999991	72.87665539999999	verified	18	2013-08-05 07:27:00.874975	2013-08-05 07:27:00.874975	INDUS VALLEY PARTNERS	\N	\N
15	1017	Scorp Enterprises	f	1017	NOOSHIN SORAB IRANI	BUSINESS		INTERGLOBE AVIATION LTD.(INDIGO) CSIA TERMINAL,1 B,SANTACRUZ-EAST-400099.  \r\n	INDIA	MAHARASHTRA	MUMBAI	90	nooshin-sorab-irani	19.077406100000001	72.8574557999999968	verified	17	2013-08-05 07:24:59.782964	2013-08-05 07:24:59.782964	INTERGLOBE AVIATION LTD	\N	\N
17	1021	Scorp Enterprises	f	1021	MANDEEP SINGH DUGGAL	BUSINESS		KOTAK MAHINDRA OLD MUTUL LIFE INS, 7TH FLOOR, KOTAK INFINITY BLDG, NO 21, INFINITY PARK OFF WESTERN EXPREE HIGHWAY, MALAD E\r\n	INDIA	MAHARASHTRA	MUMBAI	88	mandeep-singh-duggal	19.1842925000000015	72.8610327999999896	submitted	21	2013-08-06 08:06:43.24952	2013-08-06 08:06:43.24952	KOTAK MAHINDRA OLD MUTUL LIFE INS	\N	\N
18	1022	Scorp Enterprises	f	1022	DWARIKANTH KASINATH PANIGRAHI	BUSINESS		MEGHA INDUSTRIAL POWER JAFARBHOY ESTATE, MAROL ANDHERI E\r\n	INDIA	MAHARASHTRA	MUMBAI	85	dwarikanth-kasinath-panigrahi	19.1173012	72.8840395000000001	submitted	22	2013-08-06 08:09:10.251986	2013-08-06 08:09:10.251986	MEGHA INDUSTRIAL 	\N	\N
19	1023	Scorp Enterprises	f	1023	NAMITA MAHADEO SARANG	BUSINESS		MOL IPS INDIA PVT LTD, 601 6TH FLOOR, VEDANTA BLDG, MAKWANA RD, OFF ANDHERI  KURLA RD,MITTAL IND ESTATE, PETROL PUMP, ANDHERI\r\n	INDIA	MAHARASHTRA	MUMBAI	85	namita-mahadeo-sarang	19.1171389000000005	72.8465630000000033	submitted	23	2013-08-06 08:11:18.697428	2013-08-06 08:11:18.697428	MOL IPS INDIA PVT LTD	\N	\N
20	1024	Scorp Enterprises	f	1024	MILIND MOHAN PAWAR	BUSINESS		WIPRO INFOTECH LTD.1ST FLOOR B-WING SHAH INDUSTRIAL ESTATE SAKIVIHAR ROAD ANDHERI EAST\r\n	INDIA	MAHARASHTRA	MUMBAI	85	milind-mohan-pawar	19.1154907999999999	72.8726951999999955	submitted	24	2013-08-06 08:14:29.851157	2013-08-06 08:14:29.851157	WIPRO INFOTECH LTD	\N	\N
21	1025	Scorp Enterprises	f	1025	SHAMIN BHALCHANDRA SIDHAYE	BUSINESS		LLOYDS REGISTER ASIA PLAN APPRAISAL DEPT., 63,64,KALPATURU SQUARE, 6TH FLOOR KONDIVITA LANE ANDHERI EAST MUMBAI 400059\r\n	INDIA	MAHARASHTRA	MUMBAI	55	shamin-bhalchandra-sidhaye	19.1109897999999987	72.878132199999996	submitted	25	2013-08-06 08:17:20.450034	2013-08-06 08:17:20.450034	LLOYDS REGISTER ASIA PLAN 	\N	\N
22	1026	Scorp Enterprises	f	1026	MR. PHILIP ABRAHAM	BUSINESS		SUPDT ENGINEER (MECHANICAL) ONGC , 1 ST FLOOR. NSE PLAXA, ONGC BANDRA KURLA COMPLEX MUMBAI (HR CHIEF MANAGER MRS. USHA CHANDRAMOULI) 531 VASUNDHARA BHAVAN ONGC BANDRA EAST MUMBAI 51, OFFICE 26562521)\r\n	INDIA	MAHARASHTRA	MUMBAI	47	mr-philip-abraham	\N	\N	submitted	26	2013-08-07 08:21:36.339488	2013-08-07 08:21:36.339488	ONGC	\N	\N
23	1027	Scorp Enterprises	f	1027	MR HARESH TALREJA	BUSINESS		THIRDWARE SOLUTION LTD, UNIT 007/008, MULTISTOREY BUILDING, SEEPZ, ANDHERI- 400096\r\n	INDIA	MAHARASHTRA	MUMBAI	85	mr-haresh-talreja	19.1266573999999991	72.87665539999999	submitted	27	2013-08-07 08:23:25.039141	2013-08-07 08:23:25.039141	THIRDWARE SOLUTION LTD	\N	\N
24	1028	Scorp Enterprises	f	1028	B. AMARENDRA REDDY	BUSINESS		GO AIR INDIA LTD, DOMESTIC AIRPORT, SANTACRUZ (E), MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	51	b-amarendra-reddy	19.0176169000000002	72.8561287999999934	submitted	28	2013-08-07 08:27:25.830688	2013-08-07 08:27:25.830688	GO AIR INDIA LTD	\N	\N
27	1031	Scorp Enterprises	f	1031	BHASKAR BALASAHEB DATE (239)	BUSINESS		J P MORGAN CHASE SERVICES INDIA PVT LTD, 10TH FLOOR, PRISM TOWERS A WING, MINDSPACE MALAD WEST, MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	88	bhaskar-balasaheb-date-239	19.0176169000000002	72.8561287999999934	submitted	31	2013-08-07 08:38:32.274696	2013-08-07 08:38:32.274696	J P MORGAN CHASE SERVICES INDIA PVT LTD	\N	\N
25	1029	Scorp Enterprises	f	1029	MRS SHILPA GAIKWAD 	BUSINESS		"BURO HAPPOLD ENGINEERS INDIA PVT LTD, 201 , DELTA BUILDING TECHNOLOGY STREET, HIRANANDANI GARDENS POWAI - 4000076              DEPT - ELECTRICAL DESIGN DESIGN : SR ENGINEER\r\n"\r\n	INDIA	MAHARASHTRA	MUMBAI	71	mrs-shilpa-gaikwad	19.0759836999999983	72.8776558999999935	submitted	29	2013-08-07 08:34:14.034206	2013-08-07 08:34:14.034206	BURO HAPPOLD ENGINEERS INDIA PVT LTD	\N	\N
26	1030	Scorp Enterprises	f	1030	SAMEER NARENDRA DALVI  	BUSINESS		CHALET HOTELS PVT LTD. PLOT C-30 BLOCK-G, OPP SIDBI, BANDRA-KURLA COMPLEX, BANDRA EAST\r\n	INDIA	MAHARASHTRA	MUMBAI	47	sameer-narendra-dalvi	19.062304000000001	72.8648403999999914	submitted	30	2013-08-07 08:36:27.421038	2013-08-07 08:36:27.421038	CHALET HOTELS PVT LTD	\N	\N
28	1032	Scorp Enterprises	f	1032	SHAILESH LAXMIKANT JOSHI (242)	BUSINESS		TATA COMMUNICATION LTD, PLOT NO C-21 & C 36 BLOCK G, BANDRA KURLA COMPLEX, BANDRA 400098\r\n	INDIA	MAHARASHTRA	MUMBAI	89	shailesh-laxmikant-joshi-242	19.0735175999999989	72.8618865999999912	submitted	32	2013-08-07 08:40:11.547358	2013-08-07 08:40:11.547358	TATA COMMUNICATION LTD	\N	\N
29	1033	Scorp Enterprises	f	1033	SHALAKA SANTOSH PAWAR	BUSINESS		ALL INDIA INST OF LOCAL SELF GOVT. PLOT 6, F BLOCK, TPS RD 12, BEHIND TEACHERS COLONY, BANDRA EAST, MUMBAI 400051\r\n	INDIA	MAHARASHTRA	MUMBAI	47	shalaka-santosh-pawar	19.062756499999999	72.8545019000000025	submitted	33	2013-08-07 08:45:28.726587	2013-08-07 08:45:28.726587	ALL INDIA INST OF LOCAL SELF GOVT	\N	\N
30	1034	Scorp Enterprises	f	1034	DEEPAK B PAI	BUSINESS		ECI TELECOM INDIA PVT LTD, 302-B WING, TIMESQUARE BLDG, ANDHERI KURLA ROAD, OPP MITTHAL INDUSTRIAL ESTATE, ANDHERI E 400059\r\n	INDIA	MAHARASHTRA	MUMBAI	55	deepak-b-pai	19.1109897999999987	72.878132199999996	submitted	34	2013-08-07 08:47:01.239149	2013-08-07 08:47:01.239149	ECI TELECOM INDIA PVT LTD,	\N	\N
31	1038	Scorp Enterprises	f	1038	MUKUL KUMAR VERMA	BUSINESS		MINISTRY DEFENCY OF GOVT, MO (MB) INDIAN NAVY GHATKOPAR MUMBAI 400086\r\n	INDIA	MAHARASHTRA	MUMBAI	80	mukul-kumar-verma	19.0971164999999985	72.91357339999999	submitted	38	2013-08-08 08:05:14.950831	2013-08-08 08:05:14.950831	MINISTRY DEFENCY OF GOVT	\N	\N
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 31, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
1	1	5	2	\N	2013-08-08 08:00:20.175473	2013-08-08 08:00:20.223314
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 1, true);


--
-- Data for Name: co_applicant_business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_business_documents (id, co_applicant_business_id, co_applicant_work_detail_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at) FROM stdin;
\.


--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_business_documents_id_seq', 1, false);


--
-- Data for Name: co_applicant_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code) FROM stdin;
1	1036	Scorp Enterprises	f	1036	JAYSING NARAYAN GUNDAL (243)	BUSINESS		13-14, PROSPECT CHAMBER ANNEXE, PITHA STRRT, SIR P M ROAD, FORT 400001\r\n	INDIA	mumbai	maharashtra	1	jaysing-narayan-gundal-243	18.9339556999999985	72.8347957000000008	submitted	36	PROSPECT CHAMBER ANNEXE	2013-08-08 08:00:05.660756	2013-08-08 08:00:05.660756	\N	\N
\.


--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_businesses_id_seq', 1, true);


--
-- Data for Name: co_applicant_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_documents (id, co_applicant_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at, co_applicant_servey_id) FROM stdin;
\.


--
-- Name: co_applicant_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_documents_id_seq', 1, false);


--
-- Data for Name: co_applicant_serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_serveys (id, co_applicant_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, photo_required, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	1	5	t	t	2013-08-02	18:25:07	self	wife	\N	Company Accomodation	Post Graduate	Married	4	1	2	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	other	Easy	pakka	---\n- others\n- ''\n	\N	\N		\N	\N	2	\N	MEET SELF  AT 2.00 PM SUB IS SATYING PAST 15 YRS,ITS COMPANY QTRS,DOB 01/06/1977,DOC VERFIED PAN CARD NO CDGPS9547F,TYPE OF LOAN HOME LOAN AMNT IS 14.85 LAC,FALY MAMBER 4,WORKING 1,CHILD 2,QULIFCATION M.S.C.,THIRD PARTY CONFARMTION DONE\r\n	\N	Accept	2013-07-31 13:28:27.0452	2013-08-02 12:58:34.927661	\N	1977-06-01	cdgps9547f	\N		
2	1	5	\N	\N	2013-08-02	18:32:27	9757090245	self	15	Company Accomodation	others	Married	4	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	other	Easy	pakka	---\n- others\n- ''\n	\N	sofa		\N	\N	2.00 PM	4	TYPE OF LOAN HOME LOAN AMNT IS 14.85 LAC	\N	Accept	2013-08-02 13:08:32.900524	2013-08-02 13:08:32.900524	\N	1977-06-01	CDGPS9547F	\N		
3	2	5	t	t	2013-08-03	16:17:30	self		8	Owned By Parents	Graduate	Married	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N		\N		\N	Accept	2013-08-03 10:55:27.861746	2013-08-03 10:55:27.861746	\N	1984-07-01	aolpt3366d	\N		
4	2	5	t	t	2013-08-03	17:15:56	self		8	Owned By Parents	Graduate	Married	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N		\N		\N	Accept	2013-08-03 11:48:12.780328	2013-08-03 11:48:12.780328	\N	1984-07-01	aolpt3366d	\N		
5	2	5	\N	\N	2013-08-05	19:43:25			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N		\N		\N	\N	2013-08-05 14:13:39.107259	2013-08-05 14:13:39.107259	\N	2013-08-05		\N		
6	2	5	\N	\N	2013-08-05	19:43:48			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N		\N		\N	\N	2013-08-05 14:13:56.224772	2013-08-05 14:13:56.224772	\N	2013-08-05		\N		
7	1	5	\N	\N	2013-08-05	19:44:05			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N		\N		\N	\N	2013-08-05 14:14:16.084049	2013-08-05 14:14:16.084049	\N	2013-08-05		\N		
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 7, true);


--
-- Data for Name: co_applicant_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_verifications (id, co_applicant_id, user_id, customer_id, tab_id, created_at, updated_at) FROM stdin;
1	1	2	\N	5	2013-07-31 07:03:01.244135	2013-07-31 07:03:01.294961
2	2	2	\N	5	2013-08-03 06:44:56.408164	2013-08-03 06:44:56.438114
3	2	2	\N	5	2013-08-03 06:45:02.437424	2013-08-03 06:45:02.498634
4	3	2	\N	5	2013-08-05 07:22:29.568246	2013-08-05 07:22:29.622932
5	5	2	\N	5	2013-08-07 08:42:30.126515	2013-08-07 08:42:30.138581
6	6	2	\N	5	2013-08-08 07:56:42.575553	2013-08-08 07:56:42.603257
7	7	2	\N	5	2013-08-08 08:03:19.633571	2013-08-08 08:03:19.661993
8	8	2	\N	5	2013-08-08 08:07:38.558591	2013-08-08 08:07:38.584381
9	9	2	\N	5	2013-08-08 08:09:57.418556	2013-08-08 08:09:57.44508
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 9, true);


--
-- Data for Name: co_applicant_work_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_work_details (id, co_applicant_business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, co_applicant_id, pincode_id, customer_id, status, document_required, company_name, landmark, city, state, application_ref_no, company_name_new, tab_id) FROM stdin;
\.


--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_work_details_id_seq', 1, false);


--
-- Data for Name: co_applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicants (id, applicant_name, agency_name, document_required, fh_code, landmark, country_name, country_state, country_city, slug, status, customer_id, address, latitude, longitude, application_status, created_at, updated_at, contact_number, application_ref_no, pincode_id, state, d_o_b) FROM stdin;
1	SMT. SWATI SUNIL SHELAR 	Scorp Enterprises	f	1002		INDIA	MAHARASHTRA	mumbai	smt-swati-sunil-shelar	submitted	2	TYPE -III/B/46/468 RCF COLONY MAHUL ROAD CHEMBUR MUMBAI - 400074 \r\n	19.0258949000000008	72.8899466000000018	RESIDENTIAL	2013-07-31 07:02:47.298524	2013-07-31 07:02:47.298524	\N	1002	69	\N	\N
2	RITA RAJESH TRIPATHI	Scorp Enterprises	f	1011		INDIA	MAHARASHTRA	mumbai	rita-rajesh-tripathi	submitted	11	D-8, SHRIKRISHNA SOCIETY, SUNDERBAUG KAMANI KURLA, NR PHOENIX MALL, MUMAI 400070\r\n	19.0707531999999986	72.878132199999996	RESIDENTIAL	2013-08-03 06:44:45.232361	2013-08-03 06:44:45.232361	\N	1011	66	\N	\N
3	EXECUTIVE ENGINEER PWD GOVT OF MAHARASHTRA	Scorp Enterprises	f	1016		INDIA	MAHARASHTRA	mumbai	executive-engineer-pwd-govt-of-maharashtra	submitted	16	EXECUTIVE ENGINEER PWD GOVT OF MAHARASHTRA ADMINISTRATIVE BLDG 3RD FLOOR ROAD DEVELOPMENT DIVISION NO 4 NEAR BHAVANS COLLEGE ANDHERI WEST MUMBAI 400058 \r\n	19.1185389999999984	72.8367775999999907	RESIDENTIAL	2013-08-05 07:22:18.898989	2013-08-05 07:22:18.898989	\N	1016	54	\N	\N
4	SARASWATHI DEDEEPYA	Scorp Enterprises	f	1028		INDIA	MAHARASHTRA	mumbai	saraswathi-dedeepya	ready_for_verification	28	PLOT NO.136A, FLAT NO.11, SHERE PUNJAB, ANDHERI EAST, MUMBAI – 400093\r\n	19.1275872999999983	72.8612928000000011	RESIDENTIAL	2013-08-07 08:28:53.557927	2013-08-07 08:28:53.557927	\N	1028	87	\N	\N
5	PUJA PARWAL JOSHI (242)	Scorp Enterprises	f	1032		INDIA	MAHARASHTRA	mumbai	puja-parwal-joshi-242	submitted	32	FLAT NO 637, BLDG NO D-66, MIG COLONY, KALANAGAR, OPP SAHITYA SAHWAS, BANDRA, MUMBAI 400051\r\n	19.062756499999999	72.8545019000000025	RESIDENTIAL	2013-08-07 08:42:19.833689	2013-08-07 08:42:19.833689	\N	1032	47	\N	\N
6	JAYSING NARAYAN GUNDAL (243)	Scorp Enterprises	f	1036		INDIA	MAHARASHTRA	mumbai	jaysing-narayan-gundal-243	submitted	36	402, SINDHUDURGA SOC., RAM-NAGAR-A, TRASIST CAMP-1, (S.R.A) GHATKPOAR WEST 400086\r\n	19.0971164999999985	72.91357339999999	RESIDENTIAL	2013-08-08 07:56:33.598604	2013-08-08 07:56:33.598604	\N	1036	80	\N	\N
7	LAXMAN NAVJI CHAVAN (247)	Scorp Enterprises	f	1037		INDIA	MAHARASHTRA	mumbai	laxman-navji-chavan-247	submitted	37	HOUSE NO 13, INDIRA NAGAR 2, TATA NAGAR, LALLUBHAI COMP. MANKHURD, MUMBAI 400043\r\n	19.0518892999999991	72.951962199999997	RESIDENTIAL	2013-08-08 08:03:08.38674	2013-08-08 08:03:08.38674	\N	1037	42	\N	\N
8	PRAKASH RAGHUNATH BHANGALE (250)	Scorp Enterprises	f	1039		INDIA	MAHARASHTRA	mumbai	prakash-raghunath-bhangale-250	submitted	39	AARAMBH CHSL, ROOM 5070, BLDG NO 412, C WING, GROUP NO 7, TAGORE NAGAR, VIKHROLI EAST, NEAR NEW POST OFFICE, MUMBAI400083\r\n	19.0759836999999983	72.8776558999999935	RESIDENTIAL	2013-08-08 08:07:31.129753	2013-08-08 08:07:31.129753	\N	1039	78	\N	\N
9	SARJERAO NIVRUTTI MOHILE (252)	Scorp Enterprises	f	1040		INDIA	MAHARASHTRA	mumbai	sarjerao-nivrutti-mohile-252	submitted	40	CEN-113, TATA NAGAR, BEHIND MANCO MEDICAL, GOVANDI, MUMBAI 400043\r\n	19.0518892999999991	72.951962199999997	RESIDENTIAL	2013-08-08 08:09:46.208149	2013-08-08 08:09:46.208149	\N	1040	42	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 9, true);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
1	2	\N	\N	2013-07-31 13:22:54.614538	2013-07-31 13:22:54.614538	1
2	7	\N	\N	2013-08-01 13:24:05.096351	2013-08-01 13:24:05.096351	2
3	5	\N	\N	2013-08-01 13:29:01.073595	2013-08-01 13:29:01.073595	3
4	6	\N	\N	2013-08-02 10:49:40.490155	2013-08-02 10:49:40.490155	4
5	10	\N	\N	2013-08-02 12:25:32.308485	2013-08-02 12:25:32.308485	5
6	11	\N	\N	2013-08-03 10:47:11.419628	2013-08-03 10:47:11.419628	6
7	13	\N	\N	2013-08-03 11:45:11.483795	2013-08-03 11:45:11.483795	7
8	18	\N	\N	2013-08-05 13:54:48.405643	2013-08-05 13:54:48.405643	8
9	17	\N	\N	2013-08-05 13:59:14.431588	2013-08-05 13:59:14.431588	9
10	9	\N	\N	2013-08-05 14:12:32.222604	2013-08-05 14:12:32.222604	10
11	4	\N	\N	2013-08-05 14:12:47.911668	2013-08-05 14:12:47.911668	11
12	3	\N	\N	2013-08-05 14:13:05.550704	2013-08-05 14:13:05.550704	12
13	1	\N	\N	2013-08-05 14:13:18.831638	2013-08-05 14:13:18.831638	13
14	37	\N	\N	2013-08-10 11:07:31.670809	2013-08-10 11:07:31.670809	14
15	38	\N	\N	2013-08-10 11:12:07.326658	2013-08-10 11:12:07.326658	15
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 15, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
1	2	1	5	2013-07-31 06:57:15.588357	2013-07-31 06:57:15.613097	\N	\N	\N
2	2	2	5	2013-07-31 06:59:49.284867	2013-07-31 06:59:49.309605	\N	\N	\N
3	2	3	5	2013-07-31 07:04:32.696897	2013-07-31 07:04:32.716296	\N	\N	\N
4	2	4	5	2013-08-01 05:53:19.895428	2013-08-01 05:53:19.920271	\N	\N	\N
5	2	5	5	2013-08-01 11:45:50.102622	2013-08-01 11:45:50.122855	\N	\N	\N
6	2	6	5	2013-08-01 11:47:41.017878	2013-08-01 11:47:41.042459	\N	\N	\N
7	2	7	5	2013-08-01 11:50:40.469197	2013-08-01 11:50:40.489633	\N	\N	\N
8	2	9	5	2013-08-02 08:35:14.488729	2013-08-02 08:35:14.510103	\N	\N	\N
9	2	10	5	2013-08-02 08:36:52.977728	2013-08-02 08:36:52.992151	\N	\N	\N
10	2	11	5	2013-08-03 06:42:58.410201	2013-08-03 06:42:58.432684	\N	\N	\N
11	2	12	1	2013-08-03 06:49:46.821378	2013-08-03 06:49:46.847289	\N	\N	\N
12	2	13	5	2013-08-03 11:23:54.735931	2013-08-03 11:23:54.756308	\N	\N	\N
13	2	14	1	2013-08-05 07:16:08.747199	2013-08-05 07:16:08.765731	\N	\N	\N
14	2	15	1	2013-08-05 07:18:24.343709	2013-08-05 07:18:24.362297	\N	\N	\N
15	2	16	1	2013-08-05 07:21:24.696914	2013-08-05 07:21:24.716912	\N	\N	\N
16	2	17	5	2013-08-05 07:24:25.56353	2013-08-05 07:24:25.580262	\N	\N	\N
17	2	18	5	2013-08-05 07:26:18.648136	2013-08-05 07:26:18.664611	\N	\N	\N
18	2	19	5	2013-08-06 07:57:13.920737	2013-08-06 07:57:13.944832	\N	\N	\N
19	2	20	1	2013-08-06 07:59:09.392678	2013-08-06 07:59:09.418409	\N	\N	\N
20	2	21	1	2013-08-06 08:05:57.156678	2013-08-06 08:05:57.175206	\N	\N	\N
21	2	22	1	2013-08-06 08:07:59.024681	2013-08-06 08:07:59.043692	\N	\N	\N
22	2	23	1	2013-08-06 08:10:35.053204	2013-08-06 08:10:35.063828	\N	\N	\N
23	2	24	1	2013-08-06 08:14:00.596384	2013-08-06 08:14:00.619235	\N	\N	\N
24	2	25	1	2013-08-06 08:16:34.486023	2013-08-06 08:16:34.507287	\N	\N	\N
25	2	26	1	2013-08-07 08:21:09.564241	2013-08-07 08:21:09.58783	\N	\N	\N
26	2	27	1	2013-08-07 08:22:43.857685	2013-08-07 08:22:43.891326	\N	\N	\N
27	2	28	5	2013-08-07 08:24:26.597032	2013-08-07 08:24:26.618816	\N	\N	\N
28	2	29	1	2013-08-07 08:33:09.013488	2013-08-07 08:33:09.033944	\N	\N	\N
29	2	30	1	2013-08-07 08:35:35.301376	2013-08-07 08:35:35.320861	\N	\N	\N
30	2	31	1	2013-08-07 08:37:42.429779	2013-08-07 08:37:42.450975	\N	\N	\N
31	2	32	1	2013-08-07 08:39:45.621765	2013-08-07 08:39:45.634845	\N	\N	\N
32	2	33	1	2013-08-07 08:44:27.42619	2013-08-07 08:44:27.477979	\N	\N	\N
33	2	34	1	2013-08-07 08:46:30.452957	2013-08-07 08:46:30.477856	\N	\N	\N
34	2	35	5	2013-08-08 07:52:58.670439	2013-08-08 07:52:58.698624	\N	\N	\N
35	2	36	5	2013-08-08 07:56:00.607797	2013-08-08 07:56:00.626146	\N	\N	\N
36	2	37	5	2013-08-08 08:02:22.903931	2013-08-08 08:02:22.931957	\N	\N	\N
37	2	38	5	2013-08-08 08:04:23.559795	2013-08-08 08:04:23.585384	\N	\N	\N
38	2	39	5	2013-08-08 08:06:46.905735	2013-08-08 08:06:46.932815	\N	\N	\N
39	2	40	5	2013-08-08 08:09:10.945602	2013-08-08 08:09:10.972323	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 39, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
9	1009	Scorp Enterprises	1009	MR SACHIN PUNDLIK PATKAR 	"PATKAR NIWAS, GURKHA CHAWL, BHD KALYANDHAM BLDG, ADHARWADI, KALYAN WEST\r\n"\r\n		\N	156	2013-08-02 08:35:05.896379	2013-08-02 08:35:05.896379	mr-sachin-pundlik-patkar	19.0759836999999983	72.8776558999999935	\N	9920784672	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
14	1014	Scorp Enterprises	1014	RASHMI ASHWIN PAWAR	STATE BANK OF INDIA COMMERCIAL SAKINAKA BR, 14897, 1ST FLOOR LEKHRAJ BHAVAN, SAKI VIHAR RD, SAKINAKA ,ANDHERIEAST\r\n		\N	85	2013-08-05 07:15:59.420652	2013-08-05 07:15:59.420652	rashmi-ashwin-pawar	19.0759836999999983	72.8776558999999935	\N	022-28503957\t9930315948	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
4	1004	Scorp Enterprises	1004	SWATI PITALE	A 501 RAMKRUPA, SHIVSHRUSTI, OPP NEHRU NAGAR S.T. DEPOT, KURLA EAST, MUMBAI 400 024\r\n		\N	24	2013-08-01 05:53:13.483063	2013-08-01 05:53:13.483063	swati-pitale	19.0759836999999983	72.8776558999999935	\N	 022-25222775       \t9869571492	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
6	1006	Scorp Enterprises	1006	PRASHANT VERMA. 	C-401,SUN SRISHTI CHS.OPP TO HOTEL GERUKRUPA ,NEAR L & T,SAKI VIHAR ROAD,POWAI,ANDHERI-E-72 \r\n		\N	68	2013-08-01 11:47:34.527863	2013-08-01 11:47:34.527863	prashant-verma	19.0759836999999983	72.8776558999999935	\N	7506080812	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
1	1001	Scorp Enterprises	1001	CHARITRA P SAHARE	VLCC HEALTH CARE LTD, MADHuram, 398/B, 8TH ROAD NEAR KOTAK MAHINDRA BANK, NEXT TO AHOBILA MUTT, CHEMBUR, \r\n		\N	67	2013-07-31 06:57:05.717915	2013-07-31 06:57:05.717915	charitra-p-sahare	19.0327996000000006	72.8963567999999924	\N	9930991117/9920394150	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
15	1015	Scorp Enterprises	1015	AMIT KAISTHA 	FLAT NO 14 BLDG NO 6 VIJAY VILAS VEGA CHSL OFF GHODBUNDER ROAD NEAR MUCHALLA POLYTECHNIC COLLEGE THANE WEST \r\n		\N	127	2013-08-05 07:18:17.554706	2013-08-05 07:18:17.554706	amit-kaistha	19.225128999999999	72.9772646999999921	\N	9619866862	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
10	1010	Scorp Enterprises	1010	DR PRASAD GOVIND KADAM	503, SHREE KRISHNA BLDG, OPP BANK OF MAHARASHTRA, LBS ROAD, KURLA WEST, MUMBAI 400070\r\n		\N	66	2013-08-02 08:36:45.894146	2013-08-02 08:36:45.894146	dr-prasad-govind-kadam	19.0707531999999986	72.878132199999996	\N	9702787050	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
8	1008	Scorp Enterprises	1008	MATHEW E YOHANNAN 	11		\N	1	2013-08-01 11:57:37.804165	2013-08-01 11:57:37.804165	mathew-e-yohannan	19.0155585999999985	72.8229987999999935	\N		ready_for_verification	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
2	1002	Scorp Enterprises	1002	DR. SUNIL ANANDA SHELAR 	TYPE -III/B/46/468 RCF COLONY MAHUL ROAD CHEMBUR MUMBAI - 400074 \r\n		\N	69	2013-07-31 06:59:42.095382	2013-07-31 06:59:42.095382	dr-sunil-ananda-shelar	19.0258949000000008	72.8899466000000018	\N	9869412058	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
16	1016	Scorp Enterprises	1016	SHAHAJI H KAMBLE 	FLAT NO 304 BLDG NO 12 VIJAY PARK KASARVADAVLI GHODBUNDER ROAD NEAR HYPERCITY MALL THANE WEST \r\n		\N	98	2013-08-05 07:21:18.68727	2013-08-05 07:21:18.68727	shahaji-h-kamble	19.225128999999999	72.9772646999999921	\N	8652332728/ 8652156377 	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
7	1007	Scorp Enterprises	1007	REKHA PRABODH KUDTARKAR	EMP 66/502, EVERSHINE MARS CHS LTD, THAKUR VILLAGE, KANDIVALI EAST, NR EVERSHINE GARDEN, MUMBAI 400101\r\n		\N	91	2013-08-01 11:50:34.732275	2013-08-01 11:50:34.732275	rekha-prabodh-kudtarkar	19.2147067000000007	72.9106201999999968	\N	9821549447/9870455758	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
5	1005	Scorp Enterprises	1005	Mr.ANKIT ANKUR GUPTA.	205,YOGI TOWER CHSL.YOGI NAGAR,BORIVALI-WEST-400091.  \r\n		\N	85	2013-08-01 11:45:38.263919	2013-08-01 11:45:38.263919	mr-ankit-ankur-gupta	19.2336297000000016	72.8530248999999941	\N	9324580895	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
12	1012	Scorp Enterprises	1012	MANOJ PADMAKAR KATHE	C-J, MUNOTH NAGAR, E- WING, ROOM NO 6, MAHATMA PHULE ROAD, PANVEL\r\n		\N	125	2013-08-03 06:49:37.054323	2013-08-03 06:49:37.054323	manoj-padmakar-kathe	18.9894007000000009	73.1175161999999972	\N	9004412377	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f
13	1013	Scorp Enterprises	1013	MR AJAY KRISHNA PATIL	M.S. PATIL HOUSE, DEONAR VILLAGE ROAD, NEAR METAL BOX COMP, MUMBAI 400088\r\n		\N	82	2013-08-03 11:23:47.563479	2013-08-03 11:23:47.563479	mr-ajay-krishna-patil	19.047058100000001	72.9312920999999932	\N	022-25556299\t9869687475	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
11	1011	Scorp Enterprises	1011	RAJESH VIDYABHUSHAN TRIPATHI	D-8, SHRIKRISHNA SOCIETY, SUNDERBAUG KAMANI KURLA, NR PHOENIX MALL, MUMAI 400070\r\n		\N	66	2013-08-03 06:42:49.155638	2013-08-03 06:42:49.155638	rajesh-vidyabhushan-tripathi	19.0707531999999986	72.878132199999996	\N	9867549880/9172248123	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
21	1021	Scorp Enterprises	1021	MANDEEP SINGH DUGGAL	FLAT NO 11/1G,KALPATARU AURA , LBS MARG, OPP RCITY MALL, GHATKOPAR\r\n		\N	72	2013-08-06 08:05:47.948699	2013-08-06 08:05:47.948699	mandeep-singh-duggal	19.0908063000000006	72.9076668999999953	\N	9920241211	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
19	1019	Scorp Enterprises	1019	MINAL KUMARI	303, SEA CREST2,7 BUNGALOW GARDEN, NEXT TO COSTA COFFEE DAY, ANDHERI WEST \r\n		\N	85	2013-08-06 07:57:04.144506	2013-08-06 07:57:04.144506	minal-kumari	19.1297375999999986	72.8291554999999988	\N	9867646112	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
20	1020	Scorp Enterprises	1020	ASHLESH BABURAO SHINDE	8/SANGAM SOC, SHOP NO 20, SEC 13, B/H AYYAPPA TEMPLE, NEW PANVEL\r\n		\N	124	2013-08-06 07:58:59.228668	2013-08-06 07:58:59.228668	ashlesh-baburao-shinde	19.0759836999999983	72.8776558999999935	\N	9221232423	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
18	1018	Scorp Enterprises	1018	VISHNU THURPATH. 	004-TWILIGHT BUILDING,RAHEJA VIHAR,CHANDIVALI,ANDHERI-EAST,MUMBAI-400072. \r\n		\N	68	2013-08-05 07:26:05.150368	2013-08-05 07:26:05.150368	vishnu-thurpath	19.1184472999999997	72.893476899999996	\N	7506054625	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
17	1017	Scorp Enterprises	1017	NOOSHIN SORAB IRANI	SHANTIVAN-II,604-A,RAHEJA TOWNSHIP,NEAR SAI BABA TEMPLE,MALAD-WEST-400097.  \r\n		\N	88	2013-08-05 07:24:20.05721	2013-08-05 07:24:20.05721	nooshin-sorab-irani	19.1808735000000006	72.8574557999999968	\N	9920022020	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
3	1003	Scorp Enterprises	1003	VASANT RAMESH PATIL	VINOBHA BHAVE NAGAR, POLICE STATION, KURLA WEST, MUMBAI\r\n		\N	66	2013-07-31 07:04:18.882308	2013-07-31 07:04:18.882308	vasant-ramesh-patil	19.071677600000001	72.8842422000000028	\N	9870102088	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
22	1022	Scorp Enterprises	1022	DWARIKANTH KASINATH PANIGRAHI	2/19, BIRJU PRASADA CHAWL, KAJUPADA KURLA \r\n		\N	66	2013-08-06 08:07:48.405714	2013-08-06 08:07:48.405714	dwarikanth-kasinath-panigrahi	19.0880514999999988	72.8862546000000009	\N	9702259419	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
23	1023	Scorp Enterprises	1023	NAMITA MAHADEO SARANG	FLAT NO 22/B, WING, SOBAT CO OP HSG SOC, PANCHPAKHADI SECTOR 5, SHREE NAGAR, NR. RANJEET CHINESE CORNER, THANE W\r\n		\N	100	2013-08-06 08:10:23.716948	2013-08-06 08:10:23.716948	namita-mahadeo-sarang	19.225128999999999	72.9772646999999921	\N	022-25820907\t9930495733	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
24	1024	Scorp Enterprises	1024	MILIND MOHAN PAWAR	VASANT VIHAR CO OP HSG F-172 1/1 SEC 26 VASHI NEAR APMC MARKET NAVI MUMBAI 400703\r\n		\N	110	2013-08-06 08:13:50.359803	2013-08-06 08:13:50.359803	milind-mohan-pawar	19.0759836999999983	72.8776558999999935	\N	9820239650/9820398595	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
25	1025	Scorp Enterprises	1025	SHAMIN BHALCHANDRA SIDHAYE	C-29 SOYOG CHS,3 D MARG MULUND EAST NEAR JAI GANESH TALKIES MUMBAI 400081\r\n		\N	76	2013-08-06 08:16:28.758698	2013-08-06 08:16:28.758698	shamin-bhalchandra-sidhaye	19.1602277000000001	72.972630499999994	\N	022-21638086\t/9820273289	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
26	1026	Scorp Enterprises	1026	MR. PHILIP ABRAHAM	SUPDT ENGINEER (MECHANICAL) ONGC , 1 ST FLOOR. NSE PLAXA, ONGC BANDRA KURLA COMPLEX MUMBAI (HR CHIEF MANAGER MRS. USHA CHANDRAMOULI) 531 VASUNDHARA BHAVAN ONGC BANDRA EAST MUMBAI 51, OFFICE 26562521)\r\n		\N	47	2013-08-07 08:20:59.521651	2013-08-07 08:20:59.521651	mr-philip-abraham	\N	\N	\N	26599213/9708523847/9869002982	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
27	1027	Scorp Enterprises	1027	MR HARESH TALREJA	604, A1, SWASTIK PALMS, NR BRAHMAND PHASE 6, AZAD NGR, GB ROAD, THANE-400607\r\n		\N	1	2013-08-07 08:22:37.737397	2013-08-07 08:22:37.737397	mr-haresh-talreja	19.0759836999999983	72.8776558999999935	\N	9769019977	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
28	1028	Scorp Enterprises	1028	B. AMARENDRA REDDY	PLOT NO.136A, FLAT NO.11, SHERE PUNJAB, ANDHERI EAST, MUMBAI – 400093\r\n		\N	87	2013-08-07 08:24:21.393167	2013-08-07 08:24:21.393167	b-amarendra-reddy	19.1275872999999983	72.8612928000000011	\N	9930720731	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
29	1029	Scorp Enterprises	1029	MRS SHILPA GAIKWAD 	"7/202, SAI VIHAR NR VITTHAL MANDIR, KHARIGAON , THANE WEST - 400605\r\n"\r\n		\N	101	2013-08-07 08:32:50.298131	2013-08-07 08:32:50.298131	mrs-shilpa-gaikwad	19.0759836999999983	72.8776558999999935	\N	9933001161	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
30	1030	Scorp Enterprises	1030	SAMEER NARENDRA DALVI  	201- SHREE VARDHAN, 90 FEET ROAD, OPP KELKAR COLLEGE, MULUND EAST\r\n		\N	73	2013-08-07 08:35:27.89237	2013-08-07 08:35:27.89237	sameer-narendra-dalvi	19.1629413	72.9576830000000029	\N	9920026074	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
31	1031	Scorp Enterprises	1031	BHASKAR BALASAHEB DATE (239)	ROOM NO 5, SONABAI CHAWL, PARSHIWADI GHATKOPAR WEST, BEHIND GHATKOPAR POLICE STATION, MUMBAI 400086\r\n		\N	80	2013-08-07 08:37:32.678437	2013-08-07 08:37:32.678437	bhaskar-balasaheb-date-239	19.0971164999999985	72.91357339999999	\N	9967750066/9870387788	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
32	1032	Scorp Enterprises	1032	SHAILESH LAXMIKANT JOSHI (242)	FLAT NO 637, BLDG NO D-66, MIG COLONY, KALANAGAR, OPP SAHITYA SAHWAS, BANDRA, MUMBAI 400051\r\n		\N	47	2013-08-07 08:39:39.41262	2013-08-07 08:39:39.41262	shailesh-laxmikant-joshi-242	19.062756499999999	72.8545019000000025	\N	9029014440	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
33	1033	Scorp Enterprises	1033	SHALAKA SANTOSH PAWAR	CHAWL NO 1, R NO 9, KENI CHAWL, INDIRA NAGAR, KANJUR MARG EAST, ANIKET HOSPITAL, MUMBAI 400042\r\n		\N	41	2013-08-07 08:44:20.370692	2013-08-07 08:44:20.370692	shalaka-santosh-pawar	19.1323864999999991	72.951962199999997	\N	25780135\t9892558386	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
34	1034	Scorp Enterprises	1034	DEEPAK B PAI	A-12, BHARAT MAHAL CO OP HSC SO LTD, KOPARI COLONY, BEHIND KISAN LILA TOWER, G P PAI ROAD, THANE EAST, 400603\r\n		\N	1	2013-08-07 08:46:19.020145	2013-08-07 08:46:19.020145	deepak-b-pai	19.0759836999999983	72.8776558999999935	\N	9833969899	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
35	1035	Scorp Enterprises	1035	KHAVANEKAR ANAND GANAPATI	B-18, SIDHARTH CHAWL COMMITTEE, D B PAWAR CHWOK, RAMABAI AMBEDKAR NAGAR, GHATKOPAR, MUMBAI 400075\r\n		\N	70	2013-08-08 07:52:51.80332	2013-08-08 07:52:51.80332	khavanekar-anand-ganapati	19.0788532999999987	72.9180032000000011	\N	9594397201	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
36	1036	Scorp Enterprises	1036	AKSHAY JAYSING GUNDAL (243)	402, SINDHUDURGA SOC., RAM-NAGAR-A, TRASIST CAMP-1, (S.R.A) GHATKPOAR WEST 400086\r\n		\N	80	2013-08-08 07:55:55.744114	2013-08-08 07:55:55.744114	akshay-jaysing-gundal-243	19.0971164999999985	72.91357339999999	\N	9029290980	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
39	1039	Scorp Enterprises	1039	DHIRAJ PRAKASH BHANGALE (250)	AARAMBH CHSL, ROOM 5070, BLDG NO 412, C WING, GROUP NO 7, TAGORE NAGAR, VIKHROLI EAST, NEAR NEW POST OFFICE, MUMBAI400083\r\n		\N	78	2013-08-08 08:06:38.205313	2013-08-08 08:06:38.205313	dhiraj-prakash-bhangale-250	19.0759836999999983	72.8776558999999935	\N	7738123334	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
40	1040	Scorp Enterprises	1040	POONAM SARJERAO MOHILE (252)	CEN-113, TATA NAGAR, BEHIND MANCO MEDICAL, GOVANDI, MUMBAI 400043\r\n		\N	42	2013-08-08 08:09:05.448191	2013-08-08 08:09:05.448191	poonam-sarjerao-mohile-252	19.0518892999999991	72.951962199999997	\N	9930531069	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
37	1037	Scorp Enterprises	1037	MANISH LAXMAN CHAVAN (247)	HOUSE NO 13, INDIRA NAGAR 2, TATA NAGAR, LALLUBHAI COMP. MANKHURD, MUMBAI 400043\r\n		\N	42	2013-08-08 08:02:18.064798	2013-08-08 08:02:18.064798	manish-laxman-chavan-247	19.0518892999999991	72.951962199999997	\N	9224586728	awaiting_to_get_verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
38	1038	Scorp Enterprises	1038	MUKUL KUMAR VERMA	QTRS NO 39-29, SH/29, (CWH) NAUSENA VIHAR, GHATKOPAR WEST 400086\r\n		\N	80	2013-08-08 08:04:06.902279	2013-08-08 08:04:06.902279	mukul-kumar-verma	19.0845830999999997	72.8951150999999982	\N	7208049017	awaiting_to_get_verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 40, true);


--
-- Data for Name: headshot_photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY headshot_photos (id, description, image_file_name, image_content_type, image_file_size, capturable_id, capturable_type, image_updated_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: headshot_photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('headshot_photos_id_seq', 1, false);


--
-- Data for Name: office_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY office_assets (id, name, created_at, updated_at) FROM stdin;
1	Telephones	2013-07-29 07:21:19.107535	2013-07-29 07:21:19.107535
2	Computer	2013-07-29 07:21:19.114435	2013-07-29 07:21:19.114435
3	Fax	2013-07-29 07:21:19.122291	2013-07-29 07:21:19.122291
4	AC	2013-07-29 07:21:19.130599	2013-07-29 07:21:19.130599
5	Photocopier	2013-07-29 07:21:19.138942	2013-07-29 07:21:19.138942
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at) FROM stdin;
1	Fort	400001	2013-07-29 07:21:19.280836	2013-07-29 07:21:19.280836
2	Kalbadevi	400002	2013-07-29 07:21:19.289105	2013-07-29 07:21:19.289105
3	Masjid(e)	400003	2013-07-29 07:21:19.297222	2013-07-29 07:21:19.297222
4	Girgaum	400004	2013-07-29 07:21:19.305672	2013-07-29 07:21:19.305672
5	Colaba	400005	2013-07-29 07:21:19.313933	2013-07-29 07:21:19.313933
6	Malabar hill	400006	2013-07-29 07:21:19.322285	2013-07-29 07:21:19.322285
7	Grant Road	400007	2013-07-29 07:21:19.330619	2013-07-29 07:21:19.330619
8	Mumbai Central	400008	2013-07-29 07:21:19.33894	2013-07-29 07:21:19.33894
9	Masjid(w)	400009	2013-07-29 07:21:19.347267	2013-07-29 07:21:19.347267
10	Mazgaon	400010	2013-07-29 07:21:19.355598	2013-07-29 07:21:19.355598
11	Jacob Circle	400011	2013-07-29 07:21:19.363969	2013-07-29 07:21:19.363969
12	lalbaug	400012	2013-07-29 07:21:19.372241	2013-07-29 07:21:19.372241
13	delisle road	400013	2013-07-29 07:21:19.380575	2013-07-29 07:21:19.380575
14	Dadar	400014	2013-07-29 07:21:19.388928	2013-07-29 07:21:19.388928
15	Sewree	400015	2013-07-29 07:21:19.397232	2013-07-29 07:21:19.397232
16	Mahim	400016	2013-07-29 07:21:19.405567	2013-07-29 07:21:19.405567
17	Dharavi	400017	2013-07-29 07:21:19.413834	2013-07-29 07:21:19.413834
18	Worli	400018	2013-07-29 07:21:19.422206	2013-07-29 07:21:19.422206
19	Matunga Central	400019	2013-07-29 07:21:19.430506	2013-07-29 07:21:19.430506
20	Churchgate	400020	2013-07-29 07:21:19.43883	2013-07-29 07:21:19.43883
21	Nariman Point	400021	2013-07-29 07:21:19.447168	2013-07-29 07:21:19.447168
22	Sion	400022	2013-07-29 07:21:19.4555	2013-07-29 07:21:19.4555
23	Dalal Street	400023	2013-07-29 07:21:19.463822	2013-07-29 07:21:19.463822
24	Kurla	400024	2013-07-29 07:21:19.472166	2013-07-29 07:21:19.472166
25	Prabhadevi	400025	2013-07-29 07:21:19.480481	2013-07-29 07:21:19.480481
26	Fort	400026	2013-07-29 07:21:19.488836	2013-07-29 07:21:19.488836
27	Byculla(e)	400027	2013-07-29 07:21:19.497154	2013-07-29 07:21:19.497154
28	Dadar	400028	2013-07-29 07:21:19.505495	2013-07-29 07:21:19.505495
29	Santacruz(e)	400029	2013-07-29 07:21:19.513791	2013-07-29 07:21:19.513791
30	PGMS Office	400030	2013-07-29 07:21:19.522069	2013-07-29 07:21:19.522069
31	Wadala	400031	2013-07-29 07:21:19.530419	2013-07-29 07:21:19.530419
32	Mantralaya	400032	2013-07-29 07:21:19.538769	2013-07-29 07:21:19.538769
33	Cotton Green	400033	2013-07-29 07:21:19.54708	2013-07-29 07:21:19.54708
34	Haji Ali	400034	2013-07-29 07:21:19.55546	2013-07-29 07:21:19.55546
35	Raj Bhavan	400035	2013-07-29 07:21:19.563793	2013-07-29 07:21:19.563793
36	Kemps corner	400036	2013-07-29 07:21:19.572108	2013-07-29 07:21:19.572108
37	Antop hill	400037	2013-07-29 07:21:19.580447	2013-07-29 07:21:19.580447
38	Ballard Pier	400038	2013-07-29 07:21:19.588784	2013-07-29 07:21:19.588784
39	Ballard Estate	400039	2013-07-29 07:21:19.597068	2013-07-29 07:21:19.597068
40	Jogeshwari(e)	400041	2013-07-29 07:21:19.60546	2013-07-29 07:21:19.60546
41	Bhandup	400042	2013-07-29 07:21:19.613742	2013-07-29 07:21:19.613742
42	Mankhurd	400043	2013-07-29 07:21:19.622078	2013-07-29 07:21:19.622078
43	Vile Parle(e)	400047	2013-07-29 07:21:19.630387	2013-07-29 07:21:19.630387
44	Andheri(w)	400048	2013-07-29 07:21:19.638734	2013-07-29 07:21:19.638734
45	Andheri(w)	400049	2013-07-29 07:21:19.647037	2013-07-29 07:21:19.647037
46	bandra	400050	2013-07-29 07:21:19.655374	2013-07-29 07:21:19.655374
47	Khar	400051	2013-07-29 07:21:19.683195	2013-07-29 07:21:19.683195
48	Khar	400052	2013-07-29 07:21:19.713685	2013-07-29 07:21:19.713685
49	Andheri(w)	400053	2013-07-29 07:21:19.721926	2013-07-29 07:21:19.721926
50	Santacruz(w)	400054	2013-07-29 07:21:19.730286	2013-07-29 07:21:19.730286
51	Santacruz(e)	400055	2013-07-29 07:21:19.738619	2013-07-29 07:21:19.738619
52	Vile parle(w)	400056	2013-07-29 07:21:19.788973	2013-07-29 07:21:19.788973
53	Vile Parle(e)	400057	2013-07-29 07:21:19.815226	2013-07-29 07:21:19.815226
54	Andheri(e)	400058	2013-07-29 07:21:19.838799	2013-07-29 07:21:19.838799
55	Andheri(w)	400059	2013-07-29 07:21:19.855848	2013-07-29 07:21:19.855848
56	Jogeshwari(e)	400060	2013-07-29 07:21:20.017696	2013-07-29 07:21:20.017696
57	Andheri(w)	400061	2013-07-29 07:21:20.030539	2013-07-29 07:21:20.030539
58	Goregaon(w)	400062	2013-07-29 07:21:20.074076	2013-07-29 07:21:20.074076
59	Goregaon(e)	400063	2013-07-29 07:21:20.197353	2013-07-29 07:21:20.197353
60	Malad(w)	400064	2013-07-29 07:21:20.205739	2013-07-29 07:21:20.205739
61	Goregoan(e)	400065	2013-07-29 07:21:20.213676	2013-07-29 07:21:20.213676
62	Borivali(e)	400066	2013-07-29 07:21:20.249172	2013-07-29 07:21:20.249172
63	Kandivali(w)	400067	2013-07-29 07:21:20.282409	2013-07-29 07:21:20.282409
64	Dahisar	400068	2013-07-29 07:21:20.324006	2013-07-29 07:21:20.324006
65	Andheri(e)	400069	2013-07-29 07:21:20.340692	2013-07-29 07:21:20.340692
66	Kurla	400070	2013-07-29 07:21:20.348975	2013-07-29 07:21:20.348975
67	Chembur	400071	2013-07-29 07:21:20.357257	2013-07-29 07:21:20.357257
68	Andheri(e)	400072	2013-07-29 07:21:20.365579	2013-07-29 07:21:20.365579
69	Chembur	400074	2013-07-29 07:21:20.37392	2013-07-29 07:21:20.37392
70	Ghatkopar	400075	2013-07-29 07:21:20.382239	2013-07-29 07:21:20.382239
71	Powai	400076	2013-07-29 07:21:20.390567	2013-07-29 07:21:20.390567
72	Ghatkopar	400077	2013-07-29 07:21:20.398884	2013-07-29 07:21:20.398884
73	Bhandup	400078	2013-07-29 07:21:20.407218	2013-07-29 07:21:20.407218
74	Vikroli	400079	2013-07-29 07:21:20.41549	2013-07-29 07:21:20.41549
75	Mulund	400080	2013-07-29 07:21:20.423756	2013-07-29 07:21:20.423756
76	Mulund	400081	2013-07-29 07:21:20.432195	2013-07-29 07:21:20.432195
77	Mulund	400082	2013-07-29 07:21:20.440523	2013-07-29 07:21:20.440523
78	Vikroli	400083	2013-07-29 07:21:20.448854	2013-07-29 07:21:20.448854
79	Ghatkopar	400084	2013-07-29 07:21:20.45724	2013-07-29 07:21:20.45724
80	Ghatkopar	400086	2013-07-29 07:21:20.465608	2013-07-29 07:21:20.465608
81	Niete	400087	2013-07-29 07:21:20.473879	2013-07-29 07:21:20.473879
82	Deonar	400088	2013-07-29 07:21:20.482147	2013-07-29 07:21:20.482147
83	Chembur	400089	2013-07-29 07:21:20.49051	2013-07-29 07:21:20.49051
84	Goregaon(w)	400090	2013-07-29 07:21:20.498857	2013-07-29 07:21:20.498857
85	Borivali(w)	400091	2013-07-29 07:21:20.50717	2013-07-29 07:21:20.50717
86	Borivali(w)	400092	2013-07-29 07:21:20.51551	2013-07-29 07:21:20.51551
87	Andheri(e)	400093	2013-07-29 07:21:20.523845	2013-07-29 07:21:20.523845
88	Malad(e)	400097	2013-07-29 07:21:20.532102	2013-07-29 07:21:20.532102
89	Santacruz(e)	400098	2013-07-29 07:21:20.540463	2013-07-29 07:21:20.540463
90	Andheri(e)	400099	2013-07-29 07:21:20.548815	2013-07-29 07:21:20.548815
91	Kandivali(e)	400101	2013-07-29 07:21:20.557174	2013-07-29 07:21:20.557174
92	Jogeshwari(w)	400102	2013-07-29 07:21:20.565492	2013-07-29 07:21:20.565492
93	Borivali(w)	400103	2013-07-29 07:21:20.573784	2013-07-29 07:21:20.573784
94	Goregaon(w)	400104	2013-07-29 07:21:20.582104	2013-07-29 07:21:20.582104
95	Bhayandar(e)	400105	2013-07-29 07:21:20.59041	2013-07-29 07:21:20.59041
96	Goregaon(w)	400106	2013-07-29 07:21:20.59873	2013-07-29 07:21:20.59873
97	Thane	400601	2013-07-29 07:21:20.607081	2013-07-29 07:21:20.607081
98	Thane	400602	2013-07-29 07:21:20.615404	2013-07-29 07:21:20.615404
99	Thane	400603	2013-07-29 07:21:20.623737	2013-07-29 07:21:20.623737
100	Thane	400604	2013-07-29 07:21:20.631851	2013-07-29 07:21:20.631851
101	Kalwa	400605	2013-07-29 07:21:20.640402	2013-07-29 07:21:20.640402
102	Thane	400606	2013-07-29 07:21:20.64876	2013-07-29 07:21:20.64876
103	Thane	400607	2013-07-29 07:21:20.657063	2013-07-29 07:21:20.657063
104	Thane	400608	2013-07-29 07:21:20.665446	2013-07-29 07:21:20.665446
105	Mumbra	400612	2013-07-29 07:21:20.673747	2013-07-29 07:21:20.673747
106	Turbhe	400613	2013-07-29 07:21:20.682	2013-07-29 07:21:20.682
107	CBD	400614	2013-07-29 07:21:20.690306	2013-07-29 07:21:20.690306
108	Ghansoli	400701	2013-07-29 07:21:20.698677	2013-07-29 07:21:20.698677
109	Uran	400702	2013-07-29 07:21:20.70699	2013-07-29 07:21:20.70699
110	Vashi	400703	2013-07-29 07:21:20.715313	2013-07-29 07:21:20.715313
111	Vashi	400704	2013-07-29 07:21:20.723548	2013-07-29 07:21:20.723548
112	Vashi	400705	2013-07-29 07:21:20.73183	2013-07-29 07:21:20.73183
113	Nerul	400706	2013-07-29 07:21:20.740051	2013-07-29 07:21:20.740051
114	Airoli	400708	2013-07-29 07:21:20.748498	2013-07-29 07:21:20.748498
115	KK	400709	2013-07-29 07:21:20.756854	2013-07-29 07:21:20.756854
116	KK	400710	2013-07-29 07:21:20.765161	2013-07-29 07:21:20.765161
117	Bhayandar(w)	401101	2013-07-29 07:21:20.773414	2013-07-29 07:21:20.773414
118	Umparpada	401102	2013-07-29 07:21:20.781832	2013-07-29 07:21:20.781832
119	Dahanu(w)	401103	2013-07-29 07:21:20.790186	2013-07-29 07:21:20.790186
120	Mira Road(e)	401104	2013-07-29 07:21:20.798516	2013-07-29 07:21:20.798516
121	Bhayandar(e)	401105	2013-07-29 07:21:20.806834	2013-07-29 07:21:20.806834
122	Bhayandar(w)	401106	2013-07-29 07:21:20.815148	2013-07-29 07:21:20.815148
123	Mira Road(e)	401107	2013-07-29 07:21:20.823479	2013-07-29 07:21:20.823479
124	Vasai(w)	401201	2013-07-29 07:21:20.831802	2013-07-29 07:21:20.831802
125	Vasai(w)	401202	2013-07-29 07:21:20.840119	2013-07-29 07:21:20.840119
126	Nalasopara(w)	401203	2013-07-29 07:21:20.848459	2013-07-29 07:21:20.848459
127	Virar(e)	401204	2013-07-29 07:21:20.856817	2013-07-29 07:21:20.856817
128	Vasai(e)	401205	2013-07-29 07:21:20.865152	2013-07-29 07:21:20.865152
129	Virar(e)	401206	2013-07-29 07:21:20.873503	2013-07-29 07:21:20.873503
130	Vasai(w)	401207	2013-07-29 07:21:20.881757	2013-07-29 07:21:20.881757
131	Vasai(e)	401208	2013-07-29 07:21:20.890037	2013-07-29 07:21:20.890037
132	NalaSopara(e)	401209	2013-07-29 07:21:20.906802	2013-07-29 07:21:20.906802
133	Vasai(e)	401210	2013-07-29 07:21:20.915065	2013-07-29 07:21:20.915065
134	Virar(w)	401301	2013-07-29 07:21:20.923404	2013-07-29 07:21:20.923404
135	Virar(w)	401302	2013-07-29 07:21:20.931723	2013-07-29 07:21:20.931723
136	Virar(e)	401303	2013-07-29 07:21:20.940041	2013-07-29 07:21:20.940041
137	Vasai(w)	401304	2013-07-29 07:21:20.948356	2013-07-29 07:21:20.948356
138	Palghar(e)	401404	2013-07-29 07:21:20.956718	2013-07-29 07:21:20.956718
139	Palghar(w)	401501	2013-07-29 07:21:20.965033	2013-07-29 07:21:20.965033
140	Palghar(w)	401502	2013-07-29 07:21:20.973358	2013-07-29 07:21:20.973358
141	Dahanu(w)	401503	2013-07-29 07:21:20.981708	2013-07-29 07:21:20.981708
142	Palghar(w)	401504	2013-07-29 07:21:20.98999	2013-07-29 07:21:20.98999
143	Palghar(w)	401506	2013-07-29 07:21:20.99831	2013-07-29 07:21:20.99831
144	Dahanu(e)	401601	2013-07-29 07:21:21.006651	2013-07-29 07:21:21.006651
145	Dahanu(e)	401602	2013-07-29 07:21:21.01496	2013-07-29 07:21:21.01496
146	Dahanu(e)	401606	2013-07-29 07:21:21.02328	2013-07-29 07:21:21.02328
147	Dahanu	401608	2013-07-29 07:21:21.035784	2013-07-29 07:21:21.035784
148	Dahanu(w)	401701	2013-07-29 07:21:21.048263	2013-07-29 07:21:21.048263
149	Panvel	410206	2013-07-29 07:21:21.056587	2013-07-29 07:21:21.056587
150	Panvel	410208	2013-07-29 07:21:21.064934	2013-07-29 07:21:21.064934
151	Kamothe	410209	2013-07-29 07:21:21.073287	2013-07-29 07:21:21.073287
152	Kharghar	410210	2013-07-29 07:21:21.081592	2013-07-29 07:21:21.081592
153	Kalamboli	410218	2013-07-29 07:21:21.08998	2013-07-29 07:21:21.08998
154	Ulhasnagar	421001	2013-07-29 07:21:21.09818	2013-07-29 07:21:21.09818
155	Ulhasnagar	421002	2013-07-29 07:21:21.106552	2013-07-29 07:21:21.106552
156	Ulhasnagar	421003	2013-07-29 07:21:21.114924	2013-07-29 07:21:21.114924
157	Ulhasnagar	421004	2013-07-29 07:21:21.12325	2013-07-29 07:21:21.12325
158	Ulhasnagar	421005	2013-07-29 07:21:21.131535	2013-07-29 07:21:21.131535
159	Ambivali	421102	2013-07-29 07:21:21.1399	2013-07-29 07:21:21.1399
160	Dombivali	421201	2013-07-29 07:21:21.148226	2013-07-29 07:21:21.148226
161	Dombivali	421202	2013-07-29 07:21:21.156555	2013-07-29 07:21:21.156555
162	Dombivali	421203	2013-07-29 07:21:21.164922	2013-07-29 07:21:21.164922
163	Dombivali	421204	2013-07-29 07:21:21.173209	2013-07-29 07:21:21.173209
164	Kalyan	421301	2013-07-29 07:21:21.181575	2013-07-29 07:21:21.181575
165	Bhiwandi	421302	2013-07-29 07:21:21.189815	2013-07-29 07:21:21.189815
166	Wada	421303	2013-07-29 07:21:21.198191	2013-07-29 07:21:21.198191
167	Kalyan	421304	2013-07-29 07:21:21.206512	2013-07-29 07:21:21.206512
168	Bhiwandi	421305	2013-07-29 07:21:21.214834	2013-07-29 07:21:21.214834
169	Kalyan	421306	2013-07-29 07:21:21.223154	2013-07-29 07:21:21.223154
170	Ambernath	421501	2013-07-29 07:21:21.231489	2013-07-29 07:21:21.231489
171	Ambernath	421502	2013-07-29 07:21:21.239809	2013-07-29 07:21:21.239809
172	Ambernath	421503	2013-07-29 07:21:21.248126	2013-07-29 07:21:21.248126
173	Ambernath	421505	2013-07-29 07:21:21.256467	2013-07-29 07:21:21.256467
174	Badlapur	421506	2013-07-29 07:21:21.264822	2013-07-29 07:21:21.264822
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 174, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
1	1	2013-07-29 07:28:31.20957	2013-07-29 07:28:31.283543	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
3	3	2013-07-29 09:41:29.79514	2013-07-29 09:41:29.874514	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N
2	2	2013-07-29 09:40:17.038115	2013-07-29 09:51:02.823273	1375091383930.jpg	image/jpeg	396409	2					2013-07-29	\N	
4	4	2013-08-31 07:44:03.043012	2013-08-31 07:44:03.18902	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 4, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20121108050113
20121111014921
20121111020805
20121111020814
20121114092826
20121114093314
20121114093417
20121115165104
20121115194842
20121118125934
20121122070559
20121122123643
20121122123645
20121126094231
20121126094232
20121126094239
20121126141903
20121126143154
20121126160813
20121126174242
20121129070048
20121206031732
20121206065704
20121218064623
20121220061108
20121223054206
20121228021633
20121228064349
20130103044350
20130121104340
20130123055339
20130123074819
20130212094650
20130212110541
20130304060051
20130308052936
20130311125858
20130313111633
20130316110736
20130326130658
20130327052222
20130327135901
20130327145104
20130327150217
20130331060529
20130331060559
20130331150243
20130401084246
20130414030557
20130414074407
20130416183520
20130419193909
20130419200114
20130423035906
20130423114122
20130423115328
20130427071118
20130427091152
20130427094620
20130428121417
20130428131836
20130428132246
20130428203443
20130428210553
20130429195922
20130429201924
20130520090122
20130520091101
20130523075207
20130529044558
20130529044620
20130529044907
20130529045009
20130601093947
20130601100043
20130602112312
20130603135327
20130604175458
20130605024433
20130605030658
20130605031241
20130607105708
20130616112556
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serveys (id, customer_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	2	5	t	t	2013-07-31	18:46:09	swati sunil	wife	15	Company Accomodation	Post Graduate	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- watchman\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	Telephone bill	\N	Accept	2013-07-31 13:22:54.572574	2013-07-31 13:22:54.572574	1971-07-12	bjcps1884c	\N		
2	7	5	t	t	2013-08-01	18:50:04	self		3	\N	Post Graduate	Married	2	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	Passport j8985771	\N	Accept	2013-08-01 13:24:05.089972	2013-08-01 13:24:05.089972	1982-10-08	anupg0316q	\N		
3	5	5	t	t	2013-08-01	18:54:43	ankur gupta	father	20	Owned By Parents	Post Graduate	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	Accept	2013-08-01 13:29:01.071134	2013-08-01 13:29:01.071134	1984-03-05	afnpg7637k	\N		
4	6	5	t	t	2013-08-02	16:16:00	anjana verma	wife	4	\N	Post Graduate	Married	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	Accept	2013-08-02 10:49:40.485441	2013-08-02 10:49:40.485441	1972-12-04	acipv1908q	\N		
5	10	5	t	t	2013-08-02	17:49:51	govind kadam	father	10	\N	Post Graduate	Married	5	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	upper middle class	easy	\N	\N	\N	\N		\N	\N	\N	\N	Electricity Bill	\N	Accept	2013-08-02 12:25:32.301952	2013-08-02 12:25:32.301952	1971-10-30	aaqpk2508k	\N		100874979295
6	11	5	t	t	2013-08-03	16:13:36	rita	wife	23	Owned By Parents	Graduate	Married	4	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	standing Chawl	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	Electricity Bill	\N	Accept	2013-08-03 10:47:11.415289	2013-08-03 10:47:11.415289	1979-06-28	aecpt6408d	\N		101159211
7	13	5	t	t	2013-08-03	17:11:46	sarayu patil	wife	33	Owned By Parents	others	Married	10	4	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	Accept	2013-08-03 11:45:11.481127	2013-08-03 11:45:11.481127	1979-04-29		\N		
8	18	5	t	t	2013-08-05	19:19:58	camille	wife	\N	Rented	Graduate	Married	2	1	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	Accept	2013-08-05 13:54:48.277008	2013-08-05 13:54:48.277008	1985-05-10	aeepv5138a	\N		
9	17	5	t	t	2013-08-05	19:25:28	sorab irani	father	26	Owned By Parents	Graduate	\N	7	4	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	Electricity Bill	\N	Accept	2013-08-05 13:59:14.427547	2013-08-05 13:59:14.427547	1986-02-04	aarpi9191b	\N		102472722
10	9	5	\N	\N	2013-08-05	19:42:14			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-08-05 14:12:32.206615	2013-08-05 14:12:32.206615	2013-08-05		\N		
11	4	5	\N	\N	2013-08-05	19:42:38			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-08-05 14:12:47.907611	2013-08-05 14:12:47.907611	2013-08-05		\N		
12	3	5	\N	\N	2013-08-05	19:42:53			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-08-05 14:13:05.546867	2013-08-05 14:13:05.546867	2013-08-05		\N		
13	1	5	\N	\N	2013-08-05	19:43:10			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-08-05 14:13:18.827828	2013-08-05 14:13:18.827828	2013-08-05		\N		
14	37	5	\N	\N	2013-08-10	16:37:13			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-08-10 11:07:31.554847	2013-08-10 11:07:31.554847	2013-08-10		\N		
15	38	5	t	t	2013-08-10	16:37:41	self		15	\N	others	Married	4	2	2	f	2	f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	other	\N	pakka	\N	\N	sofa		\N	\N	\N	\N	Ration Card, sd3452\r\nElectricity BILLA 00006754321	\N	Accept	2013-08-10 11:12:07.324091	2013-08-10 11:12:07.324091	1984-07-15	asdew4567e	\N		00000874979295
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 15, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2013-07-29 07:21:19.200196	2013-07-29 07:21:19.200196	\N	\N	\N
2	TAB-JOGESHWARI	T0102031	2013-07-29 07:21:19.205701	2013-07-29 07:21:19.205701	\N	\N	\N
3	TAB-GOREGAON	T0102032	2013-07-29 07:21:19.213776	2013-07-29 07:21:19.213776	\N	\N	\N
4	TAB-MALAD	T0102033	2013-07-29 07:21:19.222058	2013-07-29 07:21:19.222058	\N	\N	\N
6	TAB-SION	T0102035	2013-07-29 07:21:19.238702	2013-07-29 07:21:19.238702	\N	\N	\N
7	TAB-MAHAKALI	T3434890	2013-07-29 07:21:19.247035	2013-07-29 07:21:19.247035	\N	\N	\N
5	TAB-VIKROLI	T0102034	2013-07-29 07:21:19.230395	2013-08-01 14:16:01.876611	\N	c8:9c:dc:d1:28:89	74
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 7, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
2	avcv@scorpeo.in	$2a$10$wyjfjT6WZ6aE0IfkXgYpbOr2C1DiEr2B7gHI6/HMBN7MPuDrEwUnS	\N	\N	\N	33	2013-08-31 06:18:58.042859	2013-08-10 11:17:20.635436	122.169.11.193	115.248.231.170	2013-07-29 09:40:16.956529	2013-08-31 06:18:58.044065	super_user	DATA ENTRY	\N
4	scorpeo.tab2@gmail.com	$2a$10$7js/rYBl06CBs7guQd4KHeogEtBerMfCV7B97FglE2eZtBXGE5eF.	\N	\N	\N	1	2013-08-31 07:44:02.990392	2013-08-31 07:44:02.990392	115.248.231.170	115.248.231.170	2013-08-31 07:44:02.926257	2013-08-31 07:44:02.991143	tab_user	tab_2_scorpeo	1
3	scorpeo.tab1@gmail.com	$2a$10$ywd0Ly1B7s3aTxGPMw1Zgey/WFvpuwmNeBifyuAD3IbUyd.nroB9C	\N	\N	\N	34	2013-09-07 05:43:33.147257	2013-09-07 05:06:24.23292	101.60.58.50	101.60.58.50	2013-07-29 09:41:29.589962	2013-09-07 05:43:33.148031	tab_user	TAB USER	5
1	sudhirsb2003@gmail.com	$2a$10$uaNLyQfQFOV/gW46/hArK.DTqup6Ma9UfaihOft33FLNubGsh8oFy	\N	\N	\N	37	2013-09-12 06:18:48.784663	2013-09-06 12:23:14.944158	61.16.181.42	61.16.181.42	2013-07-29 07:28:31.073983	2013-09-12 06:18:48.785456	super_user	Sudhir Vishwakrma	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Data for Name: webcam_pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY webcam_pictures (id, name, snapshot, customer_id, servey_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: webcam_pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('webcam_pictures_id_seq', 1, false);


--
-- Data for Name: work_servey_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY work_servey_verifications (id, user_id, work_servey_id, tab_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: work_servey_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_servey_verifications_id_seq', 1, false);


--
-- Data for Name: work_serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY work_serveys (id, business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, pincode_id, customer_id, status, tab_id, company_name_new) FROM stdin;
1	3	VINOBHA BHAVE NAGAR, POLICE STATION, KURLA WEST, MUMBAI\r\n	19.071677600000001	72.8842422000000028	t	sub inspector	2013-07-31	18:36:33						\N	\N	VINOBHA BHAVE NAGAR, POLICE STATION,	\N	\N	\N	\N			\N	\N	Permanent	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card	\N	positive	\N	\N	2013-07-31 13:09:09.74388	2013-07-31 13:09:09.842956	\N	\N	ready_for_verification	5	
2	1	VLCC HEALTH CARE LTD, MADHuram, 398/B, 8TH ROAD NEAR KOTAK MAHINDRA BANK, NEXT TO AHOBILA MUTT, CHEMBUR, MUMBAI\r\n	19.0327996000000006	72.8963567999999924	\N	hair dresser and makeup artist	2013-07-31	18:39:27	self					\N	\N	VLCC HEALTH CARE LTD	Private LTD.	Professional	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	positive	\N	\N	2013-07-31 13:12:38.278811	2013-07-31 13:12:38.295191	\N	\N	ready_for_verification	5	
3	2	"M/S RASHTRIYA CHEMICALS & FERTILIZERS LTD.  MAHUL ROAD CHEMBUR MUMBAI - 400074          \r\n"\r\n	\N	\N	t	deputy manager	2013-07-31	18:42:50						\N	\N	M/S RASHTRIYA CHEMICALS & FERTILIZERS LTD.	\N	\N	\N	\N			\N	\N	Permanent	\N	\N	\N	\N	\N	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Bjcps1884c	\N	positive	\N	\N	2013-07-31 13:15:50.872094	2013-07-31 13:15:50.913499	\N	\N	ready_for_verification	5	
4	5	LINKDIN TECHNOLOGY INFORMATION PVT LTD.LEVEL-2,C-59,PLATINA BUILDING.BKC.MUMBAI-400051\r\n	19.062756499999999	72.8545019000000025	t	marketing	2013-08-01	18:59:50						\N	\N	LINKDIN TECHNOLOGY INFORMATION PVT LTD	Others	Professional	\N	\N			\N	\N	\N	\N	\N	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	\N	\N	\N	\N	\N	Pan Card afnpg7637k	\N	positive	\N	\N	2013-08-01 13:33:30.697541	2013-08-01 13:33:30.724622	\N	\N	ready_for_verification	5	
5	6	REKHA KUDTARKAR & ASSOCIATES, EMP 66/502, EVERSHINE MARS CHS, THAKUR VILLAGE, KANDIVALI EAST, MUMBAI 400101\r\n	19.2097380999999992	72.873701699999998	t	owner	2013-08-01	19:03:44	self					1	\N	REKHA KUDTARKAR & ASSOCIATES	Private LTD.	Professional	\N	Owned			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	Residence Cum OFfice	Residence Cum OFfice	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card	\N	positive	\N	\N	2013-08-01 13:37:08.368328	2013-08-01 13:37:08.393117	\N	\N	ready_for_verification	5	
6	7	BROTHER INTERNATIONAL PVT LTD. UNIT-111,1 ST FLR,C-WING,215,ATRIUM ANDHERI KURLA ROAD,ANDHERI-E-400059. \r\n	19.1095982999999983	72.8761361999999906	t	dgm	2013-08-01	19:07:28	self					9	t	BROTHER INTERNATIONAL PVT LTD.	Private LTD.	Professional	\N	\N			0	\N	Permanent	Senior/Middle Manager	\N	\N	\N	t	---\n- receptionist\n- ''\n	Business Center	Business Center	\N	\N	\N	\N	Easy	\N	\N	\N	\N	\N	Pan Card aaupy6587c	\N	positive	\N	\N	2013-08-01 13:40:27.998797	2013-08-01 13:40:28.029802	\N	\N	ready_for_verification	5	
7	8	"K RAHEJA CORPORATE SERVICES PVT LTD\r\nPLOT NO C-30, BLOCK G, OPP SIDBI\r\nBANDRA KURLA COMPLEX,\r\nBANDRA EAST\r\nMUMBAI 400051\r\n"\r\n	19.062304000000001	72.8648403999999914	t	senior officer	2013-08-02	16:12:32	self					\N	\N	K RAHEJA CORPORATE SERVICES PVT LTD	Private LTD.	Professional	\N	\N			24000	\N	\N	\N	\N	\N	\N	\N	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	Easy	\N	\N	\N	\N	\N	 Employee Card 1001354	\N	positive	\N	\N	2013-08-02 10:45:09.61708	2013-08-02 10:45:09.649677	\N	\N	ready_for_verification	5	
8	10	PIONEER PUBLICITY CORP PVT LTD.410-416,B-WING,ANJANI COMPLEX,PEREIRA HILL ROAD. OPP.GURUNANAK PETROL PUMP,ANDHERI-KURLA ROAD,MUMBAI-99. \r\n	\N	\N	t	marketing	2013-08-02	17:05:18	ceo					\N	\N	PIONEER PUBLICITY CORP PVT LTD	Private LTD.	Professional	\N	\N			\N	\N	\N	\N	\N	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	Easy	\N	\N	\N	\N	\N	Pan Card  acipv1908q	\N	positive	\N	\N	2013-08-02 11:37:21.632571	2013-08-02 11:37:21.6603	\N	\N	ready_for_verification	5	
9	9	1, ANANDI NIWAS, PRABHAKAR KELUSKAR MARG, MATUL FACTORY LANE, KURLA WEST, MUMBAI 400070\r\n	19.0707531999999986	72.878132199999996	t	owner	2013-08-02	17:45:30	self					\N	\N	DR PRASAD GOVIND KADAM	Private LTD.	Professional	\N	Owned			4	\N	Permanent	\N	\N	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	Easy	\N	\N	\N	\N	\N	Pan Card aaqpk2508k	\N	positive	\N	\N	2013-08-02 12:19:44.545428	2013-08-02 12:19:44.617809	\N	\N	ready_for_verification	5	dr kadam clinic
10	12	KURLA CARSHAED, DEPARTMENT ELECTRONIC, JUNIOR ENGINEER, KURLA\r\n	\N	\N	t	N/Aj	2013-08-03	16:28:54						\N	\N	KURLA CARSHAED, 	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-08-03 11:00:11.295845	2013-08-03 11:00:11.318481	\N	\N	ready_for_verification	5	
11	16	INDUS VALLEY PARTNERS,UNIT 154,SDF 5,SEEPZ SEZ,ANDHERI-EAST,MUMBAI-400096.  \r\n	19.1266573999999991	72.87665539999999	t	business analyst	2013-08-05	19:30:10	self					\N	\N	INDUS VALLEY PARTNERS	\N	Professional	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card, ivp889\r\nPan Card  aeepv5138a	\N	positive	\N	\N	2013-08-05 14:02:58.244624	2013-08-05 14:02:58.276728	\N	\N	ready_for_verification	5	
12	15	INTERGLOBE AVIATION LTD.(INDIGO) CSIA TERMINAL,1 B,SANTACRUZ-EAST-400099.  \r\n	\N	\N	t	air hostess check group	2013-08-05	19:33:08	self					7	\N	INTERGLOBE AVIATION LTD	Private LTD.	Professional	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card, igo 0530\r\nPan Card aarpi9191b	\N	positive	\N	\N	2013-08-05 14:06:16.850852	2013-08-05 14:06:16.897973	\N	\N	ready_for_verification	5	
13	14	KOTAK MAHINDRA BANK LTD KOTAK INFINITY 6TH FLOOR BLDG NO 21 INFINITY PARK OFF WESTERN EXPRESS HIGHWAY MALAD EAST MUMBAI 400097 \r\n	19.1848604999999992	72.8585137000000032	t	avp	2013-08-05	19:36:27	self					\N	\N	KOTAK MAHINDRA BANK LTD 	Private LTD.	Professional	\N	\N			\N	\N	Permanent	\N	\N	\N	\N	\N	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card, 1622\r\nPan Card alkpk1709m	\N	positive	\N	\N	2013-08-05 14:08:28.237422	2013-08-05 14:08:28.273871	\N	\N	ready_for_verification	5	
14	13	STATE BANK OF INDIA COMMERCIAL SAKINAKA BR, 14897, 1ST FLOOR LEKHRAJ BHAVAN, SAKI VIHAR RD, SAKINAKA ,ANDHERIEAST\r\n	\N	\N	t	deputy manager	2013-08-05	19:38:43	self					\N	\N	STATE BANK OF INDIA 	\N	\N	\N	\N			40000	\N	\N	\N	\N	\N	\N	\N	---\n- colleage\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card 4435044,\r\nPan Card alvpr9504q	\N	positive	\N	\N	2013-08-05 14:11:42.942265	2013-08-05 14:11:42.983192	\N	\N	ready_for_verification	5	
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 14, true);


--
-- Name: address_proofs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY address_proofs
    ADD CONSTRAINT address_proofs_pkey PRIMARY KEY (id);


--
-- Name: admin_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT admin_notes_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);


--
-- Name: b_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY b_documents
    ADD CONSTRAINT b_documents_pkey PRIMARY KEY (id);


--
-- Name: business_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY business_documents
    ADD CONSTRAINT business_documents_pkey PRIMARY KEY (id);


--
-- Name: business_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY business_verifications
    ADD CONSTRAINT business_verifications_pkey PRIMARY KEY (id);


--
-- Name: businesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY businesses
    ADD CONSTRAINT businesses_pkey PRIMARY KEY (id);


--
-- Name: client_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client_verifications
    ADD CONSTRAINT client_verifications_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_business_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_business_documents
    ADD CONSTRAINT co_applicant_business_documents_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_businesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_businesses
    ADD CONSTRAINT co_applicant_businesses_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_documents
    ADD CONSTRAINT co_applicant_documents_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_serveys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_serveys
    ADD CONSTRAINT co_applicant_serveys_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_verifications
    ADD CONSTRAINT co_applicant_verifications_pkey PRIMARY KEY (id);


--
-- Name: co_applicant_work_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicant_work_details
    ADD CONSTRAINT co_applicant_work_details_pkey PRIMARY KEY (id);


--
-- Name: co_applicants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_applicants
    ADD CONSTRAINT co_applicants_pkey PRIMARY KEY (id);


--
-- Name: customer_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY customer_documents
    ADD CONSTRAINT customer_documents_pkey PRIMARY KEY (id);


--
-- Name: customer_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY customer_verifications
    ADD CONSTRAINT customer_verifications_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: headshot_photos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY headshot_photos
    ADD CONSTRAINT headshot_photos_pkey PRIMARY KEY (id);


--
-- Name: office_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY office_assets
    ADD CONSTRAINT office_assets_pkey PRIMARY KEY (id);


--
-- Name: pincodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pincodes
    ADD CONSTRAINT pincodes_pkey PRIMARY KEY (id);


--
-- Name: profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: serveys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY serveys
    ADD CONSTRAINT serveys_pkey PRIMARY KEY (id);


--
-- Name: tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tabs
    ADD CONSTRAINT tabs_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: webcam_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY webcam_pictures
    ADD CONSTRAINT webcam_pictures_pkey PRIMARY KEY (id);


--
-- Name: work_servey_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY work_servey_verifications
    ADD CONSTRAINT work_servey_verifications_pkey PRIMARY KEY (id);


--
-- Name: work_serveys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY work_serveys
    ADD CONSTRAINT work_serveys_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_businesses_on_applicant_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_businesses_on_applicant_name ON businesses USING btree (applicant_name);


--
-- Name: index_businesses_on_application_ref_no; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_businesses_on_application_ref_no ON businesses USING btree (application_ref_no);


--
-- Name: index_businesses_on_customer_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_businesses_on_customer_id ON businesses USING btree (customer_id);


--
-- Name: index_businesses_on_fh_code; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_businesses_on_fh_code ON businesses USING btree (fh_code);


--
-- Name: index_businesses_on_status; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_businesses_on_status ON businesses USING btree (status);


--
-- Name: index_customers_on_address; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_customers_on_address ON customers USING btree (address);


--
-- Name: index_customers_on_applicant_name; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_customers_on_applicant_name ON customers USING btree (applicant_name);


--
-- Name: index_customers_on_application_ref_no; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_customers_on_application_ref_no ON customers USING btree (application_ref_no);


--
-- Name: index_serveys_on_customer_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_serveys_on_customer_id ON serveys USING btree (customer_id);


--
-- Name: index_serveys_on_date_of_visit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_serveys_on_date_of_visit ON serveys USING btree (date_of_visit);


--
-- Name: index_serveys_on_tab_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_serveys_on_tab_id ON serveys USING btree (tab_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

