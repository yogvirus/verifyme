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
1	Ration Card	2013-09-14 08:07:39.519167	2013-09-14 08:07:39.519167
2	Electricity Bill	2013-09-14 08:07:39.54846	2013-09-14 08:07:39.54846
3	Telephone Bill	2013-09-14 08:07:39.556131	2013-09-14 08:07:39.556131
4	Bank Statement card	2013-09-14 08:07:39.564483	2013-09-14 08:07:39.564483
5	Driving licence	2013-09-14 08:07:39.572839	2013-09-14 08:07:39.572839
6	Passport	2013-09-14 08:07:39.581129	2013-09-14 08:07:39.581129
\.


--
-- Name: address_proofs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('address_proofs_id_seq', 6, true);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
1	admin@example.com	$2a$10$xOCRj5BMM2BNNx3Egdjip.lktlVfMzPBdPcZkUGSV109BECENgVGK	\N	\N	\N	0	\N	\N	\N	\N	2013-09-14 08:07:11.103797	2013-09-14 08:07:11.103797	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2013-09-14 08:07:39.677116	2013-09-14 08:07:39.677116
2	Air Conditioner	2013-09-14 08:07:39.689665	2013-09-14 08:07:39.689665
3	Refrigrator	2013-09-14 08:07:39.697643	2013-09-14 08:07:39.697643
4	Music System	2013-09-14 08:07:39.706047	2013-09-14 08:07:39.706047
\.


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assets_id_seq', 4, true);


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2013-09-14 08:07:39.603808	2013-09-14 08:07:39.603808
2	Salary Slip	2013-09-14 08:07:39.614524	2013-09-14 08:07:39.614524
3	Mobile Bill	2013-09-14 08:07:39.622836	2013-09-14 08:07:39.622836
4	Pan Card	2013-09-14 08:07:39.631107	2013-09-14 08:07:39.631107
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
1	3	\N	1	5	2013-09-20 13:47:20.772559	2013-09-20 13:47:20.801223
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 1, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id) FROM stdin;
1	1002	Scorp Enterprises	f	1002	HARESH SURESH POKALE	BUSINESS		L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	59	haresh-suresh-pokale	\N	\N	ready_for_verification	2	2013-09-20 13:47:02.04377	2013-09-21 09:58:21.303036	L & T LTD	\N	\N	\N
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 1, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
1	1	6	3	\N	2013-09-20 13:51:38.779266	2013-09-20 13:51:38.798768
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

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id) FROM stdin;
1	1002	Scorp Enterprises	f	1002	BHARTI GANGARAM KHOBAREKAR	BUSINESS		ROBONIC INDIA PVT LTD, REAGEND DIVISON, PLOT NO A 374, TTC MIDC INDL. AREA, MAHAPE\r\n	INDIA	mumbai	maharashtra	77	bharti-gangaram-khobarekar	19.0759836999999983	72.8776558999999935	submitted	2	ROBONIC INDIA PVT LTD	2013-09-20 13:51:20.88754	2013-09-20 13:51:20.88754	\N	\N	\N
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
1	1	3	\N	1	2013-09-20 13:50:23.336045	2013-09-20 13:50:23.362263
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 1, true);


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
1	BHARTI GANGARAM KHOBAREKAR	Scorp Enterprises	f	1002		INDIA	MAHARASHTRA	THANE	bharti-gangaram-khobarekar	ready_for_verification	2	A 002, GIRISHMA CHSL, PRAKRUTI PARK, BRAHMAND, OPP GB ROAD, THANE\r\n	19.2183306999999992	72.9780896999999982	RESIDENTIAL	2013-09-20 13:50:11.290277	2013-09-21 10:00:38.905689	\N	1002	67	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 1, true);


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
2	3	2	2	2013-09-20 13:45:51.794117	2013-09-20 13:45:51.818599	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 2, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required) FROM stdin;
2	1002	Scorp Enterprises	1002	HARESH SURESH POKALE	A 002, GIRISHMA CHSL, PRAKRUTI PARK, BRAHMAND, OPP GB ROAD, THANE\r\n		\N	65	2013-09-20 13:42:41.041014	2013-09-20 13:42:41.041014	haresh-suresh-pokale	19.2183306999999992	72.9780896999999982	\N	9821129517	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f
1	1001	Scorp Enterprises	1001	SHARDUL VIJAY KAMATE 	A-1, PARIJAT CHS, PLOT -64, SECT-28, VASHI, NAVIMUMBAI \r\n	vashi	\N	1	2013-09-19 06:12:55.127853	2013-09-21 10:19:40.209782	shardul-vijay-kamate	\N	\N	\N	9029229192/9029476345	ready_for_verification	\N	Maharshtra	Mumbai	INDIA	\N	RESIDENTIAL	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 2, true);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departments (id, name, created_at, updated_at) FROM stdin;
1	A/C OFFICER MTNL	2013-09-21 10:34:09.806804	2013-09-21 10:34:09.806804
2	ACCESS SYSTEM	2013-09-21 10:34:09.910477	2013-09-21 10:34:09.910477
3	ACCOUNT & FINANCE MANAGER	2013-09-21 10:34:09.9186	2013-09-21 10:34:09.9186
4	ACCOUNT FINANCE	2013-09-21 10:34:09.926853	2013-09-21 10:34:09.926853
5	ACCOUNTANT AUDIT	2013-09-21 10:34:09.935268	2013-09-21 10:34:09.935268
6	ADDITIONAL	2013-09-21 10:34:09.943749	2013-09-21 10:34:09.943749
7	ADMINISTRATOR	2013-09-21 10:34:09.952071	2013-09-21 10:34:09.952071
8	ADVANCED CENTER FOR WOMEN RESEARCH	2013-09-21 10:34:09.960226	2013-09-21 10:34:09.960226
9	ADVISOR	2013-09-21 10:34:09.968785	2013-09-21 10:34:09.968785
10	AGRICULTURE	2013-09-21 10:34:09.977016	2013-09-21 10:34:09.977016
11	AGRICULTURE SERVICES	2013-09-21 10:34:09.985222	2013-09-21 10:34:09.985222
12	AIRCRAFT	2013-09-21 10:34:09.99365	2013-09-21 10:34:09.99365
13	MAINTENANCE ENGINEERING	2013-09-21 10:34:10.001837	2013-09-21 10:34:10.001837
14	ALLOTMENT LETTER	2013-09-21 10:34:10.010414	2013-09-21 10:34:10.010414
15	ANALAYZE	2013-09-21 10:34:10.018516	2013-09-21 10:34:10.018516
16	ANALTST	2013-09-21 10:34:10.026971	2013-09-21 10:34:10.026971
17	ANALYSE	2013-09-21 10:34:10.035699	2013-09-21 10:34:10.035699
18	ANALYST	2013-09-21 10:34:10.043696	2013-09-21 10:34:10.043696
19	ANIMAL HUSBANDRY	2013-09-21 10:34:10.051985	2013-09-21 10:34:10.051985
20	APPLICATION ANALYSE	2013-09-21 10:34:10.060144	2013-09-21 10:34:10.060144
21	APPLICATION DEVLOPMENT	2013-09-21 10:34:10.069028	2013-09-21 10:34:10.069028
22	APPORVAL	2013-09-21 10:34:10.077103	2013-09-21 10:34:10.077103
23	ARCHITECT	2013-09-21 10:34:10.085231	2013-09-21 10:34:10.085231
24	ASSEMBLY	2013-09-21 10:34:10.094046	2013-09-21 10:34:10.094046
25	ASSEMBLY FITTER	2013-09-21 10:34:10.10193	2013-09-21 10:34:10.10193
26	ASSISTANCE  MANAGER	2013-09-21 10:34:10.110417	2013-09-21 10:34:10.110417
27	ASSISTANCE GENRAL MANAGER	2013-09-21 10:34:10.118667	2013-09-21 10:34:10.118667
28	ASSISTANT	2013-09-21 10:34:10.127028	2013-09-21 10:34:10.127028
29	COMPUTER OPREATOR	2013-09-21 10:34:10.135367	2013-09-21 10:34:10.135367
30	ASSISTANT CONSULTANCY	2013-09-21 10:34:10.143656	2013-09-21 10:34:10.143656
31	ASSISTANT ENGGINER	2013-09-21 10:34:10.152022	2013-09-21 10:34:10.152022
32	ASSISTANT FOREMAN	2013-09-21 10:34:10.160348	2013-09-21 10:34:10.160348
33	ASSISTANT LAW OFFICER	2013-09-21 10:34:10.169943	2013-09-21 10:34:10.169943
34	ASSISTANT LOCO	2013-09-21 10:34:10.176889	2013-09-21 10:34:10.176889
35	PILOT	2013-09-21 10:34:10.185319	2013-09-21 10:34:10.185319
36	ASSISTANT MANAGER	2013-09-21 10:34:10.193376	2013-09-21 10:34:10.193376
37	ASSISTANT PROFESSOR	2013-09-21 10:34:10.201789	2013-09-21 10:34:10.201789
38	ASSISTANT SALES MANAGER	2013-09-21 10:34:10.21039	2013-09-21 10:34:10.21039
39	ASSISTANT SUPERINTENDENT	2013-09-21 10:34:10.218697	2013-09-21 10:34:10.218697
40	ASSISTANT TEACHER	2013-09-21 10:34:10.226114	2013-09-21 10:34:10.226114
41	ASSISTANT WISE	2013-09-21 10:34:10.234444	2013-09-21 10:34:10.234444
42	PRESIDENT & DELIVERY MANAGER	2013-09-21 10:34:10.243545	2013-09-21 10:34:10.243545
43	ASSIT  CONSULTANCY	2013-09-21 10:34:10.251138	2013-09-21 10:34:10.251138
44	ASSIT COMPUTER OPREATOR 	2013-09-21 10:34:10.259807	2013-09-21 10:34:10.259807
45	ASSIT PROFESSOR	2013-09-21 10:34:10.267881	2013-09-21 10:34:10.267881
46	ASSOCIAITE	2013-09-21 10:34:10.276828	2013-09-21 10:34:10.276828
47	ASSOCIAITE PROFESSOR	2013-09-21 10:34:10.284359	2013-09-21 10:34:10.284359
48	SENIOR GREAT	2013-09-21 10:34:10.293218	2013-09-21 10:34:10.293218
49	ASSOCIAITE VICE PRESIDENT	2013-09-21 10:34:10.301218	2013-09-21 10:34:10.301218
50	ASSOCIATE	2013-09-21 10:34:10.309957	2013-09-21 10:34:10.309957
51	ASSOCIATE SOCIAL MEDIA	2013-09-21 10:34:10.317455	2013-09-21 10:34:10.317455
52	ASTROLOGY	2013-09-21 10:34:10.325625	2013-09-21 10:34:10.325625
53	ATOMIC ENERGY	2013-09-21 10:34:10.333917	2013-09-21 10:34:10.333917
54	AUDIT DIRECTOR	2013-09-21 10:34:10.342219	2013-09-21 10:34:10.342219
55	AUDITOR	2013-09-21 10:34:10.352858	2013-09-21 10:34:10.352858
56	AUTOMOBILE ENGINEERING	2013-09-21 10:34:10.358912	2013-09-21 10:34:10.358912
57	BIOSCINES	2013-09-21 10:34:10.367432	2013-09-21 10:34:10.367432
58	BMC MUNCIPAL CORPORATION	2013-09-21 10:34:10.375772	2013-09-21 10:34:10.375772
59	BUILDING & FACTORIES DEVELOPER	2013-09-21 10:34:10.383993	2013-09-21 10:34:10.383993
60	BUSINESS AUDIT	2013-09-21 10:34:10.392446	2013-09-21 10:34:10.392446
61	BUSINESS DEVELOPER	2013-09-21 10:34:10.400852	2013-09-21 10:34:10.400852
62	BUSINESS DEVELOPMENT MANAGER	2013-09-21 10:34:10.409046	2013-09-21 10:34:10.409046
63	BUSINESS ENABLING TEAM	2013-09-21 10:34:10.417826	2013-09-21 10:34:10.417826
64	BUSINESS RESEARCH	2013-09-21 10:34:10.426365	2013-09-21 10:34:10.426365
65	BYO CHEMISTRY	2013-09-21 10:34:10.434343	2013-09-21 10:34:10.434343
66	C.A LICENCE	2013-09-21 10:34:10.442888	2013-09-21 10:34:10.442888
67	CONSALTUNT	2013-09-21 10:34:10.450772	2013-09-21 10:34:10.450772
68	CARGO INCHARG	2013-09-21 10:34:10.459828	2013-09-21 10:34:10.459828
69	CASIER	2013-09-21 10:34:10.468216	2013-09-21 10:34:10.468216
70	CENTRAL EXCISE MUMBAI III	2013-09-21 10:34:10.476554	2013-09-21 10:34:10.476554
71	CHANNEL SALES EXECUTIVE	2013-09-21 10:34:10.48478	2013-09-21 10:34:10.48478
72	CHEMICAL	2013-09-21 10:34:10.493066	2013-09-21 10:34:10.493066
73	CHEMISTRY	2013-09-21 10:34:10.501371	2013-09-21 10:34:10.501371
74	CHIEF AIRCRAFT	2013-09-21 10:34:10.509935	2013-09-21 10:34:10.509935
75	OPERATOR	2013-09-21 10:34:10.518275	2013-09-21 10:34:10.518275
76	CHIEF ENGINEER	2013-09-21 10:34:10.526498	2013-09-21 10:34:10.526498
77	CHIEF FINANCE CONSULTANT	2013-09-21 10:34:10.53503	2013-09-21 10:34:10.53503
78	CHIF STAFF INSPECTOR	2013-09-21 10:34:10.543265	2013-09-21 10:34:10.543265
79	CIVIL CONSTRUCTION	2013-09-21 10:34:10.551406	2013-09-21 10:34:10.551406
80	CLERK	2013-09-21 10:34:10.559924	2013-09-21 10:34:10.559924
81	CLERK CUM TYPIST	2013-09-21 10:34:10.568151	2013-09-21 10:34:10.568151
82	CLIENT	2013-09-21 10:34:10.576544	2013-09-21 10:34:10.576544
83	SERVICES	2013-09-21 10:34:10.58474	2013-09-21 10:34:10.58474
84	COAL LOGISTICS FOR POWER PLANTS	2013-09-21 10:34:10.593076	2013-09-21 10:34:10.593076
85	COMMANDER	2013-09-21 10:34:10.601567	2013-09-21 10:34:10.601567
86	COMMERCIAL	2013-09-21 10:34:10.609856	2013-09-21 10:34:10.609856
87	COMMISSION OF CENTRAL EXCISE REVENUE	2013-09-21 10:34:10.61808	2013-09-21 10:34:10.61808
88	COMPARTMENT	2013-09-21 10:34:10.626453	2013-09-21 10:34:10.626453
89	COMPLIANCE	2013-09-21 10:34:10.634731	2013-09-21 10:34:10.634731
90	COMPLIMENTARY ANUR VECHIL MEDICS	2013-09-21 10:34:10.643093	2013-09-21 10:34:10.643093
91	COMPUTER TECHNICAL	2013-09-21 10:34:10.651362	2013-09-21 10:34:10.651362
92	CONDUCTOR	2013-09-21 10:34:10.65979	2013-09-21 10:34:10.65979
93	CONSTRUCTION	2013-09-21 10:34:10.668087	2013-09-21 10:34:10.668087
94	CONSTRUCTION MANAGEMENT	2013-09-21 10:34:10.676437	2013-09-21 10:34:10.676437
95	CONSULTANCE	2013-09-21 10:34:10.684589	2013-09-21 10:34:10.684589
96	CONSULTANCY	2013-09-21 10:34:10.692874	2013-09-21 10:34:10.692874
97	CONSULTANT	2013-09-21 10:34:10.701206	2013-09-21 10:34:10.701206
98	CONTAINER MAINTENANCE	2013-09-21 10:34:10.759745	2013-09-21 10:34:10.759745
99	CO-ORDINATOR	2013-09-21 10:34:10.767953	2013-09-21 10:34:10.767953
100	CORPORATE ACTIONS	2013-09-21 10:34:10.776225	2013-09-21 10:34:10.776225
101	COUNSELLOR	2013-09-21 10:34:10.784129	2013-09-21 10:34:10.784129
102	CREADIT MANAGER	2013-09-21 10:34:10.792955	2013-09-21 10:34:10.792955
103	CREATIVE	2013-09-21 10:34:10.801129	2013-09-21 10:34:10.801129
104	CUSTOMER SERVICE	2013-09-21 10:34:10.809364	2013-09-21 10:34:10.809364
105	D.Y. COMMISSIONER	2013-09-21 10:34:10.817701	2013-09-21 10:34:10.817701
106	DAUGHTER	2013-09-21 10:34:10.825931	2013-09-21 10:34:10.825931
107	DEPUTY	2013-09-21 10:34:10.834131	2013-09-21 10:34:10.834131
108	DEPUTY CHIFE OFFICER	2013-09-21 10:34:10.842643	2013-09-21 10:34:10.842643
109	DEPUTY COMMISINOR	2013-09-21 10:34:10.851066	2013-09-21 10:34:10.851066
110	DEPUTY COMMISSIONER	2013-09-21 10:34:10.859269	2013-09-21 10:34:10.859269
111	DEPUTY DIRECTOR	2013-09-21 10:34:10.86798	2013-09-21 10:34:10.86798
112	DEPUTY DIRECTOR OF TOWN PLANNING	2013-09-21 10:34:10.876369	2013-09-21 10:34:10.876369
113	DEPUTY ENGINEER	2013-09-21 10:34:10.884547	2013-09-21 10:34:10.884547
114	DEPUTY GENRAL	2013-09-21 10:34:10.892631	2013-09-21 10:34:10.892631
115	DEPUTY GENRAL MANAGER	2013-09-21 10:34:10.901026	2013-09-21 10:34:10.901026
116	DEPUTY MANAGER	2013-09-21 10:34:10.909546	2013-09-21 10:34:10.909546
117	DEPUTY MANAGER TECHNICAL	2013-09-21 10:34:10.917842	2013-09-21 10:34:10.917842
118	DEPUTY PROJECT DIRECTOR	2013-09-21 10:34:10.92596	2013-09-21 10:34:10.92596
119	DESIGNER	2013-09-21 10:34:10.934382	2013-09-21 10:34:10.934382
120	DESINOR	2013-09-21 10:34:10.942579	2013-09-21 10:34:10.942579
121	DESK OFFICER	2013-09-21 10:34:10.950921	2013-09-21 10:34:10.950921
122	DEVELOPMENT	2013-09-21 10:34:10.95923	2013-09-21 10:34:10.95923
123	DEVLOPMENT	2013-09-21 10:34:10.967718	2013-09-21 10:34:10.967718
124	DGM (DEPUTY,GERNERAL MANAGER)	2013-09-21 10:34:10.976049	2013-09-21 10:34:10.976049
125	DIRECTOR	2013-09-21 10:34:11.025991	2013-09-21 10:34:11.025991
126	DIRECTOR PROPERITOR	2013-09-21 10:34:11.034284	2013-09-21 10:34:11.034284
127	DIRECTOR REFAR	2013-09-21 10:34:11.042591	2013-09-21 10:34:11.042591
128	DISTRACTION	2013-09-21 10:34:11.176103	2013-09-21 10:34:11.176103
129	DRILLING	2013-09-21 10:34:11.312608	2013-09-21 10:34:11.312608
130	DRIVER	2013-09-21 10:34:11.325681	2013-09-21 10:34:11.325681
131	DUTY OFFICER	2013-09-21 10:34:11.333961	2013-09-21 10:34:11.333961
132	EDUCATION	2013-09-21 10:34:11.342294	2013-09-21 10:34:11.342294
133	ELECTRICAL MANAGER	2013-09-21 10:34:11.350669	2013-09-21 10:34:11.350669
134	ELECTRICIAN	2013-09-21 10:34:11.359034	2013-09-21 10:34:11.359034
135	ELECTRONICS	2013-09-21 10:34:11.367384	2013-09-21 10:34:11.367384
136	ENDOCRINOLOGY	2013-09-21 10:34:11.375678	2013-09-21 10:34:11.375678
137	ENGG ELECTRICAL	2013-09-21 10:34:11.383958	2013-09-21 10:34:11.383958
138	ENGGINERING	2013-09-21 10:34:11.392459	2013-09-21 10:34:11.392459
139	ENGGINERING ELECTRICAL	2013-09-21 10:34:11.400587	2013-09-21 10:34:11.400587
140	EQUIPMENT OPERATOR	2013-09-21 10:34:11.40894	2013-09-21 10:34:11.40894
141	ESTABLISHMENT	2013-09-21 10:34:11.417399	2013-09-21 10:34:11.417399
142	EXCHANGE	2013-09-21 10:34:11.425689	2013-09-21 10:34:11.425689
143	EXCUTIVE SALES SUPPORTS	2013-09-21 10:34:11.434094	2013-09-21 10:34:11.434094
144	EXECUTIVE	2013-09-21 10:34:11.442261	2013-09-21 10:34:11.442261
145	EXECUTIVE  SECRETARIES	2013-09-21 10:34:11.450499	2013-09-21 10:34:11.450499
146	ASSISTANT MANAGING DIRECTOR	2013-09-21 10:34:11.46073	2013-09-21 10:34:11.46073
147	EXECUTIVE ENGINEER	2013-09-21 10:34:11.467148	2013-09-21 10:34:11.467148
148	EXPORT IMPORT	2013-09-21 10:34:11.475785	2013-09-21 10:34:11.475785
149	FACILITY	2013-09-21 10:34:11.484005	2013-09-21 10:34:11.484005
150	FINANCIAL	2013-09-21 10:34:11.492457	2013-09-21 10:34:11.492457
151	PARMACY	2013-09-21 10:34:11.500644	2013-09-21 10:34:11.500644
152	FINANCE	2013-09-21 10:34:11.509119	2013-09-21 10:34:11.509119
153	FINANCE &ACTSFINANCIAL	2013-09-21 10:34:11.517479	2013-09-21 10:34:11.517479
154	FINANCIAL CONTROLLER	2013-09-21 10:34:11.525727	2013-09-21 10:34:11.525727
155	FIREBRIGDE	2013-09-21 10:34:11.533971	2013-09-21 10:34:11.533971
156	FITTER	2013-09-21 10:34:11.54237	2013-09-21 10:34:11.54237
157	FRIEND	2013-09-21 10:34:11.550649	2013-09-21 10:34:11.550649
158	FRIENDS	2013-09-21 10:34:11.559034	2013-09-21 10:34:11.559034
159	FRIND OFFICE	2013-09-21 10:34:11.5676	2013-09-21 10:34:11.5676
160	GENRAL MANAGER	2013-09-21 10:34:11.575896	2013-09-21 10:34:11.575896
161	GENRAL MANAGER IN BUSSINESS	2013-09-21 10:34:11.584067	2013-09-21 10:34:11.584067
162	GLOBAL TEKNOLOJI DEVELOPMENT	2013-09-21 10:34:11.593533	2013-09-21 10:34:11.593533
163	GLOBLE  RISK LABORATORY	2013-09-21 10:34:11.60053	2013-09-21 10:34:11.60053
164	GRAFISH	2013-09-21 10:34:11.6087	2013-09-21 10:34:11.6087
165	GROUND HANDLING	2013-09-21 10:34:11.617356	2013-09-21 10:34:11.617356
166	HAIRDRESSER & MAKEUP ARTIST	2013-09-21 10:34:11.625643	2013-09-21 10:34:11.625643
167	HEAD CONSATBLE	2013-09-21 10:34:11.633954	2013-09-21 10:34:11.633954
168	HEAD QTRS	2013-09-21 10:34:11.64217	2013-09-21 10:34:11.64217
169	HEALTH	2013-09-21 10:34:11.650579	2013-09-21 10:34:11.650579
170	HIGHER GRADE ASSISTANT	2013-09-21 10:34:11.659015	2013-09-21 10:34:11.659015
171	HYDRO QUEBEC	2013-09-21 10:34:11.667368	2013-09-21 10:34:11.667368
172	IMPLEMENTATION	2013-09-21 10:34:11.676228	2013-09-21 10:34:11.676228
173	INDUSTRIAL	2013-09-21 10:34:11.684117	2013-09-21 10:34:11.684117
174	INDUSTRIAL AUTOMATION	2013-09-21 10:34:11.692279	2013-09-21 10:34:11.692279
175	INFORMATION	2013-09-21 10:34:11.700836	2013-09-21 10:34:11.700836
176	INFORMATION TECHNOLOGY SOFTWARE	2013-09-21 10:34:11.708987	2013-09-21 10:34:11.708987
177	INFRASTRUCTURE	2013-09-21 10:34:11.717418	2013-09-21 10:34:11.717418
178	INFRATECH MANAGEMENT CONSULTANTS	2013-09-21 10:34:11.725599	2013-09-21 10:34:11.725599
179	INSORT	2013-09-21 10:34:11.733799	2013-09-21 10:34:11.733799
180	INSPECTOR	2013-09-21 10:34:11.742341	2013-09-21 10:34:11.742341
181	INSURANCE	2013-09-21 10:34:11.750552	2013-09-21 10:34:11.750552
182	INTEGRATION	2013-09-21 10:34:11.759072	2013-09-21 10:34:11.759072
183	INTEGRATOR	2013-09-21 10:34:11.76737	2013-09-21 10:34:11.76737
184	INTERIO-LAB	2013-09-21 10:34:11.775795	2013-09-21 10:34:11.775795
185	INTERIOR	2013-09-21 10:34:11.784077	2013-09-21 10:34:11.784077
186	INTERNATIONAL BUSINESS	2013-09-21 10:34:11.792279	2013-09-21 10:34:11.792279
187	INTERVIWE	2013-09-21 10:34:11.800899	2013-09-21 10:34:11.800899
188	INVESTMENT	2013-09-21 10:34:11.809184	2013-09-21 10:34:11.809184
189	HELP SAFETY	2013-09-21 10:34:11.817133	2013-09-21 10:34:11.817133
190	JOINT COMMISSIONER	2013-09-21 10:34:11.825298	2013-09-21 10:34:11.825298
191	JOUNIOR ENGINEERING	2013-09-21 10:34:11.833847	2013-09-21 10:34:11.833847
192	JUNIOR	2013-09-21 10:34:11.842163	2013-09-21 10:34:11.842163
193	JUNIOR CLERK	2013-09-21 10:34:11.850327	2013-09-21 10:34:11.850327
194	JUNIOR ELECTRICAL ENGINEER	2013-09-21 10:34:11.858624	2013-09-21 10:34:11.858624
195	JUNIOR TECHNICAL SUPERINTENDENT	2013-09-21 10:34:11.866984	2013-09-21 10:34:11.866984
196	JUNIOR TECHNICIAN	2013-09-21 10:34:11.87531	2013-09-21 10:34:11.87531
197	LAB TECHNICHAN	2013-09-21 10:34:11.883768	2013-09-21 10:34:11.883768
198	LABORATORY	2013-09-21 10:34:11.892079	2013-09-21 10:34:11.892079
199	LACTURALE	2013-09-21 10:34:11.900504	2013-09-21 10:34:11.900504
200	LASCAR	2013-09-21 10:34:11.90871	2013-09-21 10:34:11.90871
201	LEADER	2013-09-21 10:34:11.917228	2013-09-21 10:34:11.917228
202	LECTURER	2013-09-21 10:34:11.925327	2013-09-21 10:34:11.925327
203	LECTURERS	2013-09-21 10:34:11.934047	2013-09-21 10:34:11.934047
204	LEICA MICROSYSTEM SERVICE	2013-09-21 10:34:11.942105	2013-09-21 10:34:11.942105
205	LOGHISTIC MANAGER	2013-09-21 10:34:11.950568	2013-09-21 10:34:11.950568
206	M.S.C.AGRICULTURE	2013-09-21 10:34:11.959196	2013-09-21 10:34:11.959196
207	MAC ENGINEERING	2013-09-21 10:34:11.967325	2013-09-21 10:34:11.967325
208	MAHARASHTRA JEEVAN PRADHIKARAN	2013-09-21 10:34:11.991349	2013-09-21 10:34:11.991349
209	MAINTENANCE	2013-09-21 10:34:12.010159	2013-09-21 10:34:12.010159
210	MAJOR ARCHITECT MANAGER	2013-09-21 10:34:12.026049	2013-09-21 10:34:12.026049
211	MANAGEMENT	2013-09-21 10:34:12.032998	2013-09-21 10:34:12.032998
212	OPERATIONS	2013-09-21 10:34:12.041784	2013-09-21 10:34:12.041784
213	MANAGING DIRECTOR	2013-09-21 10:34:12.050031	2013-09-21 10:34:12.050031
214	MANUFACTURING	2013-09-21 10:34:12.058879	2013-09-21 10:34:12.058879
215	MARKET SECURTY	2013-09-21 10:34:12.067149	2013-09-21 10:34:12.067149
216	MATERIAL MANAGEMENT	2013-09-21 10:34:12.076856	2013-09-21 10:34:12.076856
217	MEASUREMENT	2013-09-21 10:34:12.083644	2013-09-21 10:34:12.083644
218	MECHANICAL ENGINEERING	2013-09-21 10:34:12.091909	2013-09-21 10:34:12.091909
219	MECHANICAL OPERATOR	2013-09-21 10:34:12.100274	2013-09-21 10:34:12.100274
220	MEDICINE	2013-09-21 10:34:12.108388	2013-09-21 10:34:12.108388
221	METER READING	2013-09-21 10:34:12.116992	2013-09-21 10:34:12.116992
222	MICROBIOLOGY	2013-09-21 10:34:12.12491	2013-09-21 10:34:12.12491
223	MINISTERING BRODCASTING	2013-09-21 10:34:12.133839	2013-09-21 10:34:12.133839
224	MOTOR TRANSFER FUNCTION	2013-09-21 10:34:12.14204	2013-09-21 10:34:12.14204
225	MSC AGRICULTURE	2013-09-21 10:34:12.150365	2013-09-21 10:34:12.150365
226	NATIONAL	2013-09-21 10:34:12.158628	2013-09-21 10:34:12.158628
227	NATIONAL SALES MANAGER	2013-09-21 10:34:12.166843	2013-09-21 10:34:12.166843
228	NETWORK SOLUTIONS	2013-09-21 10:34:12.175312	2013-09-21 10:34:12.175312
229	OFFICE MANAGEMENT STAFF	2013-09-21 10:34:12.183743	2013-09-21 10:34:12.183743
230	OPERATING	2013-09-21 10:34:12.192216	2013-09-21 10:34:12.192216
231	OPERATION & MAINTENANCE	2013-09-21 10:34:12.200707	2013-09-21 10:34:12.200707
232	OPERATION MANAGER	2013-09-21 10:34:12.208322	2013-09-21 10:34:12.208322
233	OPTOMETRIST	2013-09-21 10:34:12.21886	2013-09-21 10:34:12.21886
234	ORTHOPEDIC	2013-09-21 10:34:12.225208	2013-09-21 10:34:12.225208
235	PANCHAYAT COMMITTEE	2013-09-21 10:34:12.233675	2013-09-21 10:34:12.233675
236	PARTNER	2013-09-21 10:34:12.2419	2013-09-21 10:34:12.2419
237	PASSENGER	2013-09-21 10:34:12.25049	2013-09-21 10:34:12.25049
238	GARD	2013-09-21 10:34:12.258592	2013-09-21 10:34:12.258592
239	PATHOLOGY	2013-09-21 10:34:12.267431	2013-09-21 10:34:12.267431
240	PENSION	2013-09-21 10:34:12.275329	2013-09-21 10:34:12.275329
241	PEON	2013-09-21 10:34:12.283904	2013-09-21 10:34:12.283904
242	PERSONAL DATA BASE	2013-09-21 10:34:12.291901	2013-09-21 10:34:12.291901
243	PERSONAL EXECUTIVE	2013-09-21 10:34:12.300375	2013-09-21 10:34:12.300375
244	PHARMACYS	2013-09-21 10:34:12.308601	2013-09-21 10:34:12.308601
245	PHARMACYS SECTION	2013-09-21 10:34:12.316775	2013-09-21 10:34:12.316775
246	PHILOSOPHY	2013-09-21 10:34:12.325033	2013-09-21 10:34:12.325033
247	POLICE COMMISSIONER	2013-09-21 10:34:12.334325	2013-09-21 10:34:12.334325
248	POLICE CONSTABLE	2013-09-21 10:34:12.341607	2013-09-21 10:34:12.341607
249	POLICE CONSTEBAL	2013-09-21 10:34:12.349953	2013-09-21 10:34:12.349953
250	POLLUTION LAW DIVISION	2013-09-21 10:34:12.358145	2013-09-21 10:34:12.358145
251	POST ELECTRICAL	2013-09-21 10:34:12.36688	2013-09-21 10:34:12.36688
252	MANAGER	2013-09-21 10:34:12.375137	2013-09-21 10:34:12.375137
253	POST JUNIOR CLERK	2013-09-21 10:34:12.383506	2013-09-21 10:34:12.383506
254	POST SENIOR ANALYST	2013-09-21 10:34:12.391574	2013-09-21 10:34:12.391574
255	POSTGRADUATE DIPLOMA IN FORESTRY	2013-09-21 10:34:12.400186	2013-09-21 10:34:12.400186
256	PREMIER WEALTH MANAGER	2013-09-21 10:34:12.408397	2013-09-21 10:34:12.408397
257	PRIMESES	2013-09-21 10:34:12.416586	2013-09-21 10:34:12.416586
258	PRINCIPAL SEINE	2013-09-21 10:34:12.425089	2013-09-21 10:34:12.425089
259	PRIVATE EQUITY	2013-09-21 10:34:12.433435	2013-09-21 10:34:12.433435
260	PROCESS	2013-09-21 10:34:12.441728	2013-09-21 10:34:12.441728
261	PROCUREMENT	2013-09-21 10:34:12.450474	2013-09-21 10:34:12.450474
262	PRODUCT	2013-09-21 10:34:12.459631	2013-09-21 10:34:12.459631
263	PRODUCTION	2013-09-21 10:34:12.466667	2013-09-21 10:34:12.466667
264	PROFESSION IS	2013-09-21 10:34:12.475189	2013-09-21 10:34:12.475189
265	PROFESSOR	2013-09-21 10:34:12.482731	2013-09-21 10:34:12.482731
266	PROGRAMER	2013-09-21 10:34:12.491687	2013-09-21 10:34:12.491687
267	PROJECT	2013-09-21 10:34:12.500589	2013-09-21 10:34:12.500589
268	PROPOSAL	2013-09-21 10:34:12.509641	2013-09-21 10:34:12.509641
269	PROPRIETOR	2013-09-21 10:34:12.517053	2013-09-21 10:34:12.517053
270	PUBLIC & MORTALITY	2013-09-21 10:34:12.524349	2013-09-21 10:34:12.524349
271	PURCHASE	2013-09-21 10:34:12.532463	2013-09-21 10:34:12.532463
272	PURCHASE MANAGER	2013-09-21 10:34:12.658583	2013-09-21 10:34:12.658583
273	QUALIFICATION	2013-09-21 10:34:12.666466	2013-09-21 10:34:12.666466
274	QULITY CONTROL	2013-09-21 10:34:12.78224	2013-09-21 10:34:12.78224
275	REACTOR SAFETY	2013-09-21 10:34:12.790252	2013-09-21 10:34:12.790252
276	REGINAL SELES MANAGER	2013-09-21 10:34:12.798572	2013-09-21 10:34:12.798572
277	REGISTER	2013-09-21 10:34:12.806861	2013-09-21 10:34:12.806861
278	REGISTRAR MEDICAL	2013-09-21 10:34:12.815219	2013-09-21 10:34:12.815219
279	REGULATING	2013-09-21 10:34:12.823837	2013-09-21 10:34:12.823837
280	REGULATORY AFFAIRS	2013-09-21 10:34:12.8319	2013-09-21 10:34:12.8319
281	REGULATORY EXECUTIVE	2013-09-21 10:34:12.840225	2013-09-21 10:34:12.840225
282	RELATIONSHIP	2013-09-21 10:34:12.849491	2013-09-21 10:34:12.849491
283	REPAIR WALL	2013-09-21 10:34:12.857804	2013-09-21 10:34:12.857804
284	RESEARCH & DEVELOPMENT AGRICULTURE	2013-09-21 10:34:12.86607	2013-09-21 10:34:12.86607
285	RESEARCH ASSOCIATE	2013-09-21 10:34:12.874493	2013-09-21 10:34:12.874493
286	RESEARCH LABORATORY	2013-09-21 10:34:12.882874	2013-09-21 10:34:12.882874
287	RESERCH	2013-09-21 10:34:12.891212	2013-09-21 10:34:12.891212
288	RESPONDED	2013-09-21 10:34:12.89947	2013-09-21 10:34:12.89947
289	REVENUE	2013-09-21 10:34:12.907863	2013-09-21 10:34:12.907863
290	REVENUE ACCOUNT	2013-09-21 10:34:12.916294	2013-09-21 10:34:12.916294
291	RISK MANAGEMENT	2013-09-21 10:34:12.924418	2013-09-21 10:34:12.924418
292	SALES COORDINATOR	2013-09-21 10:34:12.932823	2013-09-21 10:34:12.932823
293	SALES SCHEME	2013-09-21 10:34:12.941141	2013-09-21 10:34:12.941141
294	SALES TEAM LEADER	2013-09-21 10:34:12.949485	2013-09-21 10:34:12.949485
295	SCIENTIFIC	2013-09-21 10:34:12.957767	2013-09-21 10:34:12.957767
296	OFFICER	2013-09-21 10:34:12.966338	2013-09-21 10:34:12.966338
297	SCIENTIST	2013-09-21 10:34:12.974628	2013-09-21 10:34:12.974628
298	SECOND OFFICER	2013-09-21 10:34:12.982755	2013-09-21 10:34:12.982755
299	SECRETARIAL	2013-09-21 10:34:12.991078	2013-09-21 10:34:12.991078
300	SECRETARY	2013-09-21 10:34:12.99968	2013-09-21 10:34:12.99968
301	SECTION	2013-09-21 10:34:13.008029	2013-09-21 10:34:13.008029
302	SECURITY	2013-09-21 10:34:13.016233	2013-09-21 10:34:13.016233
303	SELES CO-ORDINATOR	2013-09-21 10:34:13.024647	2013-09-21 10:34:13.024647
304	SENIOR ACCOUNTANT	2013-09-21 10:34:13.032927	2013-09-21 10:34:13.032927
305	SENIOR ADVISOR &CONSULTANT	2013-09-21 10:34:13.041096	2013-09-21 10:34:13.041096
306	SENIOR ANALYST	2013-09-21 10:34:13.049535	2013-09-21 10:34:13.049535
307	SENIOR ASSISTANT CONSULTANT	2013-09-21 10:34:13.057857	2013-09-21 10:34:13.057857
308	SENIOR AUDITOR	2013-09-21 10:34:13.066168	2013-09-21 10:34:13.066168
309	SENIOR CAD MANAGER TECHNICIAN	2013-09-21 10:34:13.074493	2013-09-21 10:34:13.074493
310	SENIOR CLERK,SENIOR CONDUCTION	2013-09-21 10:34:13.082949	2013-09-21 10:34:13.082949
311	SENIOR CONSULTANT	2013-09-21 10:34:13.091133	2013-09-21 10:34:13.091133
312	SENIOR CLERK	2013-09-21 10:34:13.099469	2013-09-21 10:34:13.099469
313	SENIOR DUPTY ENGINEER	2013-09-21 10:34:13.107843	2013-09-21 10:34:13.107843
314	SENIOR ENGINEER	2013-09-21 10:34:13.116021	2013-09-21 10:34:13.116021
315	SENIOR EXECUTIVE	2013-09-21 10:34:13.124323	2013-09-21 10:34:13.124323
316	SENIOR GENERAL MANAGER	2013-09-21 10:34:13.132658	2013-09-21 10:34:13.132658
317	SENIOR INSPECTOR	2013-09-21 10:34:13.140779	2013-09-21 10:34:13.140779
318	SENIOR MANAGER	2013-09-21 10:34:13.149265	2013-09-21 10:34:13.149265
319	SENIOR OFFICER GRAED 1	2013-09-21 10:34:13.157841	2013-09-21 10:34:13.157841
320	SENIOR PHARMACYS	2013-09-21 10:34:13.166007	2013-09-21 10:34:13.166007
321	SENIOR PRODUCTION ENGG	2013-09-21 10:34:13.174254	2013-09-21 10:34:13.174254
322	SENIOR RELATIONSHIP MANAGER	2013-09-21 10:34:13.182622	2013-09-21 10:34:13.182622
323	SENIOR RESEARCH ANALYST	2013-09-21 10:34:13.191058	2013-09-21 10:34:13.191058
324	SENIOR SECTION SUPERVISIOR	2013-09-21 10:34:13.199336	2013-09-21 10:34:13.199336
325	SENIOR SECTION SUPERVISIOR.	2013-09-21 10:34:13.207639	2013-09-21 10:34:13.207639
326	SENIOR SERVICE	2013-09-21 10:34:13.21601	2013-09-21 10:34:13.21601
327	ENGINEER	2013-09-21 10:34:13.224465	2013-09-21 10:34:13.224465
328	SENIOR SPECIALIST	2013-09-21 10:34:13.232779	2013-09-21 10:34:13.232779
329	SENIOR STENOGRAPHER	2013-09-21 10:34:13.240873	2013-09-21 10:34:13.240873
330	SENIOR TECHNICIAN	2013-09-21 10:34:13.249237	2013-09-21 10:34:13.249237
331	SENIOR TERRITORY	2013-09-21 10:34:13.257539	2013-09-21 10:34:13.257539
332	SENIOUR ADMINISTRATOR	2013-09-21 10:34:13.26731	2013-09-21 10:34:13.26731
333	SENIOUR EXECUTIVE	2013-09-21 10:34:13.275328	2013-09-21 10:34:13.275328
334	SENOIR HR ADMIN	2013-09-21 10:34:13.290534	2013-09-21 10:34:13.290534
335	SERVICE	2013-09-21 10:34:13.300922	2013-09-21 10:34:13.300922
336	SERVICE ENGINEER	2013-09-21 10:34:13.308011	2013-09-21 10:34:13.308011
337	STAFF NURSE	2013-09-21 10:34:13.317062	2013-09-21 10:34:13.317062
338	SHOP & ESTABLISHMENT LICENSE	2013-09-21 10:34:13.323653	2013-09-21 10:34:13.323653
339	SENIOR VICE PRESIDENT	2013-09-21 10:34:13.331903	2013-09-21 10:34:13.331903
340	SISTHA	2013-09-21 10:34:13.340033	2013-09-21 10:34:13.340033
341	SITE ENGINEER	2013-09-21 10:34:13.349064	2013-09-21 10:34:13.349064
342	SOFTWARE	2013-09-21 10:34:13.356719	2013-09-21 10:34:13.356719
343	SOFTWARE ENGINEER	2013-09-21 10:34:13.365212	2013-09-21 10:34:13.365212
344	SPECIALIST	2013-09-21 10:34:13.376088	2013-09-21 10:34:13.376088
345	SPECILSED	2013-09-21 10:34:13.381779	2013-09-21 10:34:13.381779
346	SR. MEDICAL ADVISOR	2013-09-21 10:34:13.389932	2013-09-21 10:34:13.389932
347	STABILITY OFFICER	2013-09-21 10:34:13.398396	2013-09-21 10:34:13.398396
348	STAFF	2013-09-21 10:34:13.406754	2013-09-21 10:34:13.406754
349	STATE INTELLIGENCE	2013-09-21 10:34:13.415628	2013-09-21 10:34:13.415628
350	STATIONARY	2013-09-21 10:34:13.423239	2013-09-21 10:34:13.423239
351	STENOGRAPHER	2013-09-21 10:34:13.434207	2013-09-21 10:34:13.434207
352	STOCK EXCHANGE	2013-09-21 10:34:13.441349	2013-09-21 10:34:13.441349
353	STRUCTURAL ENGINEERING	2013-09-21 10:34:13.449605	2013-09-21 10:34:13.449605
354	SUPERINTENDENT	2013-09-21 10:34:13.457171	2013-09-21 10:34:13.457171
355	SUPERVISIOR	2013-09-21 10:34:13.466001	2013-09-21 10:34:13.466001
356	SUPPLY CHAIN (PRODUCTION)	2013-09-21 10:34:13.474325	2013-09-21 10:34:13.474325
357	SUPPLY CHAIN MANAGER	2013-09-21 10:34:13.482577	2013-09-21 10:34:13.482577
358	SUPPORT	2013-09-21 10:34:13.49092	2013-09-21 10:34:13.49092
359	SURVIVOR	2013-09-21 10:34:13.499268	2013-09-21 10:34:13.499268
360	SYBASE UNWIRED PLATFORM	2013-09-21 10:34:13.507616	2013-09-21 10:34:13.507616
361	SYSTEM	2013-09-21 10:34:13.557445	2013-09-21 10:34:13.557445
362	SYSTEM ADMINISTRATOR	2013-09-21 10:34:13.565331	2013-09-21 10:34:13.565331
363	TAHSILDAR	2013-09-21 10:34:13.5737	2013-09-21 10:34:13.5737
364	TEACHER	2013-09-21 10:34:13.582	2013-09-21 10:34:13.582
365	TECHNICAL	2013-09-21 10:34:13.590314	2013-09-21 10:34:13.590314
366	TECHNICAL MANAGER	2013-09-21 10:34:13.598606	2013-09-21 10:34:13.598606
367	TECHNICAL OFFICER	2013-09-21 10:34:13.607483	2013-09-21 10:34:13.607483
368	TECHNICAL SOFTWARE ENGINEER	2013-09-21 10:34:13.61581	2013-09-21 10:34:13.61581
369	TECHNICAN	2013-09-21 10:34:13.624099	2013-09-21 10:34:13.624099
370	TECHNOLOGY	2013-09-21 10:34:13.632321	2013-09-21 10:34:13.632321
371	TEST ENGINEER	2013-09-21 10:34:13.640741	2013-09-21 10:34:13.640741
372	TESTING	2013-09-21 10:34:13.649144	2013-09-21 10:34:13.649144
373	TESTING SOGETI	2013-09-21 10:34:13.657449	2013-09-21 10:34:13.657449
374	TEXCEL	2013-09-21 10:34:13.665688	2013-09-21 10:34:13.665688
375	TEXSTYLE	2013-09-21 10:34:13.732432	2013-09-21 10:34:13.732432
376	THREE DESGNIOR	2013-09-21 10:34:13.782395	2013-09-21 10:34:13.782395
377	TOWN PLANNING	2013-09-21 10:34:13.790371	2013-09-21 10:34:13.790371
378	TRAFFIC	2013-09-21 10:34:13.798505	2013-09-21 10:34:13.798505
379	CONTROLLER	2013-09-21 10:34:13.80799	2013-09-21 10:34:13.80799
380	TRANSPORT	2013-09-21 10:34:13.815529	2013-09-21 10:34:13.815529
381	TRANSPORTATION	2013-09-21 10:34:13.823687	2013-09-21 10:34:13.823687
382	TRANSPORT POLICE CONSTABAL.	2013-09-21 10:34:13.832132	2013-09-21 10:34:13.832132
383	TUITION	2013-09-21 10:34:13.840359	2013-09-21 10:34:13.840359
384	TYPIST	2013-09-21 10:34:13.84867	2013-09-21 10:34:13.84867
385	UNDER SECURITY	2013-09-21 10:34:13.857116	2013-09-21 10:34:13.857116
386	UNDERWRITING	2013-09-21 10:34:13.865428	2013-09-21 10:34:13.865428
387	UTELITE	2013-09-21 10:34:13.87382	2013-09-21 10:34:13.87382
388	UTILITIES	2013-09-21 10:34:13.882581	2013-09-21 10:34:13.882581
389	VICE PRESIDENT	2013-09-21 10:34:13.89059	2013-09-21 10:34:13.89059
390	VIGILENCE	2013-09-21 10:34:13.898827	2013-09-21 10:34:13.898827
391	VIGILENCE  ELECTRICAL  SUPPLY	2013-09-21 10:34:13.907266	2013-09-21 10:34:13.907266
392	YOGA THERAPIST	2013-09-21 10:34:13.916649	2013-09-21 10:34:13.916649
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
1	Telephones	2013-09-14 08:07:39.733413	2013-09-14 08:07:39.733413
2	Computer	2013-09-14 08:07:39.748232	2013-09-14 08:07:39.748232
3	Fax	2013-09-14 08:07:39.755953	2013-09-14 08:07:39.755953
4	AC	2013-09-14 08:07:39.764317	2013-09-14 08:07:39.764317
5	Photocopier	2013-09-14 08:07:39.772603	2013-09-14 08:07:39.772603
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at) FROM stdin;
1	Fort	400001	2013-09-14 08:07:39.92469	2013-09-14 08:07:39.92469
2	Kalbadevi	400002	2013-09-14 08:07:39.932631	2013-09-14 08:07:39.932631
3	Masjid(e)	400003	2013-09-14 08:07:39.940554	2013-09-14 08:07:39.940554
4	Girgaum	400004	2013-09-14 08:07:39.948874	2013-09-14 08:07:39.948874
5	Colaba	400005	2013-09-14 08:07:39.957359	2013-09-14 08:07:39.957359
6	Malabar hill	400006	2013-09-14 08:07:39.965652	2013-09-14 08:07:39.965652
7	Grant Road	400007	2013-09-14 08:07:39.973899	2013-09-14 08:07:39.973899
8	Mumbai Central	400008	2013-09-14 08:07:39.982291	2013-09-14 08:07:39.982291
9	Masjid(w)	400009	2013-09-14 08:07:39.990549	2013-09-14 08:07:39.990549
10	Mazgaon	400010	2013-09-14 08:07:39.998809	2013-09-14 08:07:39.998809
11	Jacob Circle	400011	2013-09-14 08:07:40.007188	2013-09-14 08:07:40.007188
12	lalbaug	400012	2013-09-14 08:07:40.015466	2013-09-14 08:07:40.015466
13	delisle road	400013	2013-09-14 08:07:40.023759	2013-09-14 08:07:40.023759
14	Dadar	400014	2013-09-14 08:07:40.032118	2013-09-14 08:07:40.032118
15	Sewree	400015	2013-09-14 08:07:40.040407	2013-09-14 08:07:40.040407
16	Mahim	400016	2013-09-14 08:07:40.048831	2013-09-14 08:07:40.048831
17	Dharavi	400017	2013-09-14 08:07:40.057117	2013-09-14 08:07:40.057117
18	Worli	400018	2013-09-14 08:07:40.065671	2013-09-14 08:07:40.065671
19	Matunga Central	400019	2013-09-14 08:07:40.073995	2013-09-14 08:07:40.073995
20	Churchgate	400020	2013-09-14 08:07:40.082209	2013-09-14 08:07:40.082209
21	Nariman Point	400021	2013-09-14 08:07:40.090578	2013-09-14 08:07:40.090578
22	Sion	400022	2013-09-14 08:07:40.098875	2013-09-14 08:07:40.098875
23	Dalal Street	400023	2013-09-14 08:07:40.107332	2013-09-14 08:07:40.107332
24	Kurla	400024	2013-09-14 08:07:40.11558	2013-09-14 08:07:40.11558
25	Prabhadevi	400025	2013-09-14 08:07:40.123929	2013-09-14 08:07:40.123929
26	Byculla(e)	400027	2013-09-14 08:07:40.203896	2013-09-14 08:07:40.203896
27	Santacruz(e)	400029	2013-09-14 08:07:40.217666	2013-09-14 08:07:40.217666
28	PGMS Office	400030	2013-09-14 08:07:40.223109	2013-09-14 08:07:40.223109
29	Wadala	400031	2013-09-14 08:07:40.231823	2013-09-14 08:07:40.231823
30	Mantralaya	400032	2013-09-14 08:07:40.240492	2013-09-14 08:07:40.240492
31	Cotton Green	400033	2013-09-14 08:07:40.248912	2013-09-14 08:07:40.248912
32	Haji Ali	400034	2013-09-14 08:07:40.257231	2013-09-14 08:07:40.257231
33	Raj Bhavan	400035	2013-09-14 08:07:40.265441	2013-09-14 08:07:40.265441
34	Kemps corner	400036	2013-09-14 08:07:40.27373	2013-09-14 08:07:40.27373
35	Antop hill	400037	2013-09-14 08:07:40.282031	2013-09-14 08:07:40.282031
36	Ballard Pier	400038	2013-09-14 08:07:40.290502	2013-09-14 08:07:40.290502
37	Ballard Estate	400039	2013-09-14 08:07:40.298667	2013-09-14 08:07:40.298667
38	Jogeshwari(e)	400041	2013-09-14 08:07:40.307108	2013-09-14 08:07:40.307108
39	Bhandup	400042	2013-09-14 08:07:40.315463	2013-09-14 08:07:40.315463
40	Mankhurd	400043	2013-09-14 08:07:40.328183	2013-09-14 08:07:40.328183
41	Vile Parle(e)	400047	2013-09-14 08:07:40.340417	2013-09-14 08:07:40.340417
42	Andheri(w)	400048	2013-09-14 08:07:40.348778	2013-09-14 08:07:40.348778
43	bandra	400050	2013-09-14 08:07:40.360708	2013-09-14 08:07:40.360708
44	Khar	400051	2013-09-14 08:07:40.373721	2013-09-14 08:07:40.373721
45	Santacruz(w)	400054	2013-09-14 08:07:40.388912	2013-09-14 08:07:40.388912
46	Vile parle(w)	400056	2013-09-14 08:07:40.401943	2013-09-14 08:07:40.401943
47	Andheri(e)	400058	2013-09-14 08:07:40.418868	2013-09-14 08:07:40.418868
48	Goregaon(w)	400062	2013-09-14 08:07:40.441925	2013-09-14 08:07:40.441925
49	Goregaon(e)	400063	2013-09-14 08:07:40.448698	2013-09-14 08:07:40.448698
50	Malad(w)	400064	2013-09-14 08:07:40.456825	2013-09-14 08:07:40.456825
51	Goregoan(e)	400065	2013-09-14 08:07:40.465292	2013-09-14 08:07:40.465292
52	Borivali(e)	400066	2013-09-14 08:07:40.47366	2013-09-14 08:07:40.47366
53	Kandivali(w)	400067	2013-09-14 08:07:40.481855	2013-09-14 08:07:40.481855
54	Dahisar	400068	2013-09-14 08:07:40.490271	2013-09-14 08:07:40.490271
55	Chembur	400071	2013-09-14 08:07:40.505136	2013-09-14 08:07:40.505136
56	Ghatkopar	400075	2013-09-14 08:07:40.522003	2013-09-14 08:07:40.522003
57	Powai	400076	2013-09-14 08:07:40.531978	2013-09-14 08:07:40.531978
58	Vikroli	400079	2013-09-14 08:07:40.547293	2013-09-14 08:07:40.547293
59	Mulund	400080	2013-09-14 08:07:40.556974	2013-09-14 08:07:40.556974
60	Niete	400087	2013-09-14 08:07:40.581033	2013-09-14 08:07:40.581033
61	Deonar	400088	2013-09-14 08:07:40.590211	2013-09-14 08:07:40.590211
62	Borivali(w)	400091	2013-09-14 08:07:40.605679	2013-09-14 08:07:40.605679
63	Malad(e)	400097	2013-09-14 08:07:40.622087	2013-09-14 08:07:40.622087
64	Kandivali(e)	400101	2013-09-14 08:07:40.638935	2013-09-14 08:07:40.638935
65	Jogeshwari(w)	400102	2013-09-14 08:07:40.648571	2013-09-14 08:07:40.648571
66	Bhayandar(e)	400105	2013-09-14 08:07:40.663582	2013-09-14 08:07:40.663582
67	Thane	400601	2013-09-14 08:07:40.677092	2013-09-14 08:07:40.677092
68	Kalwa	400605	2013-09-14 08:07:40.700188	2013-09-14 08:07:40.700188
69	Mumbra	400612	2013-09-14 08:07:40.716979	2013-09-14 08:07:40.716979
70	Turbhe	400613	2013-09-14 08:07:40.723446	2013-09-14 08:07:40.723446
71	CBD	400614	2013-09-14 08:07:40.731648	2013-09-14 08:07:40.731648
72	Ghansoli	400701	2013-09-14 08:07:40.740136	2013-09-14 08:07:40.740136
73	Uran	400702	2013-09-14 08:07:40.74854	2013-09-14 08:07:40.74854
74	Vashi	400703	2013-09-14 08:07:40.756809	2013-09-14 08:07:40.756809
75	Nerul	400706	2013-09-14 08:07:40.772306	2013-09-14 08:07:40.772306
76	Airoli	400708	2013-09-14 08:07:40.781744	2013-09-14 08:07:40.781744
77	KK	400709	2013-09-14 08:07:40.790102	2013-09-14 08:07:40.790102
78	Bhayandar(w)	401101	2013-09-14 08:07:40.802039	2013-09-14 08:07:40.802039
79	Umparpada	401102	2013-09-14 08:07:40.81506	2013-09-14 08:07:40.81506
80	Dahanu(w)	401103	2013-09-14 08:07:40.823451	2013-09-14 08:07:40.823451
81	Mira Road(e)	401104	2013-09-14 08:07:40.831693	2013-09-14 08:07:40.831693
82	Vasai(w)	401201	2013-09-14 08:07:40.849983	2013-09-14 08:07:40.849983
83	Nalasopara(w)	401203	2013-09-14 08:07:40.860159	2013-09-14 08:07:40.860159
84	Virar(e)	401204	2013-09-14 08:07:40.873247	2013-09-14 08:07:40.873247
85	Vasai(e)	401205	2013-09-14 08:07:40.881683	2013-09-14 08:07:40.881683
86	NalaSopara(e)	401209	2013-09-14 08:07:40.900518	2013-09-14 08:07:40.900518
87	Virar(w)	401301	2013-09-14 08:07:40.918623	2013-09-14 08:07:40.918623
88	Palghar(e)	401404	2013-09-14 08:07:40.941734	2013-09-14 08:07:40.941734
89	Palghar(w)	401501	2013-09-14 08:07:40.948209	2013-09-14 08:07:40.948209
90	Dahanu(e)	401601	2013-09-14 08:07:40.969654	2013-09-14 08:07:40.969654
91	Dahanu	401608	2013-09-14 08:07:40.988677	2013-09-14 08:07:40.988677
92	Panvel	410206	2013-09-14 08:07:41.001879	2013-09-14 08:07:41.001879
93	Kamothe	410209	2013-09-14 08:07:41.01863	2013-09-14 08:07:41.01863
94	Kharghar	410210	2013-09-14 08:07:41.031624	2013-09-14 08:07:41.031624
95	Kalamboli	410218	2013-09-14 08:07:41.039866	2013-09-14 08:07:41.039866
96	Ulhasnagar	421001	2013-09-14 08:07:41.048127	2013-09-14 08:07:41.048127
97	Ambivali	421102	2013-09-14 08:07:41.069598	2013-09-14 08:07:41.069598
98	Dombivali	421201	2013-09-14 08:07:41.081569	2013-09-14 08:07:41.081569
99	Kalyan	421301	2013-09-14 08:07:41.100487	2013-09-14 08:07:41.100487
100	Bhiwandi	421302	2013-09-14 08:07:41.114661	2013-09-14 08:07:41.114661
101	Wada	421303	2013-09-14 08:07:41.239883	2013-09-14 08:07:41.239883
102	Ambernath	421501	2013-09-14 08:07:41.366998	2013-09-14 08:07:41.366998
103	Badlapur	421506	2013-09-14 08:07:41.391985	2013-09-14 08:07:41.391985
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 103, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
1	1	2013-07-29 07:28:31.20957	2013-07-29 07:28:31.283543	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N
3	3	2013-07-29 09:41:29.79514	2013-07-29 09:41:29.874514	\N	\N	\N	3	\N	\N	\N	\N	\N	\N	\N
2	2	2013-07-29 09:40:17.038115	2013-07-29 09:51:02.823273	1375091383930.jpg	image/jpeg	396409	2					2013-07-29	\N	
4	4	2013-08-31 07:44:03.043012	2013-08-31 07:44:03.18902	\N	\N	\N	4	\N	\N	\N	\N	\N	\N	\N
5	5	2013-09-18 05:49:51.01634	2013-09-18 05:49:51.084298	\N	\N	\N	5	\N	\N	\N	\N	\N	\N	\N
6	5	2013-09-18 05:53:11.163524	2013-09-18 05:53:11.276775	\N	\N	\N	5--6	\N	\N	\N	\N	\N	\N	\N
7	6	2013-09-18 05:54:46.713063	2013-09-18 05:54:46.721479	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 7, true);


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
1	TAB-ANDHERI	T0102030	2013-09-14 08:07:39.839515	2013-09-14 08:07:39.839515	\N	\N	\N
2	TAB-JOGESHWARI	T0102031	2013-09-14 08:07:39.850215	2013-09-14 08:07:39.850215	\N	\N	\N
5	TAB-VIKROLI	T0102034	2013-09-14 08:07:39.874141	2013-09-14 08:07:39.874141	\N	\N	\N
6	TAB-SION	T0102035	2013-09-14 08:07:39.882353	2013-09-14 08:07:39.882353	\N	\N	\N
7	TAB-MAHAKALI	T3434890	2013-09-14 08:07:39.890682	2013-09-14 08:07:39.890682	\N	\N	\N
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 7, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
4	blazetango@gmail.com	$2a$10$GN5StWt.iRWkGonpcB75Z.ezJHmZl0MBBw25yIAJUCRabvOCcvC7G	\N	\N	\N	8	2013-09-16 10:32:56.977253	2013-08-11 05:15:25.794333	61.16.181.42	127.0.0.1	2013-07-26 03:36:37.023186	2013-09-16 10:32:56.978117	tab_user	chetan tandel	5
5	scorpeo.tab1@gmail.com	$2a$10$tRzB8nwxMnnrSfDsn0a4IeJNnDwpcvD6qVlyCPdHESEbzqO24QymC	\N	\N	\N	5	2013-09-20 13:53:06.939336	2013-09-20 13:50:45.86333	115.245.75.123	115.246.242.93	2013-09-18 05:49:50.930254	2013-09-20 13:53:06.940075	tab_user	Scorpeo.tab1	5
6	scorpeo.tab2@gmail.com	$2a$10$kPVXm.WLvKW8bouD5vSys.5nJxFDsN1PHFkK9oOS5PPjBUX0MaUMC	\N	\N	\N	2	2013-09-20 13:54:59.823676	2013-09-18 05:54:46.70277	115.246.242.93	61.16.181.42	2013-09-18 05:54:46.678263	2013-09-20 13:54:59.82438	tab_user	Scorpeo.tab2	1
1	sudhirsb2003@gmail.com	$2a$10$3ZQ7u8GFb2lM43YGAg1MFuhXYj3qurR.masklAy2UQyLg2txzhWWq	\N	\N	\N	57	2013-09-21 09:48:02.535565	2013-09-21 08:25:09.94838	127.0.0.1	127.0.0.1	2013-06-24 07:14:31.307302	2013-09-21 09:48:02.536809	super_user	Sudhir Vishwakrma	\N
3	avcv@scorpeo.in	$2a$10$aR9192jJsq6wDTgzTcSmo.Z4QUGJK1bYeAfhb3laofbiqg5EnvIqi	\N	\N	\N	36	2013-09-21 10:33:42.847407	2013-09-21 09:16:11.00748	122.170.48.142	59.184.56.161	2013-06-28 12:47:52.504612	2013-09-21 10:33:42.848714	super_user	DATA Entry	2
2	tab1@scorpeo.in	$2a$10$6Fe6PirZZ8TiStrzjIy36OJQiMn1y.CNkUje9rVGPGOpkVZCw/a66	\N	\N	\N	24	2013-09-19 06:05:25.648906	2013-09-17 05:43:09.013656	115.246.121.108	101.60.108.36	2013-06-24 07:16:50.924118	2013-09-19 06:05:25.650061	tab_user	tab1	1
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

