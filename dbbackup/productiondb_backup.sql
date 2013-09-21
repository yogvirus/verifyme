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
1	Ration Card	2013-06-24 07:09:57.340218	2013-06-24 07:09:57.340218
2	Electricity Bill	2013-06-24 07:09:57.38796	2013-06-24 07:09:57.38796
3	Telephone Bill	2013-06-24 07:09:57.395621	2013-06-24 07:09:57.395621
4	Bank Statement card	2013-06-24 07:09:57.40401	2013-06-24 07:09:57.40401
5	Driving licence	2013-06-24 07:09:57.412342	2013-06-24 07:09:57.412342
6	Passport	2013-06-24 07:09:57.420659	2013-06-24 07:09:57.420659
\.


--
-- Name: address_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('address_proofs_id_seq', 6, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
1	admin@example.com	$2a$10$46zV1oPoB3kOjbuA7P8IfOH55asi6IbYmtf3qdaGI.dgyXeRJ4oJq	\N	\N	\N	0	\N	\N	\N	\N	2013-06-24 07:09:36.716327	2013-06-24 07:09:36.716327	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2013-06-24 07:09:57.505918	2013-06-24 07:09:57.505918
2	Air Conditioner	2013-06-24 07:09:57.512725	2013-06-24 07:09:57.512725
3	Refrigrator	2013-06-24 07:09:57.520521	2013-06-24 07:09:57.520521
4	Music System	2013-06-24 07:09:57.528987	2013-06-24 07:09:57.528987
\.


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assets_id_seq', 4, true);


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2013-06-24 07:09:57.447855	2013-06-24 07:09:57.447855
2	Salary Slip	2013-06-24 07:09:57.462941	2013-06-24 07:09:57.462941
3	Mobile Bill	2013-06-24 07:09:57.470733	2013-06-24 07:09:57.470733
4	Pan Card	2013-06-24 07:09:57.479006	2013-06-24 07:09:57.479006
\.


--
-- Name: b_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('b_documents_id_seq', 4, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
1	1	1	2013-07-02 11:45:01.78745	2013-07-02 11:45:01.78745	\N	\N	\N
2	5	2	2013-07-11 02:13:00.191421	2013-07-11 02:13:00.191421	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 2, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
1	3	\N	1	1	2013-07-02 11:35:05.560382	2013-07-02 11:35:05.591335
2	3	\N	4	1	2013-07-10 08:37:29.276998	2013-07-10 08:37:29.296407
3	3	\N	5	1	2013-07-10 08:42:24.84155	2013-07-10 08:42:24.867364
4	3	\N	8	1	2013-07-13 07:56:24.020258	2013-07-13 07:56:24.038955
5	3	\N	9	1	2013-07-13 07:58:33.628806	2013-07-13 07:58:33.650591
6	3	\N	9	1	2013-07-13 07:58:33.65225	2013-07-13 07:58:33.666731
7	3	\N	9	1	2013-07-13 07:59:07.929936	2013-07-13 07:59:07.942572
8	3	\N	10	1	2013-07-17 07:33:49.318544	2013-07-17 07:33:49.341993
9	3	\N	11	1	2013-07-17 07:40:03.946395	2013-07-17 07:40:03.971033
10	3	\N	12	1	2013-07-17 07:42:58.570189	2013-07-17 07:42:58.589683
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 10, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code) FROM stdin;
1	1001	Scorp Enterprises	f	1001	santosh chawan	BUSINESS	vikroli park site	e-116, kasilash complex, \r\nvikroli park site, vikroli west 	INDIA	mh	mumabi	74	santosh-chawan	19.1201898999999997	72.9161622000000023	verified	1	2013-07-02 11:34:41.132954	2013-07-02 11:34:41.132954	Scorp eo	\N	\N
2	1003	Scorp Enterprises	f	1003	ROHIT RAGHWENDRA SHRIKANT	BUSINESS		AVHAN TECHNOLOGIES PVT LTD 2ND FLOOR NASEDH BUILDING OLD POSTAL COLONY CHEMBUR EAST 400071\r\n	INDIA	MAHARASHTRA	MUMBAI	67	rohit-raghwendra-shrikant	19.0327629999999992	72.9017602999999923	ready_for_verification	3	2013-07-08 07:24:39.407742	2013-07-08 07:24:39.407742	AVHAN TECHNOLOGIES PVT LTD	\N	\N
3	1002	Scorp Enterprises	f	1002	BHALCHANDRA PUNA BADGUJAR	BUSINESS	BARC	 BHABHA ATOMIC RESEARCH CENTER MATERIALS SCIENCE DIVISION TROMBAY\r\n	INDIA	MAHARASHTRA	MUMBAI	67	bhalchandra-puna-badgujar	19.012926199999999	72.9047135999999938	ready_for_verification	2	2013-07-08 07:45:58.30596	2013-07-08 07:45:58.30596	BHABHA ATOMIC RESEARCH CENTER	\N	\N
4	1004	Scorp Enterprises	f	1004	Dr. Manisha R Vikhe	BUSINESS		 Nagari Kutumb Kalyan Kendra, Nr to Medicin OPD, ESIS Hospital Campus, L B Marg, Mulund West.\r\n	INDIA	MAHARASHTRA	mumabi	75	dr-manisha-r-vikhe	19.7514797999999985	75.7138884000000019	submitted	4	2013-07-10 08:37:04.237224	2013-07-10 08:37:04.237224	 Nagari Kutumb Kalyan Kendra, Nr to Medicin OPD, ESIS Hospital 	\N	\N
5	1005	Scorp Enterprises	f	1005	SRIDHAR SANKAR 	BUSINESS		C E O, PRABHAT ELASTOMERS PVT LTD, 96  L B S MARG, OPP CIPLA VIKHROLI WEST, MUMBAI 400083\r\n\r\n	INDIA	MAHARASHTRA	MUMBAI	78	sridhar-sankar	\N	\N	awaiting_to_get_verified	5	2013-07-10 08:42:06.477911	2013-07-10 08:42:06.477911	C E O, PRABHAT ELASTOMERS PVT LTD,	\N	\N
6	1006	Scorp Enterprises	f	1006	RAJESH BHAGWANDAS BALMIKI	BUSINESS		CENTRAL COTTAGE INDUSTRIES CO INDIA LTD, 34 C S M MARG, NEAR GATE WAY OF INDIA, MUMBAI 400039\r\n	INDIA	MAHARASHTRA	MUMBAI	39	rajesh-bhagwandas-balmiki	19.0759836999999983	72.8776558999999935	ready_for_verification	6	2013-07-13 07:44:19.1762	2013-07-13 07:44:19.1762	CENTRAL COTTAGE INDUSTRIES CO INDIA LTD	\N	\N
7	1008	Scorp Enterprises	f	1008	Rajesh Vasudev hemnani	BUSINESS		IDFC Alternatives, 3rd floor, Naman Chambers, C-32, G Block, Bandra-kurla complex, Mumbai- 400051\r\n	INDIA	MAHARASHTRA	MUMBAI	47	rajesh-vasudev-hemnani	19.062756499999999	72.8545019000000025	ready_for_verification	8	2013-07-13 07:51:48.685723	2013-07-13 07:51:48.685723	IDFC Alternatives	\N	\N
8	1009	Scorp Enterprises	f	1009	SRIRAM SWAMINATHAN	BUSINESS		V.P.PURCHASE UNITED PHOSPHOROCS LTD,11TH ROAD LAND MARK MADHU PARK KHAR WEST, MUMBAI 400052\r\n	INDIA	MAHARASHTRA	MUMBAI	48	sriram-swaminathan	19.0707017999999984	72.8323462999999975	submitted	9	2013-07-13 07:56:11.652854	2013-07-13 07:56:11.652854	V.P.PURCHASE UNITED PHOSPHOROCS LTD	\N	\N
9	1010	Scorp Enterprises	f	1010	NAMITA BHOGAN	BUSINESS		PRICEWATER HOUSE COOPERS PVT.LTD,252 VEER SAVARKAR MARG,SHIVAJI PARK DADAR WEST\r\n	INDIA	MAHARASHTRA	MUMBAI	15	namita-bhogan	19.0274518000000015	72.8368332000000009	submitted	10	2013-07-13 07:58:23.766454	2013-07-13 07:58:23.766454	PRICEWATER HOUSE COOPERS PVT.LTD	\N	\N
10	1011	Scorp Enterprises	f	1011	DR. SAURABH PRAKASH CHHATRE	BUSINESS		"SANDU PHARMACUETICALS LTD., SANDU NAGAR, D.K. SANDU MARG, , CHEMBUR, MUMBAI - 400071\r\n"\r\n	INDIA	MAHARASHTRA	MUMBAI	67	dr-saurabh-prakash-chhatre	19.0759836999999983	72.8776558999999935	submitted	11	2013-07-17 07:33:37.195634	2013-07-17 07:33:37.195634	SANDU PHARMACUETICALS LTD	\N	\N
11	1012	Scorp Enterprises	f	1012	SANJAY RAMDAS KAPOTE	BUSINESS		BHABHA ATOMIC RESEARCH CENTRE, R O D CIRUS CONTROL ROOM, TROMBAY, MUMBAI 400085\r\n	INDIA	MAHARASHTRA	MUMBAI	80	sanjay-ramdas-kapote	19.0438019999999995	72.9120968000000147	submitted	12	2013-07-17 07:37:15.422407	2013-07-17 07:37:15.422407	BHABHA ATOMIC RESEARCH CENTRE	\N	\N
12	1013	Scorp Enterprises	f	1013	RAVINDRA PRAKASH HANS	BUSINESS		BHABHA ATOMIC RESEARCH CENTRE, 11-150-5, MOD LABS, BSCS, TROMBAY, MUMBAI\r\n	INDIA			82	ravindra-prakash-hans	19.012926199999999	72.9047135999999938	submitted	13	2013-07-17 07:42:48.772899	2013-07-17 07:42:48.772899	BHABHA ATOMIC RESEARCH CENTRE	\N	\N
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 12, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
1	1	1	3	\N	2013-07-13 07:49:44.490973	2013-07-13 07:49:44.532994
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
1	1007	Scorp Enterprises	f	1007	VIRENDRA VEER SINGH	BUSINESS		HQ MUMBAI SUB AREA (STNCELL) COLABA, MUMBAI 400005\r\n	INDIA	mumbai	maharashtra	5	virendra-veer-singh	18.9037004000000017	72.8131432000000132	submitted	7	HQ MUMBAI SUB AREA (STNCELL)	2013-07-13 07:49:15.397328	2013-07-13 07:49:15.397328	\N	\N
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
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 1, false);


--
-- Data for Name: co_applicant_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_verifications (id, co_applicant_id, user_id, customer_id, tab_id, created_at, updated_at) FROM stdin;
1	1	3	\N	1	2013-07-13 07:48:16.463957	2013-07-13 07:48:16.499848
2	2	3	\N	1	2013-07-13 07:49:33.1799	2013-07-13 07:49:33.201719
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 2, true);


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
1	VIRENDRA VEER SINGH	Scorp Enterprises	f	1007		INDIA	maharashtra	mumbai	virendra-veer-singh	submitted	7	M E S COLONY BUILDING NO 110, ROOM NO 17, KALINA SANTACRUZ EAST, MUMBAI 400098\r\n	19.0812348000000007	72.8424123000000066	RESIDENTIAL	2013-07-13 07:47:47.003752	2013-07-13 07:47:47.003752	\N	1007	89	\N	\N
2	VIRENDRA VEER SINGH	Scorp Enterprises	f	1007		INDIA	maharashtra	mumbai	virendra-veer-singh--2	submitted	7	M E S COLONY BUILDING NO 110, ROOM NO 17, KALINA SANTACRUZ EAST, MUMBAI 400098\r\n	19.0812348000000007	72.8424123000000066	RESIDENTIAL	2013-07-13 07:47:49.579327	2013-07-13 07:47:49.579327	\N	1007	89	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 2, true);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
1	1	\N	\N	2013-07-02 11:40:36.574057	2013-07-02 11:40:36.574057	1
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 1, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
1	3	1	1	2013-07-02 11:33:14.318273	2013-07-02 11:33:14.363622	\N	\N	\N
2	3	3	1	2013-07-08 07:23:03.800492	2013-07-08 07:23:03.826947	\N	\N	\N
3	3	2	1	2013-07-08 07:46:09.683704	2013-07-08 07:46:09.709347	\N	\N	\N
4	3	2	1	2013-07-08 07:46:09.758587	2013-07-08 07:46:09.76697	\N	\N	\N
5	3	5	5	2013-07-10 08:40:57.966	2013-07-10 08:40:57.991703	\N	\N	\N
6	3	6	1	2013-07-13 07:43:21.192686	2013-07-13 07:43:21.220196	\N	\N	\N
7	3	7	1	2013-07-13 07:46:36.732705	2013-07-13 07:46:36.751769	\N	\N	\N
8	3	8	1	2013-07-13 07:51:56.75669	2013-07-13 07:51:56.782888	\N	\N	\N
9	3	8	1	2013-07-13 07:51:56.85073	2013-07-13 07:51:56.857771	\N	\N	\N
10	3	8	1	2013-07-13 07:52:11.296973	2013-07-13 07:52:11.318873	\N	\N	\N
11	3	8	1	2013-07-13 07:52:11.533349	2013-07-13 07:52:11.552954	\N	\N	\N
12	3	9	1	2013-07-13 07:55:31.296003	2013-07-13 07:55:31.322129	\N	\N	\N
13	3	10	5	2013-07-13 07:57:51.890163	2013-07-13 07:57:51.914368	\N	\N	\N
14	3	11	5	2013-07-17 07:32:57.788431	2013-07-17 07:32:57.806911	\N	\N	\N
15	3	12	1	2013-07-17 07:35:47.024483	2013-07-17 07:35:47.047126	\N	\N	\N
16	3	13	1	2013-07-17 07:42:06.429036	2013-07-17 07:42:06.456365	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 16, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
13	1013	Scorp Enterprises	1013	RAVINDRA PRAKASH HANS	13-A NANDADEVI, ANUSHAKTI NAGAR, BUS DEPOT, MUMBAI 400094\r\n		\N	82	2013-07-17 07:41:57.701463	2013-07-17 07:41:57.701463	ravindra-prakash-hans	19.0266589999999987	72.9283391000000023	\N	022-25568611\t9969924403/9757000358	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
1	1001	Scorp Enterprises	1001	santosh chawan	dhobi ghat, vakola bridge,\r\nsantacruz East 	vakola bridge	\N	51	2013-07-02 11:32:16.465507	2013-07-02 11:32:16.465507	santosh-chawan	19.0816705999999989	72.848998299999991	\N	9768093311	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	t
3	1003	Scorp Enterprises	1003	ROHIT RAGHWENDRA SHRIKANT	F N 402 B.N.1 A WING KAPILAVASTU CHS KOLBAD KHOPAT IS THANE WEST 400601\r\n	NR PRATAP TALK	\N	97	2013-07-08 07:22:37.791389	2013-07-08 07:22:37.791389	rohit-raghwendra-shrikant	19.0759836999999983	72.8776558999999935	\N	9819580022	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
2	1002	Scorp Enterprises	1002	BHALCHANDRA PUNA BADGUJAR	BHABHA ATOMIC RESEARCH CENTER MATERIALS SCIENCE DIVISION TROMBAY\r\n	BARC	\N	67	2013-07-08 07:08:01.966465	2013-07-08 07:08:01.966465	bhalchandra-puna-badgujar	19.012926199999999	72.9047135999999938	\N	022-25505151 /022-25595062	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
4	1004	Scorp Enterprises	1004	Dr. Manisha R Vikhe	 Nagari Kutumb Kalyan Kendra, Nr to Medicin OPD, ESIS Hospital Campus, L B Marg, Mulund West.\r\n		\N	75	2013-07-10 08:35:21.479842	2013-07-10 08:35:21.479842	dr-manisha-r-vikhe	19.1746738999999984	72.9431038000000029	\N	9892892688/9892723134	ready_for_verification	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
5	1005	Scorp Enterprises	1005	SRIDHAR SANKAR 	18/204 SANSKRUTI, THAKUR COMPLEX, KANDIVALI EAST, MUMBAI 400101\r\n		\N	91	2013-07-10 08:40:49.828647	2013-07-10 08:40:49.828647	sridhar-sankar	19.2138774000000012	72.8613010999999915	\N	28706613\t9867744009	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
6	1006	Scorp Enterprises	1006	RAJESH BHAGWANDAS BALMIKI	R NO -35, BAMAN WADA ZOPADI, BALMIKI NAGAR, VILE PARLE, MUMBAI 400060\r\n		\N	56	2013-07-13 07:42:54.091051	2013-07-13 07:42:54.091051	rajesh-bhagwandas-balmiki	19.1374764999999982	72.8545019000000025	\N	9004344219	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
7	1007	Scorp Enterprises	1007	SACHIN VIRENDRA SINGH	M E S COLONY BUILDING NO 110, ROOM NO 17, KALINA SANTACRUZ EAST, MUMBAI 400098\r\n		\N	89	2013-07-13 07:46:29.238672	2013-07-13 07:46:29.238672	sachin-virendra-singh	19.0812348000000007	72.8424123000000066	\N	9870779602	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
8	1008	Scorp Enterprises	1008	Rajesh Vasudev hemnani	B-22, Ruia park apartments, Military Road, JVPD, Juhu, Mumbai- 400049\r\n		\N	45	2013-07-13 07:51:14.052956	2013-07-13 07:51:14.052956	rajesh-vasudev-hemnani	19.0949852	72.8308691999999951	\N	9987525715	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
9	1009	Scorp Enterprises	1009	SRIRAM SWAMINATHAN	SADGURU NIWAS PLOT NO 20,DR AMBEDEKAR ROAD MULUND WEST MUMBAI 400080\r\n		\N	75	2013-07-13 07:55:25.373683	2013-07-13 07:55:25.373683	sriram-swaminathan	19.1694850000000017	72.9490093999999942	\N	91411963/9820019083	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
10	1010	Scorp Enterprises	1010	NAMITA BHOGAN	26/405 SAKET SOCIETY KANNAMWAR NAGAR VIKHROLI EAST\r\n		\N	74	2013-07-13 07:57:43.531086	2013-07-13 07:57:43.531086	namita-bhogan	19.1046510000000005	72.9317819999999983	\N	022-25777843\t9769985117/9833942375	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
11	1011	Scorp Enterprises	1011	DR. SAURABH PRAKASH CHHATRE	"FLAT NO. 2, 2ND FLOOR, BLDG. D-32, SAGAR SANGAM, SECTOR - 4,  NERUL, NAVI MUMBAI - 400706\r\n"\r\n		\N	113	2013-07-17 07:32:29.472596	2013-07-17 07:32:29.472596	dr-saurabh-prakash-chhatre	\N	\N	\N	022-27723443\t7738824455	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
12	1012	Scorp Enterprises	1012	SANJAY RAMDAS KAPOTE	A-202, TULSINATH CHS LTD, NANDIVLI CROSS ROAD, PANDURANGWADI, NEAR SAIBABA MANDIR, DOMBIVALI EAST, THANE 421201\r\n		\N	160	2013-07-17 07:35:35.560102	2013-07-17 07:35:35.560102	sanjay-ramdas-kapote	19.0759836999999983	72.8776558999999935	\N	9892263060/9967019330	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 13, true);


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
1	Telephones	2013-06-24 07:09:57.555754	2013-06-24 07:09:57.555754
2	Computer	2013-06-24 07:09:57.562616	2013-06-24 07:09:57.562616
3	Fax	2013-06-24 07:09:57.570622	2013-06-24 07:09:57.570622
4	AC	2013-06-24 07:09:57.578908	2013-06-24 07:09:57.578908
5	Photocopier	2013-06-24 07:09:57.587232	2013-06-24 07:09:57.587232
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at) FROM stdin;
1	Fort	400001	2013-06-24 07:09:57.726998	2013-06-24 07:09:57.726998
2	Kalbadevi	400002	2013-06-24 07:09:57.737334	2013-06-24 07:09:57.737334
3	Masjid(e)	400003	2013-06-24 07:09:57.74532	2013-06-24 07:09:57.74532
4	Girgaum	400004	2013-06-24 07:09:57.753697	2013-06-24 07:09:57.753697
5	Colaba	400005	2013-06-24 07:09:57.761956	2013-06-24 07:09:57.761956
6	Malabar hill	400006	2013-06-24 07:09:57.770555	2013-06-24 07:09:57.770555
7	Grant Road	400007	2013-06-24 07:09:57.778912	2013-06-24 07:09:57.778912
8	Mumbai Central	400008	2013-06-24 07:09:57.787202	2013-06-24 07:09:57.787202
9	Masjid(w)	400009	2013-06-24 07:09:57.79553	2013-06-24 07:09:57.79553
10	Mazgaon	400010	2013-06-24 07:09:57.803852	2013-06-24 07:09:57.803852
11	Jacob Circle	400011	2013-06-24 07:09:57.812176	2013-06-24 07:09:57.812176
12	lalbaug	400012	2013-06-24 07:09:57.820506	2013-06-24 07:09:57.820506
13	delisle road	400013	2013-06-24 07:09:57.828884	2013-06-24 07:09:57.828884
14	Dadar	400014	2013-06-24 07:09:57.837115	2013-06-24 07:09:57.837115
15	Sewree	400015	2013-06-24 07:09:57.845477	2013-06-24 07:09:57.845477
16	Mahim	400016	2013-06-24 07:09:57.853858	2013-06-24 07:09:57.853858
17	Dharavi	400017	2013-06-24 07:09:57.862109	2013-06-24 07:09:57.862109
18	Worli	400018	2013-06-24 07:09:57.870547	2013-06-24 07:09:57.870547
19	Matunga Central	400019	2013-06-24 07:09:57.878875	2013-06-24 07:09:57.878875
20	Churchgate	400020	2013-06-24 07:09:57.887167	2013-06-24 07:09:57.887167
21	Nariman Point	400021	2013-06-24 07:09:57.895473	2013-06-24 07:09:57.895473
22	Sion	400022	2013-06-24 07:09:57.903815	2013-06-24 07:09:57.903815
23	Dalal Street	400023	2013-06-24 07:09:57.912138	2013-06-24 07:09:57.912138
24	Kurla	400024	2013-06-24 07:09:57.920465	2013-06-24 07:09:57.920465
25	Prabhadevi	400025	2013-06-24 07:09:57.928793	2013-06-24 07:09:57.928793
26	Fort	400026	2013-06-24 07:09:57.937167	2013-06-24 07:09:57.937167
27	Byculla(e)	400027	2013-06-24 07:09:57.94534	2013-06-24 07:09:57.94534
28	Dadar	400028	2013-06-24 07:09:57.953766	2013-06-24 07:09:57.953766
29	Santacruz(e)	400029	2013-06-24 07:09:57.962118	2013-06-24 07:09:57.962118
30	PGMS Office	400030	2013-06-24 07:09:57.970416	2013-06-24 07:09:57.970416
31	Wadala	400031	2013-06-24 07:09:57.97877	2013-06-24 07:09:57.97877
32	Mantralaya	400032	2013-06-24 07:09:57.987081	2013-06-24 07:09:57.987081
33	Cotton Green	400033	2013-06-24 07:09:57.995396	2013-06-24 07:09:57.995396
34	Haji Ali	400034	2013-06-24 07:09:58.003722	2013-06-24 07:09:58.003722
35	Raj Bhavan	400035	2013-06-24 07:09:58.012048	2013-06-24 07:09:58.012048
36	Kemps corner	400036	2013-06-24 07:09:58.020371	2013-06-24 07:09:58.020371
37	Antop hill	400037	2013-06-24 07:09:58.028706	2013-06-24 07:09:58.028706
38	Ballard Pier	400038	2013-06-24 07:09:58.037023	2013-06-24 07:09:58.037023
39	Ballard Estate	400039	2013-06-24 07:09:58.045334	2013-06-24 07:09:58.045334
40	Jogeshwari(e)	400041	2013-06-24 07:09:58.053664	2013-06-24 07:09:58.053664
41	Bhandup	400042	2013-06-24 07:09:58.062053	2013-06-24 07:09:58.062053
42	Mankhurd	400043	2013-06-24 07:09:58.070339	2013-06-24 07:09:58.070339
43	Vile Parle(e)	400047	2013-06-24 07:09:58.078684	2013-06-24 07:09:58.078684
44	Andheri(w)	400048	2013-06-24 07:09:58.087006	2013-06-24 07:09:58.087006
45	Andheri(w)	400049	2013-06-24 07:09:58.095306	2013-06-24 07:09:58.095306
46	bandra	400050	2013-06-24 07:09:58.103605	2013-06-24 07:09:58.103605
47	Khar	400051	2013-06-24 07:09:58.111959	2013-06-24 07:09:58.111959
48	Khar	400052	2013-06-24 07:09:58.120314	2013-06-24 07:09:58.120314
49	Andheri(w)	400053	2013-06-24 07:09:58.128595	2013-06-24 07:09:58.128595
50	Santacruz(w)	400054	2013-06-24 07:09:58.139199	2013-06-24 07:09:58.139199
51	Santacruz(e)	400055	2013-06-24 07:09:58.145243	2013-06-24 07:09:58.145243
52	Vile parle(w)	400056	2013-06-24 07:09:58.153577	2013-06-24 07:09:58.153577
53	Vile Parle(e)	400057	2013-06-24 07:09:58.161933	2013-06-24 07:09:58.161933
54	Andheri(e)	400058	2013-06-24 07:09:58.170331	2013-06-24 07:09:58.170331
55	Andheri(w)	400059	2013-06-24 07:09:58.178583	2013-06-24 07:09:58.178583
56	Jogeshwari(e)	400060	2013-06-24 07:09:58.186939	2013-06-24 07:09:58.186939
57	Andheri(w)	400061	2013-06-24 07:09:58.195258	2013-06-24 07:09:58.195258
58	Goregaon(w)	400062	2013-06-24 07:09:58.203584	2013-06-24 07:09:58.203584
59	Goregaon(e)	400063	2013-06-24 07:09:58.211962	2013-06-24 07:09:58.211962
60	Malad(w)	400064	2013-06-24 07:09:58.220238	2013-06-24 07:09:58.220238
61	Goregoan(e)	400065	2013-06-24 07:09:58.228488	2013-06-24 07:09:58.228488
62	Borivali(e)	400066	2013-06-24 07:09:58.236898	2013-06-24 07:09:58.236898
63	Kandivali(w)	400067	2013-06-24 07:09:58.245216	2013-06-24 07:09:58.245216
64	Dahisar	400068	2013-06-24 07:09:58.253439	2013-06-24 07:09:58.253439
65	Andheri(e)	400069	2013-06-24 07:09:58.261871	2013-06-24 07:09:58.261871
66	Kurla	400070	2013-06-24 07:09:58.270217	2013-06-24 07:09:58.270217
67	Chembur	400071	2013-06-24 07:09:58.278414	2013-06-24 07:09:58.278414
68	Andheri(e)	400072	2013-06-24 07:09:58.286755	2013-06-24 07:09:58.286755
69	Chembur	400074	2013-06-24 07:09:58.29517	2013-06-24 07:09:58.29517
70	Ghatkopar	400075	2013-06-24 07:09:58.3035	2013-06-24 07:09:58.3035
71	Powai	400076	2013-06-24 07:09:58.311812	2013-06-24 07:09:58.311812
72	Ghatkopar	400077	2013-06-24 07:09:58.319933	2013-06-24 07:09:58.319933
73	Bhandup	400078	2013-06-24 07:09:58.328345	2013-06-24 07:09:58.328345
74	Vikroli	400079	2013-06-24 07:09:58.336699	2013-06-24 07:09:58.336699
75	Mulund	400080	2013-06-24 07:09:58.344998	2013-06-24 07:09:58.344998
76	Mulund	400081	2013-06-24 07:09:58.353323	2013-06-24 07:09:58.353323
77	Mulund	400082	2013-06-24 07:09:58.361651	2013-06-24 07:09:58.361651
78	Vikroli	400083	2013-06-24 07:09:58.369994	2013-06-24 07:09:58.369994
79	Ghatkopar	400084	2013-06-24 07:09:58.378333	2013-06-24 07:09:58.378333
80	Ghatkopar	400086	2013-06-24 07:09:58.386651	2013-06-24 07:09:58.386651
81	Niete	400087	2013-06-24 07:09:58.394967	2013-06-24 07:09:58.394967
82	Deonar	400088	2013-06-24 07:09:58.403281	2013-06-24 07:09:58.403281
83	Chembur	400089	2013-06-24 07:09:58.411554	2013-06-24 07:09:58.411554
84	Goregaon(w)	400090	2013-06-24 07:09:58.419933	2013-06-24 07:09:58.419933
85	Borivali(w)	400091	2013-06-24 07:09:58.428243	2013-06-24 07:09:58.428243
86	Borivali(w)	400092	2013-06-24 07:09:58.436588	2013-06-24 07:09:58.436588
87	Andheri(e)	400093	2013-06-24 07:09:58.444916	2013-06-24 07:09:58.444916
88	Malad(e)	400097	2013-06-24 07:09:58.453231	2013-06-24 07:09:58.453231
89	Santacruz(e)	400098	2013-06-24 07:09:58.461551	2013-06-24 07:09:58.461551
90	Andheri(e)	400099	2013-06-24 07:09:58.469882	2013-06-24 07:09:58.469882
91	Kandivali(e)	400101	2013-06-24 07:09:58.478265	2013-06-24 07:09:58.478265
92	Jogeshwari(w)	400102	2013-06-24 07:09:58.486622	2013-06-24 07:09:58.486622
93	Borivali(w)	400103	2013-06-24 07:09:58.494948	2013-06-24 07:09:58.494948
94	Goregaon(w)	400104	2013-06-24 07:09:58.503221	2013-06-24 07:09:58.503221
95	Bhayandar(e)	400105	2013-06-24 07:09:58.511565	2013-06-24 07:09:58.511565
96	Goregaon(w)	400106	2013-06-24 07:09:58.519891	2013-06-24 07:09:58.519891
97	Thane	400601	2013-06-24 07:09:58.528207	2013-06-24 07:09:58.528207
98	Thane	400602	2013-06-24 07:09:58.536549	2013-06-24 07:09:58.536549
99	Thane	400603	2013-06-24 07:09:58.544863	2013-06-24 07:09:58.544863
100	Thane	400604	2013-06-24 07:09:58.553194	2013-06-24 07:09:58.553194
101	Kalwa	400605	2013-06-24 07:09:58.561517	2013-06-24 07:09:58.561517
102	Thane	400606	2013-06-24 07:09:58.569854	2013-06-24 07:09:58.569854
103	Thane	400607	2013-06-24 07:09:58.578198	2013-06-24 07:09:58.578198
104	Thane	400608	2013-06-24 07:09:58.586493	2013-06-24 07:09:58.586493
105	Mumbra	400612	2013-06-24 07:09:58.594835	2013-06-24 07:09:58.594835
106	Turbhe	400613	2013-06-24 07:09:58.603154	2013-06-24 07:09:58.603154
107	CBD	400614	2013-06-24 07:09:58.611474	2013-06-24 07:09:58.611474
108	Ghansoli	400701	2013-06-24 07:09:58.619812	2013-06-24 07:09:58.619812
109	Uran	400702	2013-06-24 07:09:58.628137	2013-06-24 07:09:58.628137
110	Vashi	400703	2013-06-24 07:09:58.636441	2013-06-24 07:09:58.636441
111	Vashi	400704	2013-06-24 07:09:58.644781	2013-06-24 07:09:58.644781
112	Vashi	400705	2013-06-24 07:09:58.653089	2013-06-24 07:09:58.653089
113	Nerul	400706	2013-06-24 07:09:58.661419	2013-06-24 07:09:58.661419
114	Airoli	400708	2013-06-24 07:09:58.669757	2013-06-24 07:09:58.669757
115	KK	400709	2013-06-24 07:09:58.678113	2013-06-24 07:09:58.678113
116	KK	400710	2013-06-24 07:09:58.686385	2013-06-24 07:09:58.686385
117	Bhayandar(w)	401101	2013-06-24 07:09:58.694769	2013-06-24 07:09:58.694769
118	Umparpada	401102	2013-06-24 07:09:58.703069	2013-06-24 07:09:58.703069
119	Dahanu(w)	401103	2013-06-24 07:09:58.711384	2013-06-24 07:09:58.711384
120	Mira Road(e)	401104	2013-06-24 07:09:58.71971	2013-06-24 07:09:58.71971
121	Bhayandar(e)	401105	2013-06-24 07:09:58.728022	2013-06-24 07:09:58.728022
122	Bhayandar(w)	401106	2013-06-24 07:09:58.736336	2013-06-24 07:09:58.736336
123	Mira Road(e)	401107	2013-06-24 07:09:58.744684	2013-06-24 07:09:58.744684
124	Vasai(w)	401201	2013-06-24 07:09:58.753004	2013-06-24 07:09:58.753004
125	Vasai(w)	401202	2013-06-24 07:09:58.761283	2013-06-24 07:09:58.761283
126	Nalasopara(w)	401203	2013-06-24 07:09:58.769659	2013-06-24 07:09:58.769659
127	Virar(e)	401204	2013-06-24 07:09:58.777987	2013-06-24 07:09:58.777987
128	Vasai(e)	401205	2013-06-24 07:09:58.786283	2013-06-24 07:09:58.786283
129	Virar(e)	401206	2013-06-24 07:09:58.794701	2013-06-24 07:09:58.794701
130	Vasai(w)	401207	2013-06-24 07:09:58.803028	2013-06-24 07:09:58.803028
131	Vasai(e)	401208	2013-06-24 07:09:58.811346	2013-06-24 07:09:58.811346
132	NalaSopara(e)	401209	2013-06-24 07:09:58.819673	2013-06-24 07:09:58.819673
133	Vasai(e)	401210	2013-06-24 07:09:58.944625	2013-06-24 07:09:58.944625
134	Virar(w)	401301	2013-06-24 07:09:58.952903	2013-06-24 07:09:58.952903
135	Virar(w)	401302	2013-06-24 07:09:58.961212	2013-06-24 07:09:58.961212
136	Virar(e)	401303	2013-06-24 07:09:59.077763	2013-06-24 07:09:59.077763
137	Vasai(w)	401304	2013-06-24 07:09:59.086103	2013-06-24 07:09:59.086103
138	Palghar(e)	401404	2013-06-24 07:09:59.09444	2013-06-24 07:09:59.09444
139	Palghar(w)	401501	2013-06-24 07:09:59.102766	2013-06-24 07:09:59.102766
140	Palghar(w)	401502	2013-06-24 07:09:59.11119	2013-06-24 07:09:59.11119
141	Dahanu(w)	401503	2013-06-24 07:09:59.119513	2013-06-24 07:09:59.119513
142	Palghar(w)	401504	2013-06-24 07:09:59.127844	2013-06-24 07:09:59.127844
143	Palghar(w)	401506	2013-06-24 07:09:59.136146	2013-06-24 07:09:59.136146
144	Dahanu(e)	401601	2013-06-24 07:09:59.144488	2013-06-24 07:09:59.144488
145	Dahanu(e)	401602	2013-06-24 07:09:59.1528	2013-06-24 07:09:59.1528
146	Dahanu(e)	401606	2013-06-24 07:09:59.16113	2013-06-24 07:09:59.16113
147	Dahanu	401608	2013-06-24 07:09:59.169471	2013-06-24 07:09:59.169471
148	Dahanu(w)	401701	2013-06-24 07:09:59.177795	2013-06-24 07:09:59.177795
149	Panvel	410206	2013-06-24 07:09:59.18611	2013-06-24 07:09:59.18611
150	Panvel	410208	2013-06-24 07:09:59.1944	2013-06-24 07:09:59.1944
151	Kamothe	410209	2013-06-24 07:09:59.202765	2013-06-24 07:09:59.202765
152	Kharghar	410210	2013-06-24 07:09:59.211103	2013-06-24 07:09:59.211103
153	Kalamboli	410218	2013-06-24 07:09:59.219417	2013-06-24 07:09:59.219417
154	Ulhasnagar	421001	2013-06-24 07:09:59.227733	2013-06-24 07:09:59.227733
155	Ulhasnagar	421002	2013-06-24 07:09:59.236058	2013-06-24 07:09:59.236058
156	Ulhasnagar	421003	2013-06-24 07:09:59.244432	2013-06-24 07:09:59.244432
157	Ulhasnagar	421004	2013-06-24 07:09:59.252626	2013-06-24 07:09:59.252626
158	Ulhasnagar	421005	2013-06-24 07:09:59.261125	2013-06-24 07:09:59.261125
159	Ambivali	421102	2013-06-24 07:09:59.269376	2013-06-24 07:09:59.269376
160	Dombivali	421201	2013-06-24 07:09:59.277635	2013-06-24 07:09:59.277635
161	Dombivali	421202	2013-06-24 07:09:59.28604	2013-06-24 07:09:59.28604
162	Dombivali	421203	2013-06-24 07:09:59.294363	2013-06-24 07:09:59.294363
163	Dombivali	421204	2013-06-24 07:09:59.302703	2013-06-24 07:09:59.302703
164	Kalyan	421301	2013-06-24 07:09:59.311015	2013-06-24 07:09:59.311015
165	Bhiwandi	421302	2013-06-24 07:09:59.319325	2013-06-24 07:09:59.319325
166	Wada	421303	2013-06-24 07:09:59.327648	2013-06-24 07:09:59.327648
167	Kalyan	421304	2013-06-24 07:09:59.335998	2013-06-24 07:09:59.335998
168	Bhiwandi	421305	2013-06-24 07:09:59.344336	2013-06-24 07:09:59.344336
169	Kalyan	421306	2013-06-24 07:09:59.352632	2013-06-24 07:09:59.352632
170	Ambernath	421501	2013-06-24 07:09:59.360971	2013-06-24 07:09:59.360971
171	Ambernath	421502	2013-06-24 07:09:59.369229	2013-06-24 07:09:59.369229
172	Ambernath	421503	2013-06-24 07:09:59.377614	2013-06-24 07:09:59.377614
173	Ambernath	421505	2013-06-24 07:09:59.38595	2013-06-24 07:09:59.38595
174	Badlapur	421506	2013-06-24 07:09:59.394307	2013-06-24 07:09:59.394307
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 174, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
1	1	2013-06-24 07:14:31.424073	2013-06-24 07:14:31.537356	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
3	3	2013-06-28 12:47:52.628303	2013-06-28 12:48:13.879794	Verifyme_logo.jpg	image/jpeg	4736	3					2013-06-28	\N	
2	2	2013-06-24 07:16:50.998126	2013-07-02 11:46:51.963551	IMG_20130621_174315.jpg	application/octet-stream	199419	2					2013-07-02	\N	
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 3, true);


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
1	1	1	t	t	2013-07-02	17:07:49	jeevan	dad	4	\N	proffessional	Married	\N	\N	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- neighbour\n- ''\n	Multitanent House	Posh locality	easy	pakka	fenced	500	sofa		\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card	\N	Accept	2013-07-02 11:40:36.532564	2013-07-02 11:40:36.532564	2013-07-02		\N		
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 1, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
2	TAB-JOGESHWARI	T0102031	2013-06-24 07:09:57.629149	2013-06-24 07:09:57.629149	\N	\N	\N
3	TAB-GOREGAON	T0102032	2013-06-24 07:09:57.637057	2013-06-24 07:09:57.637057	\N	\N	\N
4	TAB-MALAD	T0102033	2013-06-24 07:09:57.645643	2013-06-24 07:09:57.645643	\N	\N	\N
5	TAB-VIKROLI	T0102034	2013-06-24 07:09:57.65402	2013-06-24 07:09:57.65402	\N	\N	\N
6	TAB-SION	T0102035	2013-06-24 07:09:57.662173	2013-06-24 07:09:57.662173	\N	\N	\N
7	TAB-MAHAKALI	T3434890	2013-06-24 07:09:57.670661	2013-06-24 07:09:57.670661	\N	\N	\N
1	TAB-ANDHERI	T0102030	2013-06-24 07:09:57.617613	2013-07-10 09:07:56.552998	\N	c8:9c:dc:d1:28:89	1
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 7, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
2	tab1@scorpeo.in	$2a$10$6Fe6PirZZ8TiStrzjIy36OJQiMn1y.CNkUje9rVGPGOpkVZCw/a66	\N	\N	\N	19	2013-07-13 06:50:17.545883	2013-07-11 06:00:46.134513	59.184.42.238	59.184.44.220	2013-06-24 07:16:50.924118	2013-07-13 06:50:17.546614	tab_user	tab1	1
3	avcv@scorpeo.in	$2a$10$aR9192jJsq6wDTgzTcSmo.Z4QUGJK1bYeAfhb3laofbiqg5EnvIqi	\N	\N	\N	17	2013-07-18 06:46:20.984989	2013-07-17 07:29:12.331559	59.184.46.38	122.169.24.121	2013-06-28 12:47:52.504612	2013-07-18 06:46:20.986311	super_user	DATA Entry	2
1	sudhirsb2003@gmail.com	$2a$10$3ZQ7u8GFb2lM43YGAg1MFuhXYj3qurR.masklAy2UQyLg2txzhWWq	\N	\N	\N	14	2013-07-19 05:07:29.572822	2013-07-19 03:41:16.135923	61.16.181.41	58.146.118.75	2013-06-24 07:14:31.307302	2013-07-19 05:07:29.573623	super_user	Sudhir Vishwakrma	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


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
1	1	N/A	\N	\N	t	N/A	2013-07-02	17:13:14						\N	\N	Scorp eo	Public Ltd.	Commission Agent	\N	Owned			\N	\N	Permanent	Senior/Middle Manager	t	\N	\N	t	---\n- colleage\n- receptionist\n- security\n- ''\n	Business Center	Business Center	Pukka	Good	Painted	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,\r\nSalary Slip,\r\nPan Card,\r\npositive	\N	positive	\N	\N	2013-07-02 11:45:01.764792	2013-07-02 11:45:01.813034	\N	\N	ready_for_verification	1	
2	5	N/A	\N	\N	t	c.e.o	2013-07-11	07:42:23						\N	\N	C E O, PRABHAT ELASTOMERS PVT LTD,	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-07-11 02:13:00.090963	2013-07-11 02:13:00.205914	\N	\N	ready_for_verification	1	
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 2, true);


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

