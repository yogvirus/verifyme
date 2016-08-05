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
6	29	6	2013-10-21 14:10:21.942096	2013-10-21 14:10:21.942096	\N	\N	\N
8	27	8	2013-10-21 14:24:24.537417	2013-10-21 14:24:24.537417	\N	\N	\N
9	27	9	2013-10-21 14:24:53.133352	2013-10-21 14:24:53.133352	\N	\N	\N
10	27	10	2013-10-21 14:28:15.56896	2013-10-21 14:28:15.56896	\N	\N	\N
11	27	11	2013-10-21 14:28:43.413775	2013-10-21 14:28:43.413775	\N	\N	\N
16	25	16	2013-10-21 14:44:14.20023	2013-10-21 14:44:14.20023	\N	\N	\N
17	25	17	2013-10-21 14:44:28.71168	2013-10-21 14:44:28.71168	\N	\N	\N
18	40	18	2013-10-29 04:55:48.062321	2013-10-29 04:55:48.062321	\N	\N	\N
19	41	19	2013-10-29 04:59:09.297227	2013-10-29 04:59:09.297227	\N	\N	\N
20	33	20	2013-10-29 05:02:25.582731	2013-10-29 05:02:25.582731	\N	\N	\N
22	34	22	2013-10-29 05:09:46.995825	2013-10-29 05:09:46.995825	\N	\N	\N
23	35	23	2013-10-29 05:16:06.245164	2013-10-29 05:16:06.245164	\N	\N	\N
24	37	24	2013-10-29 05:19:56.255702	2013-10-29 05:19:56.255702	\N	\N	\N
25	39	25	2013-10-29 05:24:23.813184	2013-10-29 05:24:23.813184	\N	\N	\N
26	52	26	2013-10-29 05:29:20.276795	2013-10-29 05:29:20.276795	\N	\N	\N
27	53	27	2013-10-29 05:32:22.658076	2013-10-29 05:32:22.658076	\N	\N	\N
28	54	28	2013-10-29 05:37:32.773248	2013-10-29 05:37:32.773248	\N	\N	\N
29	61	29	2013-10-29 08:44:06.505273	2013-10-29 08:44:06.505273	\N	\N	\N
30	65	30	2013-10-29 09:13:21.751286	2013-10-29 09:13:21.751286	\N	\N	\N
31	55	31	2013-10-29 09:17:10.828966	2013-10-29 09:17:10.828966	\N	\N	\N
36	67	36	2013-10-30 14:57:23.229577	2013-10-30 14:57:23.229577	\N	\N	\N
37	71	37	2013-10-30 15:12:06.282134	2013-10-30 15:12:06.282134	\N	\N	\N
38	72	38	2013-10-30 15:19:14.442299	2013-10-30 15:19:14.442299	\N	\N	\N
39	72	39	2013-10-30 15:19:58.245789	2013-10-30 15:19:58.245789	\N	\N	\N
40	72	40	2013-10-30 15:20:42.19717	2013-10-30 15:20:42.19717	\N	\N	\N
42	59	42	2013-11-07 05:26:22.173163	2013-11-07 05:26:22.173163	\N	\N	\N
43	63	43	2013-11-07 10:50:45.435428	2013-11-07 10:50:45.435428	\N	\N	\N
44	56	44	2013-11-07 10:51:46.531152	2013-11-07 10:51:46.531152	\N	\N	\N
45	36	45	2013-11-07 10:53:21.380074	2013-11-07 10:53:21.380074	\N	\N	\N
46	32	46	2013-11-07 10:54:25.581207	2013-11-07 10:54:25.581207	\N	\N	\N
47	31	47	2013-11-07 10:59:13.809909	2013-11-07 10:59:13.809909	\N	\N	\N
48	78	48	2013-11-11 05:42:49.016453	2013-11-11 05:42:49.016453	\N	\N	\N
49	79	49	2013-11-11 05:48:17.765227	2013-11-11 05:48:17.765227	\N	\N	\N
50	74	50	2013-11-11 05:52:57.410023	2013-11-11 05:52:57.410023	\N	\N	\N
51	75	51	2013-11-11 05:56:26.346767	2013-11-11 05:56:26.346767	\N	\N	\N
52	76	52	2013-11-11 06:00:45.288247	2013-11-11 06:00:45.288247	\N	\N	\N
53	77	53	2013-11-11 08:47:19.26172	2013-11-11 08:47:19.26172	\N	\N	\N
54	81	54	2013-11-12 09:23:59.288499	2013-11-12 09:23:59.288499	\N	\N	\N
55	82	55	2013-11-12 09:28:05.206221	2013-11-12 09:28:05.206221	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 55, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
74	1	\N	87	1	2013-11-13 09:35:34.512875	2013-11-13 09:35:34.532125
29	1	\N	29	1	2013-10-21 09:44:49.786628	2013-10-21 09:44:49.808554
75	1	\N	88	1	2013-11-13 09:37:26.226735	2013-11-13 09:37:26.251656
31	1	\N	31	1	2013-10-26 06:59:32.740992	2013-10-26 06:59:32.754551
32	1	\N	32	1	2013-10-26 07:04:42.976496	2013-10-26 07:04:42.99528
33	1	\N	33	1	2013-10-26 07:06:52.06277	2013-10-26 07:06:52.090201
34	1	\N	34	1	2013-10-26 07:08:31.429417	2013-10-26 07:08:31.446418
35	1	\N	35	1	2013-10-26 07:10:00.835942	2013-10-26 07:10:00.879039
36	1	\N	36	1	2013-10-26 07:11:58.185407	2013-10-26 07:11:58.217978
37	1	\N	37	1	2013-10-26 07:14:34.470988	2013-10-26 07:14:34.487255
76	1	\N	89	1	2013-11-13 09:39:54.035934	2013-11-13 09:39:54.062401
39	1	\N	39	1	2013-10-26 07:17:10.948028	2013-10-26 07:17:10.973142
40	1	\N	40	1	2013-10-28 06:02:19.696851	2013-10-28 06:02:19.717266
41	1	\N	41	1	2013-10-28 06:03:56.683013	2013-10-28 06:03:56.700104
42	1	\N	52	1	2013-10-28 07:19:58.902289	2013-10-28 07:19:58.928562
43	1	\N	53	1	2013-10-28 07:21:19.252718	2013-10-28 07:21:19.277197
44	1	\N	54	1	2013-10-28 07:22:19.646423	2013-10-28 07:22:19.670292
45	1	\N	55	1	2013-10-28 07:23:53.843803	2013-10-28 07:23:53.865159
46	1	\N	56	1	2013-10-28 07:25:02.473683	2013-10-28 07:25:02.492136
49	1	\N	59	3	2013-10-28 07:42:58.947557	2013-10-28 07:42:58.969714
50	1	\N	61	1	2013-10-29 08:15:05.062486	2013-10-29 08:15:05.08354
51	1	\N	63	1	2013-10-29 08:18:42.09873	2013-10-29 08:18:42.128656
25	1	\N	25	1	2013-10-21 09:34:12.144446	2013-10-21 09:34:12.160926
27	1	\N	27	1	2013-10-21 09:40:45.653683	2013-10-21 09:40:45.680689
53	1	\N	65	1	2013-10-29 08:21:07.4096	2013-10-29 08:21:07.424535
55	1	\N	67	1	2013-10-30 08:05:01.896741	2013-10-30 08:05:01.91398
58	1	\N	71	1	2013-10-30 08:18:26.362453	2013-10-30 08:18:26.388628
59	1	\N	72	1	2013-10-30 08:19:31.951349	2013-10-30 08:19:31.96824
60	1	\N	73	1	2013-11-09 07:31:48.847879	2013-11-09 07:31:48.869334
61	1	\N	74	1	2013-11-09 07:34:08.539004	2013-11-09 07:34:08.562433
62	1	\N	75	1	2013-11-09 07:35:46.727365	2013-11-09 07:35:46.76176
63	1	\N	76	1	2013-11-09 07:37:06.754694	2013-11-09 07:37:06.769237
64	1	\N	77	1	2013-11-09 07:38:10.586645	2013-11-09 07:38:10.60089
65	1	\N	78	1	2013-11-09 07:40:44.358871	2013-11-09 07:40:44.372506
66	1	\N	79	1	2013-11-09 07:42:03.134445	2013-11-09 07:42:03.181626
67	1	\N	80	1	2013-11-12 07:03:26.244043	2013-11-12 07:03:26.267966
68	1	\N	81	1	2013-11-12 07:05:40.431437	2013-11-12 07:05:40.44892
69	1	\N	82	1	2013-11-12 07:06:58.522766	2013-11-12 07:06:58.550798
70	1	\N	83	1	2013-11-13 09:15:56.770582	2013-11-13 09:15:56.792641
71	1	\N	84	1	2013-11-13 09:17:37.190468	2013-11-13 09:17:37.214489
72	1	\N	85	1	2013-11-13 09:26:54.202696	2013-11-13 09:26:54.222389
73	1	\N	86	1	2013-11-13 09:29:55.432003	2013-11-13 09:29:55.451754
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 76, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id) FROM stdin;
39	1024	Scorp Enterprises	f	1024	MINNATH JALANDAR KANCHAR	BUSINESS	022-25766774 / 9820425872/9730917787	HIRANANDANI BUILDERS OLYMPIA 6  FLOOR, CENTRAL AVENUE HIRANANDANI GARDEN, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	minnath-jalandar-kanchar	19.1253004000000004	72.9076668999999953	verified	79	2013-10-26 07:17:03.809375	2013-10-26 07:17:03.809375	HIRANANDANI BUILDERS OLYMPIA	\N	\N	1
41	1026	Scorp Enterprises	f	1026	Mr.RUCHIR BHATNAGAR	BUSINESS	9920096860	COLGATE PALMOLINE INDIA LTD.COLGATE RESEARCH CENTRE,MAIN STREET,HIRANANDANI GARDENS ,DEPTCUSTOMER DEVELOPMENT,MUMBAI-400076.\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-ruchir-bhatnagar	19.1253004000000004	72.9076668999999953	verified	81	2013-10-28 06:03:47.560023	2013-10-28 06:03:47.560023	COLGATE PALMOLINE INDIA LTD.	\N	\N	1
33	1018	Scorp Enterprises	f	1018	Mr.SIDDHARTH AJITSINGH JANGHU.	BUSINESS	61260165 / 8879952307	J.P.MORGAN SERVICES INDIA P LTD.GATE-5,L & T BUSINESS PARK,SAKIVIHAR ROAD,POWAI,MUMBAI-400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	mr-siddharth-ajitsingh-janghu	19.1063666999999988	72.8899466000000018	verified	73	2013-10-26 07:06:43.777144	2013-10-26 07:06:43.777144	J.P.MORGAN SERVICES INDIA P LTD	\N	\N	1
34	1019	Scorp Enterprises	f	1019	MR ARUN ACHUTHAN	BUSINESS	022-61783000/ 9920055567	COLGATE GLOBAL BUSINESS SERVICES PVT LTD, 10TH FLOOR, TOWER B, L & T POWAI GATE NO-5, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-arun-achuthan	19.1610316999999988	72.8395173999999912	verified	74	2013-10-26 07:08:23.630354	2013-10-26 07:08:23.630354	COLGATE GLOBAL BUSINESS SERVICES PVT LTD	\N	\N	1
35	1020	Scorp Enterprises	f	1020	Mrs. MADHAVI PRAMOD NIMGALE	BUSINESS	2261268642/ 9820847817	J P  MORGAN SERVICES INDIA, WSS TECHNOLOGY, 3RD FLOOR, VENTURA, POWAI, MUMBAI- 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mrs-madhavi-pramod-nimgale	19.1253004000000004	72.9076668999999953	verified	75	2013-10-26 07:09:45.146598	2013-10-26 07:09:45.146598	J P  MORGAN SERVICES INDIA	\N	\N	1
37	1022	Scorp Enterprises	f	1022	SUDHIR JANARDAN PATIL	BUSINESS	022-30512873/ 9967710850	PETROPAC ENGINEERING INDIA PVT LTD, 7TH FLOOR, VENTURA, CENTRAL AVENUE, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	sudhir-janardan-patil	19.1253004000000004	72.9076668999999953	verified	77	2013-10-26 07:14:26.738627	2013-10-26 07:14:26.738627	PETROPAC ENGINEERING INDIA PVT LTD	\N	\N	1
32	1017	Scorp Enterprises	f	1017	DEEPAK GATUM JADHAV	BUSINESS	9890772032	YASHWANT CHANDJI SAWANT VIDYAMANDIR , UTKARSH NAGAR, JM RD, NR SHIV TEMPLE, BHANDUP\r\n	INDIA	MAHARASHTRA	mumbai	57	deepak-gatum-jadhav	19.1499009999999998	72.9311340000000001	verified	72	2013-10-26 07:04:30.074171	2013-10-26 07:04:30.074171	YASHWANT CHANDJI SAWANT VIDYAMANDIR	\N	\N	1
31	1013	Scorp Enterprises	f	1013	MR.ASHEESH SARASWAT	BUSINESS	25728060/9920722869/ 9969543909	KENDRIYA VIDYALAYA SANGTHAN,REGIONAL OFFICE,IIT CAMPUS,POWAI,MUMBAI - 400076 \r\n	INDIA	MAHARASHTRA	mumbai	57	mr-asheesh-saraswat	19.1253004000000004	72.9076668999999953	verified	68	2013-10-26 06:59:23.239248	2013-10-26 06:59:23.239248	KENDRIYA VIDYALAYA SANGTHAN	\N	\N	1
36	1021	Scorp Enterprises	f	1021	Mrs. LEKHA MANOJ NAMBIAR	BUSINESS	9830917337/ 7738140012 	IOT INFRASTRUCTURE & ENERGY SERVICES LTD., PLOT NO Y2, CEAT TYRE ROAD, NEAR RAHUL RAILWAY STATION, BHANDUP WEST, MUMBAI - 400 078\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mrs-lekha-manoj-nambiar	19.0759836999999983	72.8776558999999935	verified	76	2013-10-26 07:11:50.09911	2013-10-26 07:11:50.09911	IOT INFRASTRUCTURE & ENERGY SERVICES LTD.	\N	\N	1
73	1072	Scorp Enterprises	f	1072	SHRI SANTOSH SHIVAJI GAIKWAD	BUSINESS	022-61289700 / 	M/S SUPREME INFRASTRUCTURE INDIA LTD, 94/C PRATAPGAD, OPP IIT MAIN GATE, POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	shri-santosh-shivaji-gaikwad	19.1196772999999993	72.9050809000000015	submitted	128	2013-11-09 07:31:29.420125	2013-11-09 07:31:29.420125	M/S SUPREME INFRASTRUCTURE INDIA LTD	\N	\N	1
29	1011	Scorp Enterprises	f	1011	MR AMIT M SHARMA	BUSINESS	022-66860500/ 9967986959/ 9326486078	CAPGEMINI INDIA PVT LTD, PLANT 2,  BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, CBS MARG, VIKHROLI, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-amit-m-sharma	19.0852663999999983	72.9401508999999919	verified	66	2013-10-21 09:43:41.162139	2013-10-21 09:43:41.162139	CAPGEMINI INDIA PVT LTD	\N	\N	1
27	1009	Scorp Enterprises	f	1009	CHETAN NARAYAN BHATT	BUSINESS	022-710447061/9820726235/9820942417	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	INDIA	MAHARASHTRA	MUMBAI	59	chetan-narayan-bhatt	19.111419999999999	72.9431038000000029	verified	64	2013-10-21 09:40:35.003419	2013-10-21 09:40:35.003419	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	\N	\N	1
25	1006	Scorp Enterprises	f	1006	SUVARNLATA VITTAL TOKE	BUSINESS	022-40443422/ 9967049941	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	INDIA	MAHARASHTRA	MUMBAI	56	suvarnlata-vittal-toke	19.0759836999999983	72.8776558999999935	verified	61	2013-10-21 09:34:00.829659	2013-10-21 09:34:00.829659	ACCENTURE CONSULTANCY SERVICES PVT LTD	\N	\N	1
78	1077	Scorp Enterprises	f	1077	SHAILESH KANHAIYALAL PANDEY	BUSINESS	022-45765999 / 9867782906	OM CLEARING AGENCY ,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	INDIA	MAHARASHTRA	MUMBAI	60	shailesh-kanhaiyalal-pandey	19.1746738999999984	72.9431038000000029	verified	133	2013-11-09 07:40:36.44703	2013-11-09 07:40:36.44703	OM CLEARING AGENCY	\N	\N	1
79	1078	Scorp Enterprises	f	1078	RATNA SHAILESH PANDEY	BUSINESS	022-45765999 / 9867782906	OM CLEARING AGENCY,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	INDIA	MAHARASHTRA	MUMBAI	58	ratna-shailesh-pandey	19.1746738999999984	72.9431038000000029	verified	134	2013-11-09 07:41:53.510237	2013-11-09 07:41:53.510237	OM CLEARING AGENCY	\N	\N	1
74	1073	Scorp Enterprises	f	1073	AKHIL AGGARWAL	BUSINESS	022-404721000 / 9920899321	CRISIL LTD, SECOND FLOOR, KENSIGTON SEZ, WING -A, HIRANANDANI BUSINESS PARK, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	akhil-aggarwal	19.0759836999999983	72.8776558999999935	verified	129	2013-11-09 07:33:01.276727	2013-11-09 07:33:01.276727	CRISIL LTD	\N	\N	1
75	1074	Scorp Enterprises	f	1074	KEVIN D'SOUZA	BUSINESS	022-25700358 / 9702048820/9833857002	POWAI AUTO WORKS, 19, ADISHANKARARCHARYA MARG, OPP PANCH KUTIR BUS STOP, POWAI, OPP SUVARNA TEMPLE, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	kevin-d-souza	19.0759836999999983	72.8776558999999935	verified	130	2013-11-09 07:35:35.868004	2013-11-09 07:35:35.868004	POWAI AUTO WORKS	\N	\N	1
76	1075	Scorp Enterprises	f	1075	MR NAGRAJ DESHPANDE	BUSINESS	66059500 / 9325274930/ 9768133293	WEATHER FORD SYSTEMS SUPPORT, GODREJ IT PARK, P2 BLOCK-B, 4TH FLOOR, PIROJSHANAGAR, VIKHROLI, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-nagraj-deshpande	19.0852663999999983	72.9401508999999919	verified	131	2013-11-09 07:36:59.938258	2013-11-09 07:36:59.938258	WEATHER FORD SYSTEMS SUPPORT	\N	\N	1
77	1076	Scorp Enterprises	f	1076	. Mr. ABHIJIT YASHWANT AMBRE 	BUSINESS	9819227567	MAERSK GLOBAL SERVICES PVT.LTD., 4TH AND 5T FLOOR, PRUDENTIAL BUILDING, CENTRAL AVENUE ROAD, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI- 400076. \r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-abhijit-yashwant-ambre	19.1253004000000004	72.9076668999999953	verified	132	2013-11-09 07:38:02.675367	2013-11-09 07:38:02.675367	MAERSK GLOBAL SERVICES PVT.LTD.	\N	\N	1
82	1084	Scorp Enterprises	f	1084	MR KIRAN VHANTALE	BUSINESS	9619868969	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, LBS MARG, VIKHROLI WEST 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-kiran-vhantale	19.102046399999999	72.9225682999999947	verified	140	2013-11-12 07:06:49.714031	2013-11-12 07:06:49.714031	CAPGEMINI INDIA PVT LTD	\N	\N	1
83	1085	Scorp Enterprises	f	1085	Mr. MANOJKUMAR R KOLLY	BUSINESS	61536027 / 9920062665	CITIUS IT SOLUTIONS PVT LTD., H1/2, SAKI VIHAR ROAD, MUMBAI - 400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	mr-manojkumar-r-kolly	19.1063666999999988	72.8899466000000018	submitted	141	2013-11-13 09:15:46.202035	2013-11-13 09:15:46.202035	Mr. MANOJKUMAR R KOLLY	\N	\N	1
63	1055	Scorp Enterprises	f	1055	MR DILESWERA RAO D ADATALA	BUSINESS	25725000 / 9892882489/ 9892591660	HIRANANDANI LIVING PVT LTD, SIGMA BUILDING, 6TH FLOOR, HIRANANDANI GARDENS, POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-dileswera-rao-d-adatala	19.0759836999999983	72.8776558999999935	verified	110	2013-10-29 08:18:29.60026	2013-10-29 08:18:29.60026	HIRANANDANI LIVING PVT LTD	\N	\N	1
56	1036	Scorp Enterprises	f	1036	RAKESH AGRAWAL	BUSINESS	66860500 / 9967809442 /9987529822	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK C GODREJ IT PARK, GODREJ & BOYCE COMPOUND LBS MARG, VIKHROLI, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	rakesh-agrawal	19.0852663999999983	72.9401508999999919	verified	91	2013-10-28 07:24:54.590555	2013-10-28 07:24:54.590555	CAPGEMINI INDIA PVT LTD	\N	\N	1
52	1033	Scorp Enterprises	f	1033	MRS RUPALI THORAT	BUSINESS	8082050230	TEVAPHARM INDIA PVT LTD,402, OMEGA, HIRANANDANI BUSINESS PARK, NEAR TO BAYER HOUSE, POWAI MUMBAI – 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mrs-rupali-thorat	19.0759836999999983	72.8776558999999935	verified	88	2013-10-28 07:19:47.539004	2013-10-28 07:19:47.539004	TEVAPHARM INDIA PVT LTD	\N	\N	1
53	1034	Scorp Enterprises	f	1034	HIMANSHU D JAIN	BUSINESS	022-67324926 / 9920845617/9920753708	TATA CONSULTANCY SERVICES, KENSINGTON TOWER B WING, 12 FLOOR, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	himanshu-d-jain	19.1253004000000004	72.9076668999999953	verified	89	2013-10-28 07:21:11.441856	2013-10-28 07:21:11.441856	TATA CONSULTANCY SERVICES	\N	\N	1
80	1082	Scorp Enterprises	f	1082	AMARKUMAR PRABHAKAR PANDA	BUSINESS	022-42198800 8879531537/8898552349	SUTLEJ TEXTILE & INDUSTRIES LTD, SOLARIES BLDG NO 1, B-242, 2ND FLR, SOLARIES, SAKI VIHAR RD, POWAI , MUMBAI 72\r\n	INDIA	MAHARASHTRA	MUMBAI	55	amarkumar-prabhakar-panda	19.0759836999999983	72.8776558999999935	submitted	138	2013-11-12 07:03:14.872471	2013-11-12 07:03:14.872471	SUTLEJ TEXTILE & INDUSTRIES LTD	\N	\N	1
54	1032	Scorp Enterprises	f	1032	PRIYANKA BAJAJ	BUSINESS	022-61137000 / 9819824265/9930014265	DELOITTE CONSULTING INDIA PVT LTD, FAIRMONT LEVEL 2, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	priyanka-bajaj	19.1253004000000004	72.9076668999999953	verified	87	2013-10-28 07:22:11.569496	2013-10-28 07:22:11.569496	DELOITTE CONSULTING INDIA PVT LTD	\N	\N	1
40	1025	Scorp Enterprises	f	1025	ANITA PANDA	BUSINESS	9029028549/9773454230/	OFF NM:_____, 1001, A WING, JARDI NE LLOUD THOMPSON PVT LTD, SUPREME BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	anita-panda	19.1253004000000004	72.9076668999999953	verified	80	2013-10-28 06:02:10.491093	2013-10-28 06:02:10.491093	COMPANY NO NAME	\N	\N	1
81	1083	Scorp Enterprises	f	1083	MR SACHIN BODE	BUSINESS	022-40231221 / 9867010154	JAIET AIRCON PVT LTD, GC-1, KARMA STAMBH, LBS MARG, VIKHROLI WEST, MUMBAI 400083\r\n	INDIA	MAHARASHTRA	MUMBAI	59	mr-sachin-bode	19.111419999999999	72.9431038000000029	verified	139	2013-11-12 07:05:31.143714	2013-11-12 07:05:31.143714	JAIET AIRCON PVT LTD	\N	\N	1
84	1086	Scorp Enterprises	f	1086	SUPRATIK CHAKRABORTY (975)	BUSINESS	022-25767721 / 9820103723	DEPT OF COMPUTER SC. & ENGG. IIT BOMBAY, IIT BOMBAY, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	supratik-chakraborty-975	19.1253004000000004	72.9076668999999953	submitted	142	2013-11-13 09:17:27.290501	2013-11-13 09:17:27.290501	IIT BOMBAY	\N	\N	1
85	1087	Scorp Enterprises	f	1087	SATISH SHIVADASAN CHENGATH	BUSINESS	22-41217004 / 9967822236	WNS GLOBAL SERVICES P LTD, GATE 4, GODREJ & BOYCE COMPLEX, VIKHROLI W 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	satish-shivadasan-chengath	19.1091760999999991	72.9194797999999906	submitted	143	2013-11-13 09:26:40.537982	2013-11-13 09:26:40.537982	WNS GLOBAL SERVICES P LTD	\N	\N	1
86	1088	Scorp Enterprises	f	1088	MR YASHAVANT BAVISKAR	BUSINESS	66620566 / 9820286256/ 9833122485	EMERSON PROCESS MANAGEMENT, DELPHI, B WING, 601-603 HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-yashavant-baviskar	19.1253004000000004	72.9076668999999953	submitted	144	2013-11-13 09:29:39.377986	2013-11-13 09:29:39.377986	EMERSON PROCESS MANAGEMENT	\N	\N	1
87	1092	Scorp Enterprises	f	1092	TRUPTI JAIDEEP MAINKAR	BUSINESS	9821539543/9167200067	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD, TRANSOCEAN HOUSE ,LAKE BOULEVARD RD, HIRANANDANI BUSSINESS PARK POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	trupti-jaideep-mainkar	19.1196772999999993	72.9050809000000015	submitted	148	2013-11-13 09:35:18.827369	2013-11-13 09:35:18.827369	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD	\N	\N	1
88	1093	Scorp Enterprises	f	1093	JAYASHRI MAHESH DABHOLKAR	BUSINESS	9820868260	PETROFAC ENGINEERING INDIA P LTD, 7TH FLR, VENTURA CENTRAL AVENUE, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	jayashri-mahesh-dabholkar	19.0759836999999983	72.8776558999999935	submitted	149	2013-11-13 09:37:14.551697	2013-11-13 09:37:14.551697	PETROFAC ENGINEERING INDIA P LTD	\N	\N	1
89	1094	Scorp Enterprises	f	1094	KAPLNATH SAMPAT BUWA	BUSINESS	9890322836/9167708638	L & T CHIYDA LTD, EL DEPARTMENT FRIST FLOOR, NOMURA HIRANANDANI BUSINESS PARK, HIRANANDANI GARDEN POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	kaplnath-sampat-buwa	19.0759836999999983	72.8776558999999935	submitted	150	2013-11-13 09:39:39.572974	2013-11-13 09:39:39.572974	L & T CHIYDA LTD	\N	\N	1
61	1052	Scorp Enterprises	f	1052	MR KUSHAGRA CHITRANSHI 	BUSINESS	022-61268416 / 9167091404/9415527338	J P MORGAN INIDA PVT LTD, 2ND FLOOR, VENTURA BUSINESS TOWER HIRA NANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	mumbai	57	mr-kushagra-chitranshi	19.1253004000000004	72.9076668999999953	verified	107	2013-10-29 08:14:57.489201	2013-10-29 08:14:57.489201	J P MORGAN INIDA PVT LTD	\N	\N	1
65	1057	Scorp Enterprises	f	1057	KRUNAL CHANDRASHEKHER JANI 	BUSINESS	33461570 9821061781	WIPRO TECHNOLOGIES SEZ UNIT 701 7TH FLOOR KENSINGTON A WING HIRANANDANI POWAI  \r\n	INDIA	MAHARASHTRA	MUMBAi	57	krunal-chandrashekher-jani	19.1153797999999995	72.9091435999999931	verified	112	2013-10-29 08:20:59.191449	2013-10-29 08:20:59.191449	WIPRO TECHNOLOGIES SEZ UNIT	\N	\N	1
55	1035	Scorp Enterprises	f	1035	MR PANKAJ SUTAR	BUSINESS	9594409888	THERMO FISHER SCIENTIRIC INDIA LTD, POWAI HIRANANDANI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-pankaj-sutar	19.1253004000000004	72.9076668999999953	verified	90	2013-10-28 07:23:43.845996	2013-10-28 07:23:43.845996	THERMO FISHER SCIENTIRIC INDIA LTD	\N	\N	1
67	1059	Scorp Enterprises	f	1059	LAKSHMI KARTHIK	BUSINESS	33423265 / 9892078887	CRISIL LTD, RATINGS 4TH FLOOR, CRISIL HOUSE, HIRANDANI B PARK, POWAI, BAYER HOUSE, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	lakshmi-karthik	19.1253004000000004	72.9076668999999953	verified	114	2013-10-30 08:04:05.940941	2013-10-30 08:04:05.940941	CRISIL LTD	\N	\N	1
71	1067	Scorp Enterprises	f	1067	MR SEJAL GUNVATRAI DESAI	BUSINESS	9925038391/9925032391	GODREJ CONSUMER PRODUCTS LTD, PIROJSHAYAGAR, EASTERN EXPRESS HIGHWAY, VIKHROLI E, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-sejal-gunvatrai-desai	19.0852663999999983	72.9401508999999919	verified	122	2013-10-30 08:18:15.542985	2013-10-30 08:18:15.542985	GODREJ CONSUMER PRODUCTS LTD	\N	\N	1
72	1068	Scorp Enterprises	f	1068	SHRI DIGAT DILIPBHAI TRIVEDI	BUSINESS	022-30519400 / 9820608212	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	shri-digat-dilipbhai-trivedi	19.1063666999999988	72.8899466000000018	verified	123	2013-10-30 08:19:24.169603	2013-10-30 08:19:24.169603	INDIAN REGISTER OF SHIPPING	\N	\N	1
59	1047	Scorp Enterprises	f	1047	BARAGBHAI MORARJI PATEL	BUSINESS	9819700479	PROCEM CONSULTANTS, LL2, GURUKUL CHSL, LOKHANDIPADA, PANVEL (SELF EMPLOYED: AGENCY OF BIRLA SUNLIFE)\r\n	INDIA	MAHARASHTRA	RAIGAD	94	baragbhai-morarji-patel	18.5157519000000015	73.1821623000000017	verified	102	2013-10-28 07:42:48.123083	2013-10-28 07:42:48.123083	PROCEM CONSULTANTS	\N	\N	1
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 89, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
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
1	18	1	t	t	2013-10-30	17:48:12	celina anthony	mother&law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Tol---home\r\nAmt---40lac	\N	Accept	2013-10-30 12:21:27.319458	2013-10-30 12:21:27.319458	\N	1975-09-17	abzpl5461e	\N		100903854242(reliabce)
3	16	1	t	t	2013-10-30	20:17:02	self	self	2	\N	others	Married	4	2	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:50pm	\N	Tol--home\r\nAmt--1core	\N	Accept	2013-10-30 14:50:40.15158	2013-10-30 14:50:40.15158	\N	1983-05-06	apbpk7784s	\N		
4	18	1	t	t	2013-10-30	20:29:17	celina anthony	mother&law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:10pm	\N	Tol--home\r\nAmt--40lac\r\n	\N	Accept	2013-10-30 15:02:52.970375	2013-10-30 15:02:52.970375	\N	1975-09-17	abzpl5461e	\N		100903854242(reliabce)
5	18	1	t	t	2013-10-30	20:29:17	celina anthony	mother&law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:10pm	\N	Tol--home\r\nAmt--40lac\r\n	\N	Accept	2013-10-30 15:04:16.358532	2013-10-30 15:04:16.358532	\N	1975-09-17	abzpl5461e	\N		100903854242(reliabce)
6	18	1	t	t	2013-10-30	20:29:17	celina anthony	mother&law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:10pm	\N	Tol--home\r\nAmt--40lac\r\n	\N	Accept	2013-10-30 15:05:18.843516	2013-10-30 15:05:18.843516	\N	1975-09-17	abzpl5461e	\N		100903854242(reliabce)
8	18	1	t	t	2013-11-07	16:57:05	 SALEENA 	mother in law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	4.00 pm	\N	TYPE OF LOAN HOME AMNT 46 LAC	\N	Accept	2013-11-07 11:30:25.680351	2013-11-07 11:30:25.680351	\N	1975-11-17	ABZPL5461E	\N		100903854242
9	18	1	t	t	2013-11-07	17:00:29	 SALEENA 	mother in law	15	\N	Post Graduate	Married	5	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	4.00 pm	\N		\N	Accept	2013-11-07 11:30:54.012315	2013-11-07 11:30:54.012315	\N	1975-11-17	ABZPL5461E	\N		100903854242
10	17	1	t	t	2013-11-07	17:01:03	self		9	Company Accomodation	Graduate	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	5.00 pm	\N	,TYPE OF LOAN CAR LOAN AMNT IS 7.22 LAC	\N	Accept	2013-11-07 11:33:46.892451	2013-11-07 11:33:46.892451	\N	1960-06-01	ACUPP4953B	\N		
11	16	1	t	t	2013-11-07	17:03:52	SELF		2	\N	others	Married	4	2	\N	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1.50 pm	\N	QUALIFICATION C.A.,\r\nTYPE OF LOAN HOME AMNT 1 CR.,\r\n	\N	Accept	2013-11-07 11:36:09.943439	2013-11-07 11:36:09.943439	\N	1983-05-06	APBPK7784S	\N		
12	12	1	t	\N	2013-11-07	17:06:13			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	CUSTOMER   TO SHIFTED PUNE 2 MONT\r\n	\N	refer to bank	2013-11-07 11:36:53.32792	2013-11-07 11:36:53.32792	\N	2013-11-07		\N		
2	16	1	t	t	2013-11-07	17:13:16	self	self	2	\N	others	Married	4	2	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N	1:50pm	\N		\N	Accept	2013-10-30 12:24:07.297862	2013-11-07 11:43:24.005181	\N	1993-05-06	apbpk7784s	\N		
7	14	3	t	t	2013-11-07	17:13:52	SELF		20	Rented	others	Married	2	1	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	other	Easy	pakka	---\n- others\n- ''\n	\N	sofa		\N	\N	4.30 PM	\N	QUALIFICATION M.B.A.,\r\nDOCUMENT VERIFY RENTED AGREEMENT EXPIRY DATE-DEC 2013	\N	Accept	2013-11-07 05:21:56.536522	2013-11-07 11:45:51.201685	\N	1985-06-25		\N		
13	18	1	t	\N	2013-11-07	17:16:28			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	\N	2013-11-07 11:46:34.559497	2013-11-07 11:46:34.559497	\N	2013-11-07		\N		
14	18	1	\N	\N	2013-11-07	17:16:37			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	Accept	2013-11-07 11:46:41.945745	2013-11-07 11:46:41.945745	\N	2013-11-07		\N		
15	14	3	\N	\N	2013-11-07	17:19:19			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	Accept	2013-11-07 11:49:25.327854	2013-11-07 11:49:25.327854	\N	2013-11-07		\N		
16	20	1	t	t	2013-11-11	14:17:44	self	self	2	\N	Graduate	Married	3	1	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:30pm	\N	Telephone Bill--1051434614(mtnl)\r\nTol--home\r\nAmt--1core\r\n	\N	Accept	2013-11-11 08:51:14.214566	2013-11-11 08:51:14.214566	\N	1966-04-29	btyps6855b	\N		
18	19	1	\N	\N	2013-11-13	10:15:08			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	Accept	2013-11-13 04:45:21.795411	2013-11-13 04:45:21.795411	\N	2013-11-13		\N		
19	19	1	t	t	2013-11-13	10:15:37	self		15	\N	proffessional	Married	3	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	Ration Card 2445566	\N	Accept	2013-11-13 04:47:21.244274	2013-11-13 04:47:21.244274	\N	1964-04-13		\N		
17	19	1	t	t	2013-11-13	10:20:14	self	self	50	\N	others	Married	5	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N	1:30pm	\N		\N	Accept	2013-11-12 09:16:01.44685	2013-11-13 04:50:22.463112	\N	1967-11-18	aygpm0589c	\N		000092290166
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 19, true);


--
-- Data for Name: co_applicant_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_verifications (id, co_applicant_id, user_id, customer_id, tab_id, created_at, updated_at) FROM stdin;
16	19	1	\N	1	2013-11-11 07:43:20.886743	2013-11-11 07:43:20.907669
17	20	1	\N	1	2013-11-11 07:45:11.843906	2013-11-11 07:45:11.861181
18	22	1	\N	1	2013-11-13 09:32:59.353442	2013-11-13 09:32:59.378169
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 18, true);


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
19	    Avinash Arvind Mahadalkar 	Scorp Enterprises	f	1079	98209249381	INDIA	maharashtra	MUMBAI	avinash-arvind-mahadalkar	submitted	135	ROOM NO2, VISHNU VAITY CHAWL, L.T. ROAD, MULUND (EAST) MUMBAI-400081\r\n	19.1602277000000001	72.972630499999994	RESIDENTIAL	2013-11-11 07:43:10.552065	2013-11-11 07:43:10.552065	\N	1079	59	\N	\N
20	PUSHPA SINGH( 968)	Scorp Enterprises	f	1081	7738999486	INDIA	maharashtra	MUMBAI	pushpa-singh-968	submitted	137	A402, JALVAYU VIHAR SECTOR A, ADI SHANKARACHARYA RD, POWAI ( NXT TO SM SHETTY SCHOOL) POWAI\r\n	19.1196772999999993	72.9050809000000015	RESIDENTIAL	2013-11-11 07:45:03.733318	2013-11-11 07:45:03.733318	\N	1081	57	\N	\N
21	BINDHULAKSHMI PATTADATH (975)	Scorp Enterprises	f	1086	022-25768721 / 9969460084	INDIA	maharashtra	MUMBAI	bindhulakshmi-pattadath-975	ready_for_verification	21	B-52, BUILDING NO 13, LAKE SIDE AREA, IIT POWAI, MUMBAI 400076\r\n	19.1196376000000008	72.9029560000000032	RESIDENTIAL	2013-11-13 09:18:24.801465	2013-11-13 09:21:07.369981	\N	1086	57	\N	\N
22	RAJESH K VARMA (972)	Scorp Enterprises	f	1090	022-28579010 / 9004059010	INDIA	maharashtra	MUMBAI	rajesh-k-varma-972	submitted	146	303, PANCH SMRUTI PACH SRISHTI COMPLEX, CHANDIVALI POWAI, NEAR S M SHETTY SCHOOL, MUMBAI 72\r\n	19.0759836999999983	72.8776558999999935	RESIDENTIAL	2013-11-13 09:32:45.528533	2013-11-13 09:32:45.528533	\N	1090	55	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 22, true);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
8	61	\N	\N	2013-10-21 11:07:57.920378	2013-10-21 11:07:57.920378	8
9	59	\N	\N	2013-10-21 11:43:45.531184	2013-10-21 11:43:45.531184	9
10	59	\N	\N	2013-10-21 13:29:58.54236	2013-10-21 13:29:58.54236	10
11	59	\N	\N	2013-10-21 13:30:07.809584	2013-10-21 13:30:07.809584	11
12	59	\N	\N	2013-10-21 13:30:20.473566	2013-10-21 13:30:20.473566	12
13	57	\N	\N	2013-10-21 14:04:06.904627	2013-10-21 14:04:06.904627	13
14	87	\N	\N	2013-10-29 05:43:32.068778	2013-10-29 05:43:32.068778	14
15	83	\N	\N	2013-10-29 05:48:18.33151	2013-10-29 05:48:18.33151	15
16	107	\N	\N	2013-10-29 09:25:12.564863	2013-10-29 09:25:12.564863	16
17	108	\N	\N	2013-10-29 09:27:28.800069	2013-10-29 09:27:28.800069	17
18	116	\N	\N	2013-10-30 12:13:07.108746	2013-10-30 12:13:07.108746	18
19	119	\N	\N	2013-10-30 12:17:44.036375	2013-10-30 12:17:44.036375	19
20	114	\N	\N	2013-10-30 12:26:48.765792	2013-10-30 12:26:48.765792	20
21	118	\N	\N	2013-10-30 14:35:40.983875	2013-10-30 14:35:40.983875	21
23	100	\N	\N	2013-11-07 05:12:50.450901	2013-11-07 05:12:50.450901	23
24	99	\N	\N	2013-11-07 05:15:56.487863	2013-11-07 05:15:56.487863	24
25	97	\N	\N	2013-11-07 05:18:32.257441	2013-11-07 05:18:32.257441	25
26	117	\N	\N	2013-11-07 11:02:52.156773	2013-11-07 11:02:52.156773	26
27	106	\N	\N	2013-11-07 11:03:51.97639	2013-11-07 11:03:51.97639	27
28	105	\N	\N	2013-11-07 11:04:29.17181	2013-11-07 11:04:29.17181	28
29	104	\N	\N	2013-11-07 11:05:13.205533	2013-11-07 11:05:13.205533	29
30	86	\N	\N	2013-11-07 11:05:48.296415	2013-11-07 11:05:48.296415	30
31	85	\N	\N	2013-11-07 11:06:19.416997	2013-11-07 11:06:19.416997	31
32	76	\N	\N	2013-11-07 11:09:22.705224	2013-11-07 11:09:22.705224	32
33	75	\N	\N	2013-11-07 11:12:38.395683	2013-11-07 11:12:38.395683	33
34	74	\N	\N	2013-11-07 11:16:15.315724	2013-11-07 11:16:15.315724	34
35	73	\N	\N	2013-11-07 11:16:51.443642	2013-11-07 11:16:51.443642	35
36	72	\N	\N	2013-11-07 11:19:33.085689	2013-11-07 11:19:33.085689	36
37	70	\N	\N	2013-11-07 11:22:34.708713	2013-11-07 11:22:34.708713	37
38	69	\N	\N	2013-11-07 11:24:47.318805	2013-11-07 11:24:47.318805	38
39	68	\N	\N	2013-11-07 11:27:02.035969	2013-11-07 11:27:02.035969	39
40	124	\N	\N	2013-11-11 05:37:46.38955	2013-11-11 05:37:46.38955	40
41	137	\N	\N	2013-11-11 08:55:56.468406	2013-11-11 08:55:56.468406	41
42	136	\N	\N	2013-11-11 09:14:24.760084	2013-11-11 09:14:24.760084	42
43	135	\N	\N	2013-11-12 09:19:01.061914	2013-11-12 09:19:01.061914	43
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 43, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
108	1	109	2	2013-10-29 08:16:27.106576	2013-10-29 08:16:27.130414	\N	\N	\N
140	1	140	2	2013-11-12 07:06:14.016336	2013-11-12 07:06:14.042743	\N	\N	\N
56	1	57	1	2013-10-21 09:28:10.590337	2013-10-21 09:28:10.601232	\N	\N	\N
58	1	59	1	2013-10-21 09:30:34.777364	2013-10-21 09:30:34.798653	\N	\N	\N
141	1	141	1	2013-11-13 09:15:09.515669	2013-11-13 09:15:09.536909	\N	\N	\N
60	1	61	1	2013-10-21 09:33:13.499189	2013-10-21 09:33:13.515465	\N	\N	\N
109	1	110	2	2013-10-29 08:17:39.184527	2013-10-29 08:17:39.196022	\N	\N	\N
63	1	64	2	2013-10-21 09:39:29.993873	2013-10-21 09:39:30.010421	\N	\N	\N
64	1	66	2	2013-10-21 09:43:02.507305	2013-10-21 09:43:02.526359	\N	\N	\N
142	1	142	1	2013-11-13 09:16:42.545755	2013-11-13 09:16:42.557781	\N	\N	\N
67	1	68	1	2013-10-26 06:58:36.505321	2013-10-26 06:58:36.52448	\N	\N	\N
68	1	69	1	2013-10-26 07:00:09.69147	2013-10-26 07:00:09.711498	\N	\N	\N
69	1	70	1	2013-10-26 07:00:57.858872	2013-10-26 07:00:57.874251	\N	\N	\N
71	1	72	1	2013-10-26 07:04:34.012738	2013-10-26 07:04:34.028796	\N	\N	\N
72	1	73	1	2013-10-26 07:06:00.891876	2013-10-26 07:06:00.913444	\N	\N	\N
73	1	74	1	2013-10-26 07:07:31.223828	2013-10-26 07:07:31.236708	\N	\N	\N
74	1	75	1	2013-10-26 07:09:04.198849	2013-10-26 07:09:04.215616	\N	\N	\N
75	1	76	1	2013-10-26 07:11:17.049148	2013-10-26 07:11:17.06519	\N	\N	\N
76	1	77	2	2013-10-26 07:13:45.190169	2013-10-26 07:13:45.208896	\N	\N	\N
143	1	143	2	2013-11-13 09:25:29.643198	2013-11-13 09:25:29.668602	\N	\N	\N
78	1	79	2	2013-10-26 07:16:27.264277	2013-10-26 07:16:27.289045	\N	\N	\N
79	1	80	2	2013-10-28 06:01:02.743564	2013-10-28 06:01:02.773175	\N	\N	\N
80	1	81	2	2013-10-28 06:03:14.320565	2013-10-28 06:03:14.34012	\N	\N	\N
81	1	82	2	2013-10-28 06:04:26.358726	2013-10-28 06:04:26.380427	\N	\N	\N
82	1	83	1	2013-10-28 06:41:27.29254	2013-10-28 06:41:27.359661	\N	\N	\N
83	1	84	2	2013-10-28 07:01:58.965338	2013-10-28 07:01:58.988801	\N	\N	\N
84	1	85	1	2013-10-28 07:14:25.224373	2013-10-28 07:14:25.242583	\N	\N	\N
85	1	86	1	2013-10-28 07:16:32.506867	2013-10-28 07:16:32.531123	\N	\N	\N
86	1	87	1	2013-10-28 07:17:13.133208	2013-10-28 07:17:13.151076	\N	\N	\N
87	1	88	2	2013-10-28 07:19:20.799345	2013-10-28 07:19:20.822295	\N	\N	\N
88	1	89	2	2013-10-28 07:20:33.550893	2013-10-28 07:20:33.578703	\N	\N	\N
89	1	90	2	2013-10-28 07:23:15.128166	2013-10-28 07:23:15.15135	\N	\N	\N
90	1	91	2	2013-10-28 07:24:19.051466	2013-10-28 07:24:19.074467	\N	\N	\N
144	1	144	2	2013-11-13 09:28:50.499038	2013-11-13 09:28:50.520893	\N	\N	\N
145	1	145	1	2013-11-13 09:30:59.415328	2013-11-13 09:30:59.441354	\N	\N	\N
146	1	146	1	2013-11-13 09:31:43.965084	2013-11-13 09:31:43.982627	\N	\N	\N
96	1	97	3	2013-10-28 07:33:37.967282	2013-10-28 07:33:37.989158	\N	\N	\N
98	1	99	3	2013-10-28 07:37:02.036021	2013-10-28 07:37:02.056444	\N	\N	\N
99	1	100	3	2013-10-28 07:39:47.129779	2013-10-28 07:39:47.150571	\N	\N	\N
147	1	147	1	2013-11-13 09:33:50.45648	2013-11-13 09:33:50.489206	\N	\N	\N
101	1	102	2	2013-10-28 07:42:05.646306	2013-10-28 07:42:05.670154	\N	\N	\N
102	1	103	2	2013-10-29 07:40:56.500146	2013-10-29 07:40:56.533571	\N	\N	\N
103	1	104	1	2013-10-29 08:12:23.984692	2013-10-29 08:12:24.00214	\N	\N	\N
104	1	105	1	2013-10-29 08:12:54.391372	2013-10-29 08:12:54.405812	\N	\N	\N
105	1	106	1	2013-10-29 08:13:24.305139	2013-10-29 08:13:24.327863	\N	\N	\N
106	1	107	1	2013-10-29 08:14:00.861102	2013-10-29 08:14:00.893431	\N	\N	\N
107	1	108	1	2013-10-29 08:15:44.819055	2013-10-29 08:15:44.837031	\N	\N	\N
111	1	112	2	2013-10-29 08:20:13.822812	2013-10-29 08:20:13.850361	\N	\N	\N
113	1	114	1	2013-10-30 08:03:22.85036	2013-10-30 08:03:22.882728	\N	\N	\N
114	1	115	2	2013-10-30 08:05:41.693841	2013-10-30 08:05:41.709799	\N	\N	\N
115	1	116	1	2013-10-30 08:11:34.278244	2013-10-30 08:11:34.302044	\N	\N	\N
116	1	117	1	2013-10-30 08:12:11.065003	2013-10-30 08:12:11.092306	\N	\N	\N
117	1	118	1	2013-10-30 08:13:28.800827	2013-10-30 08:13:28.819084	\N	\N	\N
118	1	119	1	2013-10-30 08:14:12.701126	2013-10-30 08:14:12.719328	\N	\N	\N
148	1	148	2	2013-11-13 09:34:41.372313	2013-11-13 09:34:41.398767	\N	\N	\N
121	1	122	2	2013-10-30 08:17:41.087127	2013-10-30 08:17:41.106367	\N	\N	\N
122	1	123	2	2013-10-30 08:18:53.228847	2013-10-30 08:18:53.263261	\N	\N	\N
123	1	124	1	2013-11-09 07:26:29.182512	2013-11-09 07:26:29.204187	\N	\N	\N
124	1	125	1	2013-11-09 07:27:38.116523	2013-11-09 07:27:38.13891	\N	\N	\N
149	1	149	2	2013-11-13 09:36:27.137077	2013-11-13 09:36:27.149101	\N	\N	\N
126	1	127	1	2013-11-09 07:29:59.927655	2013-11-09 07:29:59.946458	\N	\N	\N
127	1	128	2	2013-11-09 07:30:37.919481	2013-11-09 07:30:37.935597	\N	\N	\N
128	1	129	2	2013-11-09 07:32:23.185805	2013-11-09 07:32:23.220324	\N	\N	\N
129	1	130	2	2013-11-09 07:34:42.626606	2013-11-09 07:34:42.647018	\N	\N	\N
130	1	131	2	2013-11-09 07:36:21.99468	2013-11-09 07:36:22.013956	\N	\N	\N
131	1	132	2	2013-11-09 07:37:34.832108	2013-11-09 07:37:34.843113	\N	\N	\N
132	1	133	2	2013-11-09 07:39:30.517725	2013-11-09 07:39:30.542293	\N	\N	\N
133	1	133	2	2013-11-09 07:39:54.835986	2013-11-09 07:39:54.861015	\N	\N	\N
134	1	134	2	2013-11-09 07:41:12.597029	2013-11-09 07:41:12.612591	\N	\N	\N
135	1	135	1	2013-11-11 07:42:35.197656	2013-11-11 07:42:35.217583	\N	\N	\N
136	1	136	1	2013-11-11 07:43:57.046795	2013-11-11 07:43:57.064582	\N	\N	\N
137	1	137	1	2013-11-11 07:44:31.060336	2013-11-11 07:44:31.082467	\N	\N	\N
138	1	138	2	2013-11-12 07:02:23.666914	2013-11-12 07:02:23.692966	\N	\N	\N
139	1	139	2	2013-11-12 07:04:49.15038	2013-11-12 07:04:49.164038	\N	\N	\N
150	1	150	2	2013-11-13 09:38:17.593237	2013-11-13 09:38:17.603347	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 150, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
79	1024	Scorp Enterprises	1024	MINNATH JALANDAR KANCHAR	13+++	112	\N	6	2013-10-26 07:16:23.355153	2013-10-26 07:16:23.355153	minnath-jalandar-kanchar	19.0966553999999995	73.0073196000000166	\N	022-25766774	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
72	1017	Scorp Enterprises	1017	DEEPAK GATUM JADHAV	12	1	\N	1	2013-10-26 07:03:43.26649	2013-10-26 07:03:43.26649	deepak-gatum-jadhav	19.0890483000000017	73.0028914999999898	\N	9890772032	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
105	1050	Scorp Enterprises	1050	SUDHIR NAGESH BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:12:51.697836	2013-10-29 08:12:51.697836	sudhir-nagesh-bailur	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
104	1049	Scorp Enterprises	1049	ADITYA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:12:21.056654	2013-10-29 08:12:21.056654	aditya-sudhir-bailur--2	19.1602277000000001	72.972630499999994	\N	9552519160/9920889688	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
70	1015	Scorp Enterprises	1015	HEMANT SHIRKE	"B703 NAMDEV APARTMENT\r\nMITHAGHAR ROAD MULUND EAST\r\nNEAR VPM HIGH SCHOOL\r\nMUMBAI-400081\r\n"\r\n		\N	59	2013-10-26 07:00:53.248497	2013-10-26 07:00:53.248497	hemant-shirke	19.0759836999999983	72.8776558999999935	\N	9930461626	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
76	1021	Scorp Enterprises	1021	Mrs. LEKHA MANOJ NAMBIAR	123333		\N	6	2013-10-26 07:11:12.998798	2013-10-26 07:11:12.998798	mrs-lekha-manoj-nambiar	19.3504648999999986	72.9168230000000079	\N	61524938/ 9830917337/ 7738140012 	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
69	1014	Scorp Enterprises	1014	SHRI SUJITH KHOCHARE 	"A-801 , PATIDAR COMPLEX, KANNAMWAR NAGAR-02\r\nVIKHROLI EAST , MUMBAI -400083\r\n"\r\n		\N	59	2013-10-26 07:00:06.753182	2013-10-26 07:00:06.753182	shri-sujith-khochare	19.0759836999999983	72.8776558999999935	\N	9769976889	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
68	1013	Scorp Enterprises	1013	MR.ASHEESH SARASWAT	23/24,4TH FLOOR,JAMUNA BLDG,KVS COMPLEX,NCH COLONY, KANJUR MARG (WEST),MUMBAI - 400078 \r\n		\N	58	2013-10-26 06:58:33.460754	2013-10-26 06:58:33.460754	mr-asheesh-saraswat	19.1520170999999984	72.9165265999999974	\N	9920722869/ 9969543909	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
77	1022	Scorp Enterprises	1022	SUDHIR JANARDAN PATIL	11222		\N	6	2013-10-26 07:13:40.195385	2013-10-26 07:13:40.195385	sudhir-janardan-patil	19.3504648999999986	72.9168230000000079	\N	022-30512873	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
83	1028	Scorp Enterprises	1028	Mr.ANURANJAN KUMAR	FLAT-L-66, POWAI JALVAYU VIHAR,HIRANANDANI POWAI,TYPE-C-400076\r\n		\N	57	2013-10-28 06:41:12.476453	2013-10-28 06:41:12.476453	mr-anuranjan-kumar--2	19.1253004000000004	72.9076668999999953	\N	9833921883	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
91	1036	Scorp Enterprises	1036	RAKESH AGRAWAL	111	11	\N	3	2013-10-28 07:24:14.142667	2013-10-28 07:24:14.142667	rakesh-agrawal	19.2060974999999985	72.9825237000000016	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
100	1045	Scorp Enterprises	1045	MR BHUSHAN P TARADE	A2 SAI AMEYA CHS, PLOT NO 28, SECTOR NO 12, OPP TULSI GAGAN CHS, KHARGHAR 410210\r\n		\N	92	2013-10-28 07:39:40.766018	2013-10-28 07:39:40.766018	mr-bhushan-p-tarade	19.0258734999999994	73.0591591000000022	\N	9870022377/ 9892648404	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f
99	1044	Scorp Enterprises	1044	MR HARERAM SHARMA	FLAT NO 302, RAMESHWAR SADAN, PLOT NO 29, SECTOR 18, KAMOTHE, NAVI MUMBAI 410209\r\n		\N	92	2013-10-28 07:36:19.802421	2013-10-28 07:36:19.802421	mr-hareram-sharma	19.0330487999999995	73.0296625000000006	\N	9820875076/ 9833883968	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f
97	1042	Scorp Enterprises	1042	MR ARUN ACHUTHAN	FLAT NO A-301, SAI SHASTRA, SECTOR 11, PLOT NO 27, KHARGHAR, NAVI MUMBAI\r\n		\N	94	2013-10-28 07:33:33.576278	2013-10-28 07:33:33.576278	mr-arun-achuthan--3	19.0330487999999995	73.0296625000000006	\N	9920055567/ 27743952	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f
75	1020	Scorp Enterprises	1020	Mrs. MADHAVI PRAMOD NIMGALE	11233		\N	2	2013-10-26 07:09:01.568799	2013-10-26 07:09:01.568799	mrs-madhavi-pramod-nimgale	19.3504648999999986	72.9168230000000079	\N	2261268642	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
102	1047	Scorp Enterprises	1047	BARAGBHAI MORARJI PATEL	1122	1	\N	2	2013-10-28 07:42:00.746635	2013-10-28 07:42:00.746635	baragbhai-morarji-patel	19.3504648999999986	72.9168230000000079	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
74	1019	Scorp Enterprises	1019	MR ARUN ACHUTHAN	1233		\N	5	2013-10-26 07:07:28.548324	2013-10-26 07:07:28.548324	mr-arun-achuthan	19.3504648999999986	72.9168230000000079	\N	022-61783000	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
73	1018	Scorp Enterprises	1018	Mr.SIDDHARTH AJITSINGH JANGHU.	122		\N	4	2013-10-26 07:05:55.540306	2013-10-26 07:05:55.540306	mr-siddharth-ajitsingh-janghu	19.3504648999999986	72.9168230000000079	\N	61260165	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
85	1030	Scorp Enterprises	1030	ADITYA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-28 07:14:21.845266	2013-10-28 07:14:21.845266	aditya-sudhir-bailur	19.1602277000000001	72.972630499999994	\N	9552519160/9920889688	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
88	1033	Scorp Enterprises	1033	MRS RUPALI THORAT	1111		\N	1	2013-10-28 07:19:16.999945	2013-10-28 07:19:16.999945	mrs-rupali-thorat	19.3504648999999986	72.9168230000000079	\N	8082050230	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
138	1082	Scorp Enterprises	1082	AMARKUMAR PRABHAKAR PANDA	no verification res		\N	2	2013-11-12 07:02:15.01735	2013-11-12 07:02:15.01735	amarkumar-prabhakar-panda	19.0759836999999983	72.8776558999999935	\N	022-42198800	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
57	1002	Scorp Enterprises	1002	MR BIJAYKUMAR SRIDHARDAS KAPALI	B-1/3, P AND T COLONY, P K ROAD, NEAR TELEPHONE EXCHANGE, MULUND WEST, MUMBAI 400080\r\n		\N	59	2013-10-21 09:28:06.43482	2013-10-21 09:28:06.43482	mr-bijaykumar-sridhardas-kapali	19.1694850000000017	72.9490093999999942	\N	9967996073/ 8082098877/25913691	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
86	1031	Scorp Enterprises	1031	SUCHETA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-28 07:16:29.851414	2013-10-28 07:16:29.851414	sucheta-sudhir-bailur	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
64	1009	Scorp Enterprises	1009	CHETAN NARAYAN BHATT	1	1	\N	1	2013-10-21 09:39:22.310059	2013-10-21 09:39:22.310059	chetan-narayan-bhatt	19.1865108999999983	72.9541766999999908	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
66	1011	Scorp Enterprises	1011	MR AMIT M SHARMA	22	1	\N	1	2013-10-21 09:42:54.406363	2013-10-21 09:42:54.406363	mr-amit-m-sharma	17.6568837999999992	73.3136664000000025	\N	1	submitted	\N	MAHARASHTRA		INDIA	\N	RESIDENTIAL	f
80	1025	Scorp Enterprises	1025	ANITA PANDA	123	1	\N	1	2013-10-28 06:00:56.758091	2013-10-28 06:00:56.758091	anita-panda	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
61	1006	Scorp Enterprises	1006	SUVARNLATA VITTAL TOKE	A 204, BLDG 2, KESHAV SRISHTI HSG SOC LTD, LBS MARG ,MURLIMAL COMP, BHANDUP WEST, NR WAMAN HARI PETE JEWELLERS\r\n		\N	55	2013-10-21 09:33:10.463979	2013-10-21 09:33:10.463979	suvarnlata-vittal-toke	19.0759836999999983	72.8776558999999935	\N	9967049941	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
59	1004	Scorp Enterprises	1004	SANTOSH SHRIKRISHNA MANJREKAR	R-16, WAGHESHWAR NIWAS, KOKAN NAGAR, J M ROAD, BHANDUP WEST, MUMBAI 400078\r\n		\N	58	2013-10-21 09:30:31.08409	2013-10-21 09:30:31.08409	santosh-shrikrishna-manjrekar	19.1520170999999984	72.9165265999999974	\N	9987268684	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
81	1026	Scorp Enterprises	1026	Mr.RUCHIR BHATNAGAR	1234	1	\N	1	2013-10-28 06:03:08.809754	2013-10-28 06:03:08.809754	mr-ruchir-bhatnagar	15.8387861999999995	73.7681340999999975	\N	1	submitted	\N	MAHARASHTRA	123	INDIA	\N	RESIDENTIAL	f
82	1027	Scorp Enterprises	1027	Mr.SIDDHARTH AJITSINGH JANGHU.	12345	1	\N	2	2013-10-28 06:04:21.432191	2013-10-28 06:04:21.432191	mr-siddharth-ajitsingh-janghu--2	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
84	1029	Scorp Enterprises	1029	MR ARUN ACHUTHAN	111	1	\N	2	2013-10-28 07:01:55.136037	2013-10-28 07:01:55.136037	mr-arun-achuthan--2	19.2060974999999985	72.9825237000000016	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
106	1051	Scorp Enterprises	1051	SUCHETA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:13:22.17412	2013-10-29 08:13:22.17412	sucheta-sudhir-bailur--2	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
107	1052	Scorp Enterprises	1052	MR KUSHAGRA CHITRANSHI 	WING 3 A, FLAT 803, N G ROYAL PARK SOCIETY, OPP NITCO TILES, KANJURMARG E, MUMBAI 400042\r\n		\N	39	2013-10-29 08:13:56.86978	2013-10-29 08:13:56.86978	mr-kushagra-chitranshi	19.1323864999999991	72.951962199999997	\N	9167091404/9415527338	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
89	1034	Scorp Enterprises	1034	HIMANSHU D JAIN	1122		\N	2	2013-10-28 07:20:28.837671	2013-10-28 07:20:28.837671	himanshu-d-jain	19.3504648999999986	72.9168230000000079	\N	022-67324926	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
90	1035	Scorp Enterprises	1035	MR PANKAJ SUTAR	1111	1	\N	1	2013-10-28 07:23:10.859616	2013-10-28 07:23:10.859616	mr-pankaj-sutar	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
87	1032	Scorp Enterprises	1032	PRIYANKA BAJAJ	A-307, SHRI VIJAY VIHAR, IIT EMPLOYEE, MUMBAI C H S NR POWAI VIHAR, POWAI, MUMBAI 400076\r\n		\N	57	2013-10-28 07:17:10.57764	2013-10-28 07:17:10.57764	priyanka-bajaj	19.1253004000000004	72.9076668999999953	\N	022-61137000 /9819824265/9930014265	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
103	1048	Scorp Enterprises	1048	Mrs. LEKHA MANOJ NAMBIAR	122	1	\N	1	2013-10-29 07:40:48.663411	2013-10-29 07:40:48.663411	mrs-lekha-manoj-nambiar--2	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
108	1053	Scorp Enterprises	1053	MR R K CHITRANSHI	WING 3 A, FLAT 803, N G ROYAL PARK SOCIETY, OPP NITCO TILES, KANJURMARG E, MUMBAI 400042\r\n		\N	39	2013-10-29 08:15:42.508074	2013-10-29 08:15:42.508074	mr-r-k-chitranshi	19.1323864999999991	72.951962199999997	\N	9167091404/9415527338	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
109	1054	Scorp Enterprises	1054	MR PANKAJ SUTAR	1222		\N	3	2013-10-29 08:16:18.518348	2013-10-29 08:16:18.518348	mr-pankaj-sutar--2	19.3504648999999986	72.9168230000000079	\N	9594409888	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
110	1055	Scorp Enterprises	1055	MR DILESWERA RAO D ADATALA	1111	11	\N	1	2013-10-29 08:17:34.735181	2013-10-29 08:17:34.735181	mr-dileswera-rao-d-adatala	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
139	1083	Scorp Enterprises	1083	MR SACHIN BODE	no verification res		\N	2	2013-11-12 07:04:44.913307	2013-11-12 07:04:44.913307	mr-sachin-bode	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
112	1057	Scorp Enterprises	1057	KRUNAL CHANDRASHEKHER JANI 	11111	11	\N	2	2013-10-29 08:20:08.977593	2013-10-29 08:20:08.977593	krunal-chandrashekher-jani	19.3504648999999986	72.9168230000000079	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
140	1084	Scorp Enterprises	1084	MR KIRAN VHANTALE	no verification res\r\n		\N	1	2013-11-12 07:06:09.985964	2013-11-12 07:06:09.985964	mr-kiran-vhantale	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
115	1060	Scorp Enterprises	1060	Mrs. LEKHA MANOJ NAMBIAR	111	11	\N	3	2013-10-30 08:05:37.893554	2013-10-30 08:05:37.893554	mrs-lekha-manoj-nambiar--3	19.2060974999999985	72.9825237000000016	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
141	1085	Scorp Enterprises	1085	Mr. MANOJKUMAR R KOLLY	B-202, POWAI JALTARANG, CHSL, RAMBAUG, POWAI , MUMBAI - 400076.\r\n		\N	57	2013-11-13 09:15:04.049507	2013-11-13 09:15:04.049507	mr-manojkumar-r-kolly	19.1253004000000004	72.9076668999999953	\N	9920062665	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
142	1086	Scorp Enterprises	1086	SUPRATIK CHAKRABORTY (975)	B-52, BUILDING NO 13, LAKE SIDE AREA, IIT POWAI, MUMBAI 400076\r\n		\N	57	2013-11-13 09:16:37.54797	2013-11-13 09:16:37.54797	supratik-chakraborty-975	19.1193936999999998	72.8977101999999917	\N	022-25768721 / 9820103723	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
143	1087	Scorp Enterprises	1087	SATISH SHIVADASAN CHENGATH	no verification res\r\n		\N	1	2013-11-13 09:25:19.658308	2013-11-13 09:25:19.658308	satish-shivadasan-chengath	19.0759836999999983	72.8776558999999935	\N	9967822236	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
144	1088	Scorp Enterprises	1088	MR YASHAVANT BAVISKAR	no verification res\r\n		\N	2	2013-11-13 09:28:43.318079	2013-11-13 09:28:43.318079	mr-yashavant-baviskar	19.0759836999999983	72.8776558999999935	\N	66620566	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
125	1070	Scorp Enterprises	1070	Chirantan Ghosh	G-703, Mayuresh Shristi ComplexLBS Marg, Bhandup WestOpp. Asian Paints, Mumbai – 400078\r\n		\N	58	2013-11-09 07:27:34.839753	2013-11-09 07:27:34.839753	chirantan-ghosh	19.1520170999999984	72.9165265999999974	\N	8097005943/ 9163211678	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
127	1071	Scorp Enterprises	1071	AMEY MANGESH CHOUGULE	1ST FLOOR,ABEB EAST BLOCK, L& T LTD, GATE NO 7,SAKI VIHAR ,POWAI MUMBAI 72\r\n		\N	55	2013-11-09 07:29:57.353374	2013-11-09 07:29:57.353374	amey-mangesh-chougule	19.0759836999999983	72.8776558999999935	\N	022-67053659/ 9987063705	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
122	1067	Scorp Enterprises	1067	MR SEJAL GUNVATRAI DESAI	11111	111	\N	1	2013-10-30 08:17:32.81718	2013-10-30 08:17:32.81718	mr-sejal-gunvatrai-desai	18.9503115000000015	72.8215079999999944	\N	11	submitted	\N	MAHARASHTRA		INDIA	\N	RESIDENTIAL	f
123	1068	Scorp Enterprises	1068	SHRI DIGAT DILIPBHAI TRIVEDI	111111	111	\N	2	2013-10-30 08:18:48.315202	2013-10-30 08:18:48.315202	shri-digat-dilipbhai-trivedi	19.3504648999999986	72.9168230000000079	\N	111	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f
128	1072	Scorp Enterprises	1072	SHRI SANTOSH SHIVAJI GAIKWAD	1111		\N	4	2013-11-09 07:30:32.955858	2013-11-09 07:30:32.955858	shri-santosh-shivaji-gaikwad	18.9503115000000015	72.8215079999999944	\N	022-61289700	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
116	1061	Scorp Enterprises	1061	MUSHAIDA SAYED	B1, 103, LOK GAURAV, LBS MARG, GANDHI NAGAR, VIKHROLI WEST, MUMBAI 400083\r\n		\N	59	2013-10-30 08:11:31.25969	2013-10-30 08:11:31.25969	mushaida-sayed	19.1231192000000014	72.9263546999999903	\N	9920205455	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
119	1064	Scorp Enterprises	1064	LONAPPAN ANTHONY (895)	ROOM NO 8, LAKE JEWEL CO-OP HSG SOC, NR PUNCHKUTIR BUS STOP, POWAI, MUMBAI 400076\r\n		\N	57	2013-10-30 08:14:10.08327	2013-10-30 08:14:10.08327	lonappan-anthony-895	19.1253004000000004	72.9076668999999953	\N	9987028038/8108717526	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
118	1063	Scorp Enterprises	1063	RIYAD PALIA	LANTANA 1701, 17TH FLOOR, NAHAR AMRIT SHAKTI CHANDIVALI POWAI, MUMBAI 400072\r\n		\N	55	2013-10-30 08:13:26.293649	2013-10-30 08:13:26.293649	riyad-palia	19.1057445000000001	72.8994529999999941	\N	9820755886	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
114	1059	Scorp Enterprises	1059	LAKSHMI KARTHIK	B-101, NEELSAGAR SAHAKARI MHADA COLONY, NAUGHAR ROAD, MULUND EAST, HDFC BANK, MUMBAI 400081\r\n		\N	59	2013-10-30 08:03:19.932054	2013-10-30 08:03:19.932054	lakshmi-karthik	19.1602277000000001	72.972630499999994	\N	25634473 / 9892078887	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
129	1073	Scorp Enterprises	1073	AKHIL AGGARWAL	1111		\N	1	2013-11-09 07:32:18.086736	2013-11-09 07:32:18.086736	akhil-aggarwal	18.9503115000000015	72.8215079999999944	\N	022-404721000	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
117	1062	Scorp Enterprises	1062	PONGURI VYDEHI	FLAT NO. 13/14, BLOCK - H, HOECHST QTRS, DARGA ROAD, AMAR NAGAR, MULUND EAST, MUMBAI 400082\r\n		\N	59	2013-10-30 08:12:08.055	2013-10-30 08:12:08.055	ponguri-vydehi	19.1741115999999998	72.9371979999999951	\N	8885282660	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f
135	1079	Scorp Enterprises	1079	    Apurva Avinash Mahadalkar 	ROOM NO2, VISHNU VAITY CHAWL, L.T. ROAD, MULUND (EAST) MUMBAI-400081\r\n		\N	59	2013-11-11 07:42:31.172448	2013-11-11 07:42:31.172448	apurva-avinash-mahadalkar	19.1602277000000001	72.972630499999994	\N	8693866877	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
130	1074	Scorp Enterprises	1074	KEVIN D'SOUZA	111		\N	2	2013-11-09 07:34:38.652947	2013-11-09 07:34:38.652947	kevin-d-souza	19.0776362000000006	72.8646533000000005	\N	022-25700358	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
131	1075	Scorp Enterprises	1075	MR NAGRAJ DESHPANDE	111		\N	2	2013-11-09 07:36:17.618033	2013-11-09 07:36:17.618033	mr-nagraj-deshpande	\N	\N	\N	66059500	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
132	1076	Scorp Enterprises	1076	. Mr. ABHIJIT YASHWANT AMBRE 	111		\N	1	2013-11-09 07:37:31.149255	2013-11-09 07:37:31.149255	mr-abhijit-yashwant-ambre	19.0776362000000006	72.8646533000000005	\N	9819227567	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
133	1077	Scorp Enterprises	1077	SHAILESH KANHAIYALAL PANDEY	111		\N	3	2013-11-09 07:39:26.739157	2013-11-09 07:39:26.739157	shailesh-kanhaiyalal-pandey	19.0776362000000006	72.8646533000000005	\N	022-45765999	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
134	1078	Scorp Enterprises	1078	RATNA SHAILESH PANDEY	11111		\N	3	2013-11-09 07:41:08.10773	2013-11-09 07:41:08.10773	ratna-shailesh-pandey	18.9503115000000015	72.8215079999999944	\N	022-45765999	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
124	1069	Scorp Enterprises	1069	SANTOSH LAWOO RANE	9/1, RAILWAY POLICE QTRS, PANTNAGAR, EASTER EXPRESS HIGWAY, GHATKOPAR E\r\n		\N	57	2013-11-09 07:26:16.229891	2013-11-09 07:26:16.229891	santosh-lawoo-rane	19.1159472999999984	72.9351429999999965	\N	9773185307	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
137	1081	Scorp Enterprises	1081	PRAMOD KUMAR SINGH ( 968)	A402, JALVAYU VIHAR SECTOR A, ADI SHANKARACHARYA RD, POWAI ( NXT TO SM SHETTY SCHOOL) POWAI\r\n		\N	57	2013-11-11 07:44:28.749322	2013-11-11 07:44:28.749322	pramod-kumar-singh-968	19.1196772999999993	72.9050809000000015	\N	9167339906	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
136	1080	Scorp Enterprises	1080	    Rashmi Anthony salve 	3A/101 LAKE VIEW APTR.,RAMBAUG , MHADA COMPLEX, POWAI, MUMBAI -400076\r\n		\N	57	2013-11-11 07:43:54.361447	2013-11-11 07:43:54.361447	rashmi-anthony-salve	19.1196772999999993	72.9050809000000015	\N		verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
145	1089	Scorp Enterprises	1089	DEVRE SACHIN JAYRAM (977)	MHATRE CHAWL ROOM NO 4, BABU WADI, NANEPADA MITHAGAR ROAD, PALKHI BLDG, MULUND E, 400081\r\n		\N	59	2013-11-13 09:30:52.695094	2013-11-13 09:30:52.695094	devre-sachin-jayram-977	19.1602277000000001	72.972630499999994	\N	9892719145	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
146	1090	Scorp Enterprises	1090	BINDU RAJESH  (972)	303, PANCH SMRUTI PACH SRISHTI COMPLEX, CHANDIVALI POWAI, NEAR S M SHETTY SCHOOL, MUMBAI 72\r\n		\N	55	2013-11-13 09:31:40.074423	2013-11-13 09:31:40.074423	bindu-rajesh-972	19.0759836999999983	72.8776558999999935	\N	022-28579010 / 9769424453	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
147	1091	Scorp Enterprises	1091	SANDEEP CHHABRA (973)	D-1901, PHASE-2, LAKE HOMES, POWAI, MUMBAI 76\r\n		\N	57	2013-11-13 09:33:46.038794	2013-11-13 09:33:46.038794	sandeep-chhabra-973	19.114344899999999	72.8996836999999971	\N	022-28470204 / 9167213725/9868240621	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
148	1092	Scorp Enterprises	1092	TRUPTI JAIDEEP MAINKAR	no verification res\r\n		\N	1	2013-11-13 09:34:35.38593	2013-11-13 09:34:35.38593	trupti-jaideep-mainkar	19.0759836999999983	72.8776558999999935	\N	022-40000000	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
149	1093	Scorp Enterprises	1093	JAYASHRI MAHESH DABHOLKAR	no verification res\r\n		\N	3	2013-11-13 09:36:18.582795	2013-11-13 09:36:18.582795	jayashri-mahesh-dabholkar	19.0759836999999983	72.8776558999999935	\N	022-30513100	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
150	1094	Scorp Enterprises	1094	KAPLNATH SAMPAT BUWA	no verification res\r\n		\N	2	2013-11-13 09:38:11.672365	2013-11-13 09:38:11.672365	kaplnath-sampat-buwa	19.0759836999999983	72.8776558999999935	\N	022-33052766	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 150, true);


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
10	5	2013-10-28 09:08:06.570751	2013-10-28 09:08:06.626645	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N
11	6	2013-10-28 09:12:21.417993	2013-10-28 09:12:21.426898	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 11, true);


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
8	61	1	t	t	2013-10-21	16:32:19	self	self	2	\N	Graduate	Married	3	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	other	easy	\N	others	\N	\N		\N	\N	\N	\N	Type of loan......home lone\r\nAmount......37.50lacs\r\n	\N	Accept	2013-10-21 11:07:57.842902	2013-10-21 11:07:57.842902	1980-05-19	aevpt3842a	\N		000053034705
9	59	1	t	t	2013-10-21	17:12:47	varsha manjerkar		\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N		\N	\N	2013-10-21 11:43:45.527124	2013-10-21 11:43:45.527124	2013-10-21		\N		
10	59	1	t	t	2013-10-21	17:12:47	varsha manjerkar	mother	36	\N	others	Self Owned	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	village area	easy	\N	others	\N	\N		\N	\N	\N	\N	Tol......home loan\r\nAm......8.36lacs\r\n	\N	\N	2013-10-21 13:29:58.539756	2013-10-21 13:29:58.539756	1976-03-05	amxpm2107r	\N		
11	59	1	t	t	2013-10-21	17:12:47	varsha manjerkar	mother	36	\N	others	Self Owned	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	village area	easy	\N	others	\N	\N		\N	\N	\N	\N	Tol......home loan\r\nAm......8.36lacs\r\n	\N	\N	2013-10-21 13:30:07.805309	2013-10-21 13:30:07.805309	1976-03-05	amxpm2107r	\N		
12	59	1	t	t	2013-10-21	17:12:47	varsha manjerkar	mother	36	\N	others	Self Owned	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	village area	easy	\N	others	\N	\N		\N	\N	\N	\N	Tol......home loan\r\nAm......8.36lacs\r\n	\N	\N	2013-10-21 13:30:20.469263	2013-10-21 13:30:20.469263	1976-03-05	amxpm2107r	\N		
13	57	1	t	t	2013-10-21	19:10:43	Sunita kapali	sister	15	Company Accomodation	Graduate	Unmarried	4	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	other	easy	\N	others	\N	\N		\N	\N	\N	\N	Passport......j9094143\r\nTol......home loan\r\nAmt......15lacs	\N	Accept	2013-10-21 14:04:06.901018	2013-10-21 14:04:06.901018	1987-11-25		\N		
14	87	1	t	t	2013-10-29	11:08:33	saurab bajaj	husband	1	Rented	others	Married	2	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---car\r\nAmt--4lac\r\nRent expird date---jan2014	\N	Accept	2013-10-29 05:43:32.029068	2013-10-29 05:43:32.029068	1985-04-01	ahupj4459r	\N		
15	83	1	t	t	2013-10-29	11:14:45	nutan kumar	wife	1	Rented	others	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Passport---f4451739\r\nTol--home\r\nAmt---25lac\r\nRent expird date---may2015	\N	Accept	2013-10-29 05:48:18.329093	2013-10-29 05:48:18.329093	1979-12-25		\N		
16	107	1	t	t	2013-10-29	14:51:36	bobel thilip	own by friend	3	Rented	others	Unmarried	5	4	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--40lac\r\nRent exiprd date---aug2014	\N	Accept	2013-10-29 09:25:12.560489	2013-10-29 09:25:12.560489	1982-11-11	agmpc1547j	\N		
17	108	1	t	t	2013-10-29	14:55:30	bobel thilip	own by friend	3	Rented	others	Married	5	5	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--40lac\r\nRent exiprd date---aug2014	\N	Accept	2013-10-29 09:27:28.795645	2013-10-29 09:27:28.795645	2013-04-30		\N		
18	116	1	t	\N	2013-10-30	17:33:29	naseem sayed	mother	\N	\N	others	Married	1	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---car\r\nAmt---4lac\r\nElection id---mt/07/052/148709	\N	Accept	2013-10-30 12:13:07.104243	2013-10-30 12:13:07.104243	1975-09-22		\N		9100161073(tata power)
19	119	1	t	t	2013-10-30	17:43:39	celina anthony	mother	50	\N	others	Married	5	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt---40lac\r\n	\N	Accept	2013-10-30 12:17:44.033939	2013-10-30 12:17:44.033939	1972-01-25	abzpl5460f	\N		100903854242(reliance)
20	114	1	t	t	2013-10-30	17:54:16	karthik krishanan	husband	2	\N	others	Married	4	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt---1croe	\N	Accept	2013-10-30 12:26:48.761389	2013-10-30 12:26:48.761389	1985-10-03	alzpr7277c	\N		
21	118	1	t	t	2013-10-30	17:58:41	parhad palia	father	23	\N	Graduate	Unmarried	4	4	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--83lac	\N	Accept	2013-10-30 14:35:40.943168	2013-10-30 14:35:40.943168	1984-04-14	aiepp0631n	\N		
23	100	3	t	\N	2013-11-07	10:38:34	VIJAYA	mother	0	\N	Post Graduate	Married	3	1	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Electricity Bill 029470151674,	\N	Accept	2013-11-07 05:12:50.444236	2013-11-07 05:12:50.444236	1984-07-27		\N		029470151674
24	99	3	t	t	2013-11-07	10:42:53	 SHALINI 	wife	0	Rented	others	Married	2	1	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Electricity Bill 029470151674	\N	Accept	2013-11-07 05:15:56.483548	2013-11-07 05:15:56.483548	1984-08-15		\N		029470151674
25	97	3	t	t	2013-11-07	10:45:59	PADMINI	mother	1	Rented	Post Graduate	Married	3	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	,DOCUMENT VERIFY RENTED AGREEMENT EXPIRY DATE-DEC 2013 & DOB 23/12/1988 ,TYPE OF LOAN HOME LOAN 21 LAKHS.	\N	Accept	2013-11-07 05:18:32.253229	2013-11-07 05:18:32.253229	1988-12-23		\N		
26	117	1	t	t	2013-11-07	16:29:25	self	self	9	Company Accomodation	Graduate	Married	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	TYPE OF LOAN CAR LOAN AMNT IS 7.22 LAC\r\n	\N	Accept	2013-11-07 11:02:52.152391	2013-11-07 11:02:52.152391	1960-10-26	ALQPV0848G	\N		
27	106	1	f	\N	2013-11-07	16:32:56			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CUSTOMER   TO SHIFTED PUNE 2 MONT\r\n	\N	\N	2013-11-07 11:03:51.926849	2013-11-07 11:03:51.926849	2013-11-07		\N		
28	105	1	t	\N	2013-11-07	16:33:54			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CUSTOMER   TO SHIFTED PUNE 2 MONT\r\n	\N	refer to bank	2013-11-07 11:04:29.167692	2013-11-07 11:04:29.167692	2013-11-07		\N		
29	104	1	t	\N	2013-11-07	16:34:32			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CUSTOMER TO SHIFTED PUNE 2 MONT\r\n	\N	refer to bank	2013-11-07 11:05:13.201714	2013-11-07 11:05:13.201714	2013-11-07		\N		
30	86	1	t	\N	2013-11-07	16:35:17			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CUSTOMER TO SHIFTED PUNE 2 MONT\r\n	\N	refer to bank	2013-11-07 11:05:48.292166	2013-11-07 11:05:48.292166	2013-11-07		\N		
31	85	1	t	\N	2013-11-07	16:35:54			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	CUSTOMER   TO SHIFTED PUNE 2 MONT\r\n	\N	refer to bank	2013-11-07 11:06:19.412865	2013-11-07 11:06:19.412865	2013-11-07		\N		
32	76	1	t	t	2013-11-07	16:36:26	 MANOJ 	HUSBAND	8	\N	others	Married	3	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	TYPE OF LOAN CAR LOAN AMNT 7.13 LAC	\N	Accept	2013-11-07 11:09:22.700796	2013-11-07 11:09:22.700796	1975-02-09		\N		000061639365
33	75	1	t	t	2013-11-07	16:39:27	self		2	\N	others	Married	2	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	tYPE OF LOAN CAR LOAN AMNT 3.7 LAC\r\nQUALIFICATION M.S.C.COMPUTER SCIENCE	\N	Accept	2013-11-07 11:12:38.393088	2013-11-07 11:12:38.393088	1984-07-03	AGDPN7331E	\N		0003800339850
34	74	1	t	t	2013-11-07	16:42:45	PADMINI 	mother	1	Rented	Post Graduate	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DOCUMENT VERIFY RENTED AGREEMENT EXPIRY DATE-DEC 2013,\r\nTYPE OF LOAN HOME LOAN 21 LAKHS.	\N	Accept	2013-11-07 11:16:15.313129	2013-11-07 11:16:15.313129	1988-12-23		\N		
35	73	1	t	t	2013-11-07	16:46:21			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	VISTED AT ADDRESS APPLICANT NOT AVAILABLE…. NAME OF SOCITY BOARD & DOOR NAME PLATE IS (MR.ABRAHIM.P.V)\r\n	\N	Accept	2013-11-07 11:16:51.43942	2013-11-07 11:16:51.43942	2013-11-07		\N		
36	72	1	t	t	2013-11-07	16:46:54	DIVYA	DAUGHTER	7	\N	others	Married	4	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	QUALIFICATION B.A BED,DOC,\r\nSALARY SLIP,APPROX SALARY IS 43,000/-, \r\nTYPE OF LOAN HOME AMNT 12.30 LAC,	\N	Accept	2013-11-07 11:19:33.05343	2013-11-07 11:19:33.05343	1971-06-01	ADBPJ1534A	\N		015510365841
37	70	1	t	t	2013-11-07	16:49:36	YASHWANT 	father	7	\N	others	Married	8	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	QUALIFICATION B.E.,\r\nElectricity Bill AWNPS8206M\r\nYPE OF LOAN HOME AMNT 17 LAC	\N	Accept	2013-11-07 11:22:34.704357	2013-11-07 11:22:34.704357	1980-06-16	AWNPS8206M	\N		000096140410
38	69	1	t	t	2013-11-07	16:52:38	 JYOTI	SERVANT 	5	\N	others	Married	2	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	TYPE OF LOAN CAR AMNT IS 9LAC ( ALL XEROX COPY WAS KEPT IN HOUSE)	\N	Accept	2013-11-07 11:24:47.314407	2013-11-07 11:24:47.314407	1972-06-27	ASEPK6213B	\N		
39	68	1	t	t	2013-11-07	16:54:50	 SWAMIYA	wife	5	Company Accomodation	others	Married	3	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	QUALIFICATION M.B.A.\r\ntYPE OF LOAN CAR LOAN AMNT IS 2.50 LAC	\N	Accept	2013-11-07 11:27:02.031634	2013-11-07 11:27:02.031634	1981-11-18	BLXPS7207N,	\N		
40	124	1	t	t	2013-11-11	11:03:11	self	self	30	Company Accomodation	Graduate	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt---14.95lac\r\n	\N	Accept	2013-11-11 05:37:46.385155	2013-11-11 05:37:46.385155	1971-05-27	anipr8706m	\N		
41	137	1	t	t	2013-11-11	14:21:57	pushpa singh	wife	2	\N	others	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Telephone Bill--1051434614(mtnl)\r\nTol--home\r\nAmt--1core	\N	Accept	2013-11-11 08:55:56.464228	2013-11-11 08:55:56.464228	1966-06-17	aahps9813q	\N		
42	136	1	t	t	2013-11-11	14:26:31	anthony salve	father	11	\N	Graduate	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt---30lac	\N	Accept	2013-11-11 09:14:24.755575	2013-11-11 09:14:24.755575	1975-10-08	aynps2265e	\N		100036688303(reliance)
43	135	1	t	t	2013-11-12	14:46:13	avinash mahadalkar	father	20	\N	others	Unmarried	5	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---education\r\nAmt---4lac\r\nAadhaar no--486676359581	\N	Accept	2013-11-12 09:19:01.057465	2013-11-12 09:19:01.057465	1994-01-17		\N		000092290166
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 43, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2013-09-21 12:44:24.960604	2013-10-13 09:59:12.254816	\N	c8:9c:dc:d1:28:89	1
3	TAB-VIKROLI	T0102031	2013-09-21 12:44:30.325245	2013-10-13 09:59:39.678845	\N	c8:9c:dc:d1:28:89	1
2	TAB-SION	T0102032	2013-09-21 12:44:28.049258	2013-10-13 10:01:33.049168	\N	c8:9c:dc:d1:28:89	1
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
2	scorpeo.tab1@gmail.com	$2a$10$cyFp7iE88/ikiAOt2hQ3JO9uuXcHWN7lO9x3paAToAPkg/2vaFzm2	\N	\N	\N	53	2013-11-13 09:12:50.18666	2013-11-13 04:48:15.771532	122.169.51.211	122.169.51.211	2013-09-21 12:48:30.353638	2013-11-13 09:12:50.187469	tab_user	scorpeo.tab1	1
3	scorpeo.tab2@gmail.com	$2a$10$TNkFFLfsyn3V6u6t/nXJwu.hKqKcDr1ZDlg5c/K.67lMJqLEVcTrm	\N	\N	\N	7	2013-10-19 13:03:26.480348	2013-09-25 07:42:07.969388	115.248.231.170	101.60.96.88	2013-09-21 12:51:03.387013	2013-10-19 13:03:26.481174	tab_user	scorpeo.tab2	2
4	scorpeo.tab3@gmail.com	$2a$10$jIn4qaFmKkZhjlNqe/B17eUzLoylK/Z3Ib8x7oAopgDrOJHiPYtUq	\N	\N	\N	12	2013-11-07 11:49:15.984121	2013-11-07 05:08:25.210962	122.179.143.214	122.179.143.214	2013-09-23 08:55:49.271805	2013-11-07 11:49:15.984904	tab_user	scorpeo.tab3	3
5	ithelpdesk@scorpeo.in	$2a$10$HqPrM6cOQG9w2oDJubh.1OEtuddu2sfFR9jMnPAuY.MvxCLMlW5GK	\N	\N	\N	3	2013-11-16 06:44:49.086745	2013-10-29 09:19:57.217671	115.248.231.169	59.184.24.27	2013-10-28 09:08:06.486517	2013-11-16 06:44:49.087609	super_user	IT Helpdesk	1
6	srikumar@scorpeo.in	$2a$10$W9vIqe7zI3osu3ysLGllPuxdbx.IyT3pbezEDdGAN7nZ2Xzcnpv32	\N	\N	\N	1	2013-10-28 09:12:21.407536	2013-10-28 09:12:21.407536	59.184.31.105	59.184.31.105	2013-10-28 09:12:21.387733	2013-10-28 09:12:21.408094	super_user	N Srikumar	1
1	avcv@scorpeo.in	$2a$10$bwzp8.ePaE48C4sJ6wMmWOj9yCzTgR2GBfJan8eWDAVBHNa/mFjpC	\N	\N	\N	151	2013-11-16 11:46:48.501941	2013-11-16 10:44:32.558965	59.184.33.16	59.184.33.16	2013-09-21 12:47:19.137738	2013-11-16 11:46:48.504686	super_user	data entry	1
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 6, true);


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
9	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,.....74283070\r\nPan Card......aewpb6981m(01/02/1979)\r\nTol.....home loan\r\nAmt....26.50lacs	\N	positive	\N	\N	2013-10-21 14:24:53.129112	2013-10-21 14:24:53.158447	\N	\N	ready_for_verification	1	department......supply chain management
2	1	L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	19.1196772999999993	72.9050809000000015	\N	N/A	2013-09-23	11:45:52						\N	\N	L & T LTD	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip	\N	\N	\N	\N	2013-09-23 06:19:26.736163	2013-09-23 06:19:26.760852	\N	\N	ready_for_verification	1	
4	6	K.J.SOMAIYA COLLEGE OF SC.& COMM.VIDYAVIHAR-EAST-400077.\r\n	\N	\N	t	asst.professor	2013-09-28	10:07:09	self	asst.professor			9969038681	21	t	K.J.SOMAIYA COLLEGE OF SC.& COMM.	Public Ltd.	Others	\N	\N			75	\N	Permanent	Assistant	f	\N	\N	t	---\n- colleage\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card,\r\nPan Card	\N	positive	\N	\N	2013-09-28 04:50:57.06974	2013-09-28 04:50:57.091214	\N	\N	ready_for_verification	1	
10	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	\N	\N	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....74283070\r\nPan Card.....aewpb6981m(01/02/1979)\r\nTol....home loan\r\nAmt.....26.50lacs	\N	positive	\N	\N	2013-10-21 14:28:15.564498	2013-10-21 14:28:15.60084	\N	\N	ready_for_verification	1	department......supply chain management
6	29	CAPGEMINI INDIA PVT LTD, PLANT 2,  BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, CBS MARG, VIKHROLI, MUMBAI 400079\r\n	19.1091760999999991	72.9194797999999906	t	senior consultant	2013-10-21	19:34:37	self	senior consultant			9967986959	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	Business Center	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....23471\r\nPan Card.....bfpps0990j\r\nTol......home loan\r\nAmt....21.56lacs	\N	positive	\N	\N	2013-10-21 14:10:21.913517	2013-10-21 14:10:21.973098	\N	\N	ready_for_verification	1	department....dim
8	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,.....74283070\r\nPan Card......aewpb6981m(01/02/1979)\r\nTol.....home loan\r\nAmt....26.50lacs	\N	positive	\N	\N	2013-10-21 14:24:24.517308	2013-10-21 14:24:24.568711	\N	\N	ready_for_verification	1	department......supply chain management
11	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....74283070\r\nPan Card.....aewpb6981m(01/02/1979)\r\nTol....home loan\r\nAmt.....26.50lacs	\N	positive	\N	\N	2013-10-21 14:28:43.40954	2013-10-21 14:28:43.44099	\N	\N	ready_for_verification	1	department......supply chain management
13	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:36:42.920917	2013-10-21 14:36:42.946867	\N	\N	ready_for_verification	1	department....it
14	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:37:02.427457	2013-10-21 14:37:02.453542	\N	\N	ready_for_verification	1	department....it
15	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:37:13.426838	2013-10-21 14:37:13.451511	\N	\N	ready_for_verification	1	department....it
16	25	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	\N	\N	t	team leader	2013-10-21	20:08:01	self	team leadar			9967049941	\N	f	ACCENTURE CONSULTANCY SERVICES PVT LTD	Private LTD.	Others	\N	\N			59	\N	Permanent	Others	f	\N	\N	t	---\n- others\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,......10569429\r\nPan Card......aevpt3842a(19/05/1980)\r\nTol.....home loan\r\nAmt.....37.50lacs	\N	positive	\N	\N	2013-10-21 14:44:14.195706	2013-10-21 14:44:14.229431	\N	\N	ready_for_verification	1	
17	25	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	\N	\N	t	team leader	2013-10-21	20:08:01	self	team leadar			9967049941	\N	f	ACCENTURE CONSULTANCY SERVICES PVT LTD	Private LTD.	Others	\N	\N			59	\N	Permanent	Others	f	\N	\N	t	---\n- others\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,......10569429\r\nPan Card......aevpt3842a(19/05/1980)\r\nTol.....home loan\r\nAmt.....37.50lacs	\N	positive	\N	\N	2013-10-21 14:44:28.707491	2013-10-21 14:44:28.740659	\N	\N	ready_for_verification	1	
18	40	OFF NM:_____, 1001, A WING, JARDI NE LLOUD THOMPSON PVT LTD, SUPREME BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	test anyalist	2013-10-29	10:23:00	self				7506051745	\N	f	COMPANY NO NAME	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----11271\r\nPan Card----awsp2880c(25/05/1988)\r\nTol----home\r\nAmt---10lac	\N	positive	\N	\N	2013-10-29 04:55:48.005981	2013-10-29 04:55:48.110779	\N	\N	ready_for_verification	1	it
19	41	COLGATE PALMOLINE INDIA LTD.COLGATE RESEARCH CENTRE,MAIN STREET,HIRANANDANI GARDENS ,DEPTCUSTOMER DEVELOPMENT,MUMBAI-400076.\r\n	19.1253004000000004	72.9076668999999953	t	head custmer marketing	2013-10-29	10:26:15	self				9920096860	\N	f	COLGATE PALMOLINE INDIA LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----34003855\r\nPan Card---aiopb6721h(10/08/1981)\r\nTol----car\r\nAmt----3.80lac	\N	positive	\N	\N	2013-10-29 04:59:09.292962	2013-10-29 04:59:09.320028	\N	\N	ready_for_verification	1	seals
20	33	J.P.MORGAN SERVICES INDIA P LTD.GATE-5,L & T BUSINESS PARK,SAKIVIHAR ROAD,POWAI,MUMBAI-400072\r\n	19.1063666999999988	72.8899466000000018	t	 anyalist	2013-10-29	10:30:10	self				8879952307	\N	f	J.P.MORGAN SERVICES INDIA P LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---e573734\r\nTol----car\r\nAmt---5.5lac	\N	positive	\N	\N	2013-10-29 05:02:25.578502	2013-10-29 05:02:25.609933	\N	\N	ready_for_verification	1	cpu
22	34	COLGATE GLOBAL BUSINESS SERVICES PVT LTD, 10TH FLOOR, TOWER B, L & T POWAI GATE NO-5, MUMBAI\r\n	\N	\N	t	asst.associate	2013-10-29	10:37:03	self				9920055567	\N	f	COLGATE GLOBAL BUSINESS SERVICES PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---34005498\r\nPan Card---aubpa5941r(25/12/1988)\r\nTol---home\r\nAmt---21lac	\N	positive	\N	\N	2013-10-29 05:09:46.991426	2013-10-29 05:09:47.035698	\N	\N	ready_for_verification	1	dsso
23	35	J P  MORGAN SERVICES INDIA, WSS TECHNOLOGY, 3RD FLOOR, VENTURA, POWAI, MUMBAI- 400076\r\n	19.1253004000000004	72.9076668999999953	t	application supply anyalist	2013-10-29	10:40:26	self				9820847817	\N	f	J P  MORGAN SERVICES INDIA	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---0418985\r\nPan Card---agdpn7331e(03/07/84)\r\nTol--car\r\nAmt---3.7lac\r\nYe of work---2ye\r\nSal---70.000pm	\N	positive	\N	\N	2013-10-29 05:16:06.240826	2013-10-29 05:16:06.260884	\N	\N	ready_for_verification	1	cib techonolical
24	37	PETROPAC ENGINEERING INDIA PVT LTD, 7TH FLOOR, VENTURA, CENTRAL AVENUE, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	pricipal desinger	2013-10-29	10:46:29	self				9969710850	\N	f	PETROPAC ENGINEERING INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---100198\r\nPan Card---aqgpp7927d(22/08/66)\r\nTol---car\r\nAmt---7.73lac\r\nYe of work---7ye\r\nSal---90,000pm	\N	positive	\N	\N	2013-10-29 05:19:56.251369	2013-10-29 05:19:56.285632	\N	\N	ready_for_verification	1	piping
25	39	HIRANANDANI BUILDERS OLYMPIA 6  FLOOR, CENTRAL AVENUE HIRANANDANI GARDEN, POWAI, MUMBAI 400076\r\n	19.1165011000000007	72.9097464999999971	t	secter engineer	2013-10-29	10:50:14	self				9820425872	\N	f	HIRANANDANI BUILDERS OLYMPIA	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---gcpl0048\r\nPan Card---alipk0688d(09/01/1980)\r\nTol---home\r\nAmt---27.50lac\r\nYe of work---6ye\r\nSal---70,000pm	\N	positive	\N	\N	2013-10-29 05:24:23.808897	2013-10-29 05:24:23.833198	\N	\N	ready_for_verification	1	
26	52	TEVAPHARM INDIA PVT LTD,402, OMEGA, HIRANANDANI BUSINESS PARK, NEAR TO BAYER HOUSE, POWAI MUMBAI – 76\r\n	\N	\N	t	qa excutive	2013-10-29	10:55:22	self				8082050230	\N	f	TEVAPHARM INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--10694\r\nPan Card---ayjpp4003d(3/4/87)\r\nTol---home\r\nAmt---20lac\r\nYe of work---2monts\r\nSal---24,000pm\r\n	\N	positive	\N	\N	2013-10-29 05:29:20.272517	2013-10-29 05:29:20.303257	\N	\N	ready_for_verification	1	qa
27	53	TATA CONSULTANCY SERVICES, KENSINGTON TOWER B WING, 12 FLOOR, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	manager	2013-10-29	10:59:32	self				9920845617	\N	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---273594\r\nPan Card---agcpj7885l(17/5/83)\r\nTol--home\r\nAmt---25lac\r\nYe of work---7ye\r\nSal--80,000pm	\N	positive	\N	\N	2013-10-29 05:32:22.653818	2013-10-29 05:32:22.681477	\N	\N	ready_for_verification	1	telecom bps
28	54	DELOITTE CONSULTING INDIA PVT LTD, FAIRMONT LEVEL 2, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	consultant	2013-10-29	11:02:46	self				9819824265	\N	f	DELOITTE CONSULTING INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---352462\r\nPan Card---ahupj4459r(1/4/85)\r\nTol---car\r\nAmt---4lac\r\nYe of work---11month\r\nSal---56,000pm	\N	positive	\N	\N	2013-10-29 05:37:32.768899	2013-10-29 05:37:32.797159	\N	\N	ready_for_verification	1	consulting techological
29	61	J P MORGAN INIDA PVT LTD, 2ND FLOOR, VENTURA BUSINESS TOWER HIRA NANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	associate	2013-10-29	14:08:15	self				9167091404	\N	f	J P MORGAN INIDA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----fo75842\r\nPan Card---agmpc1547j(11/11/82)\r\nTol---home\r\nAmt--40lac\r\nYe of work---1.5ye\r\nSal--90,000pm	\N	positive	\N	\N	2013-10-29 08:44:06.495237	2013-10-29 08:44:06.52438	\N	\N	ready_for_verification	1	r.b.techonlogical
30	65	WIPRO TECHNOLOGIES SEZ UNIT 701 7TH FLOOR KENSINGTON A WING HIRANANDANI POWAI  \r\n	19.1153797999999995	72.9091435999999931	t	network specilist	2013-10-29	14:14:24	self				9821061781	\N	f	WIPRO TECHNOLOGIES SEZ UNIT	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----254235\r\nPan Card---ajzp6905h(6/8/83)\r\nTol---car\r\nAmt---3.63lacs\r\nYe of work---1.4ye\r\nSal---60,000pm	\N	positive	\N	\N	2013-10-29 09:13:21.746905	2013-10-29 09:13:21.774911	\N	\N	ready_for_verification	1	network
31	55	THERMO FISHER SCIENTIRIC INDIA LTD, POWAI HIRANANDANI, MUMBAI 400076\r\n	19.1153797999999995	72.9091435999999931	t	bussiness devolpment specilist	2013-10-29	14:43:45	self				9594409888	\N	f	THERMO FISHER SCIENTIRIC INDIA LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---60613\r\nPan Card--pcmps2230n(15/02/86)\r\nTol---homw\r\nAmt---16lac\r\nYe of work---9 monts\r\nSal---32,000pm	\N	positive	\N	\N	2013-10-29 09:17:10.824669	2013-10-29 09:17:10.858797	\N	\N	ready_for_verification	1	health care
49	79	OM CLEARING AGENCY,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	19.1746738999999984	72.9431038000000029	t	billing(asst)	2013-11-11	11:12:57	shailesh pandey(husband)				9867782906	\N	f	OM CLEARING AGENCY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--52\r\nPan Card---ceupp0373p(14/05/85)\r\nTol--home\r\nAmt--12lac\r\nYe of work--1.5year\r\nSal--8,000pm	\N	positive	\N	\N	2013-11-11 05:48:17.760976	2013-11-11 05:48:17.78968	\N	\N	ready_for_verification	1	billing
34	66	SOHAM FOUNDATIONS, BUBBLING SPRING, HARI OM NAGAR, MULUND E 400081\r\n	19.1602277000000001	72.972630499999994	t	service staff	2013-10-30	20:10:11	vijaya jayaraman(quidinetar)				8097164698	\N	f	SOHAM FOUNDATIONS	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---atkpr1006l(1/6/65)\r\nTol--edu\r\nAmt--1.77lac\r\nYe of work---9ye\r\nSal--4370pm\r\n	\N	positive	\N	\N	2013-10-30 14:46:11.173519	2013-10-30 14:46:11.201069	\N	\N	ready_for_verification	1	staff
35	66	SOHAM FOUNDATIONS, BUBBLING SPRING, HARI OM NAGAR, MULUND E 400081\r\n	19.1602277000000001	72.972630499999994	t	service staff	2013-10-30	20:10:11	vijaya jayaraman(quidinetar)				8097164698	\N	f	SOHAM FOUNDATIONS	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---atkpr1006l(1/6/65)\r\nTol--edu\r\nAmt--1.77lac\r\nYe of work---9ye\r\nSal--4370pm\r\n	\N	positive	\N	\N	2013-10-30 14:46:28.542053	2013-10-30 14:46:28.584759	\N	\N	ready_for_verification	1	staff
36	67	CRISIL LTD, RATINGS 4TH FLOOR, CRISIL HOUSE, HIRANDANI B PARK, POWAI, BAYER HOUSE, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	manager	2013-10-30	20:22:37	self				9892078887	\N	f	CRISIL LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1005402\r\nPan Card--alzpr7277c(3/10/85)\r\nTol--home\r\nAmt--1croe\r\nYe of work---3monts\r\nSal--85,000pm	\N	positive	\N	\N	2013-10-30 14:57:23.225298	2013-10-30 14:57:23.250062	\N	\N	ready_for_verification	1	reting
37	71	GODREJ CONSUMER PRODUCTS LTD, PIROJSHAYAGAR, EASTERN EXPRESS HIGHWAY, VIKHROLI E, MUMBAI 400079\r\n	19.0957310999999983	72.9268788999999913	t	senior excutive 	2013-10-30	20:35:43	chetan git(senior)				9925038391	\N	f	GODREJ CONSUMER PRODUCTS LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---226\r\nPan Card--ahcpd2279b(7/9/76)\r\nTol---home\r\nAmt--25lac\r\nYe of work--10ye\r\n	\N	positive	\N	\N	2013-10-30 15:12:06.277863	2013-10-30 15:12:06.308232	\N	\N	ready_for_verification	1	seals
38	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:19:14.437808	2013-10-30 15:19:14.470861	\N	\N	ready_for_verification	1	plan approval
39	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:19:58.241724	2013-10-30 15:19:58.274649	\N	\N	ready_for_verification	1	plan approval
40	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:20:42.19306	2013-10-30 15:20:42.208407	\N	\N	ready_for_verification	1	plan approval
45	36	IOT INFRASTRUCTURE & ENERGY SERVICES LTD., PLOT NO Y2, CEAT TYRE ROAD, NEAR RAHUL RAILWAY STATION, BHANDUP WEST, MUMBAI - 400 078\r\n	\N	\N	t	N/A	2013-11-07	16:21:51	self		61524938		9930917337/ 7738140012 	2	\N	IOT INFRASTRUCTURE & ENERGY SERVICES LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-11-07 10:53:21.375764	2013-11-07 10:53:21.412911	\N	\N	ready_for_verification	1	
42	59	PROCEM CONSULTANTS, LL2, GURUKUL CHSL, LOKHANDIPADA, PANVEL (SELF EMPLOYED: AGENCY OF BIRLA SUNLIFE)\r\n	\N	\N	t	N/A	2013-11-07	10:52:39	SELF	ADMINISTRATION OFFICER			9819700479	3	f	PROCEM CONSULTANTS	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- colleage\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DEPT ADMINISTRATION ,DESIGNATION ADMINISTRATION OFFICER ,TYPE OF LOAN EDUCATION LAON AMNT IS 7 LAC,THIRD PARTY CONFARMTION DONE 	\N	positive	\N	\N	2013-11-07 05:26:22.168853	2013-11-07 05:26:22.193103	\N	\N	ready_for_verification	3	
43	63	HIRANANDANI LIVING PVT LTD, SIGMA BUILDING, 6TH FLOOR, HIRANANDANI GARDENS, POWAI, MUMBAI 76\r\n	\N	\N	t	N/A	2013-11-07	16:19:44	SELF					\N	f	HIRANANDANI LIVING PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	satish govide LOAN CANCALLED\r\n	\N	positive	\N	\N	2013-11-07 10:50:45.431073	2013-11-07 10:50:45.468233	\N	\N	ready_for_verification	1	
44	56	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK C GODREJ IT PARK, GODREJ & BOYCE COMPOUND LBS MARG, VIKHROLI, MUMBAI 400079\r\n	19.106494399999999	72.9228830999999929	t	N/A	2013-11-07	16:20:53						\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SUB IS OUT OF STATION WILL BE BACK AFTER 1WEEK\r\n	\N	positive	\N	\N	2013-11-07 10:51:46.526837	2013-11-07 10:51:46.560586	\N	\N	ready_for_verification	1	
46	32	YASHWANT CHANDJI SAWANT VIDYAMANDIR , UTKARSH NAGAR, JM RD, NR SHIV TEMPLE, BHANDUP\r\n	19.1499009999999998	72.9311340000000001	t	N/A	2013-11-07	16:23:27	self				9890772032	18	\N	YASHWANT CHANDJI SAWANT VIDYAMANDIR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-11-07 10:54:25.577015	2013-11-07 10:54:25.610693	\N	\N	ready_for_verification	1	
47	31	KENDRIYA VIDYALAYA SANGTHAN,REGIONAL OFFICE,IIT CAMPUS,POWAI,MUMBAI - 400076 \r\n	19.1253004000000004	72.9076668999999953	t	N/A	2013-11-07	16:24:30	SELF		25728060		9920722869/ 9969543909	5	f	KENDRIYA VIDYALAYA SANGTHAN	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Salary Slip, 39,000/\r\nPan Card BLXPS7207N\r\ndEPT FINANCE ACCOUNT,\r\nDESIGNATION FINANCEAL oFFICER\r\ntYPE OF LOAN CAR LOAN AMNT IS 2.50 LAC	\N	positive	\N	\N	2013-11-07 10:59:13.80559	2013-11-07 10:59:13.838726	\N	\N	ready_for_verification	1	
48	78	OM CLEARING AGENCY ,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	19.1746738999999984	72.9431038000000029	t	accounts credit control excutive	2013-11-11	11:08:04	self				9867782906	\N	f	OM CLEARING AGENCY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---22\r\nPan Card--ayapp1350l(5/5/85)\r\nTol--home\r\nAmt--12lac\r\nYe of work---3ye\r\nSal--16,000p.m	\N	positive	\N	\N	2013-11-11 05:42:49.012199	2013-11-11 05:42:49.041419	\N	\N	ready_for_verification	1	accounts
50	74	CRISIL LTD, SECOND FLOOR, KENSIGTON SEZ, WING -A, HIRANANDANI BUSINESS PARK, MUMBAI 76\r\n	\N	\N	t	manager	2013-11-11	11:18:46	self	manager			9920899321	\N	f	CRISIL LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--a008681\r\nPan Card--agbpa5142q(9/10/80)\r\nTol--max\r\nAmt---99lac\r\nYe of work--6ye\r\nSal--1.24lac pm	\N	positive	\N	\N	2013-11-11 05:52:57.405684	2013-11-11 05:52:57.434187	\N	\N	ready_for_verification	1	
51	75	POWAI AUTO WORKS, 19, ADISHANKARARCHARYA MARG, OPP PANCH KUTIR BUS STOP, POWAI, OPP SUVARNA TEMPLE, MUMBAI 76\r\n	19.1196772999999993	72.9050809000000015	t	work managr	2013-11-11	11:23:09	self				9833857002	\N	f	POWAI AUTO WORKS	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--21lac\r\nDob--23/02/70\r\nYe of work--5ye\r\nSal---54,000pm	\N	positive	\N	\N	2013-11-11 05:56:26.342512	2013-11-11 05:56:26.362088	\N	\N	ready_for_verification	1	automobile
52	76	WEATHER FORD SYSTEMS SUPPORT, GODREJ IT PARK, P2 BLOCK-B, 4TH FLOOR, PIROJSHANAGAR, VIKHROLI, MUMBAI 400079\r\n	19.0966610999999986	72.9239094999999935	t	senior  desinger engineer	2013-11-11	11:26:50	self				9325274930	\N	f	WEATHER FORD SYSTEMS SUPPORT	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---e158549\r\nPan Card---alzpd6718n(11/10/80)\r\nTol--home\r\nAmt--19.5lac\r\nYe of work---3ye\r\nSal---8lac p.a	\N	positive	\N	\N	2013-11-11 06:00:45.283794	2013-11-11 06:00:45.309419	\N	\N	ready_for_verification	1	machinical
53	77	MAERSK GLOBAL SERVICES PVT.LTD., 4TH AND 5T FLOOR, PRUDENTIAL BUILDING, CENTRAL AVENUE ROAD, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI- 400076. \r\n	19.1253004000000004	72.9076668999999953	t	process xpart	2013-11-11	14:14:18	self				9819227567	\N	f	MAERSK GLOBAL SERVICES PVT.LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---aya012\r\nPan Card---agrpa3791m(23/01/84)\r\nTol--car\r\nAmt---4lac\r\nYe of work---7ye\r\nSal---28,000pm	\N	positive	\N	\N	2013-11-11 08:47:19.251859	2013-11-11 08:47:19.27736	\N	\N	ready_for_verification	1	operation
54	81	JAIET AIRCON PVT LTD, GC-1, KARMA STAMBH, LBS MARG, VIKHROLI WEST, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	bussiness (aircondtion)	2013-11-12	14:49:56	naina bode(wife)				9867010154	\N	t	JAIET AIRCON PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---aeypb9100q(13/09/76)\r\nTol---home\r\nAmt--35lac\r\nYe of work---3ye\r\nSal--50,000pm	\N	positive	\N	\N	2013-11-12 09:23:59.284084	2013-11-12 09:23:59.299073	\N	\N	ready_for_verification	1	marketing
55	82	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, LBS MARG, VIKHROLI WEST 400079\r\n	19.102046399999999	72.9225682999999947	t	senior consultant	2013-11-12	14:54:17	self				9619868968	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---44392\r\nPan Card--afqpb7995e(07/03/1982)\r\nTol--education\r\nAmt--2lac\r\nYe of work--1.5ye\r\nSal--57,000pm	\N	positive	\N	\N	2013-11-12 09:28:05.201989	2013-11-12 09:28:05.233694	\N	\N	ready_for_verification	1	sap
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 55, true);


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

