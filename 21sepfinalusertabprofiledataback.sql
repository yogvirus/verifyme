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
1	Ration Card	2013-09-21 12:36:52.054484	2013-09-21 12:36:52.054484
2	Electricity Bill	2013-09-21 12:36:52.067364	2013-09-21 12:36:52.067364
3	Telephone Bill	2013-09-21 12:36:52.075076	2013-09-21 12:36:52.075076
4	Bank Statement card	2013-09-21 12:36:52.083426	2013-09-21 12:36:52.083426
5	Driving licence	2013-09-21 12:36:52.091761	2013-09-21 12:36:52.091761
6	Passport	2013-09-21 12:36:52.100057	2013-09-21 12:36:52.100057
\.


--
-- Name: address_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('address_proofs_id_seq', 6, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
1	admin@example.com	$2a$10$eR4WmcJ0v4Rp2jxZoUxaIe747r1GC3IdH022EeZSPrECRFdXS2JbO	\N	\N	\N	1	2013-09-21 12:37:51.374944	2013-09-21 12:37:51.374944	127.0.0.1	127.0.0.1	2013-09-21 12:34:57.666038	2013-09-21 12:37:51.376172	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2013-09-21 12:36:52.186854	2013-09-21 12:36:52.186854
2	Air Conditioner	2013-09-21 12:36:52.200546	2013-09-21 12:36:52.200546
3	Refrigrator	2013-09-21 12:36:52.208272	2013-09-21 12:36:52.208272
4	Music System	2013-09-21 12:36:52.21659	2013-09-21 12:36:52.21659
\.


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assets_id_seq', 4, true);


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2013-09-21 12:36:52.128843	2013-09-21 12:36:52.128843
2	Salary Slip	2013-09-21 12:36:52.142268	2013-09-21 12:36:52.142268
3	Mobile Bill	2013-09-21 12:36:52.150009	2013-09-21 12:36:52.150009
4	Pan Card	2013-09-21 12:36:52.158318	2013-09-21 12:36:52.158318
\.


--
-- Name: b_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('b_documents_id_seq', 4, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 1, false);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 1, false);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id) FROM stdin;
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 1, false);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 1, false);


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

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id) FROM stdin;
\.


--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_businesses_id_seq', 1, false);


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
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 1, false);


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
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 1, false);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 1, false);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 1, false);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departments (id, name, created_at, updated_at) FROM stdin;
1	A/C OFFICER MTNL	2013-09-21 12:36:47.956391	2013-09-21 12:36:47.956391
2	ACCESS SYSTEM	2013-09-21 12:36:47.980476	2013-09-21 12:36:47.980476
3	ACCOUNT & FINANCE MANAGER	2013-09-21 12:36:47.987943	2013-09-21 12:36:47.987943
4	ACCOUNT FINANCE	2013-09-21 12:36:47.996238	2013-09-21 12:36:47.996238
5	ACCOUNTANT AUDIT	2013-09-21 12:36:48.004459	2013-09-21 12:36:48.004459
6	ADDITIONAL	2013-09-21 12:36:48.01276	2013-09-21 12:36:48.01276
7	ADMINISTRATOR	2013-09-21 12:36:48.021208	2013-09-21 12:36:48.021208
8	ADVANCED CENTER FOR WOMEN RESEARCH	2013-09-21 12:36:48.029523	2013-09-21 12:36:48.029523
9	ADVISOR	2013-09-21 12:36:48.037796	2013-09-21 12:36:48.037796
10	AGRICULTURE	2013-09-21 12:36:48.046198	2013-09-21 12:36:48.046198
11	AGRICULTURE SERVICES	2013-09-21 12:36:48.054538	2013-09-21 12:36:48.054538
12	AIRCRAFT	2013-09-21 12:36:48.062868	2013-09-21 12:36:48.062868
13	MAINTENANCE ENGINEERING	2013-09-21 12:36:48.071101	2013-09-21 12:36:48.071101
14	ALLOTMENT LETTER	2013-09-21 12:36:48.079526	2013-09-21 12:36:48.079526
15	ANALAYZE	2013-09-21 12:36:48.087718	2013-09-21 12:36:48.087718
16	ANALTST	2013-09-21 12:36:48.096103	2013-09-21 12:36:48.096103
17	ANALYSE	2013-09-21 12:36:48.104508	2013-09-21 12:36:48.104508
18	ANALYST	2013-09-21 12:36:48.112749	2013-09-21 12:36:48.112749
19	ANIMAL HUSBANDRY	2013-09-21 12:36:48.121115	2013-09-21 12:36:48.121115
20	APPLICATION ANALYSE	2013-09-21 12:36:48.156278	2013-09-21 12:36:48.156278
21	APPLICATION DEVLOPMENT	2013-09-21 12:36:48.162607	2013-09-21 12:36:48.162607
22	APPORVAL	2013-09-21 12:36:48.170894	2013-09-21 12:36:48.170894
23	ARCHITECT	2013-09-21 12:36:48.179339	2013-09-21 12:36:48.179339
24	ASSEMBLY	2013-09-21 12:36:48.187368	2013-09-21 12:36:48.187368
25	ASSEMBLY FITTER	2013-09-21 12:36:48.195863	2013-09-21 12:36:48.195863
26	ASSISTANCE  MANAGER	2013-09-21 12:36:48.204012	2013-09-21 12:36:48.204012
27	ASSISTANCE GENRAL MANAGER	2013-09-21 12:36:48.212528	2013-09-21 12:36:48.212528
28	ASSISTANT	2013-09-21 12:36:48.220808	2013-09-21 12:36:48.220808
29	COMPUTER OPREATOR	2013-09-21 12:36:48.229012	2013-09-21 12:36:48.229012
30	ASSISTANT CONSULTANCY	2013-09-21 12:36:48.237444	2013-09-21 12:36:48.237444
31	ASSISTANT ENGGINER	2013-09-21 12:36:48.245806	2013-09-21 12:36:48.245806
32	ASSISTANT FOREMAN	2013-09-21 12:36:48.254115	2013-09-21 12:36:48.254115
33	ASSISTANT LAW OFFICER	2013-09-21 12:36:48.262418	2013-09-21 12:36:48.262418
34	ASSISTANT LOCO	2013-09-21 12:36:48.270835	2013-09-21 12:36:48.270835
35	PILOT	2013-09-21 12:36:48.279116	2013-09-21 12:36:48.279116
36	ASSISTANT MANAGER	2013-09-21 12:36:48.287427	2013-09-21 12:36:48.287427
37	ASSISTANT PROFESSOR	2013-09-21 12:36:48.295744	2013-09-21 12:36:48.295744
38	ASSISTANT SALES MANAGER	2013-09-21 12:36:48.304093	2013-09-21 12:36:48.304093
39	ASSISTANT SUPERINTENDENT	2013-09-21 12:36:48.31242	2013-09-21 12:36:48.31242
40	ASSISTANT TEACHER	2013-09-21 12:36:48.320599	2013-09-21 12:36:48.320599
41	ASSISTANT WISE	2013-09-21 12:36:48.329067	2013-09-21 12:36:48.329067
42	PRESIDENT & DELIVERY MANAGER	2013-09-21 12:36:48.337421	2013-09-21 12:36:48.337421
43	ASSIT  CONSULTANCY	2013-09-21 12:36:48.345767	2013-09-21 12:36:48.345767
44	ASSIT COMPUTER OPREATOR 	2013-09-21 12:36:48.353888	2013-09-21 12:36:48.353888
45	ASSIT PROFESSOR	2013-09-21 12:36:48.362222	2013-09-21 12:36:48.362222
46	ASSOCIAITE	2013-09-21 12:36:48.370506	2013-09-21 12:36:48.370506
47	ASSOCIAITE PROFESSOR	2013-09-21 12:36:48.378933	2013-09-21 12:36:48.378933
48	SENIOR GREAT	2013-09-21 12:36:48.387233	2013-09-21 12:36:48.387233
49	ASSOCIAITE VICE PRESIDENT	2013-09-21 12:36:48.395747	2013-09-21 12:36:48.395747
50	ASSOCIATE	2013-09-21 12:36:48.403869	2013-09-21 12:36:48.403869
51	ASSOCIATE SOCIAL MEDIA	2013-09-21 12:36:48.412415	2013-09-21 12:36:48.412415
52	ASTROLOGY	2013-09-21 12:36:48.420696	2013-09-21 12:36:48.420696
53	ATOMIC ENERGY	2013-09-21 12:36:48.428842	2013-09-21 12:36:48.428842
54	AUDIT DIRECTOR	2013-09-21 12:36:48.437306	2013-09-21 12:36:48.437306
55	AUDITOR	2013-09-21 12:36:48.445626	2013-09-21 12:36:48.445626
56	AUTOMOBILE ENGINEERING	2013-09-21 12:36:48.453784	2013-09-21 12:36:48.453784
57	BIOSCINES	2013-09-21 12:36:48.46217	2013-09-21 12:36:48.46217
58	BMC MUNCIPAL CORPORATION	2013-09-21 12:36:48.470425	2013-09-21 12:36:48.470425
59	BUILDING & FACTORIES DEVELOPER	2013-09-21 12:36:48.478768	2013-09-21 12:36:48.478768
60	BUSINESS AUDIT	2013-09-21 12:36:48.48709	2013-09-21 12:36:48.48709
61	BUSINESS DEVELOPER	2013-09-21 12:36:48.495419	2013-09-21 12:36:48.495419
62	BUSINESS DEVELOPMENT MANAGER	2013-09-21 12:36:48.503747	2013-09-21 12:36:48.503747
63	BUSINESS ENABLING TEAM	2013-09-21 12:36:48.512109	2013-09-21 12:36:48.512109
64	BUSINESS RESEARCH	2013-09-21 12:36:48.520366	2013-09-21 12:36:48.520366
65	BYO CHEMISTRY	2013-09-21 12:36:48.528963	2013-09-21 12:36:48.528963
66	C.A LICENCE	2013-09-21 12:36:48.537028	2013-09-21 12:36:48.537028
67	CONSALTUNT	2013-09-21 12:36:48.545578	2013-09-21 12:36:48.545578
68	CARGO INCHARG	2013-09-21 12:36:48.553871	2013-09-21 12:36:48.553871
69	CASIER	2013-09-21 12:36:48.562206	2013-09-21 12:36:48.562206
70	CENTRAL EXCISE MUMBAI III	2013-09-21 12:36:48.570397	2013-09-21 12:36:48.570397
71	CHANNEL SALES EXECUTIVE	2013-09-21 12:36:48.57868	2013-09-21 12:36:48.57868
72	CHEMICAL	2013-09-21 12:36:48.586995	2013-09-21 12:36:48.586995
73	CHEMISTRY	2013-09-21 12:36:48.595344	2013-09-21 12:36:48.595344
74	CHIEF AIRCRAFT	2013-09-21 12:36:48.603637	2013-09-21 12:36:48.603637
75	OPERATOR	2013-09-21 12:36:48.612664	2013-09-21 12:36:48.612664
76	CHIEF ENGINEER	2013-09-21 12:36:48.621075	2013-09-21 12:36:48.621075
77	CHIEF FINANCE CONSULTANT	2013-09-21 12:36:48.628871	2013-09-21 12:36:48.628871
78	CHIF STAFF INSPECTOR	2013-09-21 12:36:48.637405	2013-09-21 12:36:48.637405
79	CIVIL CONSTRUCTION	2013-09-21 12:36:48.645453	2013-09-21 12:36:48.645453
80	CLERK	2013-09-21 12:36:48.65394	2013-09-21 12:36:48.65394
81	CLERK CUM TYPIST	2013-09-21 12:36:48.662175	2013-09-21 12:36:48.662175
82	CLIENT	2013-09-21 12:36:48.675211	2013-09-21 12:36:48.675211
83	SERVICES	2013-09-21 12:36:48.686542	2013-09-21 12:36:48.686542
84	COAL LOGISTICS FOR POWER PLANTS	2013-09-21 12:36:48.695263	2013-09-21 12:36:48.695263
85	COMMANDER	2013-09-21 12:36:48.720689	2013-09-21 12:36:48.720689
86	COMMERCIAL	2013-09-21 12:36:48.728883	2013-09-21 12:36:48.728883
87	COMMISSION OF CENTRAL EXCISE REVENUE	2013-09-21 12:36:48.737651	2013-09-21 12:36:48.737651
88	COMPARTMENT	2013-09-21 12:36:48.745511	2013-09-21 12:36:48.745511
89	COMPLIANCE	2013-09-21 12:36:48.754069	2013-09-21 12:36:48.754069
90	COMPLIMENTARY ANUR VECHIL MEDICS	2013-09-21 12:36:48.762092	2013-09-21 12:36:48.762092
91	COMPUTER TECHNICAL	2013-09-21 12:36:48.770577	2013-09-21 12:36:48.770577
92	CONDUCTOR	2013-09-21 12:36:48.778761	2013-09-21 12:36:48.778761
93	CONSTRUCTION	2013-09-21 12:36:48.787408	2013-09-21 12:36:48.787408
94	CONSTRUCTION MANAGEMENT	2013-09-21 12:36:48.79545	2013-09-21 12:36:48.79545
95	CONSULTANCE	2013-09-21 12:36:48.804027	2013-09-21 12:36:48.804027
96	CONSULTANCY	2013-09-21 12:36:48.812254	2013-09-21 12:36:48.812254
97	CONSULTANT	2013-09-21 12:36:48.820671	2013-09-21 12:36:48.820671
98	CONTAINER MAINTENANCE	2013-09-21 12:36:48.828803	2013-09-21 12:36:48.828803
99	CO-ORDINATOR	2013-09-21 12:36:48.837547	2013-09-21 12:36:48.837547
100	CORPORATE ACTIONS	2013-09-21 12:36:48.845614	2013-09-21 12:36:48.845614
101	COUNSELLOR	2013-09-21 12:36:48.854156	2013-09-21 12:36:48.854156
102	CREADIT MANAGER	2013-09-21 12:36:48.862246	2013-09-21 12:36:48.862246
103	CREATIVE	2013-09-21 12:36:48.870654	2013-09-21 12:36:48.870654
104	CUSTOMER SERVICE	2013-09-21 12:36:48.878919	2013-09-21 12:36:48.878919
105	D.Y. COMMISSIONER	2013-09-21 12:36:48.887414	2013-09-21 12:36:48.887414
106	DAUGHTER	2013-09-21 12:36:48.895808	2013-09-21 12:36:48.895808
107	DEPUTY	2013-09-21 12:36:48.90376	2013-09-21 12:36:48.90376
108	DEPUTY CHIFE OFFICER	2013-09-21 12:36:48.911993	2013-09-21 12:36:48.911993
109	DEPUTY COMMISINOR	2013-09-21 12:36:48.920246	2013-09-21 12:36:48.920246
110	DEPUTY COMMISSIONER	2013-09-21 12:36:48.928614	2013-09-21 12:36:48.928614
111	DEPUTY DIRECTOR	2013-09-21 12:36:48.936906	2013-09-21 12:36:48.936906
112	DEPUTY DIRECTOR OF TOWN PLANNING	2013-09-21 12:36:48.945209	2013-09-21 12:36:48.945209
113	DEPUTY ENGINEER	2013-09-21 12:36:48.95353	2013-09-21 12:36:48.95353
114	DEPUTY GENRAL	2013-09-21 12:36:48.96186	2013-09-21 12:36:48.96186
115	DEPUTY GENRAL MANAGER	2013-09-21 12:36:48.970176	2013-09-21 12:36:48.970176
116	DEPUTY MANAGER	2013-09-21 12:36:48.978579	2013-09-21 12:36:48.978579
117	DEPUTY MANAGER TECHNICAL	2013-09-21 12:36:48.986747	2013-09-21 12:36:48.986747
118	DEPUTY PROJECT DIRECTOR	2013-09-21 12:36:48.995256	2013-09-21 12:36:48.995256
119	DESIGNER	2013-09-21 12:36:49.003571	2013-09-21 12:36:49.003571
120	DESINOR	2013-09-21 12:36:49.011892	2013-09-21 12:36:49.011892
121	DESK OFFICER	2013-09-21 12:36:49.020211	2013-09-21 12:36:49.020211
122	DEVELOPMENT	2013-09-21 12:36:49.028562	2013-09-21 12:36:49.028562
123	DEVLOPMENT	2013-09-21 12:36:49.036673	2013-09-21 12:36:49.036673
124	DGM (DEPUTY,GERNERAL MANAGER)	2013-09-21 12:36:49.045169	2013-09-21 12:36:49.045169
125	DIRECTOR	2013-09-21 12:36:49.053329	2013-09-21 12:36:49.053329
126	DIRECTOR PROPERITOR	2013-09-21 12:36:49.061693	2013-09-21 12:36:49.061693
127	DIRECTOR REFAR	2013-09-21 12:36:49.069957	2013-09-21 12:36:49.069957
128	DISTRACTION	2013-09-21 12:36:49.078325	2013-09-21 12:36:49.078325
129	DRILLING	2013-09-21 12:36:49.086594	2013-09-21 12:36:49.086594
130	DRIVER	2013-09-21 12:36:49.095219	2013-09-21 12:36:49.095219
131	DUTY OFFICER	2013-09-21 12:36:49.103374	2013-09-21 12:36:49.103374
132	EDUCATION	2013-09-21 12:36:49.1118	2013-09-21 12:36:49.1118
133	ELECTRICAL MANAGER	2013-09-21 12:36:49.119947	2013-09-21 12:36:49.119947
134	ELECTRICIAN	2013-09-21 12:36:49.12849	2013-09-21 12:36:49.12849
135	ELECTRONICS	2013-09-21 12:36:49.136625	2013-09-21 12:36:49.136625
136	ENDOCRINOLOGY	2013-09-21 12:36:49.145077	2013-09-21 12:36:49.145077
137	ENGG ELECTRICAL	2013-09-21 12:36:49.15341	2013-09-21 12:36:49.15341
138	ENGGINERING	2013-09-21 12:36:49.16169	2013-09-21 12:36:49.16169
139	ENGGINERING ELECTRICAL	2013-09-21 12:36:49.170094	2013-09-21 12:36:49.170094
140	EQUIPMENT OPERATOR	2013-09-21 12:36:49.178365	2013-09-21 12:36:49.178365
141	ESTABLISHMENT	2013-09-21 12:36:49.18672	2013-09-21 12:36:49.18672
142	EXCHANGE	2013-09-21 12:36:49.19508	2013-09-21 12:36:49.19508
143	EXCUTIVE SALES SUPPORTS	2013-09-21 12:36:49.203268	2013-09-21 12:36:49.203268
144	EXECUTIVE	2013-09-21 12:36:49.211741	2013-09-21 12:36:49.211741
145	EXECUTIVE  SECRETARIES	2013-09-21 12:36:49.21987	2013-09-21 12:36:49.21987
146	ASSISTANT MANAGING DIRECTOR	2013-09-21 12:36:49.230706	2013-09-21 12:36:49.230706
147	EXECUTIVE ENGINEER	2013-09-21 12:36:49.245229	2013-09-21 12:36:49.245229
148	EXPORT IMPORT	2013-09-21 12:36:49.253288	2013-09-21 12:36:49.253288
149	FACILITY	2013-09-21 12:36:49.261642	2013-09-21 12:36:49.261642
150	FINANCIAL	2013-09-21 12:36:49.26982	2013-09-21 12:36:49.26982
151	PARMACY	2013-09-21 12:36:49.278388	2013-09-21 12:36:49.278388
152	FINANCE	2013-09-21 12:36:49.286817	2013-09-21 12:36:49.286817
153	FINANCE &ACTSFINANCIAL	2013-09-21 12:36:49.295195	2013-09-21 12:36:49.295195
154	FINANCIAL CONTROLLER	2013-09-21 12:36:49.303487	2013-09-21 12:36:49.303487
155	FIREBRIGDE	2013-09-21 12:36:49.311839	2013-09-21 12:36:49.311839
156	FITTER	2013-09-21 12:36:49.32022	2013-09-21 12:36:49.32022
157	FRIEND	2013-09-21 12:36:49.32852	2013-09-21 12:36:49.32852
158	FRIENDS	2013-09-21 12:36:49.336721	2013-09-21 12:36:49.336721
159	FRIND OFFICE	2013-09-21 12:36:49.345103	2013-09-21 12:36:49.345103
160	GENRAL MANAGER	2013-09-21 12:36:49.353515	2013-09-21 12:36:49.353515
161	GENRAL MANAGER IN BUSSINESS	2013-09-21 12:36:49.361838	2013-09-21 12:36:49.361838
162	GLOBAL TEKNOLOJI DEVELOPMENT	2013-09-21 12:36:49.371429	2013-09-21 12:36:49.371429
163	GLOBLE  RISK LABORATORY	2013-09-21 12:36:49.378484	2013-09-21 12:36:49.378484
164	GRAFISH	2013-09-21 12:36:49.386553	2013-09-21 12:36:49.386553
165	GROUND HANDLING	2013-09-21 12:36:49.394935	2013-09-21 12:36:49.394935
166	HAIRDRESSER & MAKEUP ARTIST	2013-09-21 12:36:49.403266	2013-09-21 12:36:49.403266
167	HEAD CONSATBLE	2013-09-21 12:36:49.411562	2013-09-21 12:36:49.411562
168	HEAD QTRS	2013-09-21 12:36:49.419906	2013-09-21 12:36:49.419906
169	HEALTH	2013-09-21 12:36:49.428194	2013-09-21 12:36:49.428194
170	HIGHER GRADE ASSISTANT	2013-09-21 12:36:49.436575	2013-09-21 12:36:49.436575
171	HYDRO QUEBEC	2013-09-21 12:36:49.445051	2013-09-21 12:36:49.445051
172	IMPLEMENTATION	2013-09-21 12:36:49.453417	2013-09-21 12:36:49.453417
173	INDUSTRIAL	2013-09-21 12:36:49.461738	2013-09-21 12:36:49.461738
174	INDUSTRIAL AUTOMATION	2013-09-21 12:36:49.586855	2013-09-21 12:36:49.586855
175	INFORMATION	2013-09-21 12:36:49.620809	2013-09-21 12:36:49.620809
176	INFORMATION TECHNOLOGY SOFTWARE	2013-09-21 12:36:49.786567	2013-09-21 12:36:49.786567
177	INFRASTRUCTURE	2013-09-21 12:36:49.79484	2013-09-21 12:36:49.79484
178	INFRATECH MANAGEMENT CONSULTANTS	2013-09-21 12:36:49.803134	2013-09-21 12:36:49.803134
179	INSORT	2013-09-21 12:36:49.811415	2013-09-21 12:36:49.811415
180	INSPECTOR	2013-09-21 12:36:49.81978	2013-09-21 12:36:49.81978
181	INSURANCE	2013-09-21 12:36:49.82808	2013-09-21 12:36:49.82808
182	INTEGRATION	2013-09-21 12:36:49.836379	2013-09-21 12:36:49.836379
183	INTEGRATOR	2013-09-21 12:36:49.844569	2013-09-21 12:36:49.844569
184	INTERIO-LAB	2013-09-21 12:36:49.852856	2013-09-21 12:36:49.852856
185	INTERIOR	2013-09-21 12:36:49.861349	2013-09-21 12:36:49.861349
186	INTERNATIONAL BUSINESS	2013-09-21 12:36:49.869588	2013-09-21 12:36:49.869588
187	INTERVIWE	2013-09-21 12:36:49.877965	2013-09-21 12:36:49.877965
188	INVESTMENT	2013-09-21 12:36:49.886126	2013-09-21 12:36:49.886126
189	HELP SAFETY	2013-09-21 12:36:49.894417	2013-09-21 12:36:49.894417
190	JOINT COMMISSIONER	2013-09-21 12:36:49.902833	2013-09-21 12:36:49.902833
191	JOUNIOR ENGINEERING	2013-09-21 12:36:49.911196	2013-09-21 12:36:49.911196
192	JUNIOR	2013-09-21 12:36:49.919317	2013-09-21 12:36:49.919317
193	JUNIOR CLERK	2013-09-21 12:36:49.927963	2013-09-21 12:36:49.927963
194	JUNIOR ELECTRICAL ENGINEER	2013-09-21 12:36:49.936425	2013-09-21 12:36:49.936425
195	JUNIOR TECHNICAL SUPERINTENDENT	2013-09-21 12:36:49.94478	2013-09-21 12:36:49.94478
196	JUNIOR TECHNICIAN	2013-09-21 12:36:49.953049	2013-09-21 12:36:49.953049
197	LAB TECHNICHAN	2013-09-21 12:36:49.961139	2013-09-21 12:36:49.961139
198	LABORATORY	2013-09-21 12:36:49.969652	2013-09-21 12:36:49.969652
199	LACTURALE	2013-09-21 12:36:49.977981	2013-09-21 12:36:49.977981
200	LASCAR	2013-09-21 12:36:49.986203	2013-09-21 12:36:49.986203
201	LEADER	2013-09-21 12:36:49.994498	2013-09-21 12:36:49.994498
202	LECTURER	2013-09-21 12:36:50.003064	2013-09-21 12:36:50.003064
203	LECTURERS	2013-09-21 12:36:50.011235	2013-09-21 12:36:50.011235
204	LEICA MICROSYSTEM SERVICE	2013-09-21 12:36:50.019571	2013-09-21 12:36:50.019571
205	LOGHISTIC MANAGER	2013-09-21 12:36:50.027763	2013-09-21 12:36:50.027763
206	M.S.C.AGRICULTURE	2013-09-21 12:36:50.036169	2013-09-21 12:36:50.036169
207	MAC ENGINEERING	2013-09-21 12:36:50.044609	2013-09-21 12:36:50.044609
208	MAHARASHTRA JEEVAN PRADHIKARAN	2013-09-21 12:36:50.05297	2013-09-21 12:36:50.05297
209	MAINTENANCE	2013-09-21 12:36:50.061232	2013-09-21 12:36:50.061232
210	MAJOR ARCHITECT MANAGER	2013-09-21 12:36:50.069521	2013-09-21 12:36:50.069521
211	MANAGEMENT	2013-09-21 12:36:50.077573	2013-09-21 12:36:50.077573
212	OPERATIONS	2013-09-21 12:36:50.086219	2013-09-21 12:36:50.086219
213	MANAGING DIRECTOR	2013-09-21 12:36:50.094402	2013-09-21 12:36:50.094402
214	MANUFACTURING	2013-09-21 12:36:50.102727	2013-09-21 12:36:50.102727
215	MARKET SECURTY	2013-09-21 12:36:50.111159	2013-09-21 12:36:50.111159
216	MATERIAL MANAGEMENT	2013-09-21 12:36:50.120492	2013-09-21 12:36:50.120492
217	MEASUREMENT	2013-09-21 12:36:50.12776	2013-09-21 12:36:50.12776
218	MECHANICAL ENGINEERING	2013-09-21 12:36:50.13608	2013-09-21 12:36:50.13608
219	MECHANICAL OPERATOR	2013-09-21 12:36:50.144373	2013-09-21 12:36:50.144373
220	MEDICINE	2013-09-21 12:36:50.152617	2013-09-21 12:36:50.152617
221	METER READING	2013-09-21 12:36:50.160913	2013-09-21 12:36:50.160913
222	MICROBIOLOGY	2013-09-21 12:36:50.16923	2013-09-21 12:36:50.16923
223	MINISTERING BRODCASTING	2013-09-21 12:36:50.177596	2013-09-21 12:36:50.177596
224	MOTOR TRANSFER FUNCTION	2013-09-21 12:36:50.185911	2013-09-21 12:36:50.185911
225	MSC AGRICULTURE	2013-09-21 12:36:50.194428	2013-09-21 12:36:50.194428
226	NATIONAL	2013-09-21 12:36:50.202759	2013-09-21 12:36:50.202759
227	NATIONAL SALES MANAGER	2013-09-21 12:36:50.211101	2013-09-21 12:36:50.211101
228	NETWORK SOLUTIONS	2013-09-21 12:36:50.219339	2013-09-21 12:36:50.219339
229	OFFICE MANAGEMENT STAFF	2013-09-21 12:36:50.227568	2013-09-21 12:36:50.227568
230	OPERATING	2013-09-21 12:36:50.235945	2013-09-21 12:36:50.235945
231	OPERATION & MAINTENANCE	2013-09-21 12:36:50.244243	2013-09-21 12:36:50.244243
232	OPERATION MANAGER	2013-09-21 12:36:50.252588	2013-09-21 12:36:50.252588
233	OPTOMETRIST	2013-09-21 12:36:50.262029	2013-09-21 12:36:50.262029
234	ORTHOPEDIC	2013-09-21 12:36:50.269136	2013-09-21 12:36:50.269136
235	PANCHAYAT COMMITTEE	2013-09-21 12:36:50.277558	2013-09-21 12:36:50.277558
236	PARTNER	2013-09-21 12:36:50.28574	2013-09-21 12:36:50.28574
237	PASSENGER	2013-09-21 12:36:50.294054	2013-09-21 12:36:50.294054
238	GARD	2013-09-21 12:36:50.302387	2013-09-21 12:36:50.302387
239	PATHOLOGY	2013-09-21 12:36:50.310688	2013-09-21 12:36:50.310688
240	PENSION	2013-09-21 12:36:50.319041	2013-09-21 12:36:50.319041
241	PEON	2013-09-21 12:36:50.329701	2013-09-21 12:36:50.329701
242	PERSONAL DATA BASE	2013-09-21 12:36:50.335825	2013-09-21 12:36:50.335825
243	PERSONAL EXECUTIVE	2013-09-21 12:36:50.344311	2013-09-21 12:36:50.344311
244	PHARMACYS	2013-09-21 12:36:50.352695	2013-09-21 12:36:50.352695
245	PHARMACYS SECTION	2013-09-21 12:36:50.361139	2013-09-21 12:36:50.361139
246	PHILOSOPHY	2013-09-21 12:36:50.369249	2013-09-21 12:36:50.369249
247	POLICE COMMISSIONER	2013-09-21 12:36:50.378517	2013-09-21 12:36:50.378517
248	POLICE CONSTABLE	2013-09-21 12:36:50.385767	2013-09-21 12:36:50.385767
249	POLICE CONSTEBAL	2013-09-21 12:36:50.394133	2013-09-21 12:36:50.394133
250	POLLUTION LAW DIVISION	2013-09-21 12:36:50.402258	2013-09-21 12:36:50.402258
251	POST ELECTRICAL	2013-09-21 12:36:50.41061	2013-09-21 12:36:50.41061
252	MANAGER	2013-09-21 12:36:50.418957	2013-09-21 12:36:50.418957
253	POST JUNIOR CLERK	2013-09-21 12:36:50.427446	2013-09-21 12:36:50.427446
254	POST SENIOR ANALYST	2013-09-21 12:36:50.43564	2013-09-21 12:36:50.43564
255	POSTGRADUATE DIPLOMA IN FORESTRY	2013-09-21 12:36:50.443982	2013-09-21 12:36:50.443982
256	PREMIER WEALTH MANAGER	2013-09-21 12:36:50.452396	2013-09-21 12:36:50.452396
257	PRIMESES	2013-09-21 12:36:50.460608	2013-09-21 12:36:50.460608
258	PRINCIPAL SEINE	2013-09-21 12:36:50.469028	2013-09-21 12:36:50.469028
259	PRIVATE EQUITY	2013-09-21 12:36:50.47738	2013-09-21 12:36:50.47738
260	PROCESS	2013-09-21 12:36:50.485551	2013-09-21 12:36:50.485551
261	PROCUREMENT	2013-09-21 12:36:50.493824	2013-09-21 12:36:50.493824
262	PRODUCT	2013-09-21 12:36:50.502448	2013-09-21 12:36:50.502448
263	PRODUCTION	2013-09-21 12:36:50.510648	2013-09-21 12:36:50.510648
264	PROFESSION IS	2013-09-21 12:36:50.519023	2013-09-21 12:36:50.519023
265	PROFESSOR	2013-09-21 12:36:50.527305	2013-09-21 12:36:50.527305
266	PROGRAMER	2013-09-21 12:36:50.535692	2013-09-21 12:36:50.535692
267	PROJECT	2013-09-21 12:36:50.543898	2013-09-21 12:36:50.543898
268	PROPOSAL	2013-09-21 12:36:50.552353	2013-09-21 12:36:50.552353
269	PROPRIETOR	2013-09-21 12:36:50.560463	2013-09-21 12:36:50.560463
270	PUBLIC & MORTALITY	2013-09-21 12:36:50.568798	2013-09-21 12:36:50.568798
271	PURCHASE	2013-09-21 12:36:50.577137	2013-09-21 12:36:50.577137
272	PURCHASE MANAGER	2013-09-21 12:36:50.585604	2013-09-21 12:36:50.585604
273	QUALIFICATION	2013-09-21 12:36:50.593938	2013-09-21 12:36:50.593938
274	QULITY CONTROL	2013-09-21 12:36:50.602093	2013-09-21 12:36:50.602093
275	REACTOR SAFETY	2013-09-21 12:36:50.61067	2013-09-21 12:36:50.61067
276	REGINAL SELES MANAGER	2013-09-21 12:36:50.619175	2013-09-21 12:36:50.619175
277	REGISTER	2013-09-21 12:36:50.627107	2013-09-21 12:36:50.627107
278	REGISTRAR MEDICAL	2013-09-21 12:36:50.635665	2013-09-21 12:36:50.635665
279	REGULATING	2013-09-21 12:36:50.643976	2013-09-21 12:36:50.643976
280	REGULATORY AFFAIRS	2013-09-21 12:36:50.652233	2013-09-21 12:36:50.652233
281	REGULATORY EXECUTIVE	2013-09-21 12:36:50.660603	2013-09-21 12:36:50.660603
282	RELATIONSHIP	2013-09-21 12:36:50.668905	2013-09-21 12:36:50.668905
283	REPAIR WALL	2013-09-21 12:36:50.677203	2013-09-21 12:36:50.677203
284	RESEARCH & DEVELOPMENT AGRICULTURE	2013-09-21 12:36:50.685542	2013-09-21 12:36:50.685542
285	RESEARCH ASSOCIATE	2013-09-21 12:36:50.693703	2013-09-21 12:36:50.693703
286	RESEARCH LABORATORY	2013-09-21 12:36:50.702019	2013-09-21 12:36:50.702019
287	RESERCH	2013-09-21 12:36:50.710372	2013-09-21 12:36:50.710372
288	RESPONDED	2013-09-21 12:36:50.718927	2013-09-21 12:36:50.718927
289	REVENUE	2013-09-21 12:36:50.72723	2013-09-21 12:36:50.72723
290	REVENUE ACCOUNT	2013-09-21 12:36:50.735535	2013-09-21 12:36:50.735535
291	RISK MANAGEMENT	2013-09-21 12:36:50.743725	2013-09-21 12:36:50.743725
292	SALES COORDINATOR	2013-09-21 12:36:50.752005	2013-09-21 12:36:50.752005
293	SALES SCHEME	2013-09-21 12:36:50.760399	2013-09-21 12:36:50.760399
294	SALES TEAM LEADER	2013-09-21 12:36:50.768645	2013-09-21 12:36:50.768645
295	SCIENTIFIC	2013-09-21 12:36:50.776969	2013-09-21 12:36:50.776969
296	OFFICER	2013-09-21 12:36:50.785451	2013-09-21 12:36:50.785451
297	SCIENTIST	2013-09-21 12:36:50.793772	2013-09-21 12:36:50.793772
298	SECOND OFFICER	2013-09-21 12:36:50.801959	2013-09-21 12:36:50.801959
299	SECRETARIAL	2013-09-21 12:36:50.810266	2013-09-21 12:36:50.810266
300	SECRETARY	2013-09-21 12:36:50.818601	2013-09-21 12:36:50.818601
301	SECTION	2013-09-21 12:36:50.826908	2013-09-21 12:36:50.826908
302	SECURITY	2013-09-21 12:36:50.835219	2013-09-21 12:36:50.835219
303	SELES CO-ORDINATOR	2013-09-21 12:36:50.84383	2013-09-21 12:36:50.84383
304	SENIOR ACCOUNTANT	2013-09-21 12:36:50.85216	2013-09-21 12:36:50.85216
305	SENIOR ADVISOR &CONSULTANT	2013-09-21 12:36:50.860511	2013-09-21 12:36:50.860511
306	SENIOR ANALYST	2013-09-21 12:36:50.868637	2013-09-21 12:36:50.868637
307	SENIOR ASSISTANT CONSULTANT	2013-09-21 12:36:50.876918	2013-09-21 12:36:50.876918
308	SENIOR AUDITOR	2013-09-21 12:36:50.885397	2013-09-21 12:36:50.885397
309	SENIOR CAD MANAGER TECHNICIAN	2013-09-21 12:36:50.89362	2013-09-21 12:36:50.89362
310	SENIOR CLERK,SENIOR CONDUCTION	2013-09-21 12:36:50.901938	2013-09-21 12:36:50.901938
311	SENIOR CONSULTANT	2013-09-21 12:36:50.910237	2013-09-21 12:36:50.910237
312	SENIOR CLERK	2013-09-21 12:36:50.918561	2013-09-21 12:36:50.918561
313	SENIOR DUPTY ENGINEER	2013-09-21 12:36:50.926921	2013-09-21 12:36:50.926921
314	SENIOR ENGINEER	2013-09-21 12:36:50.935237	2013-09-21 12:36:50.935237
315	SENIOR EXECUTIVE	2013-09-21 12:36:50.943575	2013-09-21 12:36:50.943575
316	SENIOR GENERAL MANAGER	2013-09-21 12:36:50.951919	2013-09-21 12:36:50.951919
317	SENIOR INSPECTOR	2013-09-21 12:36:50.960238	2013-09-21 12:36:50.960238
318	SENIOR MANAGER	2013-09-21 12:36:50.968518	2013-09-21 12:36:50.968518
319	SENIOR OFFICER GRAED 1	2013-09-21 12:36:50.976889	2013-09-21 12:36:50.976889
320	SENIOR PHARMACYS	2013-09-21 12:36:50.985143	2013-09-21 12:36:50.985143
321	SENIOR PRODUCTION ENGG	2013-09-21 12:36:50.993643	2013-09-21 12:36:50.993643
322	SENIOR RELATIONSHIP MANAGER	2013-09-21 12:36:51.001832	2013-09-21 12:36:51.001832
323	SENIOR RESEARCH ANALYST	2013-09-21 12:36:51.010167	2013-09-21 12:36:51.010167
324	SENIOR SECTION SUPERVISIOR	2013-09-21 12:36:51.01849	2013-09-21 12:36:51.01849
325	SENIOR SECTION SUPERVISIOR.	2013-09-21 12:36:51.02682	2013-09-21 12:36:51.02682
326	SENIOR SERVICE	2013-09-21 12:36:51.035146	2013-09-21 12:36:51.035146
327	ENGINEER	2013-09-21 12:36:51.043485	2013-09-21 12:36:51.043485
328	SENIOR SPECIALIST	2013-09-21 12:36:51.051812	2013-09-21 12:36:51.051812
329	SENIOR STENOGRAPHER	2013-09-21 12:36:51.060313	2013-09-21 12:36:51.060313
330	SENIOR TECHNICIAN	2013-09-21 12:36:51.068517	2013-09-21 12:36:51.068517
331	SENIOR TERRITORY	2013-09-21 12:36:51.076775	2013-09-21 12:36:51.076775
332	SENIOUR ADMINISTRATOR	2013-09-21 12:36:51.085079	2013-09-21 12:36:51.085079
333	SENIOUR EXECUTIVE	2013-09-21 12:36:51.093572	2013-09-21 12:36:51.093572
334	SENOIR HR ADMIN	2013-09-21 12:36:51.10177	2013-09-21 12:36:51.10177
335	SERVICE	2013-09-21 12:36:51.110088	2013-09-21 12:36:51.110088
336	SERVICE ENGINEER	2013-09-21 12:36:51.235178	2013-09-21 12:36:51.235178
337	STAFF NURSE	2013-09-21 12:36:51.243503	2013-09-21 12:36:51.243503
338	SHOP & ESTABLISHMENT LICENSE	2013-09-21 12:36:51.351811	2013-09-21 12:36:51.351811
339	SENIOR VICE PRESIDENT	2013-09-21 12:36:51.360044	2013-09-21 12:36:51.360044
340	SISTHA	2013-09-21 12:36:51.368383	2013-09-21 12:36:51.368383
341	SITE ENGINEER	2013-09-21 12:36:51.377868	2013-09-21 12:36:51.377868
342	SOFTWARE	2013-09-21 12:36:51.385008	2013-09-21 12:36:51.385008
343	SOFTWARE ENGINEER	2013-09-21 12:36:51.393318	2013-09-21 12:36:51.393318
344	SPECIALIST	2013-09-21 12:36:51.401532	2013-09-21 12:36:51.401532
345	SPECILSED	2013-09-21 12:36:51.409989	2013-09-21 12:36:51.409989
346	SR. MEDICAL ADVISOR	2013-09-21 12:36:51.418112	2013-09-21 12:36:51.418112
347	STABILITY OFFICER	2013-09-21 12:36:51.426605	2013-09-21 12:36:51.426605
348	STAFF	2013-09-21 12:36:51.434842	2013-09-21 12:36:51.434842
349	STATE INTELLIGENCE	2013-09-21 12:36:51.444332	2013-09-21 12:36:51.444332
350	STATIONARY	2013-09-21 12:36:51.451452	2013-09-21 12:36:51.451452
351	STENOGRAPHER	2013-09-21 12:36:51.45974	2013-09-21 12:36:51.45974
352	STOCK EXCHANGE	2013-09-21 12:36:51.468147	2013-09-21 12:36:51.468147
353	STRUCTURAL ENGINEERING	2013-09-21 12:36:51.476488	2013-09-21 12:36:51.476488
354	SUPERINTENDENT	2013-09-21 12:36:51.484778	2013-09-21 12:36:51.484778
355	SUPERVISIOR	2013-09-21 12:36:51.493168	2013-09-21 12:36:51.493168
356	SUPPLY CHAIN (PRODUCTION)	2013-09-21 12:36:51.501621	2013-09-21 12:36:51.501621
357	SUPPLY CHAIN MANAGER	2013-09-21 12:36:51.509781	2013-09-21 12:36:51.509781
358	SUPPORT	2013-09-21 12:36:51.518019	2013-09-21 12:36:51.518019
359	SURVIVOR	2013-09-21 12:36:51.526381	2013-09-21 12:36:51.526381
360	SYBASE UNWIRED PLATFORM	2013-09-21 12:36:51.534672	2013-09-21 12:36:51.534672
361	SYSTEM	2013-09-21 12:36:51.542998	2013-09-21 12:36:51.542998
362	SYSTEM ADMINISTRATOR	2013-09-21 12:36:51.551529	2013-09-21 12:36:51.551529
363	TAHSILDAR	2013-09-21 12:36:51.559845	2013-09-21 12:36:51.559845
364	TEACHER	2013-09-21 12:36:51.568057	2013-09-21 12:36:51.568057
365	TECHNICAL	2013-09-21 12:36:51.576411	2013-09-21 12:36:51.576411
366	TECHNICAL MANAGER	2013-09-21 12:36:51.584694	2013-09-21 12:36:51.584694
367	TECHNICAL OFFICER	2013-09-21 12:36:51.592986	2013-09-21 12:36:51.592986
368	TECHNICAL SOFTWARE ENGINEER	2013-09-21 12:36:51.601457	2013-09-21 12:36:51.601457
369	TECHNICAN	2013-09-21 12:36:51.609656	2013-09-21 12:36:51.609656
370	TECHNOLOGY	2013-09-21 12:36:51.617966	2013-09-21 12:36:51.617966
371	TEST ENGINEER	2013-09-21 12:36:51.626448	2013-09-21 12:36:51.626448
372	TESTING	2013-09-21 12:36:51.634616	2013-09-21 12:36:51.634616
373	TESTING SOGETI	2013-09-21 12:36:51.643165	2013-09-21 12:36:51.643165
374	TEXCEL	2013-09-21 12:36:51.651467	2013-09-21 12:36:51.651467
375	TEXSTYLE	2013-09-21 12:36:51.659734	2013-09-21 12:36:51.659734
376	THREE DESGNIOR	2013-09-21 12:36:51.668139	2013-09-21 12:36:51.668139
377	TOWN PLANNING	2013-09-21 12:36:51.676469	2013-09-21 12:36:51.676469
378	TRAFFIC	2013-09-21 12:36:51.722761	2013-09-21 12:36:51.722761
379	CONTROLLER	2013-09-21 12:36:51.735227	2013-09-21 12:36:51.735227
380	TRANSPORT	2013-09-21 12:36:51.742457	2013-09-21 12:36:51.742457
381	TRANSPORTATION	2013-09-21 12:36:51.751288	2013-09-21 12:36:51.751288
382	TRANSPORT POLICE CONSTABAL.	2013-09-21 12:36:51.759794	2013-09-21 12:36:51.759794
383	TUITION	2013-09-21 12:36:51.767975	2013-09-21 12:36:51.767975
384	TYPIST	2013-09-21 12:36:51.77629	2013-09-21 12:36:51.77629
385	UNDER SECURITY	2013-09-21 12:36:51.784611	2013-09-21 12:36:51.784611
386	UNDERWRITING	2013-09-21 12:36:51.792903	2013-09-21 12:36:51.792903
387	UTELITE	2013-09-21 12:36:51.803121	2013-09-21 12:36:51.803121
388	UTILITIES	2013-09-21 12:36:51.976486	2013-09-21 12:36:51.976486
389	VICE PRESIDENT	2013-09-21 12:36:52.000562	2013-09-21 12:36:52.000562
390	VIGILENCE	2013-09-21 12:36:52.009403	2013-09-21 12:36:52.009403
391	VIGILENCE  ELECTRICAL  SUPPLY	2013-09-21 12:36:52.017731	2013-09-21 12:36:52.017731
392	YOGA THERAPIST	2013-09-21 12:36:52.027393	2013-09-21 12:36:52.027393
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
1	Telephones	2013-09-21 12:36:52.245365	2013-09-21 12:36:52.245365
2	Computer	2013-09-21 12:36:52.258817	2013-09-21 12:36:52.258817
3	Fax	2013-09-21 12:36:52.266546	2013-09-21 12:36:52.266546
4	AC	2013-09-21 12:36:52.274752	2013-09-21 12:36:52.274752
5	Photocopier	2013-09-21 12:36:52.283099	2013-09-21 12:36:52.283099
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at) FROM stdin;
1	Fort	400001	2013-09-21 12:36:52.415861	2013-09-21 12:36:52.415861
2	Kalbadevi	400002	2013-09-21 12:36:52.435782	2013-09-21 12:36:52.435782
3	Masjid(e)	400003	2013-09-21 12:36:52.443053	2013-09-21 12:36:52.443053
4	Girgaum	400004	2013-09-21 12:36:52.451367	2013-09-21 12:36:52.451367
5	Colaba	400005	2013-09-21 12:36:52.4599	2013-09-21 12:36:52.4599
6	Malabar hill	400006	2013-09-21 12:36:52.468101	2013-09-21 12:36:52.468101
7	Grant Road	400007	2013-09-21 12:36:52.476514	2013-09-21 12:36:52.476514
8	Mumbai Central	400008	2013-09-21 12:36:52.484593	2013-09-21 12:36:52.484593
9	Masjid(w)	400009	2013-09-21 12:36:52.492845	2013-09-21 12:36:52.492845
10	Mazgaon	400010	2013-09-21 12:36:52.501207	2013-09-21 12:36:52.501207
11	Jacob Circle	400011	2013-09-21 12:36:52.509357	2013-09-21 12:36:52.509357
12	lalbaug	400012	2013-09-21 12:36:52.517835	2013-09-21 12:36:52.517835
13	delisle road	400013	2013-09-21 12:36:52.526158	2013-09-21 12:36:52.526158
14	Dadar	400014	2013-09-21 12:36:52.534476	2013-09-21 12:36:52.534476
15	Sewree	400015	2013-09-21 12:36:52.542758	2013-09-21 12:36:52.542758
16	Mahim	400016	2013-09-21 12:36:52.551019	2013-09-21 12:36:52.551019
17	Dharavi	400017	2013-09-21 12:36:52.559333	2013-09-21 12:36:52.559333
18	Worli	400018	2013-09-21 12:36:52.567658	2013-09-21 12:36:52.567658
19	Matunga Central	400019	2013-09-21 12:36:52.575923	2013-09-21 12:36:52.575923
20	Churchgate	400020	2013-09-21 12:36:52.584276	2013-09-21 12:36:52.584276
21	Nariman Point	400021	2013-09-21 12:36:52.592577	2013-09-21 12:36:52.592577
22	Sion	400022	2013-09-21 12:36:52.600879	2013-09-21 12:36:52.600879
23	Dalal Street	400023	2013-09-21 12:36:52.610683	2013-09-21 12:36:52.610683
24	Kurla	400024	2013-09-21 12:36:52.626456	2013-09-21 12:36:52.626456
25	Prabhadevi	400025	2013-09-21 12:36:52.634428	2013-09-21 12:36:52.634428
26	Byculla(e)	400027	2013-09-21 12:36:52.71247	2013-09-21 12:36:52.71247
27	Santacruz(e)	400029	2013-09-21 12:36:52.779657	2013-09-21 12:36:52.779657
28	PGMS Office	400030	2013-09-21 12:36:52.792652	2013-09-21 12:36:52.792652
29	Wadala	400031	2013-09-21 12:36:52.909428	2013-09-21 12:36:52.909428
30	Mantralaya	400032	2013-09-21 12:36:52.917528	2013-09-21 12:36:52.917528
31	Cotton Green	400033	2013-09-21 12:36:52.925815	2013-09-21 12:36:52.925815
32	Haji Ali	400034	2013-09-21 12:36:52.934133	2013-09-21 12:36:52.934133
33	Raj Bhavan	400035	2013-09-21 12:36:52.942451	2013-09-21 12:36:52.942451
34	Kemps corner	400036	2013-09-21 12:36:52.950772	2013-09-21 12:36:52.950772
35	Antop hill	400037	2013-09-21 12:36:52.959154	2013-09-21 12:36:52.959154
36	Ballard Pier	400038	2013-09-21 12:36:52.967475	2013-09-21 12:36:52.967475
37	Ballard Estate	400039	2013-09-21 12:36:52.97566	2013-09-21 12:36:52.97566
38	Jogeshwari(e)	400041	2013-09-21 12:36:52.984024	2013-09-21 12:36:52.984024
39	Bhandup	400042	2013-09-21 12:36:52.992357	2013-09-21 12:36:52.992357
40	Mankhurd	400043	2013-09-21 12:36:53.00086	2013-09-21 12:36:53.00086
41	Vile Parle(e)	400047	2013-09-21 12:36:53.009008	2013-09-21 12:36:53.009008
42	Andheri(w)	400048	2013-09-21 12:36:53.017265	2013-09-21 12:36:53.017265
43	bandra	400050	2013-09-21 12:36:53.028942	2013-09-21 12:36:53.028942
44	Khar	400051	2013-09-21 12:36:53.042223	2013-09-21 12:36:53.042223
45	Santacruz(w)	400054	2013-09-21 12:36:53.057184	2013-09-21 12:36:53.057184
46	Vile parle(w)	400056	2013-09-21 12:36:53.070524	2013-09-21 12:36:53.070524
47	Andheri(e)	400058	2013-09-21 12:36:53.087181	2013-09-21 12:36:53.087181
48	Goregaon(w)	400062	2013-09-21 12:36:53.110513	2013-09-21 12:36:53.110513
49	Goregaon(e)	400063	2013-09-21 12:36:53.117166	2013-09-21 12:36:53.117166
50	Malad(w)	400064	2013-09-21 12:36:53.125437	2013-09-21 12:36:53.125437
51	Goregoan(e)	400065	2013-09-21 12:36:53.133784	2013-09-21 12:36:53.133784
52	Borivali(e)	400066	2013-09-21 12:36:53.142112	2013-09-21 12:36:53.142112
53	Kandivali(w)	400067	2013-09-21 12:36:53.150643	2013-09-21 12:36:53.150643
54	Dahisar	400068	2013-09-21 12:36:53.158772	2013-09-21 12:36:53.158772
55	Chembur	400071	2013-09-21 12:36:53.17368	2013-09-21 12:36:53.17368
56	Ghatkopar	400075	2013-09-21 12:36:53.190925	2013-09-21 12:36:53.190925
57	Powai	400076	2013-09-21 12:36:53.200513	2013-09-21 12:36:53.200513
58	Vikroli	400079	2013-09-21 12:36:53.215665	2013-09-21 12:36:53.215665
59	Mulund	400080	2013-09-21 12:36:53.225437	2013-09-21 12:36:53.225437
60	Niete	400087	2013-09-21 12:36:53.249977	2013-09-21 12:36:53.249977
61	Deonar	400088	2013-09-21 12:36:53.258906	2013-09-21 12:36:53.258906
62	Borivali(w)	400091	2013-09-21 12:36:53.273727	2013-09-21 12:36:53.273727
63	Malad(e)	400097	2013-09-21 12:36:53.290114	2013-09-21 12:36:53.290114
64	Kandivali(e)	400101	2013-09-21 12:36:53.309384	2013-09-21 12:36:53.309384
65	Jogeshwari(w)	400102	2013-09-21 12:36:53.317126	2013-09-21 12:36:53.317126
66	Bhayandar(e)	400105	2013-09-21 12:36:53.332205	2013-09-21 12:36:53.332205
67	Thane	400601	2013-09-21 12:36:53.345489	2013-09-21 12:36:53.345489
68	Kalwa	400605	2013-09-21 12:36:53.368636	2013-09-21 12:36:53.368636
69	Mumbra	400612	2013-09-21 12:36:53.385052	2013-09-21 12:36:53.385052
70	Turbhe	400613	2013-09-21 12:36:53.392057	2013-09-21 12:36:53.392057
71	CBD	400614	2013-09-21 12:36:53.40044	2013-09-21 12:36:53.40044
72	Ghansoli	400701	2013-09-21 12:36:53.408729	2013-09-21 12:36:53.408729
73	Uran	400702	2013-09-21 12:36:53.416911	2013-09-21 12:36:53.416911
74	Vashi	400703	2013-09-21 12:36:53.425386	2013-09-21 12:36:53.425386
75	Nerul	400706	2013-09-21 12:36:53.440301	2013-09-21 12:36:53.440301
76	Airoli	400708	2013-09-21 12:36:53.45043	2013-09-21 12:36:53.45043
77	KK	400709	2013-09-21 12:36:53.458699	2013-09-21 12:36:53.458699
78	Bhayandar(w)	401101	2013-09-21 12:36:53.470393	2013-09-21 12:36:53.470393
79	Umparpada	401102	2013-09-21 12:36:53.483574	2013-09-21 12:36:53.483574
80	Dahanu(w)	401103	2013-09-21 12:36:53.492048	2013-09-21 12:36:53.492048
81	Mira Road(e)	401104	2013-09-21 12:36:53.500273	2013-09-21 12:36:53.500273
82	Vasai(w)	401201	2013-09-21 12:36:53.518406	2013-09-21 12:36:53.518406
83	Nalasopara(w)	401203	2013-09-21 12:36:53.528658	2013-09-21 12:36:53.528658
84	Virar(e)	401204	2013-09-21 12:36:53.54178	2013-09-21 12:36:53.54178
85	Vasai(e)	401205	2013-09-21 12:36:53.550308	2013-09-21 12:36:53.550308
86	NalaSopara(e)	401209	2013-09-21 12:36:53.568565	2013-09-21 12:36:53.568565
87	Virar(w)	401301	2013-09-21 12:36:53.578641	2013-09-21 12:36:53.578641
88	Palghar(e)	401404	2013-09-21 12:36:53.601825	2013-09-21 12:36:53.601825
89	Palghar(w)	401501	2013-09-21 12:36:53.608408	2013-09-21 12:36:53.608408
90	Dahanu(e)	401601	2013-09-21 12:36:53.629866	2013-09-21 12:36:53.629866
91	Dahanu	401608	2013-09-21 12:36:53.648605	2013-09-21 12:36:53.648605
92	Panvel	410206	2013-09-21 12:36:53.661931	2013-09-21 12:36:53.661931
93	Kamothe	410209	2013-09-21 12:36:53.678571	2013-09-21 12:36:53.678571
94	Kharghar	410210	2013-09-21 12:36:53.691863	2013-09-21 12:36:53.691863
95	Kalamboli	410218	2013-09-21 12:36:53.700387	2013-09-21 12:36:53.700387
96	Ulhasnagar	421001	2013-09-21 12:36:53.708567	2013-09-21 12:36:53.708567
97	Ambivali	421102	2013-09-21 12:36:53.730051	2013-09-21 12:36:53.730051
98	Dombivali	421201	2013-09-21 12:36:53.741817	2013-09-21 12:36:53.741817
99	Kalyan	421301	2013-09-21 12:36:53.760167	2013-09-21 12:36:53.760167
100	Bhiwandi	421302	2013-09-21 12:36:53.766862	2013-09-21 12:36:53.766862
101	Wada	421303	2013-09-21 12:36:53.775147	2013-09-21 12:36:53.775147
102	Ambernath	421501	2013-09-21 12:36:53.793276	2013-09-21 12:36:53.793276
103	Badlapur	421506	2013-09-21 12:36:53.809797	2013-09-21 12:36:53.809797
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 103, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
1	1	2013-09-21 12:40:25.430996	2013-09-21 12:40:25.430996	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 1, true);


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
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serveys (id, customer_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 1, false);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2013-09-21 12:39:21.332071	2013-09-21 12:39:21.332071	\N	\N	\N
2	TAB-VIKROLI	T0102031	2013-09-21 12:39:25.955038	2013-09-21 12:39:25.955038	\N	\N	\N
3	TAB-SION	T0102032	2013-09-21 12:39:30.68392	2013-09-21 12:39:30.68392	\N	\N	\N
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
1	sudhirsb2003@gmail.com	$2a$10$KjqhVOdAwVWQuB0Bt8xRXOHwbXWlYgLCtrp2Xa.q1D3Bzsnsxvqme	\N	\N	\N	0	\N	\N	\N	\N	2013-09-21 12:40:25.427817	2013-09-21 12:40:25.427817	super_user	sudhir vishwakarma	\N
2	blazetango@gmail.com	$2a$10$AATwRBjJSJRjeJVUgTme9..Qaiik8DZ3LOo1rhAgOoz9aQjGwDm2q	\N	\N	\N	0	\N	\N	\N	\N	2013-09-21 12:42:50.923949	2013-09-21 12:42:50.923949	tab_user	chetan tandel	1
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


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
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 1, false);


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

