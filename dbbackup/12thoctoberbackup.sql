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
-- Name: address_proofs_customers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE address_proofs_customers (
    address_proof_id integer,
    customer_id integer
);


ALTER TABLE public.address_proofs_customers OWNER TO postgres;

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
-- Name: address_proofs_serveys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE address_proofs_serveys (
    address_proof_id integer,
    servey_id integer
);


ALTER TABLE public.address_proofs_serveys OWNER TO postgres;

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
-- Name: assets_customers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE assets_customers (
    asset_id integer,
    customer_id integer
);


ALTER TABLE public.assets_customers OWNER TO postgres;

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
-- Name: assets_serveys; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE assets_serveys (
    asset_id integer,
    servey_id integer
);


ALTER TABLE public.assets_serveys OWNER TO postgres;

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
-- Name: b_documents_businesses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE b_documents_businesses (
    business_id integer,
    b_document_id integer
);


ALTER TABLE public.b_documents_businesses OWNER TO postgres;

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
    emp_code character varying(255),
    department_id integer
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
    emp_code character varying(255),
    department_id integer
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
-- Name: customers_office_assets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE customers_office_assets (
    customer_id integer,
    office_asset_id integer
);


ALTER TABLE public.customers_office_assets OWNER TO postgres;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE departments (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO postgres;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE departments_id_seq OWNED BY departments.id;


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

ALTER TABLE ONLY departments ALTER COLUMN id SET DEFAULT nextval('departments_id_seq'::regclass);


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
1	Ration Card	2013-09-21 11:44:43.153013	2013-09-21 11:44:43.153013
2	Electricity Bill	2013-09-21 11:44:43.167497	2013-09-21 11:44:43.167497
3	Telephone Bill	2013-09-21 11:44:43.175271	2013-09-21 11:44:43.175271
4	Bank Statement card	2013-09-21 11:44:43.183578	2013-09-21 11:44:43.183578
5	Driving licence	2013-09-21 11:44:43.191869	2013-09-21 11:44:43.191869
6	Passport	2013-09-21 11:44:43.200198	2013-09-21 11:44:43.200198
\.


--
-- Data for Name: address_proofs_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY address_proofs_customers (address_proof_id, customer_id) FROM stdin;
\.


--
-- Name: address_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('address_proofs_id_seq', 6, true);


--
-- Data for Name: address_proofs_serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY address_proofs_serveys (address_proof_id, servey_id) FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
1	admin@example.com	$2a$10$drBIsCGVZNf6l5j8XxnXxOecdkGgYQ40g53VrVC92J3JH2dvspYGa	\N	\N	\N	2	2013-09-21 12:45:29.54182	2013-09-21 12:45:03.926882	127.0.0.1	127.0.0.1	2013-09-21 11:44:08.039121	2013-09-21 12:45:29.542641	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2013-09-21 11:44:43.277137	2013-09-21 11:44:43.277137
2	Air Conditioner	2013-09-21 11:44:43.283897	2013-09-21 11:44:43.283897
3	Refrigrator	2013-09-21 11:44:43.291665	2013-09-21 11:44:43.291665
4	Music System	2013-09-21 11:44:43.319614	2013-09-21 11:44:43.319614
\.


--
-- Data for Name: assets_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets_customers (asset_id, customer_id) FROM stdin;
\.


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assets_id_seq', 4, true);


--
-- Data for Name: assets_serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets_serveys (asset_id, servey_id) FROM stdin;
\.


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2013-09-21 11:44:43.22721	2013-09-21 11:44:43.22721
2	Salary Slip	2013-09-21 11:44:43.234038	2013-09-21 11:44:43.234038
3	Mobile Bill	2013-09-21 11:44:43.24184	2013-09-21 11:44:43.24184
4	Pan Card	2013-09-21 11:44:43.250048	2013-09-21 11:44:43.250048
\.


--
-- Data for Name: b_documents_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents_businesses (business_id, b_document_id) FROM stdin;
\.


--
-- Name: b_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('b_documents_id_seq', 4, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
1	1	1	2013-09-23 06:19:24.472784	2013-09-23 06:19:24.472784	\N	\N	\N
2	1	2	2013-09-23 06:19:26.74024	2013-09-23 06:19:26.74024	\N	\N	\N
3	6	3	2013-09-28 04:50:11.911274	2013-09-28 04:50:11.911274	\N	\N	\N
4	6	4	2013-09-28 04:50:57.074012	2013-09-28 04:50:57.074012	\N	\N	\N
5	13	5	2013-10-04 13:22:29.673627	2013-10-04 13:22:29.673627	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 5, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
1	1	\N	1	1	2013-09-22 10:35:44.488197	2013-09-22 10:35:44.575413
2	1	\N	2	3	2013-09-23 08:25:55.134228	2013-09-23 08:25:55.154431
3	1	\N	3	3	2013-09-23 08:28:04.159582	2013-09-23 08:28:04.182647
4	1	\N	4	3	2013-09-23 08:39:15.166489	2013-09-23 08:39:15.191018
5	1	\N	5	1	2013-09-25 07:15:40.916056	2013-09-25 07:15:40.943596
6	1	\N	7	1	2013-09-26 07:09:27.458813	2013-09-26 07:09:27.486447
7	1	\N	11	1	2013-09-26 07:36:05.068014	2013-09-26 07:36:05.08734
8	1	\N	9	1	2013-09-26 07:37:46.713289	2013-09-26 07:37:46.73303
9	1	\N	6	1	2013-09-26 07:38:20.736227	2013-09-26 07:38:20.751019
10	1	\N	8	1	2013-09-26 07:38:40.472214	2013-09-26 07:38:40.490663
11	1	\N	10	1	2013-09-26 07:40:10.201106	2013-09-26 07:40:10.222586
12	1	\N	12	3	2013-09-26 07:45:17.610646	2013-09-26 07:45:17.633766
13	1	\N	13	1	2013-09-26 07:49:04.061762	2013-09-26 07:49:04.078704
14	1	\N	14	3	2013-09-26 08:00:10.501497	2013-09-26 08:00:10.524939
15	1	\N	16	3	2013-10-04 06:34:18.982581	2013-10-04 06:34:19.010485
16	1	\N	15	3	2013-10-04 06:34:33.404121	2013-10-04 06:34:33.421239
17	1	\N	17	3	2013-10-04 06:44:52.477445	2013-10-04 06:44:52.503961
18	1	\N	18	1	2013-10-04 06:55:00.078441	2013-10-04 06:55:00.097349
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 18, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id) FROM stdin;
2	1004	Scorp Enterprises	f	1004	SHRI PRADIP SAGAN KAVATHEKAR 	BUSINESS		"INDIAN REGISTRAR OF SHIPPING \r\n52 A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI MUMBAI.\r\n"\r\n	INDIA	MAHARASHTRA	MUMBAI	57	shri-pradip-sagan-kavathekar	19.0759836999999983	72.8776558999999935	submitted	4	2013-09-23 08:25:44.936943	2013-09-23 08:25:44.936943	INDIAN REGISTRAR OF SHIPPING	\N	\N	1
3	1005	Scorp Enterprises	f	1005	VASUDEV Y. NAIK        	BUSINESS		BENTEX ENGINEERING PVT LTD KHALAI VILLAGE KIROL VIDYAVIHAR W 400086.\r\n	INDIA	MAHARASHTRA	MUMBAI	60	vasudev-y-naik	19.0823572000000006	72.8943768000000034	submitted	5	2013-09-23 08:27:56.443468	2013-09-23 08:27:56.443468	BENTEX ENGINEERING PVT LTD 	\N	\N	1
4	1008	Scorp Enterprises	f	1008	ANIL NAMDEO DHAMDHERE (486)	BUSINESS		DR LH HIRANANDANI HOSPITAL, HILL SIDE AVENUE HIRANANDANI GARDENS, POWAI, MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	58	anil-namdeo-dhamdhere-486	19.0176169000000002	72.8561287999999934	submitted	8	2013-09-23 08:39:07.507665	2013-09-23 08:39:07.507665	DR LH HIRANANDANI HOSPITAL	\N	\N	1
1	1002	Scorp Enterprises	f	1002	HARESH SURESH POKALE	BUSINESS		L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	59	haresh-suresh-pokale	\N	\N	verified	2	2013-09-20 13:47:02.04377	2013-09-21 09:58:21.303036	L & T LTD	\N	\N	\N
5	1009	Scorp Enterprises	f	1009	NANDAKISHOR VISHWANATH MALDIKAR	BUSINESS		AVERY DENNISON INDIA PVT LTD, 5TH FLOOR, CORAL SQUARE, GHODBUNDER ROAD, KAVESAR, THANE 400607\r\n	INDIA	MAHARASHTRA	thane	67	nandakishor-vishwanath-maldikar	19.2599043999999999	72.9576971999999984	submitted	9	2013-09-25 07:15:30.570724	2013-09-25 07:15:30.570724	AVERY DENNISON INDIA PVT LTD	\N	\N	1
7	1015	Scorp Enterprises	f	1015	BABASAHEB BHANUDAS LOMATE 	BUSINESS		ACCENTURE SERVICES PVT LTD, PLANT NO 3, GODREJ & BOYCECOMPLEX, L B S MARG, VIKHROLI WEST, MUMBAI 400079\r\n	INDIA	india	MUMBAI	58	babasaheb-bhanudas-lomate	\N	\N	submitted	15	2013-09-26 07:09:10.277464	2013-09-26 07:09:10.277464	ACCENTURE SERVICES PVT LTD,	\N	\N	1
11	1012	Scorp Enterprises	f	1012	MANOJ ARORA	BUSINESS		ACCENTURE SERVICES PVT LTD, PLANT NO 3, GODREJ & BOYCECOMPLEX, L B S MARG, VIKHROLI WEST, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	manoj-arora	19.0852663999999983	72.9401508999999919	submitted	12	2013-09-26 07:35:25.005557	2013-09-26 07:35:25.005557	ACCENTURE SERVICES PVT LTD,	\N	\N	1
9	1017	Scorp Enterprises	f	1017	KEDAR VINAYAK CHIKHALIKAR	BUSINESS		LUBRIZOL ADVANCED MATERIALS INDIA PVT LTD, 6 & 7 FLOOR, JASWANTI LAND PARK, MEHRA INDUSTRIAL ESTATE, NEAR VIKHROLI WEST STATION, VIKHROLI WEST, MUMBAI 400079\r\n	INDIA	india	MUMBAI	58	kedar-vinayak-chikhalikar	19.1091760999999991	72.9194797999999906	submitted	17	2013-09-26 07:24:03.839603	2013-09-26 07:24:03.839603	LUBRIZOL ADVANCED MATERIALS INDIA PVT LTD	\N	\N	2
8	1016	Scorp Enterprises	f	1016	ASHWINI PRITISH MANJAVKAR	BUSINESS		CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A GODREJ IT PARK, GODREJ & BOYCE COMPOUND LBS MARG, VIKHROLI \r\n	INDIA	india	MUMBAI	58	ashwini-pritish-manjavkar	\N	\N	submitted	16	2013-09-26 07:21:54.74737	2013-09-26 07:21:54.74737	CAPGEMINI INDIA PVT LTD	\N	\N	1
10	1018	Scorp Enterprises	f	1018	KHODIDAS ARJUN CHARANIA (512)	BUSINESS		LARSEN & TOUBRO LTD., CORPORATE STRESY, SAKIVAHAR ROAD, POWAI, L & T GATE NO 1. MUMBAI 400072\r\n	INDIA	MAHARASHTRA	mu	55	khodidas-arjun-charania-512	19.7514797999999985	75.7138884000000019	submitted	18	2013-09-26 07:25:40.110475	2013-09-26 07:25:40.110475	LARSEN & TOUBRO LTD.	\N	\N	1
12	1019	Scorp Enterprises	f	1019	ABASAHEB SURYAWANSHI	BUSINESS		"PACKSYS GLOBAL (IND) PVT LTD\r\nVENUS BUILDING, 3RD FLOOR, PLOT NO 8A, TTC INDL AREA, MIDC THANE BELAPUR ROAD NAVI MUMBAI\r\n"\r\n	INDIA	MAHARASHTRA	navi mumbai	75	abasaheb-suryawanshi	19.0330487999999995	73.0296625000000006	submitted	19	2013-09-26 07:44:28.194276	2013-09-26 07:44:28.194276	PACKSYS GLOBAL (IND) PVT LTD	\N	\N	1
14	1022	Scorp Enterprises	f	1022	HIRANMOY MUKHOPADHYAY	BUSINESS		LARSEN & TOUBRA LTD, AUTOMATION CAMPUS, A600,TTC ELECTRONIC ZONE SHIL-MAHAPE RD, NR. MILLENNIUM  BUSSINESS PARK ,NAVI MUMBAI\r\n	INDIA	MAHARASHTRA	navi mumbai	72	hiranmoy-mukhopadhyay	19.0330487999999995	73.0296625000000006	submitted	22	2013-09-26 07:59:49.829953	2013-09-26 07:59:49.829953	LARSEN & TOUBRA LTD	\N	\N	1
6	1013	Scorp Enterprises	f	1013	AJIT SUDHAKAR KATDARE. 	BUSINESS		K.J.SOMAIYA COLLEGE OF SC.& COMM.VIDYAVIHAR-EAST-400077.\r\n	INDIA	MAHARASHTRA	MUMBAI	55	ajit-sudhakar-katdare	19.0777314999999987	72.9061902999999916	verified	13	2013-09-26 06:54:45.215389	2013-09-26 06:54:45.215389	K.J.SOMAIYA COLLEGE OF SC.& COMM.	\N	\N	132
16	1025	Scorp Enterprises	f	1025	PRAKASH RAJARAM DAWAL	BUSINESS		BENTEX ENG.PVT.LTD.,KHALAI VILLAGE,KIROL ROAD,GHATKOPAR,VIDYAVIHAR MUMBAI 400086\r\n	INDIA	MAHARASHTRA	MUMBAI	60	prakash-rajaram-dawal	19.0971164999999985	72.91357339999999	submitted	25	2013-10-04 06:33:28.872258	2013-10-04 06:33:28.872258	BENTEX ENG.PVT.LTD.	\N	\N	1
15	1024	Scorp Enterprises	f	1024	MR.BHARAT GALA	BUSINESS		VENTURE SECURITIES LTD.,C-112-116,KAILASH IND.COMPLEX,PARK SITE,OFF.LBS MARG,VIKHROLI WEST,MUMBAI - 400079 \r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-bharat-gala	19.0852663999999983	72.9401508999999919	submitted	24	2013-10-04 06:31:08.804376	2013-10-04 06:31:08.804376	VENTURE SECURITIES LTD.	\N	\N	1
17	1030	Scorp Enterprises	f	1030	SANTOSH SHANKAR DESHMUKH	BUSINESS		B.E.S.T.,GHATKOPER DEPO,GHATKOPAR EAST,MUMBAI 400077\r\n	INDIA	MAHARASHTRA	MUMBAI	57	santosh-shankar-deshmukh	19.0856491000000013	72.9082207000000011	submitted	30	2013-10-04 06:44:29.327889	2013-10-04 06:44:29.327889	B.E.S.T.,	\N	\N	1
18	1033	Scorp Enterprises	f	1033	MR UDAY DASGUPTA	BUSINESS		M/S GOLTENS INDIA PVT LTD, A183 INDUSTRIAL AREA, KHAIRNE MIDC, BEHIND WHITE HOUSE, THANE BELAPUR ROAD, NAVI MUMBAI\r\n	INDIA	MAHARASHTRA	navi mumbai	75	mr-uday-dasgupta	19.0330487999999995	73.0296625000000006	submitted	33	2013-10-04 06:54:46.976403	2013-10-04 06:54:46.976403	M/S GOLTENS INDIA PVT LTD	\N	\N	1
13	1020	Scorp Enterprises	f	1020	MRS. MIRA SHESHRAO KHARAT 	BUSINESS		OFFICE OF COMMISSIONER OF POLICE, CRIME BRANCH, CBD BELAPUR, NAVI MUMBAI - 400614\r\n	INDIA	MAHARASHTRA	MUMBAI	71	mrs-mira-sheshrao-kharat	19.0759836999999983	72.8776558999999935	verified	20	2013-09-26 07:48:45.299445	2013-09-26 07:48:45.299445	MRS. MIRA SHESHRAO KHARAT 	\N	\N	1
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 18, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
1	1	1	1	\N	2013-09-22 09:06:10.278826	2013-09-22 09:06:10.318205
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 1, true);


--
-- Data for Name: co_applicant_business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_business_documents (id, co_applicant_business_id, co_applicant_work_detail_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at) FROM stdin;
1	1	1	\N	\N	\N	2013-09-24 07:03:33.78509	2013-09-24 07:03:33.78509
2	1	2	\N	\N	\N	2013-09-24 07:05:56.928149	2013-09-24 07:05:56.928149
3	1	3	\N	\N	\N	2013-09-24 07:06:10.571921	2013-09-24 07:06:10.571921
4	1	4	\N	\N	\N	2013-09-24 07:06:40.235916	2013-09-24 07:06:40.235916
5	1	5	\N	\N	\N	2013-09-24 07:08:13.351166	2013-09-24 07:08:13.351166
6	1	6	\N	\N	\N	2013-09-24 07:08:20.927118	2013-09-24 07:08:20.927118
7	1	7	\N	\N	\N	2013-09-24 08:17:20.030243	2013-09-24 08:17:20.030243
8	1	8	\N	\N	\N	2013-09-24 08:17:40.23649	2013-09-24 08:17:40.23649
9	1	9	\N	\N	\N	2013-09-24 08:18:21.34084	2013-09-24 08:18:21.34084
\.


--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_business_documents_id_seq', 9, true);


--
-- Data for Name: co_applicant_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id) FROM stdin;
1	1002	Scorp Enterprises	f	1002	BHARTI GANGARAM KHOBAREKAR	BUSINESS		ROBONIC INDIA PVT LTD, REAGEND DIVISON, PLOT NO A 374, TTC MIDC INDL. AREA, MAHAPE\r\n	INDIA	mumbai	maharashtra	77	bharti-gangaram-khobarekar	19.0759836999999983	72.8776558999999935	verified	2	ROBONIC INDIA PVT LTD	2013-09-20 13:51:20.88754	2013-09-21 13:06:30.58282	\N	\N	\N
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
1	1	1	\N	2	2013-09-22 09:06:40.319595	2013-09-22 09:06:40.396639
2	3	1	\N	3	2013-09-23 08:32:00.372631	2013-09-23 08:32:00.393626
3	4	1	\N	3	2013-09-23 08:37:23.962273	2013-09-23 08:37:23.987698
4	5	1	\N	3	2013-09-26 07:51:59.034197	2013-09-26 07:51:59.055887
5	6	1	\N	3	2013-10-04 06:35:57.14806	2013-10-04 06:35:57.159538
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 5, true);


--
-- Data for Name: co_applicant_work_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_work_details (id, co_applicant_business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, co_applicant_id, pincode_id, customer_id, status, document_required, company_name, landmark, city, state, application_ref_no, company_name_new, tab_id) FROM stdin;
2	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	\N	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	DEPT REAGEND,DESIGNATION MANAGER ,DOC VERFIED PAN CARD NO AXUPK9541K,SALARY SLIP,APPROX SALARY IS 66,000/-,TYPE OF LOAN HOME AMNT IS 36 LAC	\N	\N	\N	\N	2013-09-24 07:05:56.925507	2013-09-24 07:05:56.925507	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
3	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	\N	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	DEPT REAGEND,DESIGNATION MANAGER ,DOC VERFIED PAN CARD NO AXUPK9541K,SALARY SLIP,APPROX SALARY IS 66,000/-,TYPE OF LOAN HOME AMNT IS 36 LAC	\N	\N	\N	\N	2013-09-24 07:06:10.569441	2013-09-24 07:06:10.569441	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
4	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	\N	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	DEPT REAGEND,DESIGNATION MANAGER ,DOC VERFIED PAN CARD NO AXUPK9541K,SALARY SLIP,APPROX SALARY IS 66,000/-,TYPE OF LOAN HOME AMNT IS 36 LAC	\N	\N	\N	\N	2013-09-24 07:06:40.233464	2013-09-24 07:06:40.233464	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
5	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N		\N	\N	\N	\N	2013-09-24 07:08:13.346872	2013-09-24 07:08:13.346872	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
6	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	DEPT REAGEND,DESIGNATION MANAGER ,DOC VERFIED PAN CARD NO AXUPK9541K,SALARY SLIP,APPROX SALARY IS 66,000/-,TYPE OF LOAN HOME AMNT IS 36 LAC	\N	\N	\N	\N	2013-09-24 07:08:20.922864	2013-09-24 07:08:20.922864	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
7	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N		\N	\N	\N	\N	2013-09-24 08:17:20.025919	2013-09-24 08:17:20.025919	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
8	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER		9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N		\N	\N	\N	\N	2013-09-24 08:17:40.234068	2013-09-24 08:17:40.234068	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	ROBONIC INDIA PVT LTD	1
9	1	N/A	\N	\N	t	N/A	2013-09-24	12:24:57	SELF	MANAGER	9664941366	9664941366	9664941366	4	f	ROBONIC INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Others	\N	Others	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N		\N	\N	\N	\N	2013-09-24 08:18:21.338344	2013-09-24 08:18:21.338344	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	ROBONIC INDIA PVT LTD	1
1	1	N/A	\N	\N	\N	N/A	2013-09-27	10:52:07	SELF	MANAGER		9664941366	9664941366	4	\N	ROBONIC INDIA PVT LTD	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-09-24 07:03:33.765172	2013-09-27 05:22:15.098529	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		1
\.


--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_work_details_id_seq', 9, true);


--
-- Data for Name: co_applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicants (id, applicant_name, agency_name, document_required, fh_code, landmark, country_name, country_state, country_city, slug, status, customer_id, address, latitude, longitude, application_status, created_at, updated_at, contact_number, application_ref_no, pincode_id, state, d_o_b) FROM stdin;
1	BHARTI GANGARAM KHOBAREKAR	Scorp Enterprises	f	1002		INDIA	MAHARASHTRA	THANE	bharti-gangaram-khobarekar	submitted	2	A 002, GIRISHMA CHSL, PRAKRUTI PARK, BRAHMAND, OPP GB ROAD, THANE\r\n	19.2183306999999992	72.9780896999999982	RESIDENTIAL	2013-09-20 13:50:11.290277	2013-09-21 10:00:38.905689	\N	1002	67	\N	\N
2	SANJAYKUMAR SATYANARAYAN TRIPATHI (482)	Scorp Enterprises	f	1006		INDIA	MAHARASHTRA	mumbai	sanjaykumar-satyanarayan-tripathi-482	ready_for_verification	6	64 RAMKUNJ CHAWL ANAND NAGAR, SANMAN SINGH ROAD, BHANDUP WEST, MUMBAI 400078\r\n	19.1520170999999984	72.9165265999999974	RESIDENTIAL	2013-09-23 08:30:23.636297	2013-09-23 08:30:23.636297	\N	1006	58	\N	\N
3	SANJAYKUMAR SATYANARAYAN TRIPATHI (482) 	Scorp Enterprises	f	1005		INDIA	MAHARASHTRA	mumbai	sanjaykumar-satyanarayan-tripathi-482--2	submitted	5	64 RAMKUNJ CHAWL ANAND NAGAR, SANMAN SINGH ROAD, BHANDUP WEST, MUMBAI 400078\r\n	19.1520170999999984	72.9165265999999974	RESIDENTIAL	2013-09-23 08:31:37.25848	2013-09-23 08:31:37.25848	\N	1005	58	\N	\N
4	JANHAVI PRASHANT PANDHRE (485)	Scorp Enterprises	f	1007		INDIA	MAHARASHTRA	mumbai	janhavi-prashant-pandhre-485	submitted	7	4 ANIL BHUWAN CHAWL, SAI HILL TEMBIPADA ROAD, NEAR JAGRUTI HANUMAN MANDIR, MUMBAI 400078\r\n	19.1520170999999984	72.9165265999999974	RESIDENTIAL	2013-09-23 08:37:10.981718	2013-09-23 08:37:10.981718	\N	1007	58	\N	\N
5	SHRI SHESHRAO SAHEBRAO KHARAT	Scorp Enterprises	f	1020		INDIA	maharashtra	mnavi mumbai	shri-sheshrao-sahebrao-kharat	submitted	20	FLAT NO.103, ADITI APARTMENT, SHANKAR CHANGA CHOWK, NEAR, DAILY NEEDS SHOP, NERUL (WEST), NAVI MUMBAI – 400706. \r\n	19.0759836999999983	72.8776558999999935	RESIDENTIAL	2013-09-26 07:51:44.344179	2013-09-26 07:51:44.344179	\N	1020	75	\N	\N
6	VARSHA PRAKASH DAWAL	Scorp Enterprises	f	1025		INDIA	maharashtra	mumbai	varsha-prakash-dawal	submitted	6	ROOM NO 4,HANUMAN TEKDI,P.N.ROAD,MANE CHAWL,BHANDUP WEST MUMBAI 400078\r\n	19.1520170999999984	72.9165265999999974	RESIDENTIAL	2013-10-04 06:35:17.013264	2013-10-04 06:35:50.348362	\N	1025	57	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 6, true);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
1	1	\N	\N	2013-09-24 06:53:10.665463	2013-09-24 06:53:10.665463	1
2	8	\N	\N	2013-09-25 05:58:34.364023	2013-09-25 05:58:34.364023	2
3	5	\N	\N	2013-09-25 05:58:58.672581	2013-09-25 05:58:58.672581	3
4	2	\N	\N	2013-09-25 05:59:16.686554	2013-09-25 05:59:16.686554	4
5	6	\N	\N	2013-09-25 07:32:03.708471	2013-09-25 07:32:03.708471	5
6	7	\N	\N	2013-09-25 07:38:28.834982	2013-09-25 07:38:28.834982	6
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 7, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
1	1	2	1	2013-09-22 09:06:48.776327	2013-09-22 09:06:48.798535	\N	\N	\N
2	1	1	1	2013-09-22 09:06:54.86876	2013-09-22 09:06:54.892041	\N	\N	\N
3	1	4	3	2013-09-23 08:24:50.64034	2013-09-23 08:24:50.674497	\N	\N	\N
4	1	5	1	2013-09-23 08:27:16.110523	2013-09-23 08:27:16.136416	\N	\N	\N
5	1	6	3	2013-09-23 08:29:44.686192	2013-09-23 08:29:44.712882	\N	\N	\N
6	1	7	3	2013-09-23 08:36:30.042726	2013-09-23 08:36:30.063595	\N	\N	\N
7	1	8	1	2013-09-23 08:38:26.569715	2013-09-23 08:38:26.595071	\N	\N	\N
8	1	10	1	2013-09-25 07:12:38.825882	2013-09-25 07:12:38.848733	\N	\N	\N
9	1	9	1	2013-09-25 07:14:03.344204	2013-09-25 07:14:03.35991	\N	\N	\N
11	1	13	1	2013-09-26 06:52:39.289839	2013-09-26 06:52:39.312691	\N	\N	\N
12	1	14	1	2013-09-26 06:57:01.983871	2013-09-26 06:57:02.015182	\N	\N	\N
13	1	15	2	2013-09-26 07:07:20.352311	2013-09-26 07:07:20.373204	\N	\N	\N
14	1	16	1	2013-09-26 07:21:11.521308	2013-09-26 07:21:11.547166	\N	\N	\N
15	1	17	1	2013-09-26 07:22:40.681693	2013-09-26 07:22:40.696385	\N	\N	\N
16	1	18	1	2013-09-26 07:25:46.956251	2013-09-26 07:25:46.979061	\N	\N	\N
17	1	12	1	2013-09-26 07:33:15.202481	2013-09-26 07:33:15.222618	\N	\N	\N
18	1	19	3	2013-09-26 07:44:35.58275	2013-09-26 07:44:35.60698	\N	\N	\N
19	1	20	3	2013-09-26 07:48:16.404336	2013-09-26 07:48:16.423786	\N	\N	\N
20	1	21	3	2013-09-26 07:53:13.99828	2013-09-26 07:53:14.017914	\N	\N	\N
21	1	22	3	2013-09-26 07:59:57.211886	2013-09-26 07:59:57.237424	\N	\N	\N
22	1	23	3	2013-09-27 08:44:55.48253	2013-09-27 08:44:55.513832	\N	\N	\N
10	1	11	1	2013-09-26 06:46:27.069952	2013-09-28 17:47:27.06488	\N	\N	\N
23	1	24	3	2013-10-04 06:30:24.92694	2013-10-04 06:30:24.947859	\N	\N	\N
24	1	25	3	2013-10-04 06:32:54.683332	2013-10-04 06:32:54.705976	\N	\N	\N
25	1	26	3	2013-10-04 06:39:00.524368	2013-10-04 06:39:00.552575	\N	\N	\N
26	1	28	3	2013-10-04 06:42:27.08366	2013-10-04 06:42:27.107731	\N	\N	\N
27	1	29	3	2013-10-04 06:43:02.623244	2013-10-04 06:43:02.649243	\N	\N	\N
28	1	30	3	2013-10-04 06:44:35.202807	2013-10-04 06:44:35.228634	\N	\N	\N
29	1	27	3	2013-10-04 06:45:26.582421	2013-10-04 06:45:26.605091	\N	\N	\N
30	1	31	1	2013-10-04 06:50:27.811769	2013-10-04 06:50:27.837668	\N	\N	\N
31	1	32	1	2013-10-04 06:51:53.203242	2013-10-04 06:51:53.22372	\N	\N	\N
32	1	33	1	2013-10-04 06:53:30.703476	2013-10-04 06:53:30.723454	\N	\N	\N
33	1	34	1	2013-10-04 06:58:24.432576	2013-10-04 06:58:24.446371	\N	\N	\N
34	1	35	1	2013-10-04 06:59:10.273182	2013-10-04 06:59:10.294744	\N	\N	\N
35	1	36	1	2013-10-04 07:00:43.241133	2013-10-04 07:00:43.256905	\N	\N	\N
36	1	37	2	2013-10-04 07:02:44.591567	2013-10-12 11:32:33.699038	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 37, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
11	1011	Scorp Enterprises	1011	Mr.ANIL R. PANICKER	B-701, RACHANAA - I CHS, B.J. MARG, BHANDUP EAST, MUMBAI-400042\r\n		\N	39	2013-09-26 06:46:11.124438	2013-09-26 06:46:11.124438	mr-anil-r-panicker	19.1323864999999991	72.951962199999997	\N	25667934/9773909786	submitted	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f
3	1003	Scorp Enterprises	1003	ANUPRIY A GHOSH	A-601,LALANI RESIDENCY,WAGABILL-GHODBUNDER ROAD,SURAJ WATER PARK,THANE 400607\r\n		\N	67	2013-09-23 08:21:36.830023	2013-09-23 08:21:36.830023	anupriy-a-ghosh	19.2545293000000015	72.9700469999999939	\N	9167260010	ready_for_verification	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
4	1004	Scorp Enterprises	1004	SHRI PRADIP SAGAN KAVATHEKAR 	FLAT NO. 102, INDRPRASTHA BUILDING, BLDG NO 4, ADHARWADI CIRCLE, KALYAN WEST\r\n		\N	85	2013-09-23 08:24:44.391287	2013-09-23 08:24:44.391287	shri-pradip-sagan-kavathekar	19.2454253000000008	73.1242649999999941	\N	9833584980	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
18	1018	Scorp Enterprises	1018	KHODIDAS ARJUN CHARANIA (512)	1111		\N	1	2013-09-26 07:24:39.713239	2013-09-26 07:24:39.713239	khodidas-arjun-charania-512	18.9503115000000015	72.8215079999999944	\N	9819962129	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
13	1013	Scorp Enterprises	1013	AJIT SUDHAKAR KATDARE. 	COMFORT APARTMENT.SANT RAMDAS ROAD,THAKUR NAGAR,MULUND-EAST-400081\r\n		\N	59	2013-09-26 06:52:23.065644	2013-09-26 06:52:23.065644	ajit-sudhakar-katdare	19.1602277000000001	72.972630499999994	\N	21631833 / 9969038681	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
2	1002	Scorp Enterprises	1002	HARESH SURESH POKALE	A 002, GIRISHMA CHSL, PRAKRUTI PARK, BRAHMAND, OPP GB ROAD, THANE\r\n		\N	65	2013-09-20 13:42:41.041014	2013-09-21 13:03:51.035802	haresh-suresh-pokale	19.2183306999999992	72.9780896999999982	\N	9821129517	verified	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
6	1006	Scorp Enterprises	1006	ANJU SANJAY TRIPATHI (482)	64 RAMKUNJ CHAWL ANAND NAGAR, SANMAN SINGH ROAD, BHANDUP WEST, MUMBAI 400078\r\n		\N	58	2013-09-23 08:29:36.704492	2013-09-23 08:29:36.704492	anju-sanjay-tripathi-482	19.1520170999999984	72.9165265999999974	\N	9867983004/9029653987	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
10	1010	Scorp Enterprises	1010	UMESH SHASHIKANT MUKANE	GARRISON ENGINEER (AF)  AIR FORCE STATION, KOLSHET ROAD, THANE 400607\r\n		\N	68	2013-09-25 07:07:26.066594	2013-09-25 07:07:26.066594	umesh-shashikant-mukane	19.2321621	72.9873687999999987	\N	9969206059/8691963451	submitted	\N	maharashtra	thane	INDIA	\N	RESIDENTIAL	f
9	1009	Scorp Enterprises	1009	NANDAKISHOR VISHWANATH MALDIKAR	A-502, BLDG NO 4, SUN-VIEW CHS, NR SAHAKAR CINEMA TILAKNAGAR, CHEMBUR,MUMBAI \r\n		\N	56	2013-09-25 07:01:52.987885	2013-09-25 07:01:52.987885	nandakishor-vishwanath-maldikar	19.0176169000000002	72.8561287999999934	\N	25232945\t9869040061	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
24	1024	Scorp Enterprises	1024	MR.BHARAT GALA	13/14,1ST FLOOR,JAY MAHAVIR CHS,RATILAL B MEHTA ROAD,GHATKOPAR EAT,MUMBAI - 400077 \r\n		\N	55	2013-10-04 06:30:03.851273	2013-10-04 06:30:03.851273	mr-bharat-gala	19.0777314999999987	72.9061902999999916	\N	21022835/9821126357	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
14	1014	Scorp Enterprises	1014	VARGHESE CHUMMAR VADUKUT 	2, J M COTTAGE, KHALAI VILLAGE, VIDYAVIHAR WEST 400086\r\n		\N	59	2013-09-26 06:56:57.169936	2013-09-26 06:56:57.169936	varghese-chummar-vadukut	19.0823572000000006	72.8943768000000034	\N	022-25093044 / 9819194549	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
15	1015	Scorp Enterprises	1015	BABASAHEB BHANUDAS LOMATE 	04/313 MANGAL KIRAN CHS OLD MHB COLONY GORAI ROAD BORIWALI WEST MUMBAI NO 91\r\n		\N	62	2013-09-26 07:07:12.864937	2013-09-26 07:07:12.864937	babasaheb-bhanudas-lomate	19.0759836999999983	72.8776558999999935	\N	9321044293	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
7	1007	Scorp Enterprises	1007	PRASHANT RAVINDRA PANDHRE (485)	4 ANIL BHUWAN CHAWL, SAI HILL TEMBIPADA ROAD, NEAR JAGRUTI HANUMAN MANDIR, MUMBAI 400078\r\n\r\n		\N	58	2013-09-23 08:36:20.356852	2013-09-23 08:36:20.356852	prashant-ravindra-pandhre-485	19.1520170999999984	72.9165265999999974	\N	9819818609/9167331029	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
16	1016	Scorp Enterprises	1016	ASHWINI PRITISH MANJAVKAR	aaa		\N	1	2013-09-26 07:21:03.011465	2013-09-26 07:21:03.011465	ashwini-pritish-manjavkar	19.0759836999999983	72.8776558999999935	\N	022-28699082 / 9930858581	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
17	1017	Scorp Enterprises	1017	KEDAR VINAYAK CHIKHALIKAR	111		\N	1	2013-09-26 07:22:37.541212	2013-09-26 07:22:37.541212	kedar-vinayak-chikhalikar	19.0776362000000006	72.8646533000000005	\N	9867254608/9867753415	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
12	1012	Scorp Enterprises	1012	MANOJ ARORA	ACCENTURE SERVICES PVT LTD, PLANT NO 3, GODREJ & BOYCECOMPLEX, L B S MARG, VIKHROLI WEST, MUMBAI 400079\r\n		\N	58	2013-09-26 06:49:19.180045	2013-09-26 06:49:19.180045	manoj-arora	19.0852663999999983	72.9401508999999919	\N	022-66003250 / 9920998702	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
19	1019	Scorp Enterprises	1019	ABASAHEB SURYAWANSHI	111\r\n		\N	74	2013-09-26 07:43:15.960044	2013-09-26 07:43:15.960044	abasaheb-suryawanshi	19.0776362000000006	72.8646533000000005	\N	9826926990	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
20	1020	Scorp Enterprises	1020	MRS. MIRA SHESHRAO KHARAT 	FLAT NO.103, ADITI APARTMENT, SHANKAR CHANGA CHOWK, NEAR, DAILY NEEDS SHOP, NERUL (WEST), NAVI MUMBAI – 400706. \r\n		\N	75	2013-09-26 07:48:06.247669	2013-09-26 07:48:06.247669	mrs-mira-sheshrao-kharat	19.0759836999999983	72.8776558999999935	\N	9821121483	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
21	1021	Scorp Enterprises	1021	MR SUBHAMOY GHOSH	FLAT NO A-701, PLOT 14/5, SECTOR 11, KOPER KHAIRNE 400701\r\n		\N	72	2013-09-26 07:53:08.109143	2013-09-26 07:53:08.109143	mr-subhamoy-ghosh	19.093903000000001	73.0088769999999982	\N	NO NUMBER	submitted	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f
22	1022	Scorp Enterprises	1022	HIRANMOY MUKHOPADHYAY	11		\N	1	2013-09-26 07:58:58.028523	2013-09-26 07:58:58.028523	hiranmoy-mukhopadhyay	19.0803149999999988	72.8684280000000086	\N	022-67226332 / 9322990256	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
1	1001	Scorp Enterprises	1001	SHARDUL VIJAY KAMATE 	A-1, PARIJAT CHS, PLOT -64, SECT-28, VASHI, NAVIMUMBAI \r\n	vashi	\N	1	2013-09-19 06:12:55.127853	2013-09-21 10:19:40.209782	shardul-vijay-kamate	\N	\N	\N	9029229192/9029476345	verified	\N	Maharshtra	Mumbai	INDIA	\N	RESIDENTIAL	f
8	1008	Scorp Enterprises	1008	ANIL NAMDEO DHAMDHERE (486)	C-7, 2RD FLOOR SANDHYARAG HOUSING SOCIETY, NEAR PARIJAT BUILDING, GANPATICHOWK, KALYAN 421301\r\n		\N	99	2013-09-23 08:38:18.488847	2013-09-23 08:38:18.488847	anil-namdeo-dhamdhere-486	19.2412011000000014	73.1290595999999908	\N	9833584114/9004322162	verified	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
5	1005	Scorp Enterprises	1005	VASUDEV Y. NAIK        	B/101 GANESH DARSHAN APARTMENT RAJA SHIVAJI ROAD LOKMANYA NAGAR  4 THANE W.  \r\n		\N	72	2013-09-23 08:27:06.532276	2013-09-23 08:27:06.532276	vasudev-y-naik	19.2116031000000014	72.9534384999999901	\N	9867335623	verified	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
23	1023	Scorp Enterprises	1023	ROHAN NERULKAR	REV INDIA PVT LTD, OFFICENO 327, PLATINUM TECHNO PARK, SECTOR 30 A, VASHI, NAVI MUMBAI 400703\r\n		\N	74	2013-09-27 08:36:10.43583	2013-09-27 08:36:10.43583	rohan-nerulkar	19.0793546999999997	72.99920130000001	\N	9820546635	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f
25	1025	Scorp Enterprises	1025	PRAKASH RAJARAM DAWAL	ROOM NO 4,HANUMAN TEKDI,P.N.ROAD,MANE CHAWL,BHANDUP WEST MUMBAI 400078\r\n		\N	57	2013-10-04 06:32:48.158433	2013-10-04 06:32:48.158433	prakash-rajaram-dawal	19.1520170999999984	72.9165265999999974	\N	9867299596	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
26	1026	Scorp Enterprises	1026	MRS MRUNALI MANGESH MORE	1/4B, PANCHAM NIWAS, JANGAL MANGAL ROAD, SHASHTRI NAGAR, BHANDUP WEST, MUMBAI 400078\r\n		\N	58	2013-10-04 06:38:53.730789	2013-10-04 06:38:53.730789	mrs-mrunali-mangesh-more	19.1520170999999984	72.9165265999999974	\N		submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
27	1027	Scorp Enterprises	1027	MR.VISHWANATH SAMBAMOORTHY 	204,SNOWDEN PEAK,NEPTUNE BUILDING POINT,LBS MARG,BHANDUP,MUMBAI - 400078 \r\n		\N	1	2013-10-04 06:39:55.856582	2013-10-04 06:39:55.856582	mr-vishwanath-sambamoorthy	19.1440790000000014	72.9348619999999954	\N	65075862 / 9323927937	submitted	\N			INDIA	\N	RESIDENTIAL	f
28	1028	Scorp Enterprises	1028	VISHAL KASHINATH BHATADE	ROOM NO 9, MOTIBAI WADI, BHANDUP STATION ROAD, BHANDUP WEST, NEAR UBS SCHOOL, 400078\r\n		\N	58	2013-10-04 06:42:20.9607	2013-10-04 06:42:20.9607	vishal-kashinath-bhatade	19.1520170999999984	72.9165265999999974	\N	9224160544/8082445066	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
29	1029	Scorp Enterprises	1029	PRAVEEN BALAKRISHNAN NAIR	D-201,SHREE ROYAL CLASSIC,C.H.S.,G-LINK ROAD,NEXT TO D-MART,OPP FORTIS HOSPITAL,MULUND WEST MUMBAI 400080\r\n		\N	59	2013-10-04 06:42:56.532433	2013-10-04 06:42:56.532433	praveen-balakrishnan-nair	19.1694850000000017	72.9490093999999942	\N	9867212337	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
30	1030	Scorp Enterprises	1030	SANTOSH SHANKAR DESHMUKH	1	1	\N	1	2013-10-04 06:43:44.807727	2013-10-04 06:43:44.807727	santosh-shankar-deshmukh	19.0784079999999996	72.8768620000000027	\N	1	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
31	1031	Scorp Enterprises	1031	MRS ANITA RAMKUMAR RANWA	FLAT NO 302, SOHAM PUJA CHS LTD, PLOT NO 29/1 & 29/2, SECTOR 20C, NEAR BANK OF INDIA, AIROLI, NAVI MUMBAI\r\n		\N	72	2013-10-04 06:50:11.792435	2013-10-04 06:50:11.792435	mrs-anita-ramkumar-ranwa	19.0176169000000002	72.8561287999999934	\N	9619057580	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
32	1032	Scorp Enterprises	1032	MR GAJANAN A THAKRE	FLAT NO 602, BHRAMHARAJ HERITAGE, SECTOR 8A, NEAR OLD RAGISTRATION OFFICE, AIROLI, NAVI MUMBAI 400708\r\n		\N	76	2013-10-04 06:51:47.876338	2013-10-04 06:51:47.876338	mr-gajanan-a-thakre	19.1598725999999999	72.99920130000001	\N	9819164027/ 9323861744	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
33	1033	Scorp Enterprises	1033	MR UDAY DASGUPTA	M/S GOLTENS INDIA PVT LTD, A183 INDUSTRIAL AREA, KHAIRNE MIDC, BEHIND WHITE HOUSE, THANE BELAPUR ROAD, NAVI MUMBAI\r\n		\N	75	2013-10-04 06:53:26.446505	2013-10-04 06:53:26.446505	mr-uday-dasgupta	19.0330487999999995	73.0296625000000006	\N	CONTACT PERSON: MR KULKARNI(HR HEAD) 08879655875/ MR SUDARSHAN (HEAD OPERATIONS) 09769350341	submitted	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f
34	1034	Scorp Enterprises	1034	MR ABDUL KALAM ISRAL SHAIKH	FLAT NO 204, PLOT NO 112, 113, JASMINE HERITAGE, SECTOR 11, KOPERKHAIRNE, NAVI MUMBAI\r\n		\N	72	2013-10-04 06:58:15.429038	2013-10-04 06:58:15.429038	mr-abdul-kalam-isral-shaikh	19.0176169000000002	72.8561287999999934	\N	9892393500/ 27540041	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
35	1035	Scorp Enterprises	1035	MRS SMITA DHAKANE	FLAT 201, GANESHKRUPA CHS, PLOT NO 23, SECTOR 20, KOPARKHAIRANE, NAVI MUMBAI\r\n		\N	75	2013-10-04 06:59:06.031626	2013-10-04 06:59:06.031626	mrs-smita-dhakane	19.0330487999999995	73.0296625000000006	\N	9821164029/ 9422358975	submitted	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f
36	1036	Scorp Enterprises	1036	MISS ANANDI SELVIN NADAR	HOUSE NO 110A-1, USARLI(KHURD), O.N.G.C PANVEL, DIST RAIGAD 410206\r\n		\N	92	2013-10-04 07:00:39.186091	2013-10-04 07:00:39.186091	miss-anandi-selvin-nadar	19.0009140000000016	73.2057594999999992	\N	9842685868	submitted	\N	MAHARASHTRA	raigad	INDIA	\N	RESIDENTIAL	f
37	1037	Scorp Enterprises	1037	MR PRADIP S BHATTACHARYA	FLAT NO 4, SUGANDH VILLA, 3RD FLOOR, PLOT NO 96, SECTOR 12, NEAR MAHAVIR RATAN BUILDING, VASHI, NAVI MUMBAI\r\n		\N	72	2013-10-04 07:02:39.144342	2013-10-04 07:02:39.144342	mr-pradip-s-bhattacharya	19.0330487999999995	73.0296625000000006	\N	022-27652058/ 9892825167	submitted	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 38, true);


--
-- Data for Name: customers_office_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers_office_assets (customer_id, office_asset_id) FROM stdin;
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departments (id, name, created_at, updated_at) FROM stdin;
1	A/C OFFICER MTNL	2013-09-21 11:44:39.321915	2013-09-21 11:44:39.321915
2	ACCESS SYSTEM	2013-09-21 11:44:39.380301	2013-09-21 11:44:39.380301
3	ACCOUNT & FINANCE MANAGER	2013-09-21 11:44:39.387818	2013-09-21 11:44:39.387818
4	ACCOUNT FINANCE	2013-09-21 11:44:39.396148	2013-09-21 11:44:39.396148
5	ACCOUNTANT AUDIT	2013-09-21 11:44:39.404426	2013-09-21 11:44:39.404426
6	ADDITIONAL	2013-09-21 11:44:39.412791	2013-09-21 11:44:39.412791
7	ADMINISTRATOR	2013-09-21 11:44:39.421439	2013-09-21 11:44:39.421439
8	ADVANCED CENTER FOR WOMEN RESEARCH	2013-09-21 11:44:39.429445	2013-09-21 11:44:39.429445
9	ADVISOR	2013-09-21 11:44:39.437694	2013-09-21 11:44:39.437694
10	AGRICULTURE	2013-09-21 11:44:39.446051	2013-09-21 11:44:39.446051
11	AGRICULTURE SERVICES	2013-09-21 11:44:39.454368	2013-09-21 11:44:39.454368
12	AIRCRAFT	2013-09-21 11:44:39.462668	2013-09-21 11:44:39.462668
13	MAINTENANCE ENGINEERING	2013-09-21 11:44:39.470997	2013-09-21 11:44:39.470997
14	ALLOTMENT LETTER	2013-09-21 11:44:39.4793	2013-09-21 11:44:39.4793
15	ANALAYZE	2013-09-21 11:44:39.487657	2013-09-21 11:44:39.487657
16	ANALTST	2013-09-21 11:44:39.495909	2013-09-21 11:44:39.495909
17	ANALYSE	2013-09-21 11:44:39.504189	2013-09-21 11:44:39.504189
18	ANALYST	2013-09-21 11:44:39.512588	2013-09-21 11:44:39.512588
19	ANIMAL HUSBANDRY	2013-09-21 11:44:39.521025	2013-09-21 11:44:39.521025
20	APPLICATION ANALYSE	2013-09-21 11:44:39.529348	2013-09-21 11:44:39.529348
21	APPLICATION DEVLOPMENT	2013-09-21 11:44:39.537625	2013-09-21 11:44:39.537625
22	APPORVAL	2013-09-21 11:44:39.545986	2013-09-21 11:44:39.545986
23	ARCHITECT	2013-09-21 11:44:39.554255	2013-09-21 11:44:39.554255
24	ASSEMBLY	2013-09-21 11:44:39.562517	2013-09-21 11:44:39.562517
25	ASSEMBLY FITTER	2013-09-21 11:44:39.57099	2013-09-21 11:44:39.57099
26	ASSISTANCE  MANAGER	2013-09-21 11:44:39.579184	2013-09-21 11:44:39.579184
27	ASSISTANCE GENRAL MANAGER	2013-09-21 11:44:39.587489	2013-09-21 11:44:39.587489
28	ASSISTANT	2013-09-21 11:44:39.595808	2013-09-21 11:44:39.595808
29	COMPUTER OPREATOR	2013-09-21 11:44:39.604159	2013-09-21 11:44:39.604159
30	ASSISTANT CONSULTANCY	2013-09-21 11:44:39.612472	2013-09-21 11:44:39.612472
31	ASSISTANT ENGGINER	2013-09-21 11:44:39.620884	2013-09-21 11:44:39.620884
32	ASSISTANT FOREMAN	2013-09-21 11:44:39.62924	2013-09-21 11:44:39.62924
33	ASSISTANT LAW OFFICER	2013-09-21 11:44:39.637568	2013-09-21 11:44:39.637568
34	ASSISTANT LOCO	2013-09-21 11:44:39.645834	2013-09-21 11:44:39.645834
35	PILOT	2013-09-21 11:44:39.654053	2013-09-21 11:44:39.654053
36	ASSISTANT MANAGER	2013-09-21 11:44:39.662552	2013-09-21 11:44:39.662552
37	ASSISTANT PROFESSOR	2013-09-21 11:44:39.670953	2013-09-21 11:44:39.670953
38	ASSISTANT SALES MANAGER	2013-09-21 11:44:39.679267	2013-09-21 11:44:39.679267
39	ASSISTANT SUPERINTENDENT	2013-09-21 11:44:39.687509	2013-09-21 11:44:39.687509
40	ASSISTANT TEACHER	2013-09-21 11:44:39.695853	2013-09-21 11:44:39.695853
41	ASSISTANT WISE	2013-09-21 11:44:39.704051	2013-09-21 11:44:39.704051
42	PRESIDENT & DELIVERY MANAGER	2013-09-21 11:44:39.712323	2013-09-21 11:44:39.712323
43	ASSIT  CONSULTANCY	2013-09-21 11:44:39.720787	2013-09-21 11:44:39.720787
44	ASSIT COMPUTER OPREATOR 	2013-09-21 11:44:39.729222	2013-09-21 11:44:39.729222
45	ASSIT PROFESSOR	2013-09-21 11:44:39.737499	2013-09-21 11:44:39.737499
46	ASSOCIAITE	2013-09-21 11:44:39.745854	2013-09-21 11:44:39.745854
47	ASSOCIAITE PROFESSOR	2013-09-21 11:44:39.754177	2013-09-21 11:44:39.754177
48	SENIOR GREAT	2013-09-21 11:44:39.762404	2013-09-21 11:44:39.762404
49	ASSOCIAITE VICE PRESIDENT	2013-09-21 11:44:39.770816	2013-09-21 11:44:39.770816
50	ASSOCIATE	2013-09-21 11:44:39.779069	2013-09-21 11:44:39.779069
51	ASSOCIATE SOCIAL MEDIA	2013-09-21 11:44:39.787495	2013-09-21 11:44:39.787495
52	ASTROLOGY	2013-09-21 11:44:39.795783	2013-09-21 11:44:39.795783
53	ATOMIC ENERGY	2013-09-21 11:44:39.804065	2013-09-21 11:44:39.804065
54	AUDIT DIRECTOR	2013-09-21 11:44:39.812394	2013-09-21 11:44:39.812394
55	AUDITOR	2013-09-21 11:44:39.820641	2013-09-21 11:44:39.820641
56	AUTOMOBILE ENGINEERING	2013-09-21 11:44:39.828984	2013-09-21 11:44:39.828984
57	BIOSCINES	2013-09-21 11:44:39.837386	2013-09-21 11:44:39.837386
58	BMC MUNCIPAL CORPORATION	2013-09-21 11:44:39.84579	2013-09-21 11:44:39.84579
59	BUILDING & FACTORIES DEVELOPER	2013-09-21 11:44:39.854059	2013-09-21 11:44:39.854059
60	BUSINESS AUDIT	2013-09-21 11:44:39.862499	2013-09-21 11:44:39.862499
61	BUSINESS DEVELOPER	2013-09-21 11:44:39.870638	2013-09-21 11:44:39.870638
62	BUSINESS DEVELOPMENT MANAGER	2013-09-21 11:44:39.878968	2013-09-21 11:44:39.878968
63	BUSINESS ENABLING TEAM	2013-09-21 11:44:39.887323	2013-09-21 11:44:39.887323
64	BUSINESS RESEARCH	2013-09-21 11:44:39.895727	2013-09-21 11:44:39.895727
65	BYO CHEMISTRY	2013-09-21 11:44:39.903993	2013-09-21 11:44:39.903993
66	C.A LICENCE	2013-09-21 11:44:39.912426	2013-09-21 11:44:39.912426
67	CONSALTUNT	2013-09-21 11:44:39.920666	2013-09-21 11:44:39.920666
68	CARGO INCHARG	2013-09-21 11:44:39.928953	2013-09-21 11:44:39.928953
69	CASIER	2013-09-21 11:44:39.937544	2013-09-21 11:44:39.937544
70	CENTRAL EXCISE MUMBAI III	2013-09-21 11:44:39.945699	2013-09-21 11:44:39.945699
71	CHANNEL SALES EXECUTIVE	2013-09-21 11:44:39.953911	2013-09-21 11:44:39.953911
72	CHEMICAL	2013-09-21 11:44:39.962352	2013-09-21 11:44:39.962352
73	CHEMISTRY	2013-09-21 11:44:39.970676	2013-09-21 11:44:39.970676
74	CHIEF AIRCRAFT	2013-09-21 11:44:39.979035	2013-09-21 11:44:39.979035
75	OPERATOR	2013-09-21 11:44:39.987203	2013-09-21 11:44:39.987203
76	CHIEF ENGINEER	2013-09-21 11:44:39.995582	2013-09-21 11:44:39.995582
77	CHIEF FINANCE CONSULTANT	2013-09-21 11:44:40.003862	2013-09-21 11:44:40.003862
78	CHIF STAFF INSPECTOR	2013-09-21 11:44:40.01224	2013-09-21 11:44:40.01224
79	CIVIL CONSTRUCTION	2013-09-21 11:44:40.020891	2013-09-21 11:44:40.020891
80	CLERK	2013-09-21 11:44:40.029015	2013-09-21 11:44:40.029015
81	CLERK CUM TYPIST	2013-09-21 11:44:40.037221	2013-09-21 11:44:40.037221
82	CLIENT	2013-09-21 11:44:40.045631	2013-09-21 11:44:40.045631
83	SERVICES	2013-09-21 11:44:40.05381	2013-09-21 11:44:40.05381
84	COAL LOGISTICS FOR POWER PLANTS	2013-09-21 11:44:40.062322	2013-09-21 11:44:40.062322
85	COMMANDER	2013-09-21 11:44:40.070453	2013-09-21 11:44:40.070453
86	COMMERCIAL	2013-09-21 11:44:40.078846	2013-09-21 11:44:40.078846
87	COMMISSION OF CENTRAL EXCISE REVENUE	2013-09-21 11:44:40.087208	2013-09-21 11:44:40.087208
88	COMPARTMENT	2013-09-21 11:44:40.095623	2013-09-21 11:44:40.095623
89	COMPLIANCE	2013-09-21 11:44:40.103932	2013-09-21 11:44:40.103932
90	COMPLIMENTARY ANUR VECHIL MEDICS	2013-09-21 11:44:40.112185	2013-09-21 11:44:40.112185
91	COMPUTER TECHNICAL	2013-09-21 11:44:40.120303	2013-09-21 11:44:40.120303
92	CONDUCTOR	2013-09-21 11:44:40.128788	2013-09-21 11:44:40.128788
93	CONSTRUCTION	2013-09-21 11:44:40.137181	2013-09-21 11:44:40.137181
94	CONSTRUCTION MANAGEMENT	2013-09-21 11:44:40.145654	2013-09-21 11:44:40.145654
95	CONSULTANCE	2013-09-21 11:44:40.153883	2013-09-21 11:44:40.153883
96	CONSULTANCY	2013-09-21 11:44:40.162203	2013-09-21 11:44:40.162203
97	CONSULTANT	2013-09-21 11:44:40.170519	2013-09-21 11:44:40.170519
98	CONTAINER MAINTENANCE	2013-09-21 11:44:40.178808	2013-09-21 11:44:40.178808
99	CO-ORDINATOR	2013-09-21 11:44:40.187112	2013-09-21 11:44:40.187112
100	CORPORATE ACTIONS	2013-09-21 11:44:40.195476	2013-09-21 11:44:40.195476
101	COUNSELLOR	2013-09-21 11:44:40.203652	2013-09-21 11:44:40.203652
102	CREADIT MANAGER	2013-09-21 11:44:40.211992	2013-09-21 11:44:40.211992
103	CREATIVE	2013-09-21 11:44:40.220183	2013-09-21 11:44:40.220183
104	CUSTOMER SERVICE	2013-09-21 11:44:40.228651	2013-09-21 11:44:40.228651
105	D.Y. COMMISSIONER	2013-09-21 11:44:40.237086	2013-09-21 11:44:40.237086
106	DAUGHTER	2013-09-21 11:44:40.245419	2013-09-21 11:44:40.245419
107	DEPUTY	2013-09-21 11:44:40.253734	2013-09-21 11:44:40.253734
108	DEPUTY CHIFE OFFICER	2013-09-21 11:44:40.26209	2013-09-21 11:44:40.26209
109	DEPUTY COMMISINOR	2013-09-21 11:44:40.270376	2013-09-21 11:44:40.270376
110	DEPUTY COMMISSIONER	2013-09-21 11:44:40.278741	2013-09-21 11:44:40.278741
111	DEPUTY DIRECTOR	2013-09-21 11:44:40.286949	2013-09-21 11:44:40.286949
112	DEPUTY DIRECTOR OF TOWN PLANNING	2013-09-21 11:44:40.295369	2013-09-21 11:44:40.295369
113	DEPUTY ENGINEER	2013-09-21 11:44:40.303637	2013-09-21 11:44:40.303637
114	DEPUTY GENRAL	2013-09-21 11:44:40.312085	2013-09-21 11:44:40.312085
115	DEPUTY GENRAL MANAGER	2013-09-21 11:44:40.320276	2013-09-21 11:44:40.320276
116	DEPUTY MANAGER	2013-09-21 11:44:40.328617	2013-09-21 11:44:40.328617
117	DEPUTY MANAGER TECHNICAL	2013-09-21 11:44:40.337072	2013-09-21 11:44:40.337072
118	DEPUTY PROJECT DIRECTOR	2013-09-21 11:44:40.345373	2013-09-21 11:44:40.345373
119	DESIGNER	2013-09-21 11:44:40.353702	2013-09-21 11:44:40.353702
120	DESINOR	2013-09-21 11:44:40.362054	2013-09-21 11:44:40.362054
121	DESK OFFICER	2013-09-21 11:44:40.370333	2013-09-21 11:44:40.370333
122	DEVELOPMENT	2013-09-21 11:44:40.378651	2013-09-21 11:44:40.378651
123	DEVLOPMENT	2013-09-21 11:44:40.386936	2013-09-21 11:44:40.386936
124	DGM (DEPUTY,GERNERAL MANAGER)	2013-09-21 11:44:40.3953	2013-09-21 11:44:40.3953
125	DIRECTOR	2013-09-21 11:44:40.403766	2013-09-21 11:44:40.403766
126	DIRECTOR PROPERITOR	2013-09-21 11:44:40.411943	2013-09-21 11:44:40.411943
127	DIRECTOR REFAR	2013-09-21 11:44:40.420142	2013-09-21 11:44:40.420142
128	DISTRACTION	2013-09-21 11:44:40.428604	2013-09-21 11:44:40.428604
129	DRILLING	2013-09-21 11:44:40.436839	2013-09-21 11:44:40.436839
130	DRIVER	2013-09-21 11:44:40.445286	2013-09-21 11:44:40.445286
131	DUTY OFFICER	2013-09-21 11:44:40.453573	2013-09-21 11:44:40.453573
132	EDUCATION	2013-09-21 11:44:40.461916	2013-09-21 11:44:40.461916
133	ELECTRICAL MANAGER	2013-09-21 11:44:40.470247	2013-09-21 11:44:40.470247
134	ELECTRICIAN	2013-09-21 11:44:40.478593	2013-09-21 11:44:40.478593
135	ELECTRONICS	2013-09-21 11:44:40.48687	2013-09-21 11:44:40.48687
136	ENDOCRINOLOGY	2013-09-21 11:44:40.495311	2013-09-21 11:44:40.495311
137	ENGG ELECTRICAL	2013-09-21 11:44:40.503513	2013-09-21 11:44:40.503513
138	ENGGINERING	2013-09-21 11:44:40.511958	2013-09-21 11:44:40.511958
139	ENGGINERING ELECTRICAL	2013-09-21 11:44:40.520202	2013-09-21 11:44:40.520202
140	EQUIPMENT OPERATOR	2013-09-21 11:44:40.528587	2013-09-21 11:44:40.528587
141	ESTABLISHMENT	2013-09-21 11:44:40.536908	2013-09-21 11:44:40.536908
142	EXCHANGE	2013-09-21 11:44:40.545286	2013-09-21 11:44:40.545286
143	EXCUTIVE SALES SUPPORTS	2013-09-21 11:44:40.553548	2013-09-21 11:44:40.553548
144	EXECUTIVE	2013-09-21 11:44:40.56185	2013-09-21 11:44:40.56185
145	EXECUTIVE  SECRETARIES	2013-09-21 11:44:40.570233	2013-09-21 11:44:40.570233
146	ASSISTANT MANAGING DIRECTOR	2013-09-21 11:44:40.58059	2013-09-21 11:44:40.58059
147	EXECUTIVE ENGINEER	2013-09-21 11:44:40.5869	2013-09-21 11:44:40.5869
148	EXPORT IMPORT	2013-09-21 11:44:40.595199	2013-09-21 11:44:40.595199
149	FACILITY	2013-09-21 11:44:40.603435	2013-09-21 11:44:40.603435
150	FINANCIAL	2013-09-21 11:44:40.611743	2013-09-21 11:44:40.611743
151	PARMACY	2013-09-21 11:44:40.620203	2013-09-21 11:44:40.620203
152	FINANCE	2013-09-21 11:44:40.628632	2013-09-21 11:44:40.628632
153	FINANCE &ACTSFINANCIAL	2013-09-21 11:44:40.636818	2013-09-21 11:44:40.636818
154	FINANCIAL CONTROLLER	2013-09-21 11:44:40.645168	2013-09-21 11:44:40.645168
155	FIREBRIGDE	2013-09-21 11:44:40.653497	2013-09-21 11:44:40.653497
156	FITTER	2013-09-21 11:44:40.661804	2013-09-21 11:44:40.661804
157	FRIEND	2013-09-21 11:44:40.670231	2013-09-21 11:44:40.670231
158	FRIENDS	2013-09-21 11:44:40.678438	2013-09-21 11:44:40.678438
159	FRIND OFFICE	2013-09-21 11:44:40.686691	2013-09-21 11:44:40.686691
160	GENRAL MANAGER	2013-09-21 11:44:40.694919	2013-09-21 11:44:40.694919
161	GENRAL MANAGER IN BUSSINESS	2013-09-21 11:44:40.703535	2013-09-21 11:44:40.703535
162	GLOBAL TEKNOLOJI DEVELOPMENT	2013-09-21 11:44:40.712912	2013-09-21 11:44:40.712912
163	GLOBLE  RISK LABORATORY	2013-09-21 11:44:40.719975	2013-09-21 11:44:40.719975
164	GRAFISH	2013-09-21 11:44:40.728244	2013-09-21 11:44:40.728244
165	GROUND HANDLING	2013-09-21 11:44:40.736745	2013-09-21 11:44:40.736745
166	HAIRDRESSER & MAKEUP ARTIST	2013-09-21 11:44:40.745121	2013-09-21 11:44:40.745121
167	HEAD CONSATBLE	2013-09-21 11:44:40.753442	2013-09-21 11:44:40.753442
168	HEAD QTRS	2013-09-21 11:44:40.761481	2013-09-21 11:44:40.761481
169	HEALTH	2013-09-21 11:44:40.769719	2013-09-21 11:44:40.769719
170	HIGHER GRADE ASSISTANT	2013-09-21 11:44:40.778168	2013-09-21 11:44:40.778168
171	HYDRO QUEBEC	2013-09-21 11:44:40.786512	2013-09-21 11:44:40.786512
172	IMPLEMENTATION	2013-09-21 11:44:40.794887	2013-09-21 11:44:40.794887
173	INDUSTRIAL	2013-09-21 11:44:40.803193	2013-09-21 11:44:40.803193
174	INDUSTRIAL AUTOMATION	2013-09-21 11:44:40.811391	2013-09-21 11:44:40.811391
175	INFORMATION	2013-09-21 11:44:40.819844	2013-09-21 11:44:40.819844
176	INFORMATION TECHNOLOGY SOFTWARE	2013-09-21 11:44:40.82805	2013-09-21 11:44:40.82805
177	INFRASTRUCTURE	2013-09-21 11:44:40.836342	2013-09-21 11:44:40.836342
178	INFRATECH MANAGEMENT CONSULTANTS	2013-09-21 11:44:40.844745	2013-09-21 11:44:40.844745
179	INSORT	2013-09-21 11:44:40.852948	2013-09-21 11:44:40.852948
180	INSPECTOR	2013-09-21 11:44:40.861413	2013-09-21 11:44:40.861413
181	INSURANCE	2013-09-21 11:44:40.869627	2013-09-21 11:44:40.869627
182	INTEGRATION	2013-09-21 11:44:40.877949	2013-09-21 11:44:40.877949
183	INTEGRATOR	2013-09-21 11:44:40.886401	2013-09-21 11:44:40.886401
184	INTERIO-LAB	2013-09-21 11:44:40.895797	2013-09-21 11:44:40.895797
185	INTERIOR	2013-09-21 11:44:40.902954	2013-09-21 11:44:40.902954
186	INTERNATIONAL BUSINESS	2013-09-21 11:44:40.911413	2013-09-21 11:44:40.911413
187	INTERVIWE	2013-09-21 11:44:41.037097	2013-09-21 11:44:41.037097
188	INVESTMENT	2013-09-21 11:44:41.044644	2013-09-21 11:44:41.044644
189	HELP SAFETY	2013-09-21 11:44:41.05291	2013-09-21 11:44:41.05291
190	JOINT COMMISSIONER	2013-09-21 11:44:41.177935	2013-09-21 11:44:41.177935
191	JOUNIOR ENGINEERING	2013-09-21 11:44:41.186206	2013-09-21 11:44:41.186206
192	JUNIOR	2013-09-21 11:44:41.194528	2013-09-21 11:44:41.194528
193	JUNIOR CLERK	2013-09-21 11:44:41.202863	2013-09-21 11:44:41.202863
194	JUNIOR ELECTRICAL ENGINEER	2013-09-21 11:44:41.211042	2013-09-21 11:44:41.211042
195	JUNIOR TECHNICAL SUPERINTENDENT	2013-09-21 11:44:41.219888	2013-09-21 11:44:41.219888
196	JUNIOR TECHNICIAN	2013-09-21 11:44:41.228266	2013-09-21 11:44:41.228266
197	LAB TECHNICHAN	2013-09-21 11:44:41.236452	2013-09-21 11:44:41.236452
198	LABORATORY	2013-09-21 11:44:41.244544	2013-09-21 11:44:41.244544
199	LACTURALE	2013-09-21 11:44:41.25302	2013-09-21 11:44:41.25302
200	LASCAR	2013-09-21 11:44:41.261311	2013-09-21 11:44:41.261311
201	LEADER	2013-09-21 11:44:41.269627	2013-09-21 11:44:41.269627
202	LECTURER	2013-09-21 11:44:41.277821	2013-09-21 11:44:41.277821
203	LECTURERS	2013-09-21 11:44:41.286121	2013-09-21 11:44:41.286121
204	LEICA MICROSYSTEM SERVICE	2013-09-21 11:44:41.294448	2013-09-21 11:44:41.294448
205	LOGHISTIC MANAGER	2013-09-21 11:44:41.302737	2013-09-21 11:44:41.302737
206	M.S.C.AGRICULTURE	2013-09-21 11:44:41.31114	2013-09-21 11:44:41.31114
207	MAC ENGINEERING	2013-09-21 11:44:41.31943	2013-09-21 11:44:41.31943
208	MAHARASHTRA JEEVAN PRADHIKARAN	2013-09-21 11:44:41.32772	2013-09-21 11:44:41.32772
209	MAINTENANCE	2013-09-21 11:44:41.336101	2013-09-21 11:44:41.336101
210	MAJOR ARCHITECT MANAGER	2013-09-21 11:44:41.344441	2013-09-21 11:44:41.344441
211	MANAGEMENT	2013-09-21 11:44:41.352707	2013-09-21 11:44:41.352707
212	OPERATIONS	2013-09-21 11:44:41.36124	2013-09-21 11:44:41.36124
213	MANAGING DIRECTOR	2013-09-21 11:44:41.369573	2013-09-21 11:44:41.369573
214	MANUFACTURING	2013-09-21 11:44:41.377906	2013-09-21 11:44:41.377906
215	MARKET SECURTY	2013-09-21 11:44:41.38616	2013-09-21 11:44:41.38616
216	MATERIAL MANAGEMENT	2013-09-21 11:44:41.395641	2013-09-21 11:44:41.395641
217	MEASUREMENT	2013-09-21 11:44:41.402732	2013-09-21 11:44:41.402732
218	MECHANICAL ENGINEERING	2013-09-21 11:44:41.411166	2013-09-21 11:44:41.411166
219	MECHANICAL OPERATOR	2013-09-21 11:44:41.419458	2013-09-21 11:44:41.419458
220	MEDICINE	2013-09-21 11:44:41.427912	2013-09-21 11:44:41.427912
221	METER READING	2013-09-21 11:44:41.436071	2013-09-21 11:44:41.436071
222	MICROBIOLOGY	2013-09-21 11:44:41.444475	2013-09-21 11:44:41.444475
223	MINISTERING BRODCASTING	2013-09-21 11:44:41.452772	2013-09-21 11:44:41.452772
224	MOTOR TRANSFER FUNCTION	2013-09-21 11:44:41.461213	2013-09-21 11:44:41.461213
225	MSC AGRICULTURE	2013-09-21 11:44:41.469461	2013-09-21 11:44:41.469461
226	NATIONAL	2013-09-21 11:44:41.477532	2013-09-21 11:44:41.477532
227	NATIONAL SALES MANAGER	2013-09-21 11:44:41.485777	2013-09-21 11:44:41.485777
228	NETWORK SOLUTIONS	2013-09-21 11:44:41.494317	2013-09-21 11:44:41.494317
229	OFFICE MANAGEMENT STAFF	2013-09-21 11:44:41.502622	2013-09-21 11:44:41.502622
230	OPERATING	2013-09-21 11:44:41.510814	2013-09-21 11:44:41.510814
231	OPERATION & MAINTENANCE	2013-09-21 11:44:41.519119	2013-09-21 11:44:41.519119
232	OPERATION MANAGER	2013-09-21 11:44:41.527446	2013-09-21 11:44:41.527446
233	OPTOMETRIST	2013-09-21 11:44:41.536747	2013-09-21 11:44:41.536747
234	ORTHOPEDIC	2013-09-21 11:44:41.544149	2013-09-21 11:44:41.544149
235	PANCHAYAT COMMITTEE	2013-09-21 11:44:41.552621	2013-09-21 11:44:41.552621
236	PARTNER	2013-09-21 11:44:41.56088	2013-09-21 11:44:41.56088
237	PASSENGER	2013-09-21 11:44:41.56925	2013-09-21 11:44:41.56925
238	GARD	2013-09-21 11:44:41.577607	2013-09-21 11:44:41.577607
239	PATHOLOGY	2013-09-21 11:44:41.585906	2013-09-21 11:44:41.585906
240	PENSION	2013-09-21 11:44:41.594093	2013-09-21 11:44:41.594093
241	PEON	2013-09-21 11:44:41.602332	2013-09-21 11:44:41.602332
242	PERSONAL DATA BASE	2013-09-21 11:44:41.610684	2013-09-21 11:44:41.610684
243	PERSONAL EXECUTIVE	2013-09-21 11:44:41.618997	2013-09-21 11:44:41.618997
244	PHARMACYS	2013-09-21 11:44:41.62737	2013-09-21 11:44:41.62737
245	PHARMACYS SECTION	2013-09-21 11:44:41.63566	2013-09-21 11:44:41.63566
246	PHILOSOPHY	2013-09-21 11:44:41.644201	2013-09-21 11:44:41.644201
247	POLICE COMMISSIONER	2013-09-21 11:44:41.653518	2013-09-21 11:44:41.653518
248	POLICE CONSTABLE	2013-09-21 11:44:41.660766	2013-09-21 11:44:41.660766
249	POLICE CONSTEBAL	2013-09-21 11:44:41.669162	2013-09-21 11:44:41.669162
250	POLLUTION LAW DIVISION	2013-09-21 11:44:41.6775	2013-09-21 11:44:41.6775
251	POST ELECTRICAL	2013-09-21 11:44:41.685782	2013-09-21 11:44:41.685782
252	MANAGER	2013-09-21 11:44:41.694287	2013-09-21 11:44:41.694287
253	POST JUNIOR CLERK	2013-09-21 11:44:41.702706	2013-09-21 11:44:41.702706
254	POST SENIOR ANALYST	2013-09-21 11:44:41.711089	2013-09-21 11:44:41.711089
255	POSTGRADUATE DIPLOMA IN FORESTRY	2013-09-21 11:44:41.719281	2013-09-21 11:44:41.719281
256	PREMIER WEALTH MANAGER	2013-09-21 11:44:41.72742	2013-09-21 11:44:41.72742
257	PRIMESES	2013-09-21 11:44:41.735789	2013-09-21 11:44:41.735789
258	PRINCIPAL SEINE	2013-09-21 11:44:41.744302	2013-09-21 11:44:41.744302
259	PRIVATE EQUITY	2013-09-21 11:44:41.752431	2013-09-21 11:44:41.752431
260	PROCESS	2013-09-21 11:44:41.760739	2013-09-21 11:44:41.760739
261	PROCUREMENT	2013-09-21 11:44:41.768912	2013-09-21 11:44:41.768912
262	PRODUCT	2013-09-21 11:44:41.777379	2013-09-21 11:44:41.777379
263	PRODUCTION	2013-09-21 11:44:41.785692	2013-09-21 11:44:41.785692
264	PROFESSION IS	2013-09-21 11:44:41.793869	2013-09-21 11:44:41.793869
265	PROFESSOR	2013-09-21 11:44:41.802245	2013-09-21 11:44:41.802245
266	PROGRAMER	2013-09-21 11:44:41.810544	2013-09-21 11:44:41.810544
267	PROJECT	2013-09-21 11:44:41.819166	2013-09-21 11:44:41.819166
268	PROPOSAL	2013-09-21 11:44:41.827893	2013-09-21 11:44:41.827893
269	PROPRIETOR	2013-09-21 11:44:41.835867	2013-09-21 11:44:41.835867
270	PUBLIC & MORTALITY	2013-09-21 11:44:41.844099	2013-09-21 11:44:41.844099
271	PURCHASE	2013-09-21 11:44:41.852456	2013-09-21 11:44:41.852456
272	PURCHASE MANAGER	2013-09-21 11:44:41.860905	2013-09-21 11:44:41.860905
273	QUALIFICATION	2013-09-21 11:44:41.869161	2013-09-21 11:44:41.869161
274	QULITY CONTROL	2013-09-21 11:44:41.877381	2013-09-21 11:44:41.877381
275	REACTOR SAFETY	2013-09-21 11:44:41.885883	2013-09-21 11:44:41.885883
276	REGINAL SELES MANAGER	2013-09-21 11:44:41.894215	2013-09-21 11:44:41.894215
277	REGISTER	2013-09-21 11:44:41.902463	2013-09-21 11:44:41.902463
278	REGISTRAR MEDICAL	2013-09-21 11:44:41.910541	2013-09-21 11:44:41.910541
279	REGULATING	2013-09-21 11:44:41.9192	2013-09-21 11:44:41.9192
280	REGULATORY AFFAIRS	2013-09-21 11:44:41.927516	2013-09-21 11:44:41.927516
281	REGULATORY EXECUTIVE	2013-09-21 11:44:41.935859	2013-09-21 11:44:41.935859
282	RELATIONSHIP	2013-09-21 11:44:41.943893	2013-09-21 11:44:41.943893
283	REPAIR WALL	2013-09-21 11:44:41.952306	2013-09-21 11:44:41.952306
284	RESEARCH & DEVELOPMENT AGRICULTURE	2013-09-21 11:44:41.960678	2013-09-21 11:44:41.960678
285	RESEARCH ASSOCIATE	2013-09-21 11:44:41.968919	2013-09-21 11:44:41.968919
286	RESEARCH LABORATORY	2013-09-21 11:44:41.977254	2013-09-21 11:44:41.977254
287	RESERCH	2013-09-21 11:44:41.985565	2013-09-21 11:44:41.985565
288	RESPONDED	2013-09-21 11:44:41.993762	2013-09-21 11:44:41.993762
289	REVENUE	2013-09-21 11:44:42.002451	2013-09-21 11:44:42.002451
290	REVENUE ACCOUNT	2013-09-21 11:44:42.01074	2013-09-21 11:44:42.01074
291	RISK MANAGEMENT	2013-09-21 11:44:42.019128	2013-09-21 11:44:42.019128
292	SALES COORDINATOR	2013-09-21 11:44:42.027381	2013-09-21 11:44:42.027381
293	SALES SCHEME	2013-09-21 11:44:42.035703	2013-09-21 11:44:42.035703
294	SALES TEAM LEADER	2013-09-21 11:44:42.044045	2013-09-21 11:44:42.044045
295	SCIENTIFIC	2013-09-21 11:44:42.052329	2013-09-21 11:44:42.052329
296	OFFICER	2013-09-21 11:44:42.060608	2013-09-21 11:44:42.060608
297	SCIENTIST	2013-09-21 11:44:42.069056	2013-09-21 11:44:42.069056
298	SECOND OFFICER	2013-09-21 11:44:42.07731	2013-09-21 11:44:42.07731
299	SECRETARIAL	2013-09-21 11:44:42.085608	2013-09-21 11:44:42.085608
300	SECRETARY	2013-09-21 11:44:42.09392	2013-09-21 11:44:42.09392
301	SECTION	2013-09-21 11:44:42.102287	2013-09-21 11:44:42.102287
302	SECURITY	2013-09-21 11:44:42.110592	2013-09-21 11:44:42.110592
303	SELES CO-ORDINATOR	2013-09-21 11:44:42.118962	2013-09-21 11:44:42.118962
304	SENIOR ACCOUNTANT	2013-09-21 11:44:42.127451	2013-09-21 11:44:42.127451
305	SENIOR ADVISOR &CONSULTANT	2013-09-21 11:44:42.135653	2013-09-21 11:44:42.135653
306	SENIOR ANALYST	2013-09-21 11:44:42.143943	2013-09-21 11:44:42.143943
307	SENIOR ASSISTANT CONSULTANT	2013-09-21 11:44:42.15223	2013-09-21 11:44:42.15223
308	SENIOR AUDITOR	2013-09-21 11:44:42.160654	2013-09-21 11:44:42.160654
309	SENIOR CAD MANAGER TECHNICIAN	2013-09-21 11:44:42.168921	2013-09-21 11:44:42.168921
310	SENIOR CLERK,SENIOR CONDUCTION	2013-09-21 11:44:42.177286	2013-09-21 11:44:42.177286
311	SENIOR CONSULTANT	2013-09-21 11:44:42.185583	2013-09-21 11:44:42.185583
312	SENIOR CLERK	2013-09-21 11:44:42.194047	2013-09-21 11:44:42.194047
313	SENIOR DUPTY ENGINEER	2013-09-21 11:44:42.20222	2013-09-21 11:44:42.20222
314	SENIOR ENGINEER	2013-09-21 11:44:42.21036	2013-09-21 11:44:42.21036
315	SENIOR EXECUTIVE	2013-09-21 11:44:42.218749	2013-09-21 11:44:42.218749
316	SENIOR GENERAL MANAGER	2013-09-21 11:44:42.227113	2013-09-21 11:44:42.227113
317	SENIOR INSPECTOR	2013-09-21 11:44:42.235422	2013-09-21 11:44:42.235422
318	SENIOR MANAGER	2013-09-21 11:44:42.243732	2013-09-21 11:44:42.243732
319	SENIOR OFFICER GRAED 1	2013-09-21 11:44:42.252075	2013-09-21 11:44:42.252075
320	SENIOR PHARMACYS	2013-09-21 11:44:42.260231	2013-09-21 11:44:42.260231
321	SENIOR PRODUCTION ENGG	2013-09-21 11:44:42.26854	2013-09-21 11:44:42.26854
322	SENIOR RELATIONSHIP MANAGER	2013-09-21 11:44:42.276972	2013-09-21 11:44:42.276972
323	SENIOR RESEARCH ANALYST	2013-09-21 11:44:42.285327	2013-09-21 11:44:42.285327
324	SENIOR SECTION SUPERVISIOR	2013-09-21 11:44:42.293655	2013-09-21 11:44:42.293655
325	SENIOR SECTION SUPERVISIOR.	2013-09-21 11:44:42.302008	2013-09-21 11:44:42.302008
326	SENIOR SERVICE	2013-09-21 11:44:42.310219	2013-09-21 11:44:42.310219
327	ENGINEER	2013-09-21 11:44:42.318461	2013-09-21 11:44:42.318461
328	SENIOR SPECIALIST	2013-09-21 11:44:42.326764	2013-09-21 11:44:42.326764
329	SENIOR STENOGRAPHER	2013-09-21 11:44:42.335108	2013-09-21 11:44:42.335108
330	SENIOR TECHNICIAN	2013-09-21 11:44:42.343511	2013-09-21 11:44:42.343511
331	SENIOR TERRITORY	2013-09-21 11:44:42.351986	2013-09-21 11:44:42.351986
332	SENIOUR ADMINISTRATOR	2013-09-21 11:44:42.360218	2013-09-21 11:44:42.360218
333	SENIOUR EXECUTIVE	2013-09-21 11:44:42.36863	2013-09-21 11:44:42.36863
334	SENOIR HR ADMIN	2013-09-21 11:44:42.376929	2013-09-21 11:44:42.376929
335	SERVICE	2013-09-21 11:44:42.385229	2013-09-21 11:44:42.385229
336	SERVICE ENGINEER	2013-09-21 11:44:42.393562	2013-09-21 11:44:42.393562
337	STAFF NURSE	2013-09-21 11:44:42.401734	2013-09-21 11:44:42.401734
338	SHOP & ESTABLISHMENT LICENSE	2013-09-21 11:44:42.410259	2013-09-21 11:44:42.410259
339	SENIOR VICE PRESIDENT	2013-09-21 11:44:42.418623	2013-09-21 11:44:42.418623
340	SISTHA	2013-09-21 11:44:42.42732	2013-09-21 11:44:42.42732
341	SITE ENGINEER	2013-09-21 11:44:42.436237	2013-09-21 11:44:42.436237
342	SOFTWARE	2013-09-21 11:44:42.443482	2013-09-21 11:44:42.443482
343	SOFTWARE ENGINEER	2013-09-21 11:44:42.451747	2013-09-21 11:44:42.451747
344	SPECIALIST	2013-09-21 11:44:42.460135	2013-09-21 11:44:42.460135
345	SPECILSED	2013-09-21 11:44:42.46846	2013-09-21 11:44:42.46846
346	SR. MEDICAL ADVISOR	2013-09-21 11:44:42.47674	2013-09-21 11:44:42.47674
347	STABILITY OFFICER	2013-09-21 11:44:42.485218	2013-09-21 11:44:42.485218
348	STAFF	2013-09-21 11:44:42.535878	2013-09-21 11:44:42.535878
349	STATE INTELLIGENCE	2013-09-21 11:44:42.661692	2013-09-21 11:44:42.661692
350	STATIONARY	2013-09-21 11:44:42.777053	2013-09-21 11:44:42.777053
351	STENOGRAPHER	2013-09-21 11:44:42.785171	2013-09-21 11:44:42.785171
352	STOCK EXCHANGE	2013-09-21 11:44:42.79339	2013-09-21 11:44:42.79339
353	STRUCTURAL ENGINEERING	2013-09-21 11:44:42.801602	2013-09-21 11:44:42.801602
354	SUPERINTENDENT	2013-09-21 11:44:42.809953	2013-09-21 11:44:42.809953
355	SUPERVISIOR	2013-09-21 11:44:42.818248	2013-09-21 11:44:42.818248
356	SUPPLY CHAIN (PRODUCTION)	2013-09-21 11:44:42.826592	2013-09-21 11:44:42.826592
357	SUPPLY CHAIN MANAGER	2013-09-21 11:44:42.834946	2013-09-21 11:44:42.834946
358	SUPPORT	2013-09-21 11:44:42.843265	2013-09-21 11:44:42.843265
359	SURVIVOR	2013-09-21 11:44:42.851461	2013-09-21 11:44:42.851461
360	SYBASE UNWIRED PLATFORM	2013-09-21 11:44:42.859927	2013-09-21 11:44:42.859927
361	SYSTEM	2013-09-21 11:44:42.868112	2013-09-21 11:44:42.868112
362	SYSTEM ADMINISTRATOR	2013-09-21 11:44:42.876557	2013-09-21 11:44:42.876557
363	TAHSILDAR	2013-09-21 11:44:42.884727	2013-09-21 11:44:42.884727
364	TEACHER	2013-09-21 11:44:42.893126	2013-09-21 11:44:42.893126
365	TECHNICAL	2013-09-21 11:44:42.901483	2013-09-21 11:44:42.901483
366	TECHNICAL MANAGER	2013-09-21 11:44:42.909651	2013-09-21 11:44:42.909651
367	TECHNICAL OFFICER	2013-09-21 11:44:42.918018	2013-09-21 11:44:42.918018
368	TECHNICAL SOFTWARE ENGINEER	2013-09-21 11:44:42.926329	2013-09-21 11:44:42.926329
369	TECHNICAN	2013-09-21 11:44:42.934989	2013-09-21 11:44:42.934989
370	TECHNOLOGY	2013-09-21 11:44:42.943199	2013-09-21 11:44:42.943199
371	TEST ENGINEER	2013-09-21 11:44:42.951368	2013-09-21 11:44:42.951368
372	TESTING	2013-09-21 11:44:42.959795	2013-09-21 11:44:42.959795
373	TESTING SOGETI	2013-09-21 11:44:42.968003	2013-09-21 11:44:42.968003
374	TEXCEL	2013-09-21 11:44:42.976318	2013-09-21 11:44:42.976318
375	TEXSTYLE	2013-09-21 11:44:42.984633	2013-09-21 11:44:42.984633
376	THREE DESGNIOR	2013-09-21 11:44:42.992932	2013-09-21 11:44:42.992932
377	TOWN PLANNING	2013-09-21 11:44:43.001462	2013-09-21 11:44:43.001462
378	TRAFFIC	2013-09-21 11:44:43.009649	2013-09-21 11:44:43.009649
379	CONTROLLER	2013-09-21 11:44:43.01906	2013-09-21 11:44:43.01906
380	TRANSPORT	2013-09-21 11:44:43.026233	2013-09-21 11:44:43.026233
381	TRANSPORTATION	2013-09-21 11:44:43.034563	2013-09-21 11:44:43.034563
382	TRANSPORT POLICE CONSTABAL.	2013-09-21 11:44:43.042923	2013-09-21 11:44:43.042923
383	TUITION	2013-09-21 11:44:43.051282	2013-09-21 11:44:43.051282
384	TYPIST	2013-09-21 11:44:43.059586	2013-09-21 11:44:43.059586
385	UNDER SECURITY	2013-09-21 11:44:43.068099	2013-09-21 11:44:43.068099
386	UNDERWRITING	2013-09-21 11:44:43.076425	2013-09-21 11:44:43.076425
387	UTELITE	2013-09-21 11:44:43.084748	2013-09-21 11:44:43.084748
388	UTILITIES	2013-09-21 11:44:43.092893	2013-09-21 11:44:43.092893
389	VICE PRESIDENT	2013-09-21 11:44:43.101341	2013-09-21 11:44:43.101341
390	VIGILENCE	2013-09-21 11:44:43.10969	2013-09-21 11:44:43.10969
391	VIGILENCE  ELECTRICAL  SUPPLY	2013-09-21 11:44:43.117905	2013-09-21 11:44:43.117905
392	YOGA THERAPIST	2013-09-21 11:44:43.127231	2013-09-21 11:44:43.127231
\.


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departments_id_seq', 392, true);


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
1	Telephones	2013-09-21 11:44:43.368812	2013-09-21 11:44:43.368812
2	Computer	2013-09-21 11:44:43.375657	2013-09-21 11:44:43.375657
3	Fax	2013-09-21 11:44:43.3834	2013-09-21 11:44:43.3834
4	AC	2013-09-21 11:44:43.3917	2013-09-21 11:44:43.3917
5	Photocopier	2013-09-21 11:44:43.400064	2013-09-21 11:44:43.400064
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at) FROM stdin;
1	Fort	400001	2013-09-21 11:44:43.475559	2013-09-21 11:44:43.475559
2	Kalbadevi	400002	2013-09-21 11:44:43.501367	2013-09-21 11:44:43.501367
3	Masjid(e)	400003	2013-09-21 11:44:43.509094	2013-09-21 11:44:43.509094
4	Girgaum	400004	2013-09-21 11:44:43.517371	2013-09-21 11:44:43.517371
5	Colaba	400005	2013-09-21 11:44:43.525672	2013-09-21 11:44:43.525672
6	Malabar hill	400006	2013-09-21 11:44:43.534017	2013-09-21 11:44:43.534017
7	Grant Road	400007	2013-09-21 11:44:43.543002	2013-09-21 11:44:43.543002
8	Mumbai Central	400008	2013-09-21 11:44:43.551449	2013-09-21 11:44:43.551449
9	Masjid(w)	400009	2013-09-21 11:44:43.559618	2013-09-21 11:44:43.559618
10	Mazgaon	400010	2013-09-21 11:44:43.567927	2013-09-21 11:44:43.567927
11	Jacob Circle	400011	2013-09-21 11:44:43.576346	2013-09-21 11:44:43.576346
12	lalbaug	400012	2013-09-21 11:44:43.584565	2013-09-21 11:44:43.584565
13	delisle road	400013	2013-09-21 11:44:43.59308	2013-09-21 11:44:43.59308
14	Dadar	400014	2013-09-21 11:44:43.601205	2013-09-21 11:44:43.601205
15	Sewree	400015	2013-09-21 11:44:43.609703	2013-09-21 11:44:43.609703
16	Mahim	400016	2013-09-21 11:44:43.617858	2013-09-21 11:44:43.617858
17	Dharavi	400017	2013-09-21 11:44:43.626172	2013-09-21 11:44:43.626172
18	Worli	400018	2013-09-21 11:44:43.634514	2013-09-21 11:44:43.634514
19	Matunga Central	400019	2013-09-21 11:44:43.642871	2013-09-21 11:44:43.642871
20	Churchgate	400020	2013-09-21 11:44:43.651183	2013-09-21 11:44:43.651183
21	Nariman Point	400021	2013-09-21 11:44:43.659681	2013-09-21 11:44:43.659681
22	Sion	400022	2013-09-21 11:44:43.668054	2013-09-21 11:44:43.668054
23	Dalal Street	400023	2013-09-21 11:44:43.676383	2013-09-21 11:44:43.676383
24	Kurla	400024	2013-09-21 11:44:43.684556	2013-09-21 11:44:43.684556
25	Prabhadevi	400025	2013-09-21 11:44:43.693	2013-09-21 11:44:43.693
26	Byculla(e)	400027	2013-09-21 11:44:43.769445	2013-09-21 11:44:43.769445
27	Santacruz(e)	400029	2013-09-21 11:44:43.777694	2013-09-21 11:44:43.777694
28	PGMS Office	400030	2013-09-21 11:44:43.784374	2013-09-21 11:44:43.784374
29	Wadala	400031	2013-09-21 11:44:43.792709	2013-09-21 11:44:43.792709
30	Mantralaya	400032	2013-09-21 11:44:43.801045	2013-09-21 11:44:43.801045
31	Cotton Green	400033	2013-09-21 11:44:43.80936	2013-09-21 11:44:43.80936
32	Haji Ali	400034	2013-09-21 11:44:43.817715	2013-09-21 11:44:43.817715
33	Raj Bhavan	400035	2013-09-21 11:44:43.825974	2013-09-21 11:44:43.825974
34	Kemps corner	400036	2013-09-21 11:44:43.834543	2013-09-21 11:44:43.834543
35	Antop hill	400037	2013-09-21 11:44:43.842654	2013-09-21 11:44:43.842654
36	Ballard Pier	400038	2013-09-21 11:44:43.850984	2013-09-21 11:44:43.850984
37	Ballard Estate	400039	2013-09-21 11:44:43.859578	2013-09-21 11:44:43.859578
38	Jogeshwari(e)	400041	2013-09-21 11:44:43.867921	2013-09-21 11:44:43.867921
39	Bhandup	400042	2013-09-21 11:44:43.876215	2013-09-21 11:44:43.876215
40	Mankhurd	400043	2013-09-21 11:44:43.884428	2013-09-21 11:44:43.884428
41	Vile Parle(e)	400047	2013-09-21 11:44:43.892693	2013-09-21 11:44:43.892693
42	Andheri(w)	400048	2013-09-21 11:44:43.901016	2013-09-21 11:44:43.901016
43	bandra	400050	2013-09-21 11:44:43.912575	2013-09-21 11:44:43.912575
44	Khar	400051	2013-09-21 11:44:43.925959	2013-09-21 11:44:43.925959
45	Santacruz(w)	400054	2013-09-21 11:44:43.941216	2013-09-21 11:44:43.941216
46	Vile parle(w)	400056	2013-09-21 11:44:43.954413	2013-09-21 11:44:43.954413
47	Andheri(e)	400058	2013-09-21 11:44:43.970875	2013-09-21 11:44:43.970875
48	Goregaon(w)	400062	2013-09-21 11:44:43.993806	2013-09-21 11:44:43.993806
49	Goregaon(e)	400063	2013-09-21 11:44:44.000913	2013-09-21 11:44:44.000913
50	Malad(w)	400064	2013-09-21 11:44:44.009211	2013-09-21 11:44:44.009211
51	Goregoan(e)	400065	2013-09-21 11:44:44.017743	2013-09-21 11:44:44.017743
52	Borivali(e)	400066	2013-09-21 11:44:44.025894	2013-09-21 11:44:44.025894
53	Kandivali(w)	400067	2013-09-21 11:44:44.03427	2013-09-21 11:44:44.03427
54	Dahisar	400068	2013-09-21 11:44:44.042568	2013-09-21 11:44:44.042568
55	Chembur	400071	2013-09-21 11:44:44.057235	2013-09-21 11:44:44.057235
56	Ghatkopar	400075	2013-09-21 11:44:44.073912	2013-09-21 11:44:44.073912
57	Powai	400076	2013-09-21 11:44:44.084221	2013-09-21 11:44:44.084221
58	Vikroli	400079	2013-09-21 11:44:44.098899	2013-09-21 11:44:44.098899
59	Mulund	400080	2013-09-21 11:44:44.217417	2013-09-21 11:44:44.217417
60	Niete	400087	2013-09-21 11:44:44.358438	2013-09-21 11:44:44.358438
61	Deonar	400088	2013-09-21 11:44:44.367451	2013-09-21 11:44:44.367451
62	Borivali(w)	400091	2013-09-21 11:44:44.382145	2013-09-21 11:44:44.382145
63	Malad(e)	400097	2013-09-21 11:44:44.398534	2013-09-21 11:44:44.398534
64	Kandivali(e)	400101	2013-09-21 11:44:44.415172	2013-09-21 11:44:44.415172
65	Jogeshwari(w)	400102	2013-09-21 11:44:44.425494	2013-09-21 11:44:44.425494
66	Bhayandar(e)	400105	2013-09-21 11:44:44.440236	2013-09-21 11:44:44.440236
67	Thane	400601	2013-09-21 11:44:44.453684	2013-09-21 11:44:44.453684
68	Kalwa	400605	2013-09-21 11:44:44.476668	2013-09-21 11:44:44.476668
69	Mumbra	400612	2013-09-21 11:44:44.4933	2013-09-21 11:44:44.4933
70	Turbhe	400613	2013-09-21 11:44:44.500444	2013-09-21 11:44:44.500444
71	CBD	400614	2013-09-21 11:44:44.508988	2013-09-21 11:44:44.508988
72	Ghansoli	400701	2013-09-21 11:44:44.517253	2013-09-21 11:44:44.517253
73	Uran	400702	2013-09-21 11:44:44.525574	2013-09-21 11:44:44.525574
74	Vashi	400703	2013-09-21 11:44:44.533934	2013-09-21 11:44:44.533934
75	Nerul	400706	2013-09-21 11:44:44.548601	2013-09-21 11:44:44.548601
76	Airoli	400708	2013-09-21 11:44:44.558978	2013-09-21 11:44:44.558978
77	KK	400709	2013-09-21 11:44:44.567313	2013-09-21 11:44:44.567313
78	Bhayandar(w)	401101	2013-09-21 11:44:44.578994	2013-09-21 11:44:44.578994
79	Umparpada	401102	2013-09-21 11:44:44.592109	2013-09-21 11:44:44.592109
80	Dahanu(w)	401103	2013-09-21 11:44:44.600617	2013-09-21 11:44:44.600617
81	Mira Road(e)	401104	2013-09-21 11:44:44.608771	2013-09-21 11:44:44.608771
82	Vasai(w)	401201	2013-09-21 11:44:44.626665	2013-09-21 11:44:44.626665
83	Nalasopara(w)	401203	2013-09-21 11:44:44.637126	2013-09-21 11:44:44.637126
84	Virar(e)	401204	2013-09-21 11:44:44.650801	2013-09-21 11:44:44.650801
85	Vasai(e)	401205	2013-09-21 11:44:44.659051	2013-09-21 11:44:44.659051
86	NalaSopara(e)	401209	2013-09-21 11:44:44.678066	2013-09-21 11:44:44.678066
87	Virar(w)	401301	2013-09-21 11:44:44.695627	2013-09-21 11:44:44.695627
88	Palghar(e)	401404	2013-09-21 11:44:44.718523	2013-09-21 11:44:44.718523
89	Palghar(w)	401501	2013-09-21 11:44:44.725436	2013-09-21 11:44:44.725436
90	Dahanu(e)	401601	2013-09-21 11:44:44.746483	2013-09-21 11:44:44.746483
91	Dahanu	401608	2013-09-21 11:44:44.765269	2013-09-21 11:44:44.765269
92	Panvel	410206	2013-09-21 11:44:44.778538	2013-09-21 11:44:44.778538
93	Kamothe	410209	2013-09-21 11:44:44.795396	2013-09-21 11:44:44.795396
94	Kharghar	410210	2013-09-21 11:44:44.808749	2013-09-21 11:44:44.808749
95	Kalamboli	410218	2013-09-21 11:44:44.817092	2013-09-21 11:44:44.817092
96	Ulhasnagar	421001	2013-09-21 11:44:44.825366	2013-09-21 11:44:44.825366
97	Ambivali	421102	2013-09-21 11:44:44.846474	2013-09-21 11:44:44.846474
98	Dombivali	421201	2013-09-21 11:44:44.858683	2013-09-21 11:44:44.858683
99	Kalyan	421301	2013-09-21 11:44:44.876723	2013-09-21 11:44:44.876723
100	Bhiwandi	421302	2013-09-21 11:44:44.883693	2013-09-21 11:44:44.883693
101	Wada	421303	2013-09-21 11:44:44.892025	2013-09-21 11:44:44.892025
102	Ambernath	421501	2013-09-21 11:44:44.910012	2013-09-21 11:44:44.910012
103	Badlapur	421506	2013-09-21 11:44:44.926431	2013-09-21 11:44:44.926431
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 103, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
2	2	2013-09-21 12:48:30.384539	2013-09-21 12:48:30.393189	\N	\N	\N	2	\N	\N	\N	\N	\N	\N	\N
3	3	2013-09-21 12:51:03.423299	2013-09-21 12:51:03.431902	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N
4	4	2013-09-23 08:55:49.30833	2013-09-23 08:55:49.322287	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N
5	1	2013-10-12 11:37:05.02203	2013-10-12 11:37:05.040413	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
6	1	2013-10-12 11:39:33.910037	2013-10-12 11:39:33.930548	\N	\N	\N	1--2	\N	\N	\N	\N	\N	\N	\N
7	1	2013-10-12 11:58:23.375556	2013-10-12 11:58:23.401007	\N	\N	\N	1--3	\N	\N	\N	\N	\N	\N	\N
8	1	2013-10-12 12:00:08.848832	2013-10-12 12:00:08.917292	\N	\N	\N	1--4	\N	\N	\N	\N	\N	\N	\N
9	1	2013-10-12 12:00:40.809838	2013-10-12 12:00:40.818464	\N	\N	\N	1--5	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 9, true);


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
20130921032546
20130921044306
20130921044357
20130930052923
20130930065930
20130930070221
20130930070455
20130930071920
20130930072233
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serveys (id, customer_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	1	1	t	\N	2013-09-24	12:18:36		MOTHER ANGHA	20	Owned By Parents	Graduate	Unmarried	4	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	other	easy	\N	others	\N	\N		\N	\N	\N	\N	Electricity Bill-000481804167	\N	Accept	2013-09-24 06:53:10.622642	2013-09-24 06:53:10.622642	1992-11-06		\N		000481804167
2	8	1	\N	\N	2013-09-25	11:28:24			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-09-25 05:58:34.359776	2013-09-25 05:58:34.359776	2013-09-25		\N		
3	5	1	\N	\N	2013-09-25	11:28:50			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-09-25 05:58:58.668514	2013-09-25 05:58:58.668514	2013-09-25		\N		
4	2	1	\N	\N	2013-09-25	11:29:08			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-09-25 05:59:16.682523	2013-09-25 05:59:16.682523	2013-09-25		\N		
5	6	3	\N	\N	2013-09-25	12:58:44	self		14	Owned By Parents	Graduate	\N	6	3	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	other	easy	\N	others	\N	\N		\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill	\N	Accept	2013-09-25 07:32:03.7041	2013-09-25 07:32:03.7041	1976-09-25	asdfh4356s	\N	mh03sr3435	000005467899
6	7	3	t	t	2013-09-25	13:05:58	self		21	Owned By Parents	Graduate	Unmarried	4	2	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	other	easy	\N	others	\N	\N		\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill	\N	Accept	2013-09-25 07:38:28.832478	2013-09-25 07:38:28.832478	1985-09-20	asdgh5432s	\N		0000055447785
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 7, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2013-09-21 12:44:24.960604	2013-09-21 12:44:24.960604	\N	\N	\N
2	TAB-SION	T0102032	2013-09-21 12:44:28.049258	2013-09-21 12:44:28.049258	\N	\N	\N
3	TAB-VIKROLI	T0102031	2013-09-21 12:44:30.325245	2013-09-21 12:44:30.325245	\N	\N	\N
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
1	avcv@scorpeo.in	$2a$10$bwzp8.ePaE48C4sJ6wMmWOj9yCzTgR2GBfJan8eWDAVBHNa/mFjpC	\N	\N	\N	66	2013-10-13 06:50:05.796609	2013-10-13 05:33:12.168124	182.237.181.97	182.237.181.97	2013-09-21 12:47:19.137738	2013-10-13 06:50:05.799231	super_user	data entry	1
3	scorpeo.tab2@gmail.com	$2a$10$TNkFFLfsyn3V6u6t/nXJwu.hKqKcDr1ZDlg5c/K.67lMJqLEVcTrm	\N	\N	2013-09-25 07:32:03.576241	6	2013-09-25 07:42:07.969388	2013-09-25 07:32:03.598078	101.60.96.88	101.60.96.88	2013-09-21 12:51:03.387013	2013-09-25 07:42:07.970215	tab_user	scorpeo.tab2	2
4	scorpeo.tab3@gmail.com	$2a$10$jIn4qaFmKkZhjlNqe/B17eUzLoylK/Z3Ib8x7oAopgDrOJHiPYtUq	\N	\N	\N	5	2013-09-26 07:46:16.6314	2013-09-25 07:39:19.456996	122.169.48.62	122.179.145.39	2013-09-23 08:55:49.271805	2013-09-26 07:46:16.632218	tab_user	scorpeo.tab3	3
2	scorpeo.tab1@gmail.com	$2a$10$cyFp7iE88/ikiAOt2hQ3JO9uuXcHWN7lO9x3paAToAPkg/2vaFzm2	\N	\N	\N	17	2013-10-12 11:08:06.37259	2013-10-12 09:16:49.424613	122.170.45.89	59.184.38.14	2013-09-21 12:48:30.353638	2013-10-12 11:08:06.375139	tab_user	scorpeo.tab1	1
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
1	1	L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	19.1196772999999993	72.9050809000000015	\N	N/A	2013-09-23	11:45:52						\N	\N	L & T LTD	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip	\N	\N	\N	\N	2013-09-23 06:19:24.449345	2013-09-23 06:19:24.504418	\N	\N	ready_for_verification	1	
2	1	L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	19.1196772999999993	72.9050809000000015	\N	N/A	2013-09-23	11:45:52						\N	\N	L & T LTD	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip	\N	\N	\N	\N	2013-09-23 06:19:26.736163	2013-09-23 06:19:26.760852	\N	\N	ready_for_verification	1	
3	6	K.J.SOMAIYA COLLEGE OF SC.& COMM.VIDYAVIHAR-EAST-400077.\r\n	\N	\N	t	asst.professor	2013-09-28	10:07:09	self	asst.professor			9969038681	21	t	K.J.SOMAIYA COLLEGE OF SC.& COMM.	Public Ltd.	Others	\N	\N			75	\N	Permanent	Assistant	f	\N	\N	t	---\n- colleage\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card,\r\nPan Card--afhpk2576h(23.10.1968)\r\nT.o.l----car loan\r\nAm-----3.12lacs\r\nLight bill no-----000094076986	\N	positive	\N	\N	2013-09-28 04:50:11.901137	2013-09-28 04:50:11.926279	\N	\N	ready_for_verification	1	
4	6	K.J.SOMAIYA COLLEGE OF SC.& COMM.VIDYAVIHAR-EAST-400077.\r\n	\N	\N	t	asst.professor	2013-09-28	10:07:09	self	asst.professor			9969038681	21	t	K.J.SOMAIYA COLLEGE OF SC.& COMM.	Public Ltd.	Others	\N	\N			75	\N	Permanent	Assistant	f	\N	\N	t	---\n- colleage\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card,\r\nPan Card	\N	positive	\N	\N	2013-09-28 04:50:57.06974	2013-09-28 04:50:57.091214	\N	\N	ready_for_verification	1	
5	13	OFFICE OF COMMISSIONER OF POLICE, CRIME BRANCH, CBD BELAPUR, NAVI MUMBAI - 400614\r\n	19.0220708000000016	73.0390072000000004	\N	N/A	2013-10-04	18:49:40	SELF	SELF	022-27573071		9821121483	1	f	MRS. MIRA SHESHRAO KHARAT 	Private LTD.	Professional	\N	\N			\N	\N	Permanent	Others	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card, C-2367\r\nSalary Slip 30,000/-\r\n	\N	positive	\N	\N	2013-10-04 13:22:29.663521	2013-10-04 13:22:29.695833	\N	\N	ready_for_verification	1	OFFICE OF COMMISSIONER OF POLICE
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 5, true);


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
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


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

