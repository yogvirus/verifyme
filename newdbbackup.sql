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
-- Name: attendences; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE attendences (
    id integer NOT NULL,
    user_id integer,
    login_time timestamp without time zone,
    logout_time timestamp without time zone,
    login_date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.attendences OWNER TO postgres;

--
-- Name: attendences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE attendences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendences_id_seq OWNER TO postgres;

--
-- Name: attendences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE attendences_id_seq OWNED BY attendences.id;


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
-- Name: branches; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE branches (
    id integer NOT NULL,
    name character varying(255),
    branch_code character varying(255),
    contact_person character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    client_id integer
);


ALTER TABLE public.branches OWNER TO postgres;

--
-- Name: branches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE branches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branches_id_seq OWNER TO postgres;

--
-- Name: branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE branches_id_seq OWNED BY branches.id;


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
    department_id integer,
    message character varying(255),
    branch_id integer,
    client_id integer,
    branch_code character varying(255),
    area_name character varying(255),
    city_id integer
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
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cities (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cities_id_seq OWNED BY cities.id;


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
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE clients (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE clients_id_seq OWNED BY clients.id;


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
    department_id integer,
    message character varying(255),
    branch_id integer,
    client_id integer,
    branch_code character varying(255),
    area_name character varying(255),
    city_id integer
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
    d_o_b date,
    message character varying(255),
    branch_id integer,
    client_id integer,
    branch_code character varying(255),
    area_name character varying(255),
    city_id integer
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
    photo_required boolean,
    message character varying(255),
    branch_id integer,
    client_id integer,
    branch_code integer,
    area_name character varying(255),
    city_id integer,
    no_verifcation boolean
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
-- Name: pincode_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pincode_groups (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pincode_groups OWNER TO postgres;

--
-- Name: pincode_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pincode_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pincode_groups_id_seq OWNER TO postgres;

--
-- Name: pincode_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pincode_groups_id_seq OWNED BY pincode_groups.id;


--
-- Name: pincodes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pincodes (
    id integer NOT NULL,
    name character varying(255),
    pin_number integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    city character varying(255),
    city_id integer,
    pincode_group_id integer
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
    pincode_id integer,
    pincode_group_id integer
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
    company_name_new character varying(255),
    department_id integer,
    new_department_name character varying(255)
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

ALTER TABLE ONLY attendences ALTER COLUMN id SET DEFAULT nextval('attendences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY b_documents ALTER COLUMN id SET DEFAULT nextval('b_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branches ALTER COLUMN id SET DEFAULT nextval('branches_id_seq'::regclass);


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

ALTER TABLE ONLY cities ALTER COLUMN id SET DEFAULT nextval('cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY client_verifications ALTER COLUMN id SET DEFAULT nextval('client_verifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clients ALTER COLUMN id SET DEFAULT nextval('clients_id_seq'::regclass);


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

ALTER TABLE ONLY pincode_groups ALTER COLUMN id SET DEFAULT nextval('pincode_groups_id_seq'::regclass);


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
1	Ration Card	2014-02-04 09:03:07.776228	2014-02-04 09:03:07.776228
2	Electricity Bill	2014-02-04 09:03:07.790541	2014-02-04 09:03:07.790541
3	Telephone Bill	2014-02-04 09:03:07.797916	2014-02-04 09:03:07.797916
4	Bank Statement card	2014-02-04 09:03:07.806153	2014-02-04 09:03:07.806153
5	Driving licence	2014-02-04 09:03:07.814595	2014-02-04 09:03:07.814595
6	Passport	2014-02-04 09:03:07.822841	2014-02-04 09:03:07.822841
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
1	admin@example.com	$2a$10$ec11FpVSZbYUhoGm5Nimue09NqwO5Rh2leu2K6QQLknaPPV6oky5a	\N	\N	\N	0	\N	\N	\N	\N	2014-02-04 09:02:39.613566	2014-02-04 09:02:39.613566	\N
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assets (id, name, created_at, updated_at) FROM stdin;
1	TV	2014-02-04 09:03:07.908838	2014-02-04 09:03:07.908838
2	Air Conditioner	2014-02-04 09:03:07.923916	2014-02-04 09:03:07.923916
3	Refrigrator	2014-02-04 09:03:07.931233	2014-02-04 09:03:07.931233
4	Music System	2014-02-04 09:03:07.939381	2014-02-04 09:03:07.939381
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
-- Data for Name: attendences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attendences (id, user_id, login_time, logout_time, login_date, created_at, updated_at) FROM stdin;
41	2	2014-02-08 18:38:00	2014-04-12 16:54:00	2014-02-08	2014-02-08 13:08:25.402155	2014-04-12 11:24:38.623909
46	3	2014-02-09 12:00:00	2014-04-12 18:10:00	2014-02-09	2014-02-09 06:30:42.907365	2014-04-12 12:40:01.350126
25	6	2014-02-06 18:05:00	2014-02-06 18:11:00	2014-02-06	2014-02-06 12:35:30.176787	2014-02-06 12:41:57.626622
19	5	2014-02-06 10:43:00	2014-04-12 16:12:00	2014-02-06	2014-02-06 05:13:21.774965	2014-04-12 10:42:13.881667
86	4	2014-02-13 16:04:00	2014-04-01 08:11:00	2014-02-13	2014-02-13 10:34:46.364035	2014-04-01 02:41:45.942833
87	4	2014-02-13 16:05:00	2014-04-12 15:51:00	2014-02-13	2014-02-13 10:35:44.723363	2014-04-12 10:21:32.158827
21	5	2014-02-06 17:36:00	2014-02-07 17:56:00	2014-02-06	2014-02-06 12:06:15.721006	2014-02-07 12:26:49.006831
35	5	2014-02-08 11:08:00	\N	2014-02-08	2014-02-08 05:38:25.855991	2014-02-08 05:38:25.855991
36	5	2014-02-08 11:09:00	\N	2014-02-08	2014-02-08 05:39:44.1996	2014-02-08 05:39:44.1996
13	1	2014-02-05 11:44:00	2014-04-30 13:04:00	2014-02-05	2014-02-05 06:14:57.472291	2014-04-30 07:34:58.71303
40	1	2014-02-08 18:21:00	\N	2014-02-08	2014-02-08 12:51:40.136728	2014-02-08 12:51:40.136728
22	2	2014-02-06 17:39:00	2014-02-08 18:38:00	2014-02-06	2014-02-06 12:09:15.164441	2014-02-08 13:08:35.578481
42	4	2014-02-09 09:38:00	\N	2014-02-09	2014-02-09 04:08:05.590159	2014-02-09 04:08:05.590159
43	5	2014-02-09 11:53:00	\N	2014-02-09	2014-02-09 06:23:28.767144	2014-02-09 06:23:28.767144
11	5	2014-02-05 11:39:00	2014-02-09 11:59:00	2014-02-05	2014-02-05 06:09:31.80537	2014-02-09 06:29:59.313166
44	2	2014-02-09 12:00:00	\N	2014-02-09	2014-02-09 06:30:22.925438	2014-02-09 06:30:22.925438
8	2	2014-02-04 18:17:00	2014-02-09 12:00:00	2014-02-04	2014-02-04 12:47:40.799442	2014-02-09 06:30:27.690051
45	1	2014-02-09 12:00:00	\N	2014-02-09	2014-02-09 06:30:41.392287	2014-02-09 06:30:41.392287
15	3	2014-02-05 11:53:00	2014-02-09 12:04:00	2014-02-05	2014-02-05 06:23:14.143786	2014-02-09 06:34:38.373959
47	3	2014-02-09 12:07:00	\N	2014-02-09	2014-02-09 06:37:10.000738	2014-02-09 06:37:10.000738
48	4	2014-02-09 19:28:00	\N	2014-02-09	2014-02-09 13:58:22.922546	2014-02-09 13:58:22.922546
49	1	2014-02-09 19:41:00	\N	2014-02-09	2014-02-09 14:11:17.015596	2014-02-09 14:11:17.015596
50	3	2014-02-10 10:24:00	\N	2014-02-10	2014-02-10 04:54:17.809125	2014-02-10 04:54:17.809125
51	1	2014-02-10 10:51:00	\N	2014-02-10	2014-02-10 05:21:02.282545	2014-02-10 05:21:02.282545
1	1	2014-02-04 14:34:00	2014-02-10 12:13:00	2014-02-04	2014-02-04 09:04:28.555952	2014-02-10 06:43:19.040207
52	5	2014-02-10 13:57:00	\N	2014-02-10	2014-02-10 08:27:06.386014	2014-02-10 08:27:06.386014
53	5	2014-02-10 14:24:00	\N	2014-02-10	2014-02-10 08:54:16.705054	2014-02-10 08:54:16.705054
23	5	2014-02-06 17:45:00	2014-02-10 14:25:00	2014-02-06	2014-02-06 12:15:01.145262	2014-02-10 08:55:38.285911
54	4	2014-02-10 15:35:00	\N	2014-02-10	2014-02-10 10:05:27.617348	2014-02-10 10:05:27.617348
55	2	2014-02-10 18:44:00	\N	2014-02-10	2014-02-10 13:14:23.798281	2014-02-10 13:14:23.798281
27	2	2014-02-06 21:00:00	2014-02-10 18:44:00	2014-02-06	2014-02-06 15:30:01.28828	2014-02-10 13:14:33.86629
56	3	2014-02-10 18:44:00	\N	2014-02-10	2014-02-10 13:14:47.285925	2014-02-10 13:14:47.285925
18	3	2014-02-05 22:39:00	2014-02-10 18:44:00	2014-02-05	2014-02-05 17:09:47.993648	2014-02-10 13:14:52.859996
57	4	2014-02-10 18:45:00	\N	2014-02-10	2014-02-10 13:15:07.734031	2014-02-10 13:15:07.734031
5	4	2014-02-04 18:15:00	2014-02-10 18:48:00	2014-02-04	2014-02-04 12:45:51.774561	2014-02-10 13:18:16.666037
58	1	2014-02-10 19:01:00	\N	2014-02-10	2014-02-10 13:31:25.427915	2014-02-10 13:31:25.427915
16	1	2014-02-05 14:01:00	2014-02-10 19:12:00	2014-02-05	2014-02-05 08:31:29.871212	2014-02-10 13:42:15.426941
59	1	2014-02-10 19:13:00	\N	2014-02-10	2014-02-10 13:43:27.687629	2014-02-10 13:43:27.687629
60	3	2014-02-10 19:42:00	\N	2014-02-10	2014-02-10 14:12:30.592088	2014-02-10 14:12:30.592088
2	1	2014-02-04 14:39:00	2014-02-10 19:48:00	2014-02-04	2014-02-04 09:09:50.377796	2014-02-10 14:18:02.665501
32	3	2014-02-07 18:52:00	2014-02-10 19:48:00	2014-02-07	2014-02-07 13:22:08.042356	2014-02-10 14:18:06.41962
61	4	2014-02-10 20:26:00	\N	2014-02-10	2014-02-10 14:56:26.126543	2014-02-10 14:56:26.126543
62	1	2014-02-11 11:34:00	\N	2014-02-11	2014-02-11 06:04:33.333101	2014-02-11 06:04:33.333101
63	2	2014-02-11 12:00:00	\N	2014-02-11	2014-02-11 06:30:05.910919	2014-02-11 06:30:05.910919
33	2	2014-02-07 19:42:00	2014-02-11 12:01:00	2014-02-07	2014-02-07 14:12:20.133767	2014-02-11 06:31:27.336728
64	1	2014-02-11 14:31:00	\N	2014-02-11	2014-02-11 09:01:38.013204	2014-02-11 09:01:38.013204
17	1	2014-02-05 22:14:00	2014-02-11 14:43:00	2014-02-05	2014-02-05 16:44:30.708448	2014-02-11 09:13:59.655904
65	3	2014-02-12 17:06:00	\N	2014-02-12	2014-02-12 11:36:39.984358	2014-02-12 11:36:39.984358
66	5	2014-02-12 17:19:00	\N	2014-02-12	2014-02-12 11:49:05.496244	2014-02-12 11:49:05.496244
10	5	2014-02-05 10:55:00	2014-02-12 17:40:00	2014-02-05	2014-02-05 05:25:23.810051	2014-02-12 12:10:23.42899
67	3	2014-02-12 17:40:00	\N	2014-02-12	2014-02-12 12:10:38.192833	2014-02-12 12:10:38.192833
68	5	2014-02-12 17:40:00	\N	2014-02-12	2014-02-12 12:10:55.261197	2014-02-12 12:10:55.261197
24	5	2014-02-06 17:51:00	2014-02-12 18:13:00	2014-02-06	2014-02-06 12:21:56.578229	2014-02-12 12:43:38.977679
69	1	2014-02-12 19:03:00	\N	2014-02-12	2014-02-12 13:33:29.208741	2014-02-12 13:33:29.208741
70	4	2014-02-12 23:26:00	\N	2014-02-12	2014-02-12 17:56:39.047494	2014-02-12 17:56:39.047494
71	1	2014-02-13 12:15:00	\N	2014-02-13	2014-02-13 06:45:31.048124	2014-02-13 06:45:31.048124
72	5	2014-02-13 12:53:00	\N	2014-02-13	2014-02-13 07:23:42.015214	2014-02-13 07:23:42.015214
73	4	2014-02-13 12:58:00	\N	2014-02-13	2014-02-13 07:28:22.507244	2014-02-13 07:28:22.507244
3	4	2014-02-04 16:54:00	2014-02-13 12:58:00	2014-02-04	2014-02-04 11:24:07.846766	2014-02-13 07:28:29.847287
74	1	2014-02-13 12:58:00	\N	2014-02-13	2014-02-13 07:28:45.452672	2014-02-13 07:28:45.452672
75	4	2014-02-13 12:59:00	\N	2014-02-13	2014-02-13 07:29:27.056297	2014-02-13 07:29:27.056297
76	2	2014-02-13 13:00:00	\N	2014-02-13	2014-02-13 07:30:52.466483	2014-02-13 07:30:52.466483
77	4	2014-02-13 13:10:00	\N	2014-02-13	2014-02-13 07:40:14.575691	2014-02-13 07:40:14.575691
78	4	2014-02-13 13:16:00	\N	2014-02-13	2014-02-13 07:46:09.009869	2014-02-13 07:46:09.009869
88	4	2014-02-13 18:05:00	\N	2014-02-13	2014-02-13 12:35:08.238444	2014-02-13 12:35:08.238444
6	4	2014-02-04 18:16:00	2014-02-13 18:07:00	2014-02-04	2014-02-04 12:46:54.550917	2014-02-13 12:37:37.722984
89	2	2014-02-13 18:08:00	\N	2014-02-13	2014-02-13 12:38:38.619583	2014-02-13 12:38:38.619583
80	2	2014-02-13 14:25:00	2014-02-13 18:09:00	2014-02-13	2014-02-13 08:55:41.173896	2014-02-13 12:39:01.318208
90	3	2014-02-13 18:09:00	\N	2014-02-13	2014-02-13 12:39:09.83091	2014-02-13 12:39:09.83091
85	3	2014-02-13 16:00:00	2014-02-13 18:09:00	2014-02-13	2014-02-13 10:30:40.329168	2014-02-13 12:39:50.915601
91	4	2014-02-13 18:10:00	\N	2014-02-13	2014-02-13 12:40:00.416431	2014-02-13 12:40:00.416431
84	1	2014-02-13 15:34:00	2014-02-13 18:30:00	2014-02-13	2014-02-13 10:04:43.179456	2014-02-13 13:00:29.207862
92	4	2014-02-13 22:31:00	\N	2014-02-13	2014-02-13 17:01:58.296806	2014-02-13 17:01:58.296806
79	4	2014-02-13 13:16:00	2014-02-13 22:32:00	2014-02-13	2014-02-13 07:46:42.187156	2014-02-13 17:02:51.387638
93	3	2014-02-13 22:32:00	\N	2014-02-13	2014-02-13 17:02:58.629574	2014-02-13 17:02:58.629574
37	3	2014-02-08 11:24:00	2014-02-13 22:33:00	2014-02-08	2014-02-08 05:54:40.809691	2014-02-13 17:03:34.941499
94	4	2014-02-13 22:33:00	\N	2014-02-13	2014-02-13 17:03:44.304175	2014-02-13 17:03:44.304175
95	1	2014-02-13 23:06:00	\N	2014-02-13	2014-02-13 17:36:27.191871	2014-02-13 17:36:27.191871
96	4	2014-02-14 12:00:00	\N	2014-02-14	2014-02-14 06:30:29.043106	2014-02-14 06:30:29.043106
97	1	2014-02-14 12:15:00	\N	2014-02-14	2014-02-14 06:45:00.305411	2014-02-14 06:45:00.305411
98	2	2014-02-14 12:16:00	\N	2014-02-14	2014-02-14 06:46:27.223562	2014-02-14 06:46:27.223562
99	4	2014-02-14 12:17:00	\N	2014-02-14	2014-02-14 06:47:16.63106	2014-02-14 06:47:16.63106
4	4	2014-02-04 16:55:00	2014-02-14 12:18:00	2014-02-04	2014-02-04 11:25:30.482065	2014-02-14 06:48:46.959306
100	3	2014-02-14 12:19:00	\N	2014-02-14	2014-02-14 06:49:05.499872	2014-02-14 06:49:05.499872
101	1	2014-02-14 12:37:00	\N	2014-02-14	2014-02-14 07:07:58.356161	2014-02-14 07:07:58.356161
102	3	2014-02-14 13:49:00	\N	2014-02-14	2014-02-14 08:19:23.068793	2014-02-14 08:19:23.068793
103	2	2014-02-14 15:41:00	\N	2014-02-14	2014-02-14 10:11:22.280523	2014-02-14 10:11:22.280523
104	3	2014-02-14 16:43:00	\N	2014-02-14	2014-02-14 11:13:36.879235	2014-02-14 11:13:36.879235
106	1	2014-02-15 12:11:00	\N	2014-02-15	2014-02-15 06:41:51.821433	2014-02-15 06:41:51.821433
107	3	2014-02-15 12:19:00	\N	2014-02-15	2014-02-15 06:49:40.519003	2014-02-15 06:49:40.519003
108	3	2014-02-15 16:16:00	\N	2014-02-15	2014-02-15 10:46:13.031216	2014-02-15 10:46:13.031216
20	1	2014-02-06 11:14:00	2014-02-15 16:17:00	2014-02-06	2014-02-06 05:44:39.941495	2014-02-15 10:47:51.807306
109	3	2014-02-15 17:46:00	\N	2014-02-15	2014-02-15 12:16:50.862977	2014-02-15 12:16:50.862977
110	3	2014-02-15 18:05:00	\N	2014-02-15	2014-02-15 12:35:05.961244	2014-02-15 12:35:05.961244
111	1	2014-02-17 08:18:00	\N	2014-02-17	2014-02-17 02:48:51.751423	2014-02-17 02:48:51.751423
112	1	2014-02-17 10:04:00	\N	2014-02-17	2014-02-17 04:34:37.820362	2014-02-17 04:34:37.820362
113	3	2014-02-17 10:41:00	\N	2014-02-17	2014-02-17 05:11:07.393642	2014-02-17 05:11:07.393642
114	1	2014-02-17 10:48:00	\N	2014-02-17	2014-02-17 05:18:22.845506	2014-02-17 05:18:22.845506
115	2	2014-02-17 10:55:00	\N	2014-02-17	2014-02-17 05:25:09.742274	2014-02-17 05:25:09.742274
116	2	2014-02-17 11:13:00	\N	2014-02-17	2014-02-17 05:43:22.186295	2014-02-17 05:43:22.186295
117	2	2014-02-17 12:38:00	\N	2014-02-17	2014-02-17 07:08:36.147302	2014-02-17 07:08:36.147302
118	1	2014-02-17 12:49:00	\N	2014-02-17	2014-02-17 07:19:45.83104	2014-02-17 07:19:45.83104
119	3	2014-02-17 15:33:00	\N	2014-02-17	2014-02-17 10:03:13.403219	2014-02-17 10:03:13.403219
120	3	2014-02-17 15:48:00	\N	2014-02-17	2014-02-17 10:18:27.033838	2014-02-17 10:18:27.033838
12	5	2014-02-05 11:42:00	2014-02-19 10:25:00	2014-02-05	2014-02-05 06:12:45.912959	2014-02-19 04:55:37.123908
105	1	2014-02-15 11:21:00	2014-03-04 18:26:00	2014-02-15	2014-02-15 05:51:09.940735	2014-03-04 12:56:15.977017
82	2	2014-02-13 14:36:00	2014-03-06 19:29:00	2014-02-13	2014-02-13 09:06:08.563461	2014-03-06 13:59:48.000792
30	1	2014-02-07 11:33:00	2014-03-07 19:03:00	2014-02-07	2014-02-07 06:03:47.549614	2014-03-07 13:33:26.30682
31	1	2014-02-07 12:02:00	2014-03-10 14:22:00	2014-02-07	2014-02-07 06:32:49.674289	2014-03-10 08:52:48.413424
14	5	2014-02-05 11:46:00	2014-03-12 19:18:00	2014-02-05	2014-02-05 06:16:17.835845	2014-03-12 13:48:47.112191
81	2	2014-02-13 14:27:00	2014-03-24 13:39:00	2014-02-13	2014-02-13 08:57:43.110134	2014-03-24 08:09:31.971887
83	2	2014-02-13 15:17:00	2014-04-01 08:12:00	2014-02-13	2014-02-13 09:47:10.89249	2014-04-01 02:42:08.813231
34	1	2014-02-08 09:46:00	2014-04-01 18:34:00	2014-02-08	2014-02-08 04:16:12.564173	2014-04-01 13:04:48.929012
29	5	2014-02-07 11:19:00	2014-04-04 12:02:00	2014-02-07	2014-02-07 05:49:33.339743	2014-04-04 06:32:01.854348
7	3	2014-02-04 18:17:00	2014-04-12 16:04:00	2014-02-04	2014-02-04 12:47:08.537125	2014-04-12 10:34:28.835589
9	1	2014-02-05 10:30:00	2014-04-15 08:21:00	2014-02-05	2014-02-05 05:00:25.657359	2014-04-15 02:51:57.626952
38	1	2014-02-08 12:31:00	2014-04-25 16:38:00	2014-02-08	2014-02-08 07:01:43.407565	2014-04-25 11:08:29.859868
121	3	2014-02-17 15:50:00	\N	2014-02-17	2014-02-17 10:20:56.281894	2014-02-17 10:20:56.281894
122	3	2014-02-17 16:28:00	\N	2014-02-17	2014-02-17 10:58:37.559991	2014-02-17 10:58:37.559991
123	2	2014-02-17 19:04:00	\N	2014-02-17	2014-02-17 13:34:32.619593	2014-02-17 13:34:32.619593
124	1	2014-02-18 08:08:00	\N	2014-02-18	2014-02-18 02:38:52.2411	2014-02-18 02:38:52.2411
125	2	2014-02-18 10:40:00	\N	2014-02-18	2014-02-18 05:10:10.273623	2014-02-18 05:10:10.273623
126	2	2014-02-18 11:33:00	\N	2014-02-18	2014-02-18 06:03:02.561227	2014-02-18 06:03:02.561227
127	1	2014-02-18 13:47:00	\N	2014-02-18	2014-02-18 08:17:02.411536	2014-02-18 08:17:02.411536
128	3	2014-02-18 15:58:00	\N	2014-02-18	2014-02-18 10:28:06.389498	2014-02-18 10:28:06.389498
129	3	2014-02-18 16:13:00	\N	2014-02-18	2014-02-18 10:43:14.64007	2014-02-18 10:43:14.64007
130	2	2014-02-18 16:32:00	\N	2014-02-18	2014-02-18 11:02:21.331665	2014-02-18 11:02:21.331665
131	2	2014-02-18 16:33:00	\N	2014-02-18	2014-02-18 11:03:20.19007	2014-02-18 11:03:20.19007
132	2	2014-02-18 16:33:00	\N	2014-02-18	2014-02-18 11:03:37.111019	2014-02-18 11:03:37.111019
133	3	2014-02-18 16:36:00	\N	2014-02-18	2014-02-18 11:06:49.957469	2014-02-18 11:06:49.957469
134	3	2014-02-18 16:41:00	\N	2014-02-18	2014-02-18 11:11:44.851384	2014-02-18 11:11:44.851384
135	2	2014-02-18 19:43:00	\N	2014-02-18	2014-02-18 14:13:32.171914	2014-02-18 14:13:32.171914
136	5	2014-02-19 10:23:00	\N	2014-02-19	2014-02-19 04:53:10.266893	2014-02-19 04:53:10.266893
137	1	2014-02-19 13:01:00	\N	2014-02-19	2014-02-19 07:31:23.873696	2014-02-19 07:31:23.873696
138	2	2014-02-19 16:42:00	\N	2014-02-19	2014-02-19 11:12:52.605507	2014-02-19 11:12:52.605507
139	3	2014-02-19 17:21:00	\N	2014-02-19	2014-02-19 11:51:13.399208	2014-02-19 11:51:13.399208
140	2	2014-02-19 18:45:00	\N	2014-02-19	2014-02-19 13:15:06.128733	2014-02-19 13:15:06.128733
141	2	2014-02-19 18:53:00	\N	2014-02-19	2014-02-19 13:23:00.808077	2014-02-19 13:23:00.808077
142	2	2014-02-19 18:56:00	\N	2014-02-19	2014-02-19 13:26:33.723307	2014-02-19 13:26:33.723307
143	1	2014-02-20 07:28:00	\N	2014-02-20	2014-02-20 01:58:50.893021	2014-02-20 01:58:50.893021
144	2	2014-02-20 08:57:00	\N	2014-02-20	2014-02-20 03:27:20.56628	2014-02-20 03:27:20.56628
145	2	2014-02-20 11:20:00	\N	2014-02-20	2014-02-20 05:50:23.610439	2014-02-20 05:50:23.610439
146	2	2014-02-20 11:22:00	\N	2014-02-20	2014-02-20 05:52:31.507085	2014-02-20 05:52:31.507085
147	1	2014-02-20 11:24:00	\N	2014-02-20	2014-02-20 05:54:17.0921	2014-02-20 05:54:17.0921
148	3	2014-02-20 11:56:00	\N	2014-02-20	2014-02-20 06:26:03.573312	2014-02-20 06:26:03.573312
149	2	2014-02-20 15:03:00	\N	2014-02-20	2014-02-20 09:33:01.374682	2014-02-20 09:33:01.374682
150	3	2014-02-20 15:33:00	\N	2014-02-20	2014-02-20 10:03:18.824941	2014-02-20 10:03:18.824941
151	1	2014-02-20 17:01:00	\N	2014-02-20	2014-02-20 11:31:00.357336	2014-02-20 11:31:00.357336
152	2	2014-02-20 21:00:00	\N	2014-02-20	2014-02-20 15:30:41.050258	2014-02-20 15:30:41.050258
153	1	2014-02-21 08:15:00	\N	2014-02-21	2014-02-21 02:45:15.129066	2014-02-21 02:45:15.129066
154	3	2014-02-21 10:13:00	\N	2014-02-21	2014-02-21 04:43:25.452408	2014-02-21 04:43:25.452408
155	1	2014-02-21 11:00:00	\N	2014-02-21	2014-02-21 05:30:35.109373	2014-02-21 05:30:35.109373
156	2	2014-02-21 16:38:00	\N	2014-02-21	2014-02-21 11:08:12.719536	2014-02-21 11:08:12.719536
157	2	2014-02-22 09:46:00	\N	2014-02-22	2014-02-22 04:16:53.948458	2014-02-22 04:16:53.948458
158	1	2014-02-22 12:08:00	\N	2014-02-22	2014-02-22 06:38:00.935458	2014-02-22 06:38:00.935458
159	2	2014-02-22 16:40:00	\N	2014-02-22	2014-02-22 11:10:13.401359	2014-02-22 11:10:13.401359
160	3	2014-02-22 17:14:00	\N	2014-02-22	2014-02-22 11:44:10.177868	2014-02-22 11:44:10.177868
161	3	2014-02-22 18:34:00	\N	2014-02-22	2014-02-22 13:04:19.501948	2014-02-22 13:04:19.501948
162	1	2014-02-23 07:44:00	\N	2014-02-23	2014-02-23 02:14:18.299286	2014-02-23 02:14:18.299286
163	2	2014-02-23 16:19:00	\N	2014-02-23	2014-02-23 10:49:59.740226	2014-02-23 10:49:59.740226
164	2	2014-02-23 20:31:00	\N	2014-02-23	2014-02-23 15:01:06.650237	2014-02-23 15:01:06.650237
165	2	2014-02-24 10:09:00	\N	2014-02-24	2014-02-24 04:39:00.253339	2014-02-24 04:39:00.253339
166	2	2014-02-24 11:01:00	\N	2014-02-24	2014-02-24 05:31:58.410355	2014-02-24 05:31:58.410355
167	2	2014-02-24 11:28:00	\N	2014-02-24	2014-02-24 05:58:53.054542	2014-02-24 05:58:53.054542
168	1	2014-02-24 12:04:00	\N	2014-02-24	2014-02-24 06:34:14.992597	2014-02-24 06:34:14.992597
169	2	2014-02-24 15:11:00	\N	2014-02-24	2014-02-24 09:41:18.798349	2014-02-24 09:41:18.798349
170	5	2014-02-24 19:07:00	\N	2014-02-24	2014-02-24 13:37:54.212875	2014-02-24 13:37:54.212875
171	5	2014-02-24 19:17:00	\N	2014-02-24	2014-02-24 13:47:16.548723	2014-02-24 13:47:16.548723
26	5	2014-02-06 18:38:00	2014-02-24 19:17:00	2014-02-06	2014-02-06 13:08:37.328633	2014-02-24 13:47:31.393662
172	2	2014-02-25 10:24:00	\N	2014-02-25	2014-02-25 04:54:53.557377	2014-02-25 04:54:53.557377
173	1	2014-02-25 11:31:00	\N	2014-02-25	2014-02-25 06:01:01.500403	2014-02-25 06:01:01.500403
174	3	2014-02-25 15:28:00	\N	2014-02-25	2014-02-25 09:58:07.866066	2014-02-25 09:58:07.866066
175	5	2014-02-25 19:36:00	\N	2014-02-25	2014-02-25 14:06:46.204204	2014-02-25 14:06:46.204204
176	2	2014-02-26 09:24:00	\N	2014-02-26	2014-02-26 03:54:00.438411	2014-02-26 03:54:00.438411
177	1	2014-02-26 11:55:00	\N	2014-02-26	2014-02-26 06:25:38.6407	2014-02-26 06:25:38.6407
178	2	2014-02-26 16:28:00	\N	2014-02-26	2014-02-26 10:58:16.906702	2014-02-26 10:58:16.906702
179	1	2014-02-27 11:10:00	\N	2014-02-27	2014-02-27 05:40:00.939614	2014-02-27 05:40:00.939614
180	1	2014-02-28 10:49:00	\N	2014-02-28	2014-02-28 05:19:06.085548	2014-02-28 05:19:06.085548
181	3	2014-02-28 12:04:00	\N	2014-02-28	2014-02-28 06:34:13.569536	2014-02-28 06:34:13.569536
182	1	2014-03-01 12:36:00	\N	2014-03-01	2014-03-01 07:06:42.428952	2014-03-01 07:06:42.428952
183	5	2014-03-01 17:13:00	\N	2014-03-01	2014-03-01 11:43:18.816407	2014-03-01 11:43:18.816407
184	1	2014-03-02 17:26:00	\N	2014-03-02	2014-03-02 11:56:23.131277	2014-03-02 11:56:23.131277
185	1	2014-03-03 08:42:00	\N	2014-03-03	2014-03-03 03:12:12.200761	2014-03-03 03:12:12.200761
186	1	2014-03-03 10:44:00	\N	2014-03-03	2014-03-03 05:14:56.295285	2014-03-03 05:14:56.295285
187	1	2014-03-03 19:20:00	\N	2014-03-03	2014-03-03 13:50:39.527795	2014-03-03 13:50:39.527795
188	2	2014-03-03 22:46:00	\N	2014-03-03	2014-03-03 17:16:25.236323	2014-03-03 17:16:25.236323
189	1	2014-03-04 10:37:00	\N	2014-03-04	2014-03-04 05:07:36.110319	2014-03-04 05:07:36.110319
190	5	2014-03-04 10:57:00	\N	2014-03-04	2014-03-04 05:27:33.421759	2014-03-04 05:27:33.421759
191	5	2014-03-04 11:00:00	\N	2014-03-04	2014-03-04 05:30:01.940761	2014-03-04 05:30:01.940761
192	5	2014-03-04 11:16:00	\N	2014-03-04	2014-03-04 05:46:19.359016	2014-03-04 05:46:19.359016
193	5	2014-03-04 11:27:00	\N	2014-03-04	2014-03-04 05:57:49.192922	2014-03-04 05:57:49.192922
194	1	2014-03-04 12:50:00	\N	2014-03-04	2014-03-04 07:20:12.133852	2014-03-04 07:20:12.133852
195	1	2014-03-04 12:53:00	\N	2014-03-04	2014-03-04 07:23:43.717342	2014-03-04 07:23:43.717342
196	1	2014-03-04 12:56:00	\N	2014-03-04	2014-03-04 07:26:35.397002	2014-03-04 07:26:35.397002
197	3	2014-03-04 16:34:00	\N	2014-03-04	2014-03-04 11:04:41.174293	2014-03-04 11:04:41.174293
198	1	2014-03-04 17:40:00	\N	2014-03-04	2014-03-04 12:10:16.659611	2014-03-04 12:10:16.659611
199	2	2014-03-04 17:46:00	\N	2014-03-04	2014-03-04 12:16:06.504213	2014-03-04 12:16:06.504213
200	1	2014-03-04 17:48:00	\N	2014-03-04	2014-03-04 12:18:12.286003	2014-03-04 12:18:12.286003
201	2	2014-03-04 17:48:00	\N	2014-03-04	2014-03-04 12:18:44.089037	2014-03-04 12:18:44.089037
202	3	2014-03-04 18:00:00	\N	2014-03-04	2014-03-04 12:30:36.539204	2014-03-04 12:30:36.539204
203	3	2014-03-04 18:06:00	\N	2014-03-04	2014-03-04 12:36:31.118396	2014-03-04 12:36:31.118396
204	2	2014-03-04 19:24:00	\N	2014-03-04	2014-03-04 13:54:09.261853	2014-03-04 13:54:09.261853
205	2	2014-03-04 19:49:00	\N	2014-03-04	2014-03-04 14:19:22.341048	2014-03-04 14:19:22.341048
206	2	2014-03-04 19:56:00	\N	2014-03-04	2014-03-04 14:26:41.411429	2014-03-04 14:26:41.411429
207	2	2014-03-04 20:11:00	\N	2014-03-04	2014-03-04 14:41:40.539522	2014-03-04 14:41:40.539522
208	2	2014-03-04 21:49:00	\N	2014-03-04	2014-03-04 16:19:15.497687	2014-03-04 16:19:15.497687
209	1	2014-03-05 12:45:00	\N	2014-03-05	2014-03-05 07:15:25.504677	2014-03-05 07:15:25.504677
210	5	2014-03-05 13:04:00	\N	2014-03-05	2014-03-05 07:34:48.631593	2014-03-05 07:34:48.631593
211	3	2014-03-05 13:16:00	\N	2014-03-05	2014-03-05 07:46:09.142175	2014-03-05 07:46:09.142175
212	1	2014-03-05 13:23:00	\N	2014-03-05	2014-03-05 07:53:37.999976	2014-03-05 07:53:37.999976
213	3	2014-03-05 17:03:00	\N	2014-03-05	2014-03-05 11:33:51.820419	2014-03-05 11:33:51.820419
214	1	2014-03-05 18:44:00	\N	2014-03-05	2014-03-05 13:14:07.604987	2014-03-05 13:14:07.604987
215	1	2014-03-06 10:53:00	\N	2014-03-06	2014-03-06 05:23:01.210602	2014-03-06 05:23:01.210602
216	3	2014-03-06 13:17:00	\N	2014-03-06	2014-03-06 07:47:10.621504	2014-03-06 07:47:10.621504
217	1	2014-03-06 14:58:00	\N	2014-03-06	2014-03-06 09:28:03.507537	2014-03-06 09:28:03.507537
218	2	2014-03-06 19:12:00	\N	2014-03-06	2014-03-06 13:42:12.627214	2014-03-06 13:42:12.627214
219	3	2014-03-06 20:28:00	\N	2014-03-06	2014-03-06 14:58:25.152706	2014-03-06 14:58:25.152706
220	3	2014-03-06 21:25:00	\N	2014-03-06	2014-03-06 15:55:05.83066	2014-03-06 15:55:05.83066
221	1	2014-03-07 10:48:00	\N	2014-03-07	2014-03-07 05:18:10.628397	2014-03-07 05:18:10.628397
222	1	2014-03-07 13:38:00	\N	2014-03-07	2014-03-07 08:08:09.053457	2014-03-07 08:08:09.053457
223	3	2014-03-07 16:02:00	\N	2014-03-07	2014-03-07 10:32:55.261948	2014-03-07 10:32:55.261948
224	2	2014-03-07 17:31:00	\N	2014-03-07	2014-03-07 12:01:06.798882	2014-03-07 12:01:06.798882
225	2	2014-03-07 17:32:00	\N	2014-03-07	2014-03-07 12:02:21.225331	2014-03-07 12:02:21.225331
226	2	2014-03-07 17:32:00	\N	2014-03-07	2014-03-07 12:02:46.890968	2014-03-07 12:02:46.890968
227	2	2014-03-07 17:33:00	\N	2014-03-07	2014-03-07 12:03:07.877728	2014-03-07 12:03:07.877728
228	2	2014-03-07 17:33:00	\N	2014-03-07	2014-03-07 12:03:56.568647	2014-03-07 12:03:56.568647
229	2	2014-03-07 19:53:00	\N	2014-03-07	2014-03-07 14:23:21.150927	2014-03-07 14:23:21.150927
230	2	2014-03-07 19:57:00	\N	2014-03-07	2014-03-07 14:27:55.517843	2014-03-07 14:27:55.517843
231	1	2014-03-08 09:09:00	\N	2014-03-08	2014-03-08 03:39:06.715378	2014-03-08 03:39:06.715378
232	2	2014-03-08 11:12:00	\N	2014-03-08	2014-03-08 05:42:09.454697	2014-03-08 05:42:09.454697
233	1	2014-03-08 12:04:00	\N	2014-03-08	2014-03-08 06:34:59.011507	2014-03-08 06:34:59.011507
234	3	2014-03-08 12:06:00	\N	2014-03-08	2014-03-08 06:36:12.979286	2014-03-08 06:36:12.979286
235	3	2014-03-08 12:07:00	\N	2014-03-08	2014-03-08 06:37:16.269615	2014-03-08 06:37:16.269615
236	2	2014-03-08 16:27:00	\N	2014-03-08	2014-03-08 10:57:53.707881	2014-03-08 10:57:53.707881
237	3	2014-03-08 20:49:00	\N	2014-03-08	2014-03-08 15:19:46.363974	2014-03-08 15:19:46.363974
238	2	2014-03-10 09:51:00	\N	2014-03-10	2014-03-10 04:21:37.327072	2014-03-10 04:21:37.327072
239	2	2014-03-10 09:52:00	\N	2014-03-10	2014-03-10 04:22:12.859434	2014-03-10 04:22:12.859434
240	1	2014-03-10 11:32:00	\N	2014-03-10	2014-03-10 06:02:05.124126	2014-03-10 06:02:05.124126
241	1	2014-03-10 12:53:00	\N	2014-03-10	2014-03-10 07:23:54.855603	2014-03-10 07:23:54.855603
242	3	2014-03-10 15:47:00	\N	2014-03-10	2014-03-10 10:17:22.22847	2014-03-10 10:17:22.22847
243	2	2014-03-10 16:43:00	\N	2014-03-10	2014-03-10 11:13:19.952906	2014-03-10 11:13:19.952906
244	3	2014-03-10 17:24:00	\N	2014-03-10	2014-03-10 11:54:14.563196	2014-03-10 11:54:14.563196
245	3	2014-03-10 17:50:00	\N	2014-03-10	2014-03-10 12:20:58.838646	2014-03-10 12:20:58.838646
246	2	2014-03-10 20:09:00	\N	2014-03-10	2014-03-10 14:39:32.265995	2014-03-10 14:39:32.265995
247	2	2014-03-10 20:19:00	\N	2014-03-10	2014-03-10 14:49:28.948283	2014-03-10 14:49:28.948283
248	2	2014-03-10 20:20:00	\N	2014-03-10	2014-03-10 14:50:05.148151	2014-03-10 14:50:05.148151
249	1	2014-03-11 12:15:00	\N	2014-03-11	2014-03-11 06:45:10.899407	2014-03-11 06:45:10.899407
250	3	2014-03-11 13:40:00	\N	2014-03-11	2014-03-11 08:10:59.511869	2014-03-11 08:10:59.511869
251	1	2014-03-12 12:31:00	\N	2014-03-12	2014-03-12 07:01:41.891211	2014-03-12 07:01:41.891211
252	3	2014-03-12 16:29:00	\N	2014-03-12	2014-03-12 10:59:49.124109	2014-03-12 10:59:49.124109
253	5	2014-03-12 19:14:00	\N	2014-03-12	2014-03-12 13:44:41.426827	2014-03-12 13:44:41.426827
254	3	2014-03-13 15:43:00	\N	2014-03-13	2014-03-13 10:13:27.523694	2014-03-13 10:13:27.523694
255	1	2014-03-14 10:33:00	\N	2014-03-14	2014-03-14 05:03:37.635915	2014-03-14 05:03:37.635915
256	1	2014-03-14 13:01:00	\N	2014-03-14	2014-03-14 07:31:45.652391	2014-03-14 07:31:45.652391
257	1	2014-03-15 13:18:00	\N	2014-03-15	2014-03-15 07:48:15.501222	2014-03-15 07:48:15.501222
258	1	2014-03-16 12:22:00	\N	2014-03-16	2014-03-16 06:52:40.507466	2014-03-16 06:52:40.507466
259	1	2014-03-16 20:23:00	\N	2014-03-16	2014-03-16 14:53:31.544554	2014-03-16 14:53:31.544554
260	1	2014-03-18 06:38:00	\N	2014-03-18	2014-03-18 01:08:52.812489	2014-03-18 01:08:52.812489
261	1	2014-03-18 13:47:00	\N	2014-03-18	2014-03-18 08:17:29.539246	2014-03-18 08:17:29.539246
262	3	2014-03-18 20:02:00	\N	2014-03-18	2014-03-18 14:32:58.889096	2014-03-18 14:32:58.889096
263	3	2014-03-18 20:07:00	\N	2014-03-18	2014-03-18 14:37:54.710578	2014-03-18 14:37:54.710578
264	3	2014-03-18 20:22:00	\N	2014-03-18	2014-03-18 14:52:55.633629	2014-03-18 14:52:55.633629
265	2	2014-03-18 23:03:00	\N	2014-03-18	2014-03-18 17:33:04.341865	2014-03-18 17:33:04.341865
266	1	2014-03-19 08:12:00	\N	2014-03-19	2014-03-19 02:42:33.213818	2014-03-19 02:42:33.213818
267	3	2014-03-19 09:08:00	\N	2014-03-19	2014-03-19 03:38:04.454085	2014-03-19 03:38:04.454085
268	2	2014-03-19 09:53:00	\N	2014-03-19	2014-03-19 04:23:52.884918	2014-03-19 04:23:52.884918
269	2	2014-03-19 09:57:00	\N	2014-03-19	2014-03-19 04:27:31.611684	2014-03-19 04:27:31.611684
270	1	2014-03-19 12:29:00	\N	2014-03-19	2014-03-19 06:59:31.603562	2014-03-19 06:59:31.603562
271	1	2014-03-19 12:47:00	\N	2014-03-19	2014-03-19 07:17:32.709034	2014-03-19 07:17:32.709034
272	3	2014-03-19 12:53:00	\N	2014-03-19	2014-03-19 07:23:04.754658	2014-03-19 07:23:04.754658
273	1	2014-03-19 14:56:00	\N	2014-03-19	2014-03-19 09:26:55.450885	2014-03-19 09:26:55.450885
274	2	2014-03-19 17:49:00	\N	2014-03-19	2014-03-19 12:19:06.588848	2014-03-19 12:19:06.588848
275	3	2014-03-19 18:34:00	\N	2014-03-19	2014-03-19 13:04:41.225169	2014-03-19 13:04:41.225169
276	2	2014-03-20 11:27:00	\N	2014-03-20	2014-03-20 05:57:48.851086	2014-03-20 05:57:48.851086
277	1	2014-03-20 12:38:00	\N	2014-03-20	2014-03-20 07:08:00.544278	2014-03-20 07:08:00.544278
278	1	2014-03-20 13:03:00	\N	2014-03-20	2014-03-20 07:33:16.357833	2014-03-20 07:33:16.357833
279	5	2014-03-20 17:56:00	\N	2014-03-20	2014-03-20 12:26:40.755263	2014-03-20 12:26:40.755263
280	3	2014-03-20 18:26:00	\N	2014-03-20	2014-03-20 12:56:39.325765	2014-03-20 12:56:39.325765
281	5	2014-03-20 18:36:00	\N	2014-03-20	2014-03-20 13:06:26.559555	2014-03-20 13:06:26.559555
28	5	2014-02-07 10:04:00	2014-03-20 18:38:00	2014-02-07	2014-02-07 04:34:22.563575	2014-03-20 13:08:49.666108
282	3	2014-03-21 10:51:00	\N	2014-03-21	2014-03-21 05:21:23.67244	2014-03-21 05:21:23.67244
283	5	2014-03-21 11:04:00	\N	2014-03-21	2014-03-21 05:34:46.290875	2014-03-21 05:34:46.290875
284	5	2014-03-21 11:33:00	\N	2014-03-21	2014-03-21 06:03:22.587451	2014-03-21 06:03:22.587451
285	1	2014-03-21 12:55:00	\N	2014-03-21	2014-03-21 07:25:04.127434	2014-03-21 07:25:04.127434
286	5	2014-03-21 12:57:00	\N	2014-03-21	2014-03-21 07:27:05.65463	2014-03-21 07:27:05.65463
287	3	2014-03-21 13:03:00	\N	2014-03-21	2014-03-21 07:33:02.060556	2014-03-21 07:33:02.060556
288	3	2014-03-23 14:03:00	\N	2014-03-23	2014-03-23 08:33:08.099578	2014-03-23 08:33:08.099578
289	2	2014-03-23 14:09:00	\N	2014-03-23	2014-03-23 08:39:30.210447	2014-03-23 08:39:30.210447
290	3	2014-03-23 14:10:00	\N	2014-03-23	2014-03-23 08:40:13.595451	2014-03-23 08:40:13.595451
291	1	2014-03-24 10:28:00	\N	2014-03-24	2014-03-24 04:58:02.090694	2014-03-24 04:58:02.090694
292	2	2014-03-24 13:39:00	\N	2014-03-24	2014-03-24 08:09:00.469662	2014-03-24 08:09:00.469662
293	1	2014-03-25 15:30:00	\N	2014-03-25	2014-03-25 10:00:33.593378	2014-03-25 10:00:33.593378
294	1	2014-03-26 21:43:00	\N	2014-03-26	2014-03-26 16:13:48.57917	2014-03-26 16:13:48.57917
295	1	2014-03-28 12:36:00	\N	2014-03-28	2014-03-28 07:06:56.77205	2014-03-28 07:06:56.77205
296	1	2014-03-28 22:17:00	\N	2014-03-28	2014-03-28 16:47:38.754883	2014-03-28 16:47:38.754883
297	3	2014-03-29 09:34:00	\N	2014-03-29	2014-03-29 04:04:46.779208	2014-03-29 04:04:46.779208
298	5	2014-03-29 11:32:00	\N	2014-03-29	2014-03-29 06:02:16.308674	2014-03-29 06:02:16.308674
299	3	2014-03-29 11:38:00	\N	2014-03-29	2014-03-29 06:08:43.875613	2014-03-29 06:08:43.875613
300	1	2014-03-29 12:02:00	\N	2014-03-29	2014-03-29 06:32:11.587288	2014-03-29 06:32:11.587288
301	1	2014-03-29 13:08:00	\N	2014-03-29	2014-03-29 07:38:14.499013	2014-03-29 07:38:14.499013
302	1	2014-03-31 10:49:00	\N	2014-03-31	2014-03-31 05:19:56.418375	2014-03-31 05:19:56.418375
303	3	2014-03-31 13:34:00	\N	2014-03-31	2014-03-31 08:04:12.873999	2014-03-31 08:04:12.873999
304	5	2014-03-31 13:35:00	\N	2014-03-31	2014-03-31 08:05:02.460448	2014-03-31 08:05:02.460448
305	3	2014-04-01 08:10:00	\N	2014-04-01	2014-04-01 02:40:51.278063	2014-04-01 02:40:51.278063
306	3	2014-04-01 08:11:00	\N	2014-04-01	2014-04-01 02:41:27.076064	2014-04-01 02:41:27.076064
307	4	2014-04-01 08:11:00	\N	2014-04-01	2014-04-01 02:41:38.775574	2014-04-01 02:41:38.775574
308	2	2014-04-01 08:11:00	\N	2014-04-01	2014-04-01 02:41:57.506701	2014-04-01 02:41:57.506701
309	3	2014-04-01 08:12:00	\N	2014-04-01	2014-04-01 02:42:15.531506	2014-04-01 02:42:15.531506
310	1	2014-04-01 09:35:00	\N	2014-04-01	2014-04-01 04:05:38.87585	2014-04-01 04:05:38.87585
311	1	2014-04-01 11:48:00	\N	2014-04-01	2014-04-01 06:18:05.942538	2014-04-01 06:18:05.942538
312	5	2014-04-01 12:32:00	\N	2014-04-01	2014-04-01 07:02:13.376889	2014-04-01 07:02:13.376889
313	1	2014-04-01 15:12:00	\N	2014-04-01	2014-04-01 09:42:33.539229	2014-04-01 09:42:33.539229
314	2	2014-04-01 15:16:00	\N	2014-04-01	2014-04-01 09:46:14.56502	2014-04-01 09:46:14.56502
315	2	2014-04-01 15:30:00	\N	2014-04-01	2014-04-01 10:00:45.65056	2014-04-01 10:00:45.65056
316	2	2014-04-01 15:41:00	\N	2014-04-01	2014-04-01 10:11:46.178005	2014-04-01 10:11:46.178005
317	1	2014-04-02 09:55:00	\N	2014-04-02	2014-04-02 04:25:35.863806	2014-04-02 04:25:35.863806
318	1	2014-04-02 12:27:00	\N	2014-04-02	2014-04-02 06:57:07.596589	2014-04-02 06:57:07.596589
319	5	2014-04-02 18:54:00	\N	2014-04-02	2014-04-02 13:24:47.26271	2014-04-02 13:24:47.26271
320	1	2014-04-02 22:07:00	\N	2014-04-02	2014-04-02 16:37:12.063464	2014-04-02 16:37:12.063464
321	1	2014-04-03 12:46:00	\N	2014-04-03	2014-04-03 07:16:54.375971	2014-04-03 07:16:54.375971
322	1	2014-04-03 16:28:00	\N	2014-04-03	2014-04-03 10:58:31.433369	2014-04-03 10:58:31.433369
323	1	2014-04-03 18:51:00	\N	2014-04-03	2014-04-03 13:21:36.794631	2014-04-03 13:21:36.794631
324	3	2014-04-04 09:57:00	\N	2014-04-04	2014-04-04 04:27:32.364495	2014-04-04 04:27:32.364495
325	3	2014-04-04 10:08:00	\N	2014-04-04	2014-04-04 04:38:02.785342	2014-04-04 04:38:02.785342
326	5	2014-04-04 11:59:00	\N	2014-04-04	2014-04-04 06:29:49.526878	2014-04-04 06:29:49.526878
327	5	2014-04-04 12:03:00	\N	2014-04-04	2014-04-04 06:33:01.157406	2014-04-04 06:33:01.157406
328	2	2014-04-04 12:13:00	\N	2014-04-04	2014-04-04 06:43:01.005651	2014-04-04 06:43:01.005651
329	3	2014-04-04 12:13:00	\N	2014-04-04	2014-04-04 06:43:28.544734	2014-04-04 06:43:28.544734
330	2	2014-04-04 17:01:00	\N	2014-04-04	2014-04-04 11:31:29.52599	2014-04-04 11:31:29.52599
331	5	2014-04-04 17:04:00	\N	2014-04-04	2014-04-04 11:34:29.255119	2014-04-04 11:34:29.255119
332	1	2014-04-05 11:19:00	\N	2014-04-05	2014-04-05 05:49:41.151732	2014-04-05 05:49:41.151732
333	1	2014-04-05 12:10:00	\N	2014-04-05	2014-04-05 06:40:15.018273	2014-04-05 06:40:15.018273
334	1	2014-04-06 12:50:00	\N	2014-04-06	2014-04-06 07:20:19.344901	2014-04-06 07:20:19.344901
335	3	2014-04-06 18:57:00	\N	2014-04-06	2014-04-06 13:27:18.579057	2014-04-06 13:27:18.579057
336	1	2014-04-07 23:17:00	\N	2014-04-07	2014-04-07 17:47:39.348995	2014-04-07 17:47:39.348995
337	2	2014-04-09 09:58:00	\N	2014-04-09	2014-04-09 04:28:59.572484	2014-04-09 04:28:59.572484
338	5	2014-04-09 10:06:00	\N	2014-04-09	2014-04-09 04:36:28.857249	2014-04-09 04:36:28.857249
339	2	2014-04-09 10:09:00	\N	2014-04-09	2014-04-09 04:39:04.036648	2014-04-09 04:39:04.036648
340	3	2014-04-09 15:54:00	\N	2014-04-09	2014-04-09 10:24:12.265281	2014-04-09 10:24:12.265281
341	1	2014-04-09 19:26:00	\N	2014-04-09	2014-04-09 13:56:17.689265	2014-04-09 13:56:17.689265
342	5	2014-04-10 19:52:00	\N	2014-04-10	2014-04-10 14:22:26.888155	2014-04-10 14:22:26.888155
343	2	2014-04-10 19:55:00	\N	2014-04-10	2014-04-10 14:25:43.592746	2014-04-10 14:25:43.592746
344	1	2014-04-10 21:15:00	\N	2014-04-10	2014-04-10 15:45:50.089166	2014-04-10 15:45:50.089166
345	1	2014-04-12 14:12:00	\N	2014-04-12	2014-04-12 08:42:48.682479	2014-04-12 08:42:48.682479
346	5	2014-04-12 15:31:00	\N	2014-04-12	2014-04-12 10:01:56.693854	2014-04-12 10:01:56.693854
347	3	2014-04-12 15:32:00	\N	2014-04-12	2014-04-12 10:02:44.423339	2014-04-12 10:02:44.423339
348	1	2014-04-12 15:34:00	\N	2014-04-12	2014-04-12 10:04:36.242954	2014-04-12 10:04:36.242954
349	3	2014-04-12 15:34:00	\N	2014-04-12	2014-04-12 10:04:59.935931	2014-04-12 10:04:59.935931
350	2	2014-04-12 15:35:00	\N	2014-04-12	2014-04-12 10:05:46.718856	2014-04-12 10:05:46.718856
351	2	2014-04-12 15:45:00	\N	2014-04-12	2014-04-12 10:15:19.942832	2014-04-12 10:15:19.942832
352	5	2014-04-12 15:46:00	\N	2014-04-12	2014-04-12 10:16:25.04795	2014-04-12 10:16:25.04795
353	4	2014-04-12 15:51:00	\N	2014-04-12	2014-04-12 10:21:20.779835	2014-04-12 10:21:20.779835
354	3	2014-04-12 15:51:00	\N	2014-04-12	2014-04-12 10:21:47.744057	2014-04-12 10:21:47.744057
355	3	2014-04-12 15:55:00	\N	2014-04-12	2014-04-12 10:25:50.816708	2014-04-12 10:25:50.816708
356	1	2014-04-12 16:04:00	\N	2014-04-12	2014-04-12 10:34:41.062682	2014-04-12 10:34:41.062682
357	3	2014-04-12 16:12:00	\N	2014-04-12	2014-04-12 10:42:23.938512	2014-04-12 10:42:23.938512
358	3	2014-04-12 16:15:00	\N	2014-04-12	2014-04-12 10:45:14.758527	2014-04-12 10:45:14.758527
359	3	2014-04-12 16:29:00	\N	2014-04-12	2014-04-12 10:59:31.538836	2014-04-12 10:59:31.538836
360	3	2014-04-12 16:30:00	\N	2014-04-12	2014-04-12 11:00:03.564391	2014-04-12 11:00:03.564391
361	3	2014-04-12 16:31:00	\N	2014-04-12	2014-04-12 11:01:44.186022	2014-04-12 11:01:44.186022
362	3	2014-04-12 16:35:00	\N	2014-04-12	2014-04-12 11:05:31.163699	2014-04-12 11:05:31.163699
39	3	2014-02-08 16:33:00	2014-04-12 16:36:00	2014-02-08	2014-02-08 11:03:17.16656	2014-04-12 11:06:06.579517
363	2	2014-04-12 16:36:00	\N	2014-04-12	2014-04-12 11:06:16.803875	2014-04-12 11:06:16.803875
364	3	2014-04-12 16:39:00	\N	2014-04-12	2014-04-12 11:09:07.383679	2014-04-12 11:09:07.383679
365	1	2014-04-12 16:44:00	\N	2014-04-12	2014-04-12 11:14:28.036013	2014-04-12 11:14:28.036013
366	2	2014-04-12 16:45:00	\N	2014-04-12	2014-04-12 11:15:34.976288	2014-04-12 11:15:34.976288
367	2	2014-04-12 17:59:00	\N	2014-04-12	2014-04-12 12:29:37.596851	2014-04-12 12:29:37.596851
368	2	2014-04-12 17:59:00	\N	2014-04-12	2014-04-12 12:29:37.633714	2014-04-12 12:29:37.633714
369	2	2014-04-12 17:59:00	\N	2014-04-12	2014-04-12 12:29:39.660702	2014-04-12 12:29:39.660702
370	1	2014-04-13 19:02:00	\N	2014-04-13	2014-04-13 13:32:45.317099	2014-04-13 13:32:45.317099
371	3	2014-04-14 10:19:00	\N	2014-04-14	2014-04-14 04:49:48.721224	2014-04-14 04:49:48.721224
372	1	2014-04-15 08:20:00	\N	2014-04-15	2014-04-15 02:50:05.466474	2014-04-15 02:50:05.466474
373	1	2014-04-15 08:20:00	\N	2014-04-15	2014-04-15 02:50:11.30188	2014-04-15 02:50:11.30188
374	1	2014-04-16 08:39:00	\N	2014-04-16	2014-04-16 03:09:41.125384	2014-04-16 03:09:41.125384
375	1	2014-04-16 22:47:00	\N	2014-04-16	2014-04-16 17:17:02.730395	2014-04-16 17:17:02.730395
376	3	2014-04-17 16:01:00	\N	2014-04-17	2014-04-17 10:31:30.871608	2014-04-17 10:31:30.871608
377	3	2014-04-21 17:08:00	\N	2014-04-21	2014-04-21 11:38:22.073278	2014-04-21 11:38:22.073278
378	1	2014-04-25 15:31:00	\N	2014-04-25	2014-04-25 10:01:56.020893	2014-04-25 10:01:56.020893
379	3	2014-04-25 16:13:00	\N	2014-04-25	2014-04-25 10:43:45.230147	2014-04-25 10:43:45.230147
380	1	2014-04-25 16:26:00	\N	2014-04-25	2014-04-25 10:56:06.427952	2014-04-25 10:56:06.427952
381	1	2014-04-25 16:28:00	\N	2014-04-25	2014-04-25 10:58:54.335299	2014-04-25 10:58:54.335299
382	1	2014-04-25 16:34:00	\N	2014-04-25	2014-04-25 11:04:09.67959	2014-04-25 11:04:09.67959
383	1	2014-04-29 09:09:00	\N	2014-04-29	2014-04-29 03:39:26.184521	2014-04-29 03:39:26.184521
384	3	2014-04-29 09:10:00	\N	2014-04-29	2014-04-29 03:40:37.067624	2014-04-29 03:40:37.067624
385	1	2014-04-29 11:47:00	\N	2014-04-29	2014-04-29 06:17:00.602058	2014-04-29 06:17:00.602058
386	3	2014-04-30 11:01:00	\N	2014-04-30	2014-04-30 05:31:33.678737	2014-04-30 05:31:33.678737
387	1	2014-04-30 12:13:00	\N	2014-04-30	2014-04-30 06:43:11.529778	2014-04-30 06:43:11.529778
388	3	2014-04-30 12:15:00	\N	2014-04-30	2014-04-30 06:45:07.442695	2014-04-30 06:45:07.442695
389	1	2014-04-30 13:48:00	\N	2014-04-30	2014-04-30 08:18:46.356512	2014-04-30 08:18:46.356512
390	1	2014-05-01 23:01:00	\N	2014-05-01	2014-05-01 17:31:41.179508	2014-05-01 17:31:41.179508
\.


--
-- Name: attendences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attendences_id_seq', 390, true);


--
-- Data for Name: b_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY b_documents (id, name, created_at, updated_at) FROM stdin;
1	Employee Card	2014-02-04 09:03:07.850631	2014-02-04 09:03:07.850631
2	Salary Slip	2014-02-04 09:03:07.865574	2014-02-04 09:03:07.865574
3	Mobile Bill	2014-02-04 09:03:07.872745	2014-02-04 09:03:07.872745
4	Pan Card	2014-02-04 09:03:07.881035	2014-02-04 09:03:07.881035
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
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY branches (id, name, branch_code, contact_person, created_at, updated_at, client_id) FROM stdin;
1	ANDHERI E	00539	\N	2014-02-04 09:03:02.116595	2014-02-04 09:03:02.116595	1
2	ANDHERI E SEEPZ	11690	\N	2014-02-04 09:03:02.130023	2014-02-04 09:03:02.130023	1
3	ANDHERI SAHAR RD	05937	\N	2014-02-04 09:03:02.145605	2014-02-04 09:03:02.145605	1
4	ANDHERI W	13204	\N	2014-02-04 09:03:02.153897	2014-02-04 09:03:02.153897	1
5	ANDHERI W LOKHNDWALA	04276	\N	2014-02-04 09:03:02.162287	2014-02-04 09:03:02.162287	1
6	ANDHERI WEST	04650	\N	2014-02-04 09:03:02.170366	2014-02-04 09:03:02.170366	1
7	AUNDH PUNE	08784	\N	2014-02-04 09:03:02.17869	2014-02-04 09:03:02.17869	1
8	BADLAPUR INDUSTRIAL ESTATE	07452	\N	2014-02-04 09:03:02.187009	2014-02-04 09:03:02.187009	1
9	BANDRA W	00548	\N	2014-02-04 09:03:02.195318	2014-02-04 09:03:02.195318	1
10	BHANDUP LBS	00562	\N	2014-02-04 09:03:02.203658	2014-02-04 09:03:02.203658	1
11	BHAYANDER	05318	\N	2014-02-04 09:03:02.211947	2014-02-04 09:03:02.211947	1
12	BHIWANDI 	00331	\N	2014-02-04 09:03:02.220287	2014-02-04 09:03:02.220287	1
13	BHULABHAI RD	05340	\N	2014-02-04 09:03:02.228695	2014-02-04 09:03:02.228695	1
14	BKC	04380	\N	2014-02-04 09:03:02.237142	2014-02-04 09:03:02.237142	1
15	BORIVLI WEST	00551	\N	2014-02-04 09:03:02.245451	2014-02-04 09:03:02.245451	1
16	BYCULLA	00343	\N	2014-02-04 09:03:02.253592	2014-02-04 09:03:02.253592	1
17	CAMP-4 ULHASNAGAR	12702	\N	2014-02-04 09:03:02.261965	2014-02-04 09:03:02.261965	1
18	CBD BELAPUR	13551	\N	2014-02-04 09:03:02.270251	2014-02-04 09:03:02.270251	1
19	CHEMBUR MAHUL RD	00564	\N	2014-02-04 09:03:02.278605	2014-02-04 09:03:02.278605	1
20	CHEMBUR NRI 	16228	\N	2014-02-04 09:03:02.286909	2014-02-04 09:03:02.286909	1
21	COLABA	10716	\N	2014-02-04 09:03:02.295249	2014-02-04 09:03:02.295249	1
22	CUFFE PARADE	05345	\N	2014-02-04 09:03:02.303536	2014-02-04 09:03:02.303536	1
23	DADAR	00353	\N	2014-02-04 09:03:02.31196	2014-02-04 09:03:02.31196	1
24	DEONAR	03109	\N	2014-02-04 09:03:02.320235	2014-02-04 09:03:02.320235	1
25	DIAMOND GARDEN	13340	\N	2014-02-04 09:03:02.328596	2014-02-04 09:03:02.328596	1
26	DOMBIVALI E PHASE I	01595	\N	2014-02-04 09:03:02.336946	2014-02-04 09:03:02.336946	1
27	DOMBIVALI EAST	07124	\N	2014-02-04 09:03:02.34521	2014-02-04 09:03:02.34521	1
28	DOMBIVLI WEST BRANCH 	05165	\N	2014-02-04 09:03:02.359903	2014-02-04 09:03:02.359903	1
29	FINANCE VASHI BR	11706	\N	2014-02-04 09:03:02.370466	2014-02-04 09:03:02.370466	1
30	GHANSOLI	13033	\N	2014-02-04 09:03:02.378723	2014-02-04 09:03:02.378723	1
31	GHATKOPAR E	00516	\N	2014-02-04 09:03:02.39157	2014-02-04 09:03:02.39157	1
32	GHATKOPAR M G RD	60203	\N	2014-02-04 09:03:02.40372	2014-02-04 09:03:02.40372	1
33	GHATKOPAR PANTNAGAR	11711	\N	2014-02-04 09:03:02.412066	2014-02-04 09:03:02.412066	1
34	GHATKOPAR W GRD	01131	\N	2014-02-04 09:03:02.420412	2014-02-04 09:03:02.420412	1
35	GOREGAON W	01266	\N	2014-02-04 09:03:02.43296	2014-02-04 09:03:02.43296	1
36	HIRANANDANI	11708	\N	2014-02-04 09:03:02.445182	2014-02-04 09:03:02.445182	1
37	IGATPURI 	00386	\N	2014-02-04 09:03:02.457766	2014-02-04 09:03:02.457766	1
38	JUINAGAR	11786	\N	2014-02-04 09:03:02.470161	2014-02-04 09:03:02.470161	1
39	KALMBOLI	12701	\N	2014-02-04 09:03:02.478527	2014-02-04 09:03:02.478527	1
40	KALYAN BAZARPETH ROAD	12925	\N	2014-02-04 09:03:02.486766	2014-02-04 09:03:02.486766	1
41	KALYAN E	15250	\N	2014-02-04 09:03:02.495117	2014-02-04 09:03:02.495117	1
42	KALYAN KHADAKPADDA	11159	\N	2014-02-04 09:03:02.50342	2014-02-04 09:03:02.50342	1
43	KALYAN W 	00399	\N	2014-02-04 09:03:02.511769	2014-02-04 09:03:02.511769	1
44	KANDIVALI E SAHAKARGRAM	30281	\N	2014-02-04 09:03:02.520104	2014-02-04 09:03:02.520104	1
45	KANJURMARG E	06249	\N	2014-02-04 09:03:02.528414	2014-02-04 09:03:02.528414	1
46	KEMS CORNER	06994	\N	2014-02-04 09:03:02.545063	2014-02-04 09:03:02.545063	1
47	KERALA	08589	\N	2014-02-04 09:03:02.553373	2014-02-04 09:03:02.553373	1
48	KHARGHAR BRANCH SEC.21 	11673	\N	2014-02-04 09:03:02.561674	2014-02-04 09:03:02.561674	1
49	KHARGHAR BRANCH SEC.35 	15972	\N	2014-02-04 09:03:02.570023	2014-02-04 09:03:02.570023	1
50	KHOPOLI	05551	\N	2014-02-04 09:03:02.578567	2014-02-04 09:03:02.578567	1
51	KOKAN BHAVAN	06240	\N	2014-02-04 09:03:02.58674	2014-02-04 09:03:02.58674	1
52	KOPARKHAIRANE	10331	\N	2014-02-04 09:03:02.595004	2014-02-04 09:03:02.595004	1
53	KURLA	01886	\N	2014-02-04 09:03:02.603366	2014-02-04 09:03:02.603366	1
54	KURLA LBS	12703	\N	2014-02-04 09:03:02.61184	2014-02-04 09:03:02.61184	1
55	LALBAUG	01850	\N	2014-02-04 09:03:02.620016	2014-02-04 09:03:02.620016	1
56	LOWER PAREL BRANCH  (N.M.JOSHI)	3428	\N	2014-02-04 09:03:02.628376	2014-02-04 09:03:02.628376	1
57	MAJIWADE(THANE)	13377	\N	2014-02-04 09:03:02.636825	2014-02-04 09:03:02.636825	1
58	MALAD E	03110	\N	2014-02-04 09:03:02.64511	2014-02-04 09:03:02.64511	1
59	MALAD MARVE	03280	\N	2014-02-04 09:03:02.653536	2014-02-04 09:03:02.653536	1
60	MARAL BR (OUT OF MAHARASHTRA)	16325	\N	2014-02-04 09:03:02.661713	2014-02-04 09:03:02.661713	1
61	MATUNGA	05350	\N	2014-02-04 09:03:02.670013	2014-02-04 09:03:02.670013	1
62	MULUND EAST	04210	\N	2014-02-04 09:03:02.678348	2014-02-04 09:03:02.678348	1
63	MULUND GAVANPADA	13034	\N	2014-02-04 09:03:02.686666	2014-02-04 09:03:02.686666	1
64	MULUND HARI OM NAGAR	16878	\N	2014-02-04 09:03:02.72298	2014-02-04 09:03:02.72298	1
65	MULUND LBS RD	11672	\N	2014-02-04 09:03:02.736395	2014-02-04 09:03:02.736395	1
66	MULUND W DEVIDAYAL RD	16720	\N	2014-02-04 09:03:02.746238	2014-02-04 09:03:02.746238	1
67	MULUND WEST	03225	\N	2014-02-04 09:03:02.762921	2014-02-04 09:03:02.762921	1
68	MUMBAI CENTRAL	00547	\N	2014-02-04 09:03:02.779324	2014-02-04 09:03:02.779324	1
69	NALASOPARA W	10414	\N	2014-02-04 09:03:02.79646	2014-02-04 09:03:02.79646	1
70	NAUPADA 	04498	\N	2014-02-04 09:03:02.812175	2014-02-04 09:03:02.812175	1
71	NEHRU NGR KURLA E	12924	\N	2014-02-04 09:03:02.820817	2014-02-04 09:03:02.820817	1
72	NERUL WEST	05087	\N	2014-02-04 09:03:02.829124	2014-02-04 09:03:02.829124	1
73	NERUL(EAST)	11785	\N	2014-02-04 09:03:02.837257	2014-02-04 09:03:02.837257	1
74	NEW PANVEL	60383	\N	2014-02-04 09:03:02.845562	2014-02-04 09:03:02.845562	1
75	NEW PANVEL WEST (SECTOR-6)	15664	\N	2014-02-04 09:03:02.858937	2014-02-04 09:03:02.858937	1
76	OLD PANVEL	00448	\N	2014-02-04 09:03:02.870685	2014-02-04 09:03:02.870685	1
77	PALGHAR	00444	\N	2014-02-04 09:03:02.879011	2014-02-04 09:03:02.879011	1
78	PALGHAR SAPHALE	13822	\N	2014-02-04 09:03:02.895623	2014-02-04 09:03:02.895623	1
79	PAREL BRANCH	01884	\N	2014-02-04 09:03:02.904046	2014-02-04 09:03:02.904046	1
80	PEDDER ROAD	00510	\N	2014-02-04 09:03:02.920657	2014-02-04 09:03:02.920657	1
81	POWAI	01109	\N	2014-02-04 09:03:02.929143	2014-02-04 09:03:02.929143	1
82	RABALE	03375	\N	2014-02-04 09:03:02.945553	2014-02-04 09:03:02.945553	1
83	RASAYANI	2172	\N	2014-02-04 09:03:02.954151	2014-02-04 09:03:02.954151	1
84	S.I.B GHATKOPAR(W)	04832	\N	2014-02-04 09:03:02.970365	2014-02-04 09:03:02.970365	1
85	SALTLAKE	04204	\N	2014-02-04 09:03:02.979089	2014-02-04 09:03:02.979089	1
86	SANPADA BRANCH	05141	\N	2014-02-04 09:03:02.995451	2014-02-04 09:03:02.995451	1
87	SANTACRUZ E	13265	\N	2014-02-04 09:03:03.004156	2014-02-04 09:03:03.004156	1
88	SBI BAPMC BRANCH 	09961	\N	2014-02-04 09:03:03.020329	2014-02-04 09:03:03.020329	1
89	SBI NRI BRANCH SHEWOOD	16215	\N	2014-02-04 09:03:03.029152	2014-02-04 09:03:03.029152	1
90	SBI WASHI TURBHE BRANCH	03736	\N	2014-02-04 09:03:03.045152	2014-02-04 09:03:03.045152	1
91	SBI, KHANDESHWAR BR	16374	\N	2014-02-04 09:03:03.053429	2014-02-04 09:03:03.053429	1
92	SECTOR 20 KOPERKHAIRANE BR	15284	\N	2014-02-04 09:03:03.061716	2014-02-04 09:03:03.061716	1
93	SECTOR-10 VASHI	30419	\N	2014-02-04 09:03:03.07051	2014-02-04 09:03:03.07051	1
94	SENAPATI BAPAT MARG BRANCH	13757	\N	2014-02-04 09:03:03.078781	2014-02-04 09:03:03.078781	1
95	SHIVAJI PARK DADAR BR	01429	\N	2014-02-04 09:03:03.087031	2014-02-04 09:03:03.087031	1
96	SHIVAJI TALAV BHANDUP	15474	\N	2014-02-04 09:03:03.095678	2014-02-04 09:03:03.095678	1
97	SHRIWARDHAN	01049	\N	2014-02-04 09:03:03.103629	2014-02-04 09:03:03.103629	1
98	SION	04296	\N	2014-02-04 09:03:03.111769	2014-02-04 09:03:03.111769	1
99	SWASTIK PARK 	07192	\N	2014-02-04 09:03:03.120142	2014-02-04 09:03:03.120142	1
100	THANE EAST	07232	\N	2014-02-04 09:03:03.128792	2014-02-04 09:03:03.128792	1
101	THANE GHODBUNDER RD	10786	\N	2014-02-04 09:03:03.136964	2014-02-04 09:03:03.136964	1
102	THANE J K MARG	09056	\N	2014-02-04 09:03:03.145251	2014-02-04 09:03:03.145251	1
103	THANE MAIN 	00489	\N	2014-02-04 09:03:03.153418	2014-02-04 09:03:03.153418	1
104	THANE PANCHPAKHADI	11674	\N	2014-02-04 09:03:03.161993	2014-02-04 09:03:03.161993	1
105	THANE SAKET RD	16417	\N	2014-02-04 09:03:03.170367	2014-02-04 09:03:03.170367	1
106	THANE VASANT VIHAR	04314	\N	2014-02-04 09:03:03.178623	2014-02-04 09:03:03.178623	1
107	THANE W E	01053	\N	2014-02-04 09:03:03.187007	2014-02-04 09:03:03.187007	1
108	TITWALA	16389	\N	2014-02-04 09:03:03.195211	2014-02-04 09:03:03.195211	1
109	ULHASNAGAR NO 3	01202	\N	2014-02-04 09:03:03.203706	2014-02-04 09:03:03.203706	1
110	VAISHALI NGR MULUND	15149	\N	2014-02-04 09:03:03.211831	2014-02-04 09:03:03.211831	1
111	VAKOLA BRANCH	01467	\N	2014-02-04 09:03:03.337047	2014-02-04 09:03:03.337047	1
112	VASAI	00326	\N	2014-02-04 09:03:03.453016	2014-02-04 09:03:03.453016	1
113	VASHI BRANCH	14677	\N	2014-02-04 09:03:03.461225	2014-02-04 09:03:03.461225	1
114	VASHI NAVI MUMBAI	10330	\N	2014-02-04 09:03:03.46954	2014-02-04 09:03:03.46954	1
115	VASHI SEC 14	15285	\N	2014-02-04 09:03:03.477915	2014-02-04 09:03:03.477915	1
116	VASHI SECTOR-19 ,VASHI	60347	\N	2014-02-04 09:03:03.486245	2014-02-04 09:03:03.486245	1
117	VERSOVA	03117	\N	2014-02-04 09:03:03.49441	2014-02-04 09:03:03.49441	1
118	VIDYAVIHAR	11710	\N	2014-02-04 09:03:03.502701	2014-02-04 09:03:03.502701	1
119	VIKHROLI E	07212	\N	2014-02-04 09:03:03.510994	2014-02-04 09:03:03.510994	1
120	VIKHROLI W	01406	\N	2014-02-04 09:03:03.519284	2014-02-04 09:03:03.519284	1
121	VILE PARLE E	01174	\N	2014-02-04 09:03:03.527628	2014-02-04 09:03:03.527628	1
122	VILE PARLE W IRLA	15713	\N	2014-02-04 09:03:03.535938	2014-02-04 09:03:03.535938	1
123	WODEHOUSE ROAD COLABA	00572	\N	2014-02-04 09:03:03.544276	2014-02-04 09:03:03.544276	1
\.


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branches_id_seq', 123, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
2	4	2	2014-02-11 06:31:14.358188	2014-02-11 06:31:14.358188	\N	\N	\N
3	6	3	2014-02-13 09:03:00.245851	2014-02-13 09:03:00.245851	\N	\N	\N
4	11	4	2014-02-13 10:39:12.824448	2014-02-13 10:39:12.824448	\N	\N	\N
5	19	5	2014-02-14 10:06:40.485363	2014-02-14 10:06:40.485363	\N	\N	\N
6	16	6	2014-02-14 10:08:07.745379	2014-02-14 10:08:07.745379	\N	\N	\N
7	18	7	2014-02-14 10:10:56.001634	2014-02-14 10:10:56.001634	\N	\N	\N
8	17	8	2014-02-14 10:13:41.164869	2014-02-14 10:13:41.164869	\N	\N	\N
9	15	9	2014-02-14 10:15:36.365908	2014-02-14 10:15:36.365908	\N	\N	\N
10	13	10	2014-02-14 10:17:32.89114	2014-02-14 10:17:32.89114	\N	\N	\N
11	12	11	2014-02-14 10:19:55.99574	2014-02-14 10:19:55.99574	\N	\N	\N
12	22	12	2014-02-14 11:23:03.429394	2014-02-14 11:23:03.429394	\N	\N	\N
13	21	13	2014-02-17 10:17:44.515864	2014-02-17 10:17:44.515864	\N	\N	\N
14	30	14	2014-02-17 11:05:28.037553	2014-02-17 11:05:28.037553	\N	\N	\N
15	32	15	2014-02-17 11:11:56.428967	2014-02-17 11:11:56.428967	\N	\N	\N
16	23	16	2014-02-17 11:16:32.392888	2014-02-17 11:16:32.392888	\N	\N	\N
17	35	17	2014-02-17 12:09:13.405319	2014-02-17 12:09:13.405319	\N	\N	\N
18	34	18	2014-02-17 12:14:38.572893	2014-02-17 12:14:38.572893	\N	\N	\N
19	25	19	2014-02-17 13:53:49.045316	2014-02-17 13:53:49.045316	\N	\N	\N
20	24	20	2014-02-18 06:07:08.967253	2014-02-18 06:07:08.967253	\N	\N	\N
21	29	21	2014-02-18 10:33:25.164567	2014-02-18 10:33:25.164567	\N	\N	\N
22	31	22	2014-02-18 10:42:30.708678	2014-02-18 10:42:30.708678	\N	\N	\N
23	36	23	2014-02-18 11:12:25.302752	2014-02-18 11:12:25.302752	\N	\N	\N
24	43	24	2014-02-20 03:30:57.018988	2014-02-20 03:30:57.018988	\N	\N	\N
25	44	25	2014-02-20 03:36:12.006934	2014-02-20 03:36:12.006934	\N	\N	\N
26	39	26	2014-02-20 03:40:42.878878	2014-02-20 03:40:42.878878	\N	\N	\N
27	42	27	2014-02-20 03:43:49.245159	2014-02-20 03:43:49.245159	\N	\N	\N
28	59	28	2014-02-20 10:13:51.729853	2014-02-20 10:13:51.729853	\N	\N	\N
29	58	29	2014-02-20 10:24:04.973118	2014-02-20 10:24:04.973118	\N	\N	\N
30	56	30	2014-02-20 10:33:47.375344	2014-02-20 10:33:47.375344	\N	\N	\N
31	55	31	2014-02-20 15:33:24.86818	2014-02-20 15:33:24.86818	\N	\N	\N
32	54	32	2014-02-20 15:36:28.452835	2014-02-20 15:36:28.452835	\N	\N	\N
33	52	33	2014-02-20 15:57:17.081266	2014-02-20 15:57:17.081266	\N	\N	\N
34	40	34	2014-02-20 16:03:30.064942	2014-02-20 16:03:30.064942	\N	\N	\N
35	60	35	2014-02-24 05:41:37.75414	2014-02-24 05:41:37.75414	\N	\N	\N
36	61	36	2014-02-24 05:53:41.867878	2014-02-24 05:53:41.867878	\N	\N	\N
37	62	37	2014-02-24 05:56:36.982872	2014-02-24 05:56:36.982872	\N	\N	\N
38	80	38	2014-03-04 12:25:30.251815	2014-03-04 12:25:30.251815	\N	\N	\N
39	80	39	2014-03-04 12:25:30.521811	2014-03-04 12:25:30.521811	\N	\N	\N
40	84	40	2014-03-07 14:32:13.1284	2014-03-07 14:32:13.1284	\N	\N	\N
41	92	41	2014-03-10 12:02:54.181243	2014-03-10 12:02:54.181243	\N	\N	\N
42	91	42	2014-03-10 12:06:07.653806	2014-03-10 12:06:07.653806	\N	\N	\N
43	90	43	2014-03-10 12:12:46.998016	2014-03-10 12:12:46.998016	\N	\N	\N
44	85	44	2014-03-10 14:43:47.016258	2014-03-10 14:43:47.016258	\N	\N	\N
45	89	45	2014-03-10 14:49:17.676365	2014-03-10 14:49:17.676365	\N	\N	\N
46	103	46	2014-03-12 12:45:12.4056	2014-03-12 12:45:12.4056	\N	\N	\N
47	104	47	2014-03-12 12:55:25.924443	2014-03-12 12:55:25.924443	\N	\N	\N
48	125	48	2014-03-18 15:09:00.626162	2014-03-18 15:09:00.626162	\N	\N	\N
49	122	49	2014-03-19 04:30:58.407271	2014-03-19 04:30:58.407271	\N	\N	\N
50	133	50	2014-03-20 13:06:14.802258	2014-03-20 13:06:14.802258	\N	\N	\N
51	131	51	2014-03-20 13:08:41.646029	2014-03-20 13:08:41.646029	\N	\N	\N
52	145	52	2014-04-01 10:17:26.480376	2014-04-01 10:17:26.480376	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 52, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
1	1	\N	2	2	2014-02-05 17:08:17.640523	2014-02-05 17:08:17.651782
57	1	\N	60	1	2014-02-22 07:09:43.663445	2014-02-22 07:09:43.680544
3	5	\N	3	3	2014-02-08 05:49:15.538802	2014-02-08 05:49:15.567693
4	1	\N	4	1	2014-02-10 13:51:44.422772	2014-02-10 13:51:44.451424
5	1	\N	5	1	2014-02-13 08:00:20.657623	2014-02-13 08:00:20.680322
6	1	\N	6	1	2014-02-13 08:08:16.654378	2014-02-13 08:08:16.680284
8	1	\N	8	2	2014-02-13 09:30:02.07729	2014-02-13 09:30:02.099859
7	1	\N	7	2	2014-02-13 09:21:02.343957	2014-02-13 09:34:01.115061
58	1	\N	61	1	2014-02-22 07:11:09.538465	2014-02-22 07:11:09.55752
10	1	\N	10	3	2014-02-13 09:59:10.550025	2014-02-13 09:59:10.574616
11	1	\N	11	3	2014-02-13 10:05:42.445372	2014-02-13 10:05:42.454699
9	1	\N	9	3	2014-02-13 09:46:37.183916	2014-02-13 10:14:08.99084
12	1	\N	12	1	2014-02-14 07:14:46.093768	2014-02-14 07:14:46.111075
13	1	\N	13	1	2014-02-14 08:17:25.298805	2014-02-14 08:17:25.321243
14	1	\N	14	1	2014-02-14 08:44:58.150845	2014-02-14 08:44:58.18898
15	1	\N	15	1	2014-02-14 08:49:09.019276	2014-02-14 08:49:09.035474
16	1	\N	16	1	2014-02-14 08:50:51.004026	2014-02-14 08:50:51.02262
17	1	\N	17	1	2014-02-14 08:52:21.621018	2014-02-14 08:52:21.645201
18	1	\N	18	1	2014-02-14 08:54:05.049617	2014-02-14 08:54:05.072854
19	1	\N	19	1	2014-02-14 08:55:45.722651	2014-02-14 08:55:45.75319
20	1	\N	20	2	2014-02-14 09:01:55.52541	2014-02-14 09:01:55.545711
21	1	\N	21	2	2014-02-14 09:04:58.462397	2014-02-14 09:04:58.490029
22	1	\N	22	2	2014-02-14 09:59:49.424859	2014-02-14 09:59:49.451564
23	1	\N	23	2	2014-02-14 10:08:53.695002	2014-02-14 10:08:53.720729
24	1	\N	24	1	2014-02-17 07:00:04.59765	2014-02-17 07:00:04.649549
25	1	\N	25	1	2014-02-17 07:05:06.005872	2014-02-17 07:05:06.015162
26	1	\N	29	2	2014-02-17 07:22:37.025508	2014-02-17 07:22:37.051329
27	1	\N	30	2	2014-02-17 07:24:45.283575	2014-02-17 07:24:45.304704
28	1	\N	31	2	2014-02-17 07:26:41.009282	2014-02-17 07:26:41.029036
29	1	\N	32	2	2014-02-17 07:28:07.822241	2014-02-17 07:28:07.847059
30	1	\N	33	2	2014-02-17 07:29:43.160364	2014-02-17 07:29:43.182414
31	1	\N	34	2	2014-02-17 07:36:37.952372	2014-02-17 07:36:37.974328
32	1	\N	35	2	2014-02-17 07:38:41.644336	2014-02-17 07:38:41.666961
33	1	\N	36	2	2014-02-17 07:40:06.07228	2014-02-17 07:40:06.103244
34	1	\N	37	2	2014-02-17 07:41:59.825448	2014-02-17 07:41:59.837467
35	1	\N	38	2	2014-02-17 07:43:51.551448	2014-02-17 07:43:51.574038
36	1	\N	39	1	2014-02-19 07:45:59.152304	2014-02-19 07:45:59.17307
37	1	\N	40	1	2014-02-19 07:50:05.496752	2014-02-19 07:50:05.532183
38	1	\N	41	1	2014-02-19 07:52:20.64877	2014-02-19 07:52:20.67096
39	1	\N	42	1	2014-02-19 07:55:53.429319	2014-02-19 07:55:53.453874
40	1	\N	43	1	2014-02-19 08:07:04.929931	2014-02-19 08:07:04.970589
41	1	\N	44	1	2014-02-19 08:10:22.785393	2014-02-19 08:10:22.808761
42	1	\N	45	2	2014-02-19 08:12:20.312778	2014-02-19 08:12:29.064058
43	1	\N	46	2	2014-02-19 08:14:38.74819	2014-02-19 08:14:38.777066
44	1	\N	47	2	2014-02-19 08:19:50.238951	2014-02-19 08:19:50.258252
45	1	\N	48	2	2014-02-19 08:21:16.644821	2014-02-19 08:21:16.660248
46	1	\N	49	2	2014-02-19 08:23:46.402638	2014-02-19 08:23:46.427236
47	1	\N	50	2	2014-02-19 08:30:51.010835	2014-02-19 08:30:51.026788
48	1	\N	51	2	2014-02-19 09:01:23.431733	2014-02-19 09:01:23.455246
49	1	\N	52	1	2014-02-20 07:17:40.424851	2014-02-20 07:17:40.460041
50	1	\N	53	1	2014-02-20 07:19:28.299231	2014-02-20 07:19:28.324785
51	1	\N	54	1	2014-02-20 07:21:04.815901	2014-02-20 07:21:04.842463
52	1	\N	55	1	2014-02-20 07:23:21.59552	2014-02-20 07:23:21.621776
53	1	\N	56	2	2014-02-20 07:27:31.176842	2014-02-20 07:27:31.211227
54	1	\N	57	2	2014-02-20 07:33:07.86703	2014-02-20 07:33:07.894605
55	1	\N	58	2	2014-02-20 07:34:53.983058	2014-02-20 07:34:54.011135
56	1	\N	59	2	2014-02-20 07:40:53.463305	2014-02-20 07:40:53.489555
59	1	\N	62	1	2014-02-22 07:12:33.08965	2014-02-22 07:12:33.112119
60	1	\N	63	2	2014-02-22 07:16:45.629289	2014-02-22 07:16:45.648936
61	1	\N	64	2	2014-02-22 07:18:21.413327	2014-02-22 07:18:21.433823
62	1	\N	65	1	2014-02-26 06:41:15.286464	2014-02-26 06:41:15.306723
63	1	\N	66	1	2014-02-26 07:00:37.034837	2014-02-26 07:00:37.062739
64	1	\N	67	2	2014-02-26 07:02:28.593225	2014-02-26 07:02:28.612871
65	1	\N	68	2	2014-02-26 07:04:37.830508	2014-02-26 07:04:37.849451
66	1	\N	69	2	2014-02-26 07:07:43.658147	2014-02-26 07:07:43.683872
67	1	\N	70	1	2014-03-01 07:11:56.375005	2014-03-01 07:11:56.390316
68	1	\N	71	1	2014-03-01 07:18:34.333947	2014-03-01 07:18:34.356882
69	1	\N	72	1	2014-03-01 07:21:50.130159	2014-03-01 07:21:50.155624
70	1	\N	73	1	2014-03-01 07:24:04.55615	2014-03-01 07:24:04.571261
71	1	\N	74	2	2014-03-01 07:28:19.268464	2014-03-01 07:28:19.28936
72	1	\N	75	2	2014-03-01 07:29:41.31679	2014-03-01 07:29:41.329287
73	1	\N	76	2	2014-03-01 07:33:13.659036	2014-03-01 07:33:13.679477
74	1	\N	77	2	2014-03-01 07:35:47.586188	2014-03-01 07:35:47.609483
75	1	\N	78	1	2014-03-04 07:27:10.581559	2014-03-04 07:27:10.5973
76	1	\N	79	1	2014-03-04 07:29:52.5714	2014-03-04 07:29:52.594762
77	1	\N	80	1	2014-03-04 07:33:18.782294	2014-03-04 07:33:18.799448
78	1	\N	81	2	2014-03-04 07:39:17.604137	2014-03-04 07:39:17.628114
79	1	\N	82	1	2014-03-05 07:33:17.538375	2014-03-05 07:33:17.566299
80	1	\N	83	1	2014-03-05 07:49:43.703888	2014-03-05 07:49:43.718761
81	\N	\N	84	1	2014-03-07 08:13:16.804395	2014-03-07 08:13:16.804395
82	1	\N	85	1	2014-03-07 08:15:12.18255	2014-03-07 08:15:12.203929
83	1	\N	86	1	2014-03-07 08:17:48.479447	2014-03-07 08:17:48.498098
84	1	\N	87	1	2014-03-07 08:20:00.395382	2014-03-07 08:20:00.415272
85	1	\N	88	1	2014-03-10 07:57:36.025812	2014-03-10 07:57:36.05528
105	1	\N	108	1	2014-03-14 08:02:15.446611	2014-03-14 08:02:15.466052
86	1	\N	89	1	2014-03-10 07:59:21.998002	2014-03-10 07:59:44.12467
87	1	\N	90	2	2014-03-10 08:02:18.020158	2014-03-10 08:02:18.038586
88	1	\N	91	2	2014-03-10 08:05:30.099479	2014-03-10 08:05:30.116031
89	1	\N	92	2	2014-03-10 08:08:06.253641	2014-03-10 08:08:06.277323
90	1	\N	93	1	2014-03-11 07:01:47.423816	2014-03-11 07:01:47.44942
91	1	\N	94	1	2014-03-11 07:04:08.571211	2014-03-11 07:04:18.956956
92	1	\N	95	1	2014-03-11 07:12:57.699312	2014-03-11 07:12:57.726413
93	1	\N	96	1	2014-03-11 07:16:25.437034	2014-03-11 07:16:25.455651
94	1	\N	97	2	2014-03-11 07:22:32.30056	2014-03-11 07:22:32.311719
95	1	\N	98	1	2014-03-12 07:13:48.375706	2014-03-12 07:13:48.395957
96	1	\N	99	1	2014-03-12 07:18:29.818511	2014-03-12 07:18:29.838854
97	1	\N	100	1	2014-03-12 07:25:13.837366	2014-03-12 07:25:13.849763
98	1	\N	101	1	2014-03-12 07:28:26.071164	2014-03-12 07:28:26.093507
99	1	\N	102	1	2014-03-12 07:30:18.042304	2014-03-12 07:30:18.054697
100	1	\N	103	2	2014-03-12 07:32:00.64335	2014-03-12 07:32:00.657789
101	1	\N	104	2	2014-03-12 07:34:01.758322	2014-03-12 07:34:01.777215
102	1	\N	105	2	2014-03-12 07:35:42.621685	2014-03-12 07:35:42.640139
103	1	\N	106	1	2014-03-14 07:56:15.178538	2014-03-14 07:56:15.197519
104	1	\N	107	1	2014-03-14 08:00:49.133045	2014-03-14 08:00:49.155839
106	1	\N	109	2	2014-03-14 08:05:30.725047	2014-03-14 08:05:30.740342
107	1	\N	110	2	2014-03-14 08:07:16.176477	2014-03-14 08:07:16.199059
108	1	\N	111	2	2014-03-14 08:08:37.075288	2014-03-14 08:08:37.098384
109	1	\N	112	2	2014-03-14 08:10:24.499926	2014-03-14 08:10:24.513515
110	1	\N	113	2	2014-03-14 08:12:27.426577	2014-03-14 08:12:27.472605
111	1	\N	114	1	2014-03-15 07:51:56.251292	2014-03-15 07:51:56.277022
112	1	\N	115	2	2014-03-15 08:01:00.04932	2014-03-15 08:01:00.072607
113	1	\N	116	2	2014-03-15 08:02:30.482504	2014-03-15 08:02:30.504204
114	1	\N	117	2	2014-03-15 08:06:47.005346	2014-03-15 08:06:47.028826
115	1	\N	118	2	2014-03-15 08:08:02.097362	2014-03-15 08:08:02.11682
116	1	\N	119	2	2014-03-15 08:10:19.707161	2014-03-15 08:10:19.720224
117	1	\N	120	2	2014-03-15 08:11:47.594626	2014-03-15 08:11:47.620358
118	1	\N	121	1	2014-03-18 08:19:27.479816	2014-03-18 08:19:27.500625
119	1	\N	122	1	2014-03-18 08:21:04.874363	2014-03-18 08:21:04.899685
120	1	\N	123	1	2014-03-18 08:22:09.867474	2014-03-18 08:22:09.87994
121	1	\N	124	1	2014-03-18 08:25:05.214281	2014-03-18 08:25:05.239899
122	1	\N	125	2	2014-03-18 08:27:42.856379	2014-03-18 08:27:42.883133
123	1	\N	126	2	2014-03-18 08:33:59.014639	2014-03-18 08:33:59.029162
124	1	\N	127	1	2014-03-19 07:17:25.118452	2014-03-19 07:17:25.147985
125	1	\N	128	1	2014-03-20 07:10:20.009237	2014-03-20 07:10:20.029613
126	1	\N	129	1	2014-03-20 07:12:12.405035	2014-03-20 07:12:12.431222
127	1	\N	130	1	2014-03-20 07:14:09.027807	2014-03-20 07:14:09.05503
128	1	\N	131	2	2014-03-20 07:20:18.135979	2014-03-20 07:20:18.157264
129	1	\N	132	2	2014-03-20 07:22:41.895462	2014-03-20 07:22:41.913636
130	1	\N	133	2	2014-03-20 07:27:21.049743	2014-03-20 07:27:21.075459
131	1	\N	135	1	2014-03-21 07:35:49.038413	2014-03-21 07:35:49.068459
132	1	\N	136	1	2014-03-21 07:37:52.07559	2014-03-21 07:37:52.102037
133	1	\N	137	1	2014-03-21 07:39:45.197491	2014-03-21 07:39:45.22007
134	1	\N	138	3	2014-03-21 07:42:09.513343	2014-03-21 07:42:09.52732
135	1	\N	139	1	2014-03-21 07:43:50.089162	2014-03-21 07:43:50.115523
136	1	\N	140	1	2014-03-21 07:44:50.657483	2014-03-21 07:44:50.691968
137	1	\N	141	2	2014-03-21 07:47:18.344054	2014-03-21 07:47:18.368993
138	1	\N	142	2	2014-03-21 07:49:01.524324	2014-03-21 07:49:01.547036
139	1	\N	143	2	2014-03-21 07:52:03.314303	2014-03-21 07:52:03.333738
140	1	\N	144	1	2014-03-28 07:24:27.201105	2014-03-28 07:24:27.223058
141	1	\N	145	1	2014-03-28 07:27:38.969556	2014-03-28 07:27:38.992091
142	1	\N	146	1	2014-04-03 07:22:16.458606	2014-04-03 07:22:16.471973
143	\N	\N	134	3	2014-04-12 10:21:00.967799	2014-04-12 10:21:00.967799
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 143, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
129	1207	Scorp Enterprises	t	1207	DINESH THASAL 	BUSINESS		AKER POWERGAS PVT LTD, POWERGAS HS, I THINK TEC, NO CAMPUS , VILLAGE KANJUR, KANJUR MARG E 400042 \r\n	INDIA	Maharashtra	\N	195	dinesh-thasal	19.1322811000000002	72.9357214999999997	submitted	209	2014-03-20 07:12:04.98595	2014-03-20 07:12:04.98595	AKER POWERGAS PVT LTD	\N	\N	\N	\N	34	1	1131	400042	1
2	1003	Scorp Enterprises	f	1003	Chetan Tandel	BUSINESS	Kailash complex	Vikroli	INDIA	Maharashtra	\N	1	chetan-tandel	19.1046510000000005	72.9317819999999983	submitted	3	2014-02-05 17:07:38.855087	2014-02-05 17:07:38.855087	Scorp ltd	\N	\N	\N	\N	1	1	0	400086	1
23	1049	Scorp Enterprises	t	1049	PANKAJ KUMAR	BUSINESS		ANMSOFT TECHNOLOGIES PVT LTD, UNIT NO 219-220, BLDG NO 2, SECTOR 1, MILLENIUM BUSINESS PARK, MAHAPE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	196	pankaj-kumar	19.1045893999999983	73.0228172999999998	verified	51	2014-02-14 10:08:47.29206	2014-02-14 10:08:47.29206	ANMSOFT TECHNOLOGIES PVT LTD	\N	\N	\N	\N	113	1	14677	400710	2
21	1044	Scorp Enterprises	t	1044	MR SANDEEP TRIMBAKRAO PACHKAWADE	BUSINESS		HEXAWARE TECHNOLOGIES LTD, BLDG 152, MBP PARK, A BLOCK, SECTOR -3, TTC INDUSTRIAL AREA, MAHAPE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	196	mr-sandeep-trimbakrao-pachkawade	19.0936355000000013	73.0186178000000012	verified	46	2014-02-14 09:04:52.341089	2014-02-14 09:04:52.341089	HEXAWARE TECHNOLOGIES LTD	\N	\N	\N	\N	70	1	4498	400710	2
3	1005	Scorp Enterprises	f	1005	Tinesh	BUSINESS	vikroli	kailash complex, vikroli	INDIA	Maharashtra	\N	163	tinesh	19.1154632000000007	72.918049400000001	submitted	5	2014-02-08 05:46:34.288101	2014-02-08 05:46:34.288101	Scorpeo	\N	\N	\N	\N	2	1	11690	400900	2
88	1147	Scorp Enterprises	t	1147	KUNTAL MAITI 	BUSINESS		CROMPTION GREAVES LTD ,GLOBAL ROAD , NAGARJUNA KANJUR MARG E \r\n	INDIA	Maharashtra	\N	195	kuntal-maiti	19.1322811000000002	72.9357214999999997	submitted	149	2014-03-10 07:57:29.345406	2014-03-10 07:57:29.345406	CROMPTION GREAVES LTD	\N	\N	\N	\N	34	1	1131	400042	1
4	1006	Scorp Enterprises	f	1006	ERTYUU	BUSINESS	HGFHG	6UR546U5758HJFGJHGJHG67U56U	INDIA	Maharashtra	\N	144	ertyuu	19.7514797999999985	75.7138884000000019	verified	7	2014-02-08 07:18:23.872243	2014-02-08 07:18:23.872243	GG	\N	\N	\N	\N	1	1	539	8897987878	1
5	1010	Scorp Enterprises	t	1010	MAHESH GAJANAN SOMAVANSHI	BUSINESS		UGAM SOLUTIONS PVT LTD, UNIT A2/A3 4TH FLR, ASHAR IT PARK, WAGALE ESTATE 162 ROAD, AMBIKA NAGAR, THANE 400604\r\n	INDIA	Maharashtra	\N	113	mahesh-gajanan-somavanshi	19.1990000999999992	72.9550993999999946	submitted	12	2014-02-13 08:00:14.686626	2014-02-13 08:00:14.686626	UGAM SOLUTIONS PVT LTD	\N	\N	\N	\N	70	1	4498	4000604	3
7	1014	Scorp Enterprises	f	1014	SACHIN A GADEKAR	BUSINESS		RELIANCE CORPORATE PARK, THANE BELPAUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	Maharashtra	\N	123	sachin-a-gadekar	19.1162281999999983	73.0071350999999993	submitted	16	2014-02-13 09:20:56.467319	2014-02-13 09:20:56.467319	RELIANCE CORPORATE	\N	\N	\N	\N	113	1	14677		2
8	1015	Scorp Enterprises	t	1015	PRAVIN PAWAR	BUSINESS		HEXAWARE TECHNOLOGIES LTD, BUILDING  152, MILLENIUM BUSINESS PARK, A BLOCK, SECTOR 3, MAHAPE, NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	132	pravin-pawar	19.1182936999999988	73.0275874999999957	submitted	17	2014-02-13 09:29:51.2876	2014-02-13 09:29:51.2876	HEXAWARE TECHNOLOGIES LTD	\N	\N	\N	\N	113	1	14677		2
9	1016	Scorp Enterprises	f	1016	PRASHANT RAMCHANDRA PANDEY	BUSINESS		SWAMI VIVEKANAND HIGH SCHOOL, SIHDHI SOCIETY CHEMBUR MUMBAI 77\r\n	INDIA	Maharashtra	\N	74	prashant-ramchandra-pandey	19.0493501000000016	72.8877384000000035	submitted	18	2014-02-13 09:46:26.111673	2014-02-13 09:46:26.111673	SWAMI VIVEKANAND HIGH SCHOOL	\N	\N	\N	\N	70	1	4498	400071	1
10	1019	Scorp Enterprises	f	1019	USHA MANMOHAN SHARMA 	BUSINESS		MUNICIPAL CORPORATION OF GREATER MUMBAI , PUBLIC HEALPH DEPARTMENT PAREL P/S  \r\n	INDIA	Maharashtra	\N	16	usha-manmohan-sharma	19.7514797999999985	75.7138884000000019	submitted	21	2014-02-13 09:59:02.631311	2014-02-13 09:59:02.631311	MUNICIPAL CORPORATION OF GREATER MUMBAI	\N	\N	\N	\N	34	1	1131	400013	1
6	1012	Scorp Enterprises	t	1012	KETKAR KAUSTUBH SHIRESH	BUSINESS		PURNIK BUILDERS PVT LTD, PURNIK ONE KANCHAN PUSHPA,KAVESWAR, NR SURAJ WATER PARK,THANE\r\n	INDIA	Maharashtra	\N	190	ketkar-kaustubh-shiresh	19.2542730000000013	72.9719149999999956	verified	14	2014-02-13 08:08:10.098123	2014-02-13 08:08:10.098123	PURNIK BUILDERS PVT LTD	\N	\N	\N	\N	66	1	16720		3
11	1021	Scorp Enterprises	t	1021	SHANMHGANATHAN PERUMAL NADAR	BUSINESS		 603,SHRIKANT CHAMBURS PHASE I ,ADJACEPT TO R.K. STUDIO SION TRUMBAY ROAD CHEBUR \r\n	INDIA	Maharashtra	\N	74	shanmhganathan-perumal-nadar	19.7514797999999985	75.7138884000000019	verified	23	2014-02-13 10:05:35.891535	2014-02-13 10:05:35.891535	xyz	\N	\N	\N	\N	34	1	1131	400071	1
14	1036	Scorp Enterprises	t	1036	REENA PRADEEP NAIR	BUSINESS		ACENTRURE, SERVICE PVT LTD, PLANT NO 3, GODREJ & BOYCE COMPLEX, LBS MARG, VIKHROLI WEST, MUMBAI 79\r\n	INDIA	Maharashtra	\N	84	reena-pradeep-nair	19.7514797999999985	75.7138884000000019	submitted	38	2014-02-14 08:44:53.02153	2014-02-14 08:44:53.02153	ACENTRURE, SERVICE PVT LTD	\N	\N	\N	\N	45	1	6249	400079	1
20	1043	Scorp Enterprises	t	1043	MAITREYI M NIRKHEDKAR	BUSINESS		LARSEN & TOUBRO INFOTECH LTD, S G RENE PROPERTIES SEZ MIND SPACE BLDG NO 5 & 6, 1ST FLOOR THANE BELAPUR RD, AIROLI, NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	127	maitreyi-m-nirkhedkar	19.1552949999999989	72.999147999999991	submitted	45	2014-02-14 09:01:48.995407	2014-02-14 09:01:48.995407	LARSEN & TOUBRO INFOTECH LTD	\N	\N	\N	\N	14	1	4380	400708	2
19	1041	Scorp Enterprises	t	1041	LYDIA RONALD DSOUZA 	BUSINESS		UNIFY ENTERPRISE COMMUNICATIONS PVT LTD, HINCON HOUSE, 247 PARK, TOWER-B, 6TH FLR, LBS MARG, VIKHROLI WEST, MUMBA 83\r\n	INDIA	Maharashtra	\N	84	lydia-ronald-dsouza	19.7514797999999985	75.7138884000000019	verified	43	2014-02-14 08:55:40.986324	2014-02-14 08:55:40.986324	UNIFY ENTERPRISE COMMUNICATIONS PVT LTD	\N	\N	\N	\N	111	1	1467	400083	1
18	1040	Scorp Enterprises	t	1040	MR. JAYDEEP M. DEOGHARE	BUSINESS		CAPGEMINI CONSULTING INDIA PVT.LTD., M - 6 - 3RD FLR., PLANT 5, GODREJ & BOYCE MFG. CO. LTD., PIROJSHANAGAR, LBS MARG, VIKHROLI (W), MUMBAI - 79\r\n	INDIA	Maharashtra	\N	84	mr-jaydeep-m-deoghare	19.7514797999999985	75.7138884000000019	verified	42	2014-02-14 08:53:59.970886	2014-02-14 08:53:59.970886	CAPGEMINI CONSULTING INDIA PVT.LTD	\N	\N	\N	\N	81	1	1109	400079	1
17	1039	Scorp Enterprises	t	1039	JAY MAHENDRA RAMBHIA	BUSINESS		TATA CONSULTANCY SERVICES, FINANCE 10 TH , KENSINGTON B- WING , HIRANANDANI BUSINESS PARK , SEZ/ITES , POWAI MUMBAI \r\n	INDIA	Maharashtra	\N	80	jay-mahendra-rambhia	19.1196772999999993	72.9050809000000015	verified	41	2014-02-14 08:52:16.329663	2014-02-14 08:52:16.329663	TATA CONSULTANCY SERVICES	\N	\N	\N	\N	34	1	1131	400076	1
16	1038	Scorp Enterprises	t	1038	PURVA ASHOK NARAYANAN	BUSINESS		CAPGEMINI INDIA PVT LTD., OFFICE M6 , GODRET IT PARK NEAR PAUS REST, VIKHROLI WEST , MUMBAI  400079 .\r\n	INDIA	Maharashtra	\N	84	purva-ashok-narayanan	19.1091760999999991	72.9194797999999906	verified	40	2014-02-14 08:50:45.257343	2014-02-14 08:50:45.257343	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	34	1	1131	400079	1
15	1037	Scorp Enterprises	t	1037	MISS VAISHALI VIJAYRAO SADANPAWAR	BUSINESS		TATA CONSULTANCY SERVICES, POWAI BRANCH, KENSINGTON, B WING, HIRANANDANI BUSINESS PARK, SEZ-ITES, POWAI, MUMBAI 400076\r\n	INDIA	Maharashtra	\N	80	miss-vaishali-vijayrao-sadanpawar	19.1253004000000004	72.9076668999999953	verified	39	2014-02-14 08:49:02.627177	2014-02-14 08:49:02.627177	TATA CONSULTANCY SERVICES	\N	\N	\N	\N	113	1	14677	400076	1
13	1029	Scorp Enterprises	t	1029	ASHOK MAHADEV PARAB 	BUSINESS		TCS ,KENSINGTON - B , 11F74  ,POWAI MUMBAI 400076 .\r\n	INDIA	Maharashtra	\N	80	ashok-mahadev-parab	19.1253004000000004	72.9076668999999953	verified	31	2014-02-14 08:17:19.195676	2014-02-14 08:17:19.195676	TCS 	\N	\N	\N	\N	14	1	4380	400076	1
12	1026	Scorp Enterprises	t	1026	PRIYANKA PRASHANT PANDEY	BUSINESS		I D UTTARI BHARAT SABHA HINDHI PRIMARY SCHOOL, STATION ROAD, BHANDUP W, MUMBAI 78\r\n	INDIA	Maharashtra	\N	53	priyanka-prashant-pandey	19.7514797999999985	75.7138884000000019	verified	28	2014-02-14 07:14:35.748303	2014-02-14 07:14:35.748303	I D UTTARI BHARAT SABHA HINDHI PRIMARY SCHOOL	\N	\N	\N	\N	70	1	4498	400078	1
22	1048	Scorp Enterprises	t	1048	VIJAY SAKHARAM SANAP	BUSINESS		RELIANCE TECH SERV PVT LTD, DAKC, THANE BELAPUR ROAD, KOPARKHAIRANE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	132	vijay-sakharam-sanap	19.1045893999999983	73.0228172999999998	verified	50	2014-02-14 09:59:43.107483	2014-02-14 09:59:43.107483	RELIANCE TECH SERV PVT LTD	\N	\N	\N	\N	113	1	14677	400710	2
44	1078	Scorp Enterprises	t	1078	MR SATISH BABULAL CHANDAN	BUSINESS		, ROOM NO 80, FAMILY WELFARE CENTER, NAVAL HOSPITAL POWAI, NAVAL CIVILIAN HSG COLONY, KANJURMARG W, MUMBAI 78\r\n	INDIA	Maharashtra	\N	195	mr-satish-babulal-chandan	19.7514797999999985	75.7138884000000019	verified	80	2014-02-19 08:10:17.024213	2014-02-19 08:10:17.024213	NAVAL HOSPITAL POWAI	\N	\N	\N	\N	34	1	1131	400078	1
43	1077	Scorp Enterprises	t	1077	SHRI. VASUDEVA RAGHAVENDRA KOWSIK BODI	BUSINESS		I.I.T BOMBAY,AEROSPACE ENGINEERING DEPT,ADI SHANKARACHARYA MARG, POWAI, MUMBAI 400076\r\n	INDIA	Maharashtra	\N	80	shri-vasudeva-raghavendra-kowsik-bodi	19.1230377999999988	72.9147959000000014	verified	79	2014-02-19 08:06:58.843594	2014-02-19 08:06:58.843594	I.I.T BOMBAY 	\N	\N	\N	\N	81	1	1109	400076	1
42	1076	Scorp Enterprises	t	1076	GANGADHAR GAWLI WAGH	BUSINESS		SHALINI, SHOP NO 9, AMRUTNAGAR CHS, AMRUTNAGAR, GHATKOPAR WEST, MUMBAI 86\r\n	INDIA	Maharashtra	\N	82	gangadhar-gawli-wagh	19.7514797999999985	75.7138884000000019	verified	78	2014-02-19 07:55:47.704474	2014-02-19 07:55:47.704474	SHALINI	\N	\N	\N	\N	34	1	1131	400086	1
40	1074	Scorp Enterprises	t	1074	SHRI. MANISH SAXENA	BUSINESS		IPS MEHTALIA PVT LTD, UNIT B-101-109.KAILASH VAIBHAV INDUSTRIAL COMPLEX, PARK SITE , VIKHROLI WEST -400079\r\n	INDIA	Maharashtra	\N	84	shri-manish-saxena	19.1091760999999991	72.9194797999999906	verified	76	2014-02-19 07:49:59.643216	2014-02-19 07:49:59.643216	IPS MEHTALIA PVT LTD	\N	\N	\N	\N	120	1	1406	400079	1
24	1055	Scorp Enterprises	t	1055	MR. VIRENDRAKUMAR PUNDLIK BADGUJAR	BUSINESS		DECENT ACDEMY, SHOP NO. 1, SAISMRUTI BLDG, T.P. ROAD, NARDAS NAGAR, BHANDUP WEST NR SHIVDARSHAN BUS STOP,\r\n	INDIA	Maharashtra	\N	83	mr-virendrakumar-pundlik-badgujar	19.7514797999999985	75.7138884000000019	verified	57	2014-02-17 06:59:58.326389	2014-02-17 06:59:58.326389	DECENT ACDEMY	\N	\N	\N	\N	103	1	489	400078	1
33	1065	Scorp Enterprises	t	1065	HIMANSHU SARAF	BUSINESS		RELIANCE CORPORATE PARK, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI \r\n	INDIA	Maharashtra	\N	123	himanshu-saraf	19.1279801999999997	73.0041758999999928	submitted	67	2014-02-17 07:29:35.232467	2014-02-17 07:29:35.232467	RELIANCE	\N	\N	\N	\N	113	1	14677	400701	2
134	1215	Scorp Enterprises	t	1215	yogesh	BUSINESS	abc	add2	INDIA	Maharashtra	\N	149	yogesh	19.7514797999999985	75.7138884000000019	submitted	217	2014-03-21 07:31:38.441306	2014-03-21 07:31:38.441306	ABC Corp	\N	\N	\N	\N	1	1	539		1
60	1098	Scorp Enterprises	t	1098	RATILAL AMBAVI PATEL	BUSINESS		OFF NM__, A/4, SAHYADRI CHS, BUILDING NO 35, GURUDUTT MADIR MARG, PANTHNAGAR, GHATKOPAR EAST, MUMBAI \r\n	INDIA	Maharashtra	\N	82	ratilal-ambavi-patel	19.0790700000000015	72.9079759999999908	verified	100	2014-02-22 07:09:35.254418	2014-02-22 07:09:35.254418	no off name	\N	\N	\N	\N	34	1	1131	400077	1
37	1069	Scorp Enterprises	t	1069	CHANDARANI V BHOITE	BUSINESS		HETTICH COMPETENCE SERVICES , PLATNUMTECHNO PARK 12 TH FLOOR OFFICE E 1201-2202,SECTOR 30 A  VASHI NAVI MUMBAI 400705 \r\n	INDIA	Maharashtra	\N	125	chandarani-v-bhoite	19.0574665000000003	73.0110095999999942	submitted	71	2014-02-17 07:41:50.965314	2014-02-17 07:41:50.965314	HETTICH COMPETENCE SERVICES	\N	\N	\N	\N	34	1	1131	400705	2
38	1070	Scorp Enterprises	t	1070	NEELESH VANARAJ THAKKAR	BUSINESS		INDOLO REMEDIES LTD, R/92/93,TTC, MIDC AREA, RABALE.\r\n	INDIA	Maharashtra	\N	131	neelesh-vanaraj-thakkar	19.1370180000000012	73.0027068999999926	submitted	72	2014-02-17 07:43:43.913557	2014-02-17 07:43:43.913557	INDOLO REMEDIES LTD	\N	\N	\N	\N	70	1	4498	400708	2
36	1068	Scorp Enterprises	t	1068	SHARMISHTHA VAIBHAV BHOSLE 	BUSINESS		COGNIZANT BLDG-5 , FLR -7 ,AIROLI MINDSPACE SEZ, THANE BELAPUR ROAD AIROLI \r\n	INDIA	Maharashtra	\N	127	sharmishtha-vaibhav-bhosle	19.1625225000000015	72.9998654999999985	verified	70	2014-02-17 07:39:59.729961	2014-02-17 07:39:59.729961	COGNIZANT	\N	\N	\N	\N	34	1	1131	400705	2
35	1067	Scorp Enterprises	t	1067	JAGPREET SINGH CHADHA	BUSINESS		ANCHOR BOLTS ENTERPRISES, CHADHA ENGINEERING COMPOUND, PLOT NO 4, SECTOR 1-A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n	INDIA	Maharashtra	\N	132	jagpreet-singh-chadha	19.0997616999999984	73.0021533999999974	verified	69	2014-02-17 07:38:29.053814	2014-02-17 07:38:29.053814	ANCHOR BOLTS ENTERPRISES	\N	\N	\N	\N	113	1	14677	400709	2
34	1066	Scorp Enterprises	t	1066	PRAMITA PRAKASH BENGLE	BUSINESS		TATA TELESERVICES LTD, VAS PLANNING, D-26/TTC INDUSTRIAL AREA, MIDC TURBHE, NEAR SANPADA POLICE STATION, NAVI MUMBAI 400703\r\n	INDIA	Maharashtra	\N	197	pramita-prakash-bengle	19.0793546999999997	72.99920130000001	verified	68	2014-02-17 07:36:30.916193	2014-02-17 07:36:30.916193	TATA TELESERVICES LTD	\N	\N	\N	\N	113	1	14677	400705	2
32	1064	Scorp Enterprises	t	1064	Mr. ZAHID HUSSAIN SHAIKH	BUSINESS		SR. EEE (TRS)'S OFFICE, CENTRAL RAILWAY, MUMBAI DIVISION, SECTOR -9, SANPADA (EAST), BACK SIDE OF MILLENIUM TOWER, SANPADA, NAVI MUMBAI - 400 705.\r\n	INDIA	Maharashtra	\N	197	mr-zahid-hussain-shaikh	19.7514797999999985	75.7138884000000019	verified	66	2014-02-17 07:28:00.756862	2014-02-17 07:28:00.756862	SR. EEE (TRS)'S OFFICE, CENTRAL RAILWAY	\N	\N	\N	\N	38	1	11786	400705	2
31	1063	Scorp Enterprises	t	1063	DALJIT KAUR CHARANJIT SINGH SAUNTA	BUSINESS		TEAM INDIA CAREER HUB, SAMNA PRESS BLDG, SECTOR 30A, VASHI, NEAR INORBIT MALL, NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	125	daljit-kaur-charanjit-singh-saunta	\N	\N	verified	65	2014-02-17 07:26:34.263093	2014-02-17 07:26:34.263093	TEAM INDIA CAREER HUB	\N	\N	\N	\N	113	1	14677	400703	2
30	1062	Scorp Enterprises	f	1062	BHARAT FAKIRRAO DESHMUKH	BUSINESS		JACOBS ENGINEERING INDIA PVT LTD, PR. PROCESS ENGG, BLDG NO 7(104), SECTOR 2, MILLENIUM BUSINESS PARK, MAHAPE MIDC, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	196	bharat-fakirrao-deshmukh	19.1045893999999983	73.0228172999999998	verified	64	2014-02-17 07:24:37.884879	2014-02-17 07:24:37.884879	JACOBS ENGINEERING INDIA PVT LTD	\N	\N	\N	\N	113	1	14677	400710	2
29	1061	Scorp Enterprises	t	1061	BHALCHANDRA MUKUND URSEKAR 	BUSINESS		"AVTOS LIFE SCIENCES PVT LTD , B 22, TTC, MIDC, CHINCHVALI VILLAGE,   AIROLI,  RABALE - 400708   DIST. THANE. \r\n \r\n"\r\n	INDIA	Maharashtra	\N	127	bhalchandra-mukund-ursekar	19.7514797999999985	75.7138884000000019	verified	63	2014-02-17 07:22:27.799651	2014-02-17 07:22:27.799651	AVTOS LIFE SCIENCES PVT LTD	\N	\N	\N	\N	27	1	7124	400708	2
25	1057	Scorp Enterprises	t	1057	LALIT KUMAR SHARMA 	BUSINESS		NITCO LTD , MOSAICO DIV, PLOT NO 3, STATION ROAD, KANJURMARG E ,OPP R.N.A RESIDENCIAN ESTATE MUMBAI 400042\r\n	INDIA	Maharashtra	\N	195	lalit-kumar-sharma	19.1323864999999991	72.951962199999997	verified	59	2014-02-17 07:05:00.61079	2014-02-17 07:05:00.61079	NITCO LTD	\N	\N	\N	\N	34	1	1131	400042	1
41	1075	Scorp Enterprises	t	1075	SHAILENDRA SINGH GUSAIN	BUSINESS		MTM SHIP MANAGEMENT (INDIA) PVT LTD, UNIT NO 761, 6TH FLR, SOLITAIRE CORPORATE PARK BLDG, ANDHERI GHATKOPAR LINK ROAD, MUMBAI 93\r\n	INDIA	Maharashtra	\N	82	shailendra-singh-gusain	19.7514797999999985	75.7138884000000019	submitted	77	2014-02-19 07:52:14.247658	2014-02-19 07:52:14.247658	MTM SHIP MANAGEMENT (INDIA) PVT LTD	\N	\N	\N	\N	14	1	4380	400093	1
45	1079	Scorp Enterprises	t	1079	VISHWAS HEGDE	BUSINESS		RELIANCE CORPORATE PARK, BLDG NO 7D, 1ST FLOOR,  THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	Maharashtra	\N	123	vishwas-hegde	19.1279801999999997	73.0041758999999928	submitted	81	2014-02-19 08:12:14.496369	2014-02-19 08:12:14.496369	RELIANCE	\N	\N	\N	\N	113	1	14677	400701	2
46	1080	Scorp Enterprises	t	1080	MR ASHWIN PETER FERNANDES	BUSINESS		AKSHAY SOFTWARE TECHNOLOGIES LTD, UNIT 214, BLDG 2, SECTR I, MILLENNIUM BUSINESS PARK, MAHAPE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	123	mr-ashwin-peter-fernandes	19.1045893999999983	73.0228172999999998	submitted	82	2014-02-19 08:14:31.184772	2014-02-19 08:14:31.184772	AKSHAY SOFTWARE TECHNOLOGIES LTD	\N	\N	\N	\N	14	1	4380	400701	2
47	1081	Scorp Enterprises	t	1081	RUPESH VISHWANATH KHATAVKAR	BUSINESS		BRANSON VITRASONICS DIV. OF EMERSON PVT LTD, PLOT NO A-145/6, TTC IND. AREA MIDC KHAIRNE, FIRE BRIGADE, KOPAR KHAIRANE, NAVI MUMBAI \r\n	INDIA	Maharashtra	\N	132	rupesh-vishwanath-khatavkar	19.1034742000000008	73.0110095999999942	submitted	83	2014-02-19 08:19:40.793934	2014-02-19 08:19:40.793934	BRANSON VITRASONICS DIV. OF EMERSON PVT LTD	\N	\N	\N	\N	14	1	4380	400709	2
48	1082	Scorp Enterprises	t	1082	MANGALARAM P CHOUDHARY	BUSINESS		RAJ NOVELTY, SHOP NO 05, PLOT NO 10, EDEN PARK, SECTOR 8, AIROLI, NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	131	mangalaram-p-choudhary	19.1442848000000012	72.9940349999999967	submitted	84	2014-02-19 08:21:09.378996	2014-02-19 08:21:09.378996	RAJ NOVELTY	\N	\N	\N	\N	113	1	14677	400708	2
56	1090	Scorp Enterprises	t	1090	GIRISH GOVILKAR	BUSINESS		SKYSCATE INDIA PVT LTD, 1101/1102, PLATINAM TECHNO PARK, PLOT NO 17/18, SECTOR 38, VASHI 400703\r\n	INDIA	Maharashtra	\N	125	girish-govilkar	19.0793549999999996	73.0000330000000019	verified	92	2014-02-20 07:27:21.887542	2014-02-20 07:27:21.887542	SKYSCATE INDIA PVT LTD	\N	\N	\N	\N	76	1	448	400703	2
49	1083	Scorp Enterprises	t	1083	ROHIT DIWAKAR 	BUSINESS		"ANMSOFT TECHNOLOGIES PVT LTD,\r\nUNIT NO 219-220 BUILDING NO 2\r\nSECTOR 1 MILLENIUM BUSINESS PARK MAHAPE NAVI MUMBAI - 400710\r\n"\r\n	INDIA	Maharashtra	\N	196	rohit-diwakar	19.7514797999999985	75.7138884000000019	submitted	85	2014-02-19 08:23:39.323913	2014-02-19 08:23:39.323913	ANMSOFT TECHNOLOGIES PVT LTD	\N	\N	\N	\N	48	1	11673	400710	2
55	1089	Scorp Enterprises	t	1089	URMILA V MANE	BUSINESS		NITCO LTD.MARBLE LAND,PLOT-3,KANJUR VILLAGE ROAD,KANJURMARG-EAST-400042\r\n	INDIA	Maharashtra	\N	195	urmila-v-mane	\N	\N	verified	91	2014-02-20 07:23:13.654312	2014-02-20 07:23:13.654312	NITCO LTD	\N	\N	\N	\N	45	1	6249	400042	1
50	1084	Scorp Enterprises	t	1084	SOMNATH SAKHAHARI NIRMAL	BUSINESS		PRABHAT NUTRITIONSAND FROZEN FOOD IND PVT LTD, PLOT NO D-37/4, ITC, MIDC INDUSTRIAL AREA, TURBHE, VASHI 400613\r\n	INDIA	Maharashtra	\N	121	somnath-sakhahari-nirmal	19.7514797999999985	75.7138884000000019	submitted	86	2014-02-19 08:30:43.342377	2014-02-19 08:30:43.342377	PRABHAT NUTRITIONSAND FROZEN FOOD IND PVT LTD	\N	\N	\N	\N	113	1	14677	400613	2
54	1088	Scorp Enterprises	t	1088	Mr.SANTOSH MARUTI PATIL	BUSINESS		CAPGEMINI PVT LTD.PLANT-2,C-WING,2 ND FLR,GODREJ IT PARK,GODREJ & BOYCE COMPOUND,VIKHROLI-WEST-400079.\r\n	INDIA	Maharashtra	\N	84	mr-santosh-maruti-patil	19.1091760999999991	72.9194797999999906	verified	90	2014-02-20 07:20:58.138366	2014-02-20 07:20:58.138366	CAPGEMINI PVT LTD	\N	\N	\N	\N	45	1	6249	400079	1
51	1085	Scorp Enterprises	t	1085	AMOL RANGRAO KOKATE	BUSINESS		RELIANCE INFRASTRUCTURE LTD, D BLOCK, DAKC, 4WS1, KOPARKHAIRANE, NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	132	amol-rangrao-kokate	19.0330487999999995	73.0296625000000006	submitted	87	2014-02-19 09:01:14.697939	2014-02-19 09:01:14.697939	RELIANCE INFRASTRUCTURE LTD	\N	\N	\N	\N	113	1	14677	400709	2
52	1086	Scorp Enterprises	t	1086	Mr. NIKESH NITIN PITHADIA	BUSINESS		SWIBER OFF SHORE INDIA P LTD. B-502,DELPHI,HIRANANDANI BUSINESS PARK,POWAI-400076\r\n	INDIA	Maharashtra	\N	80	mr-nikesh-nitin-pithadia	19.1253004000000004	72.9076668999999953	verified	88	2014-02-20 07:17:30.637585	2014-02-20 07:17:30.637585	SWIBER OFF SHORE INDIA PVT LTD	\N	\N	\N	\N	45	1	6249	400076	1
95	1156	Scorp Enterprises	t	1156	SAROJ INDERPAL BHANDARI	BUSINESS		GAUTAM LABDHI MARKETING, 20, NAHUR UDYOG PRE CO-OP HSG SOC, PNT COLONY ,OPP JOHNSON & JOHNSON CO, MUMBAI\r\n	INDIA	Maharashtra	\N	84	saroj-inderpal-bhandari	19.0759836999999983	72.8776558999999935	submitted	158	2014-03-11 07:12:49.491523	2014-03-11 07:12:49.491523	GAUTAM LABDHI MARKETING	\N	\N	\N	\N	14	1	4380	400079	1
53	1087	Scorp Enterprises	t	1087	Mr. P.VEDAGIRI	BUSINESS		INDIAN INSTITUTE of TECHNOLOGY,DEPT OF CIVIL ENGINEERING,,POWAI,MUMBAI-400076.\r\n	INDIA	Maharashtra	\N	80	mr-p-vedagiri	19.1326630999999985	72.9167183999999935	submitted	89	2014-02-20 07:19:20.55802	2014-02-20 07:19:20.55802	INDIAN INSTITUTE of TECHNOLOGY	\N	\N	\N	\N	45	1	6249	400076	1
63	1102	Scorp Enterprises	t	1102	CHETAN SHALIGRAM BAVISKAR	BUSINESS		AGNEL TECHNICAL ,EDUCATION COMPLEX, SECTOR 9A, VASHI, NEAR NOOR MASJID, VASHI, NAVI MUMBAI 400703\r\n	INDIA	Maharashtra	\N	125	chetan-shaligram-baviskar	19.0755432999999996	72.9917906999999957	submitted	104	2014-02-22 07:16:39.251613	2014-02-22 07:16:39.251613	AGNEL TECHNICAL 	\N	\N	\N	\N	113	1	14677	400703	2
64	1103	Scorp Enterprises	t	1103	DR BANDITA SINHA	BUSINESS		FORTIS HIRANANDANI HOSPITAL, MINI SEA SHORE, SECTOR 10A, VASHI, NAVI MUMBAI \r\n	INDIA	Maharashtra	\N	125	dr-bandita-sinha	19.0795855000000003	72.9940349999999967	submitted	105	2014-02-22 07:18:12.925662	2014-02-22 07:18:12.925662	FORTIS HIRANANDANI HOSPITAL	\N	\N	\N	\N	113	1	14677	400703	2
39	1072	Scorp Enterprises	t	1072	MOHD ZAHEER ALAM KHAN	BUSINESS		ATOS INDIA PVT LTD, GODREJ COMPLEX PLANT 5, GATE NO 2, PIROJSHA NAGAR, LBS MARG ,VIKROLI\r\n	INDIA	Maharashtra	\N	84	mohd-zaheer-alam-khan	19.7514797999999985	75.7138884000000019	verified	74	2014-02-19 07:45:53.445349	2014-02-19 07:45:53.445349	ATOS INDIA PVT LTD	\N	\N	\N	\N	70	1	4498	400079	1
57	1092	Scorp Enterprises	t	1092	NEELAM AVINASH GANGADHARE	BUSINESS		NEW BOMBAY HIGH SCHOOL, SECTOR 1, INFRONT OF NBSC GROUND, VASHI,  NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	125	neelam-avinash-gangadhare	19.0793549999999996	73.0000330000000019	submitted	94	2014-02-20 07:32:59.697333	2014-02-20 07:32:59.697333	NEW BOMBAY HIGH SCHOOL	\N	\N	\N	\N	113	1	14677	400703	2
65	1104	Scorp Enterprises	t	1104	ALOK KUMAR	BUSINESS		PERKIN ELMER INDIA PVT LTD, 8TH , FLOOR G.CURP, GHODBUNDER ROAD THANE 400601 \r\n	INDIA	Maharashtra	\N	109	alok-kumar	19.2590640999999998	72.9721766999999915	submitted	106	2014-02-26 06:40:45.904008	2014-02-26 06:40:45.904008	PERKIN ELMER INDIA PVT LTD	\N	\N	\N	\N	70	1	4498	400601	3
66	1105	Scorp Enterprises	t	1105	SANDEEP NARAYAN PATIL	BUSINESS		VIDYA PRASARAK SANSTHAS VIDYALAYA, BALKUM NAKA, THANE 400608\r\n	INDIA	Maharashtra	\N	190	sandeep-narayan-patil	19.2184129000000006	72.994772999999995	submitted	107	2014-02-26 07:00:31.172198	2014-02-26 07:00:31.172198	VIDYA PRASARAK SANSTHAS VIDYALAYA	\N	\N	\N	\N	70	1	4498	400608	1
59	1096	Scorp Enterprises	t	1096	RAVIKANT VISHNU SALAME	BUSINESS		MASTEK LTD, MILLENIUM BUSINESS PARK, MAHAPE , THANE BELAPUR ROAD, NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	119	ravikant-vishnu-salame	19.1119243999999995	73.0165612999999922	verified	98	2014-02-20 07:40:45.702884	2014-02-20 07:40:45.702884	MASTEK LTD	\N	\N	\N	\N	113	1	14677	400611	2
58	1093	Scorp Enterprises	t	1093	VARDHAN MARUTIRAO PATIL	BUSINESS		QUALITY KIOSK TECHNOLOGIES PVT LTD, 201-205 BLDG NO 2, SECTOR 3, MBP MAHAPE, NEAR HOTEL RAMADA, NAVI MUMBAI 400709\r\n	INDIA	Maharashtra	\N	196	vardhan-marutirao-patil	19.0997616999999984	73.0021533999999974	verified	95	2014-02-20 07:34:42.114468	2014-02-20 07:34:42.114468	QUALITY KIOSK TECHNOLOGIES PVT LTD	\N	\N	\N	\N	113	1	14677	400709	2
67	1106	Scorp Enterprises	t	1106	MR.VAIBHAV HIRALAL SHARMA	BUSINESS		RELIANCE CORPORATE IT PARK LTD.,RELIANCE CORPORATE PARK,BLDG NO.2A,1ST FLOOR,THANE BELAPUR ROAD,GHANSOLI,NAVI MUMBAI - 400701\r\n	INDIA	Maharashtra	\N	123	mr-vaibhav-hiralal-sharma	19.1266564000000017	73.0045135999999957	submitted	108	2014-02-26 07:02:21.039483	2014-02-26 07:02:21.039483	RELIANCE CORPORATE IT PARK LTD	\N	\N	\N	\N	99	1	7192	400701	2
68	1107	Scorp Enterprises	t	1107	ZEHRA MURTUZA KHAMBATY	BUSINESS		CHRIST NISHOTECH WATER SYSTEMS PVT LTD, EL-89, ELECTRONIC ZONE, MIDC MAHAPE, THANE BELAPUR ROAD, TTC INDUSTRIAL AREA, NAVI MUMBAI 400705\r\n	INDIA	Maharashtra	\N	196	zehra-murtuza-khambaty	19.1695184999999988	72.994772999999995	submitted	109	2014-02-26 07:04:30.804742	2014-02-26 07:04:30.804742	ZEHRA MURTUZA KHAMBATY	\N	\N	\N	\N	113	1	14677	400710	2
69	1108	Scorp Enterprises	t	1108	ANIL MASKARA	BUSINESS		IGATE GLOBAL SOLUTIONS, IGATE KNOWLEDGE PARK, IT1 / IT2, INDUSTRIAL AREA, AIROLI, NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	131	anil-maskara	19.1511828999999985	72.9996314999999925	submitted	110	2014-02-26 07:07:36.63761	2014-02-26 07:07:36.63761	IGATE GLOBAL SOLUTIONS	\N	\N	\N	\N	113	1	14677	400708	2
70	1109	Scorp Enterprises	t	1109	RAMAKRISHNAN I	BUSINESS		GODREJ & BOYCE MFG CO LTD., GODRIJ INTERIO PLANT 13 ANNEX 2 ND FLOOR ,MARKETING DEPARTMENT,VIKROLI \r\n	INDIA	Maharashtra	\N	84	ramakrishnan-i	19.7514797999999985	75.7138884000000019	submitted	111	2014-03-01 07:11:48.969152	2014-03-01 07:11:48.969152	GODREJ & BOYCE MFG CO LTD	\N	\N	\N	\N	34	1	1131	400079	1
62	1100	Scorp Enterprises	t	1100	DEVYANI TYAGI	BUSINESS		CREDIT SUISSE INDIA LTD, CITYPARK CENTRAL BUSINESS AVENUE, HIRANANDANI BUSINESS PARK, MUMBAI \r\n	INDIA	Maharashtra	\N	80	devyani-tyagi	19.0759836999999983	72.8776558999999935	verified	102	2014-02-22 07:12:27.557315	2014-02-22 07:12:27.557315	CREDIT SUISSE INDIA LTD	\N	\N	\N	\N	34	1	1131	400076	1
71	1110	Scorp Enterprises	t	1110	RAJNIKANT VRAJLAL SHAH	BUSINESS		HRVS FINANSHIAL CONSULTAN PVT LTD, 103, SHANKAR SAGAR TELEPHONE EXCHANGE LANE, 1ST FLR, LBS MARG, GHATKOPAR W 86\r\n	INDIA	Maharashtra	\N	82	rajnikant-vrajlal-shah	19.7514797999999985	75.7138884000000019	submitted	112	2014-03-01 07:18:28.125189	2014-03-01 07:18:28.125189	HRVS FINANSHIAL CONSULTAN PVT LTD	\N	\N	\N	\N	118	1	11710	400086	1
96	1157	Scorp Enterprises	t	1157	AYUSHI INDERPAL BHANDARI	BUSINESS		NITIN DISTRIBUTORS , GALA NO 19, NAVNADANAV IND ESTATE, GALAXY MOTORS, SAI DHAM, MULUND W\r\n	INDIA	Maharashtra	\N	85	ayushi-inderpal-bhandari	19.1746738999999984	72.9431038000000029	submitted	159	2014-03-11 07:16:19.428953	2014-03-11 07:16:19.428953	NITIN DISTRIBUTORS	\N	\N	\N	\N	14	1	4380	400080	1
72	1111	Scorp Enterprises	t	1111	JAGRIT SHRIKANT BHALJA	BUSINESS		CA-JAYESH SANGHRAJKA & CO, 1-B HANUMAN SILK MILLS COMPOUND, OPP HUMA ADLABS LBS MARG, KANJURMARG, MUMBAI 78\r\n	INDIA	Maharashtra	\N	195	jagrit-shrikant-bhalja	19.7514797999999985	75.7138884000000019	submitted	113	2014-03-01 07:21:45.057425	2014-03-01 07:21:45.057425	CA-JAYESH SANGHRAJKA & CO	\N	\N	\N	\N	14	1	4380	400078	1
73	1112	Scorp Enterprises	t	1112	BHAVIN MANSHUKLAL SHAH	BUSINESS		REKHA SALES CORPORATION, H2, DINA BAMA PATIL, EAST STATION ROAD, BHANDUP W, MUMBAI 78\r\n	INDIA	Maharashtra	\N	83	bhavin-manshuklal-shah	19.7514797999999985	75.7138884000000019	submitted	114	2014-03-01 07:23:59.620077	2014-03-01 07:23:59.620077	REKHA SALES CORPORATION	\N	\N	\N	\N	122	1	15713	400078	1
97	1158	Scorp Enterprises	t	1158	ABHINAV NIGAM	BUSINESS		MAHANAGAR GAS LIMITED, X 5 / 1, TTC INDUSTRIAL AREA, MIDC MAHAPE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	196	abhinav-nigam	19.1045893999999983	73.0228172999999998	submitted	160	2014-03-11 07:22:11.23179	2014-03-11 07:22:11.23179	MAHANAGAR GAS LIMITED	\N	\N	\N	\N	113	1	14677	400710	2
74	1113	Scorp Enterprises	t	1113	GURUSIDDARABHU D GALAGALI	BUSINESS		IGATE COMPUTER SYSTEMS LTD, IT 1, IT 2, TTC INDUSTRIAL AREA, THANE BELAPUR ROAD, AIROLI, NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	131	gurusiddarabhu-d-galagali	19.1689875000000001	72.9991500999999943	submitted	115	2014-03-01 07:28:13.164089	2014-03-01 07:28:13.164089	IGATE COMPUTER SYSTEMS LTD	\N	\N	\N	\N	82	1	3375	400708	2
113	1184	Scorp Enterprises	f	1184	MR GURUSIDDAPRABHU DUNDAPPA GALAGALI 	BUSINESS		"IGATE COMPUTER SYSTEMS LIMITED,\r\nTTC 1/2, AIROLI KNOWLEDGE PARK, THANE BELAPUR ROAD, AIROLI,\r\nNAVI MUMBAI-400708\r\n"\r\n	INDIA	Maharashtra	\N	131	mr-gurusiddaprabhu-dundappa-galagali	19.7514797999999985	75.7138884000000019	submitted	186	2014-03-14 08:12:20.245394	2014-03-14 08:12:20.245394	IGATE COMPUTER SYSTEMS LIMITED	\N	\N	\N	\N	70	1	4498	400708	2
75	1114	Scorp Enterprises	t	1114	SARITA AVINASH SHETTY	BUSINESS		UNIVERSAL SOMPO GENERAL INSURANCE CO LTD, KLS TOWER PLOT NO EL-94, MAHAPE, NEAR SUYOG HOTEL, NAVI MUMBAI \r\n	INDIA	Maharashtra	\N	196	sarita-avinash-shetty	19.0330487999999995	73.0296625000000006	submitted	116	2014-03-01 07:29:34.530056	2014-03-01 07:29:34.530056	UNIVERSAL SOMPO GENERAL INSURANCE CO LTD	\N	\N	\N	\N	82	1	3375	400710	2
76	1115	Scorp Enterprises	t	1115	MR.MAYUR A PATIL	BUSINESS		"LUBRIZOL INDIA PVT LTD, 9/3, THANE BELAPUR ROAD, TURBHE, NAVI    MUMBAI, THANE- 400705\r\n"\r\n	INDIA	Maharashtra	\N	121	mr-mayur-a-patil	19.7514797999999985	75.7138884000000019	submitted	117	2014-03-01 07:33:07.836584	2014-03-01 07:33:07.836584	LUBRIZOL INDIA PVT LTD	\N	\N	\N	\N	114	1	10330	400613	2
114	1186	Scorp Enterprises	t	1186	SHRI NATH GARG 	BUSINESS		"ABEINSA BUSINESS DEV PVT LTD,\r\n110, LBS MARG , VIKHROLI WEST \r\nMUMBAI -83\r\n"\r\n	INDIA	Maharashtra	\N	84	shri-nath-garg	19.7514797999999985	75.7138884000000019	submitted	188	2014-03-15 07:51:50.50898	2014-03-15 07:51:50.50898	ABEINSA BUSINESS DEV PVT LTD	\N	\N	\N	\N	81	1	1109	400079	1
77	1116	Scorp Enterprises	t	1116	 MR. ASHOK RAMCHANDRA PATIL 	BUSINESS		"LUBRIZOL INDIA PVT LTD, 9/3, THANE BELAPUR ROAD, TURBHE, NAVI  MUMBAI, THANE- 400705\r\n"\r\n	INDIA	Maharashtra	\N	121	mr-ashok-ramchandra-patil	19.7514797999999985	75.7138884000000019	submitted	118	2014-03-01 07:35:41.307079	2014-03-01 07:35:41.307079	LUBRIZOL INDIA PVT LTD	\N	\N	\N	\N	114	1	10330	400613	2
78	1117	Scorp Enterprises	t	1117	MR KANCHANAPALLI PAVAN SESHU VENKATA RAO	BUSINESS		TATA CONSULTANCY SERVICES, KENSINGTON B WING BLDG, HIRANANDANI SEZ, POWAI, MUMBAI 76\r\n	INDIA	Maharashtra	\N	80	mr-kanchanapalli-pavan-seshu-venkata-rao	19.7514797999999985	75.7138884000000019	submitted	119	2014-03-04 07:27:03.023274	2014-03-04 07:27:03.023274	TATA CONSULTANCY SERVICES	\N	\N	\N	\N	15	1	551	400076	1
115	1188	Scorp Enterprises	t	1188	BHAGYASHREE HARSHAD JOSHI 	BUSINESS		"RELIANCE INDUSTRIES LTD.  RELIANCE CORPORATION PARK,  GHANSOLI, \r\n"\r\n	INDIA	Maharashtra	\N	113	bhagyashree-harshad-joshi	19.7514797999999985	75.7138884000000019	submitted	190	2014-03-15 08:00:52.067493	2014-03-15 08:00:52.067493	RELIANCE INDUSTRIES LTD	\N	\N	\N	\N	27	1	7124	400604	2
79	1118	Scorp Enterprises	t	1118	PUSHPA TIWARI 	BUSINESS		MAGUS CONSULTING PVT LTD., 501 NEELYOG SQUARE, NEXT TO GHATKOPAR STATION E MUMBAI 9987084553\r\n	INDIA	Maharashtra	\N	78	pushpa-tiwari	19.7514797999999985	75.7138884000000019	submitted	120	2014-03-04 07:29:46.19678	2014-03-04 07:29:46.19678	MAGUS CONSULTING PVT LTD	\N	\N	\N	\N	34	1	1131	400075	1
85	1129	Scorp Enterprises	f	1129	MR RAVINDRA MADHUSUDAN MUNAGEKAR 	BUSINESS		GENX ENTERPRISE,SHOP NO.3, MUNICIPAL MARKET,CHAFEKAR BANDHU MARG,NEAR KHANDOBA MANDIR,MULUND EAST,MUMBAI-400081\r\n	INDIA	Maharashtra	\N	86	mr-ravindra-madhusudan-munagekar	\N	\N	verified	131	2014-03-07 08:15:06.075948	2014-03-07 08:15:06.075948	GENX ENTERPRISE	\N	\N	\N	\N	70	1	4498	400081	1
81	1120	Scorp Enterprises	t	1120	DR. SHALU SHISHIR GUPTA	BUSINESS		HEALTHSPRINGS, SHOP NO 12, 13, GANESH CHS, SECTOR 1, VASHI, NAVI MUMBAI 400705\r\n	INDIA	Maharashtra	\N	125	dr-shalu-shishir-gupta	19.0574665000000003	73.0110095999999942	submitted	122	2014-03-04 07:39:10.040462	2014-03-04 07:39:10.040462	HEALTHSPRINGS	\N	\N	\N	\N	113	1	14677	400705	2
80	1119	Scorp Enterprises	t	1119	TRUPIT PRAMOD SALVI 	BUSINESS		902, VENTURA , HIRANANDANI BUSINESS  PARK POWAI 400076\r\n	INDIA	Maharashtra	\N	80	trupit-pramod-salvi	19.1253004000000004	72.9076668999999953	verified	121	2014-03-04 07:33:12.91148	2014-03-04 07:33:12.91148	VENTURA	\N	\N	\N	\N	34	1	1131	400076	1
82	1123	Scorp Enterprises	t	1123	KAMLESH BHIMJI HEMANI	BUSINESS		PACKSHIELD INDUSTRIES, D SILVA COMPOUND N S S ROAD ASALFA , GHATKOPAR W MUMBAI 400084 \r\n	INDIA	Maharashtra	\N	82	kamlesh-bhimji-hemani	19.0975710999999997	72.9032369999999901	submitted	125	2014-03-05 07:33:12.177692	2014-03-05 07:33:12.177692	PACKSHIELD INDUSTRIE	\N	\N	\N	\N	34	1	1131	400077	1
83	1124	Scorp Enterprises	t	1124	SUMIT RANJAN	BUSINESS		J P MORGAN INVESTOR SERVICES TECHNOLOGY, CENTRAL AVENUE ROAD, HIRANANDANI GARDENS, VENTURA BLDG, MUMBAI 76\r\n	INDIA	Maharashtra	\N	80	sumit-ranjan	19.7514797999999985	75.7138884000000019	submitted	126	2014-03-05 07:49:37.940123	2014-03-05 07:49:37.940123	J P MORGAN INVESTOR SERVICES TECHNOLOGY	\N	\N	\N	\N	34	1	1131	400076	1
86	1130	Scorp Enterprises	t	1130	ANUBHAV  HIRAMAN  PATIL	BUSINESS		TCS  LTD  ,GRB COMPOUND  PLANT NO 12 BEHIND GODREJ PETROL PUMP LBS MARG  VIKHROLI W  400079\r\n	INDIA	Maharashtra	\N	84	anubhav-hiraman-patil	19.1055205000000008	72.9221979000000005	submitted	132	2014-03-07 08:17:41.284411	2014-03-07 08:17:41.284411	TCS  LTD 	\N	\N	\N	\N	70	1	4498	400079	1
87	1131	Scorp Enterprises	t	1131	MEENAL  ANUBHAV  PATIL	BUSINESS		TCS  LTD  GRB COMPOUND  PLANT NO 12 BEHIND GODREJ PETROL PUMP LBS MARG  VIKHROLI W  400079\r\n	INDIA	Maharashtra	\N	84	meenal-anubhav-patil	19.1055205000000008	72.9221979000000005	submitted	133	2014-03-07 08:19:54.107206	2014-03-07 08:19:54.107206	TCS  LTD	\N	\N	\N	\N	70	1	4498	400079	1
84	1128	Scorp Enterprises	t	1128	SULBHA ATUL KHAVANEKAR	BUSINESS		UNION BANK OF INDIA,BHANDUP BRANCH 100 BHAICHAND TEXTILE MILL COMPOUND BESIDE JAINAM HALL LBS MARG BHANDUP WEST MUMBAI 400078\r\n	INDIA	Maharashtra	\N	83	sulbha-atul-khavanekar	19.1440790000000014	72.9348619999999954	verified	130	2014-03-07 08:12:23.952436	2014-03-07 08:12:23.952436	UNION BANK OF INDIA	\N	\N	\N	\N	34	1	1131	400078	1
98	1163	Scorp Enterprises	t	1163	NISHA NARAYAN GABHANE	BUSINESS		J.P.MORGAN SERVICES PVT LTD.,2 FLOOR VENTURA BUILDING,HIRANANDANI BUSINESS PARK POWAI MUMBAI 400076\r\n	INDIA	Maharashtra	\N	80	nisha-narayan-gabhane	19.1253004000000004	72.9076668999999953	submitted	165	2014-03-12 07:13:42.122638	2014-03-12 07:13:42.122638	J.P.MORGAN SERVICES PVT LTD	\N	\N	\N	\N	34	1	1131	400076	1
99	1164	Scorp Enterprises	t	1164	Linit C Kulkarni 	BUSINESS		NOMURA SERVICES INDIA PVT.LTD,10TH FLOOR, NOMURA BUILDING,HIRANANDANI BUSINESS PARK,POWAI, MUMBAI-400076 \r\n	INDIA	Maharashtra	\N	80	linit-c-kulkarni	19.1253004000000004	72.9076668999999953	submitted	166	2014-03-12 07:18:22.096332	2014-03-12 07:18:22.096332	NOMURA SERVICES INDIA PVT.LTD	\N	\N	\N	\N	38	1	11786	400076	1
100	1166	Scorp Enterprises	t	1166	VEENA P NAIR 	BUSINESS		MAERSK GLOBAL SERVICES PVT LTD, 415 FLOOR PRUDENTIAL BLD, CENTRAL AVENUE RD HIRANANDANI POWAI MUMBAI 400076 \r\n	INDIA	Maharashtra	\N	80	veena-p-nair	19.1153797999999995	72.9091435999999931	submitted	168	2014-03-12 07:25:06.507323	2014-03-12 07:25:06.507323	MAERSK GLOBAL SERVICES PVT LTD	\N	\N	\N	\N	70	1	4498	400076	1
101	1167	Scorp Enterprises	f	1167	ANURADHA AMIT NAGARSEKER	BUSINESS		LARSEN & TOUBRO , G1 GROUND FLOOR L & T GATE NO 1, SAKI NAKA VIHAR ROAD , POWAI ,MUMBAI 400072 \r\n	INDIA	Maharashtra	\N	80	anuradha-amit-nagarseker	19.1180829999999986	72.8904864000000003	submitted	169	2014-03-12 07:28:19.684414	2014-03-12 07:28:19.684414	LARSEN & TOUBRO	\N	\N	\N	\N	70	1	4498	400076	1
102	1168	Scorp Enterprises	t	1168	AMITA JAYSING KHAMKAR	BUSINESS		NOMURA SERVICES INDIA PVT LTD, KENSIGNTON A WING 5 FLR,, UNIT 501, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 76\r\n	INDIA	Maharashtra	\N	80	amita-jaysing-khamkar	19.7514797999999985	75.7138884000000019	submitted	170	2014-03-12 07:30:11.835358	2014-03-12 07:30:11.835358	NOMURA SERVICES INDIA PVT LTD	\N	\N	\N	\N	15	1	551	400076	1
92	1152	Scorp Enterprises	t	1152	SNEHA PRASAD SAWANT	BUSINESS		CAPGEMINI INDIA PVT LTD, BLDG NO 8, RAHEJA MINDSPACE, THANE BELAPUR RD, AIROLI\r\n	INDIA	Maharashtra	\N	131	sneha-prasad-sawant	19.1625225000000015	72.9998654999999985	verified	154	2014-03-10 08:07:59.765794	2014-03-10 08:07:59.765794	CAPGEMINI CONSULTING INDIA PVT.LTD	\N	\N	\N	\N	70	1	4498	400708	2
91	1151	Scorp Enterprises	t	1151	PRASAD VISHNU SAWANT	BUSINESS		CAPGEMINI INDIA PVT LTD, BLDG NO 8, RAHEJA MINDSPACE, THANE BELAPUR RD, AIROLI\r\n	INDIA	Maharashtra	\N	131	prasad-vishnu-sawant	19.1625225000000015	72.9998654999999985	verified	153	2014-03-10 08:04:30.621136	2014-03-10 08:05:26.10169	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	70	1	4498	400708	2
90	1149	Scorp Enterprises	t	1149	SUSHAMA SHRINGARE	BUSINESS		HEXAWARE TECHNOLOGIES LTD, BLDG NO 1, MILLENIUM BUSINESS PARK, 'A' BLOCK, SECTOR 3, TTC INDUSTRIAL AREA, MAHAPE, NAVI MUMBAI 400710\r\n	INDIA	Maharashtra	\N	196	sushama-shringare	19.1116309999999991	73.0249929999999949	verified	151	2014-03-10 08:02:03.55777	2014-03-10 08:02:03.55777	HEXAWARE TECHNOLOGIES LTD	\N	\N	\N	\N	113	1	14677	400710	2
89	1148	Scorp Enterprises	t	1148	SWAPNIL BABASAHEB MANE	BUSINESS		DELOITTE, F AIRMONT LEVEL 4 HIRANANDANI BUSNISS PARK, POWAI, MUMBAI 76\r\n	INDIA	Maharashtra	\N	80	swapnil-babasaheb-mane	19.7514797999999985	75.7138884000000019	verified	150	2014-03-10 07:59:12.641462	2014-03-10 07:59:12.641462	DELOITTE	\N	\N	\N	\N	70	1	4498	400076	1
93	1154	Scorp Enterprises	t	1154	VIRAV UPADHYAY	BUSINESS		EMERSON PROCESS MANAGEMENT INDIA LTD, DELPHI ,  WING 6TH FLOOR, HIRANANDANI BUSINESS PARK POWAI\r\n	INDIA	Maharashtra	\N	80	virav-upadhyay	19.1196772999999993	72.9050809000000015	submitted	156	2014-03-11 07:01:35.895874	2014-03-11 07:01:35.895874	EMERSON PROCESS MANAGEMENT INDIA LTD	\N	\N	\N	\N	14	1	4380	400076	1
94	1155	Scorp Enterprises	t	1155	MUKESH CHOURASIA	BUSINESS		NOMURA SERVICES PVT LTD.,11 FLOOR,NOMURA BUILDING,HIRANANDANI BUSINESS PARK POWAI MUMBAI 400076\r\n	INDIA	Maharashtra	\N	80	mukesh-chourasia	19.1253004000000004	72.9076668999999953	submitted	157	2014-03-11 07:03:42.527414	2014-03-11 07:03:42.527414	NOMURA SERVICES PVT LTD	\N	\N	\N	\N	14	1	4380	400076	1
105	1171	Scorp Enterprises	t	1171	SHEETAL KRISHNA CHATUR	BUSINESS		MICROCHEM SILLIKER PVT LTD . A-513 MICROCHEM HOUSE GHANSOLI TTC INDUSTRIAL AREA MIDC MAHAPE NAVI MUMBAI 400 701 \r\n	INDIA	Maharashtra	\N	196	sheetal-krishna-chatur	19.1182936999999988	73.0275874999999957	submitted	173	2014-03-12 07:35:34.479986	2014-03-12 07:35:34.479986	MICROCHEM SILLIKER PVT LT	\N	\N	\N	\N	94	1	13757	400710	2
103	1169	Scorp Enterprises	t	1169	HEENA NARAYANRAO GABHANE	BUSINESS		ALEPO TECHNOLOGIES PVT.LTD.REAL TECHPARK OFFICE NO 709-714,PLOT NO 39/2,SECTOR NO 30A NEAR VASHI RAILWAY STATION VASHI NAVI MUMBAI 400703\r\n	INDIA	Maharashtra	\N	125	heena-narayanrao-gabhane	19.0638420000000011	72.997911000000002	awaiting_to_get_verified	171	2014-03-12 07:31:52.891765	2014-03-12 07:31:52.891765	ALEPO TECHNOLOGIES PVT.LTD	\N	\N	\N	\N	34	1	1131	400703	2
106	1175	Scorp Enterprises	t	1175	PREMLAL MAHENDRA SHAH	BUSINESS		CAPGEMINI INDIA LTD, GODREJ COMPOUND, M6 BUILDING, L B S ROAD, VIKHROLI EAST-400079\r\n	INDIA	Maharashtra	\N	84	premlal-mahendra-shah	19.1055205000000008	72.9221979000000005	submitted	177	2014-03-14 07:56:09.225232	2014-03-14 07:56:09.225232	CAPGEMINI INDIA LTD	\N	\N	\N	\N	45	1	6249	400079	1
107	1176	Scorp Enterprises	t	1176	UMESH GOVIND PANWALKAR	BUSINESS		SHREE GAJANAN FOODS, GALA NO-50, 1ST FLOOR, JANMNADAS INDUSTRAIL ESTATE, DR R P ROAD, MULUND-WEST-400080\r\n	INDIA	Maharashtra	\N	85	umesh-govind-panwalkar	19.1778359000000016	72.9526317999999918	submitted	178	2014-03-14 08:00:43.599672	2014-03-14 08:00:43.599672	SHREE GAJANAN FOODS	\N	\N	\N	\N	45	1	6249	400080	1
108	1177	Scorp Enterprises	t	1177	JYOTI UMESH PANWALKAR	BUSINESS		SHREE GAJANAN FOODS, GALA NO-50, 1ST FLOOR, JANMNADAS INDUSTRAIL ESTATE, DR R P ROAD, MULUND-WEST-400080\r\n	INDIA	Maharashtra	\N	85	jyoti-umesh-panwalkar	19.1778359000000016	72.9526317999999918	submitted	179	2014-03-14 08:02:09.938016	2014-03-14 08:02:09.938016	SHREE GAJANAN FOODS	\N	\N	\N	\N	45	1	6249	400080	1
109	1179	Scorp Enterprises	t	1179	Mrs Prachi Sanjeev Naidu	BUSINESS		Newgen Software Technologies Limited,Technocity, A Wing, Unit No.804/805/806,Plot No.X-4/1, X-4/2, Besides IBP Petrol Pump,Mahape,Navi Mumbai-400701\r\n	INDIA	Maharashtra	\N	196	mrs-prachi-sanjeev-naidu	19.1182936999999988	73.0275874999999957	submitted	181	2014-03-14 08:05:24.072989	2014-03-14 08:05:24.072989	Newgen Software Technologies Limited	\N	\N	\N	\N	70	1	4498	400710	2
110	1180	Scorp Enterprises	t	1180	MONA AGARWAL	BUSINESS		MORNING STAR INDIA PVT LTD, 9TH FLOOR, PLATINUM TECHNO PARK, PLOT NO-17 & 18, SECTOR 30 A, VASHI, NAVI MUMBAI-400705\r\n	INDIA	Maharashtra	\N	125	mona-agarwal	19.0574665000000003	73.0110095999999942	submitted	182	2014-03-14 08:07:04.652479	2014-03-14 08:07:04.652479	MORNING STAR INDIA PVT LTD	\N	\N	\N	\N	45	1	6249	400703	2
111	1181	Scorp Enterprises	t	1181	YASHODHAN ARUN VYAVAHARI	BUSINESS		CAPGEMINI INDIA PVT LTD,BLDG NO 8,MIND SPACE AIROLI NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	131	yashodhan-arun-vyavahari	19.1511828999999985	72.9996314999999925	submitted	183	2014-03-14 08:08:30.797773	2014-03-14 08:08:30.797773	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	70	1	4498	400708	2
112	1182	Scorp Enterprises	t	1182	AMOL BHALACHANDRA SURYAWANSHI	BUSINESS		AGNEL EDUCATION COMPLEX, SECTOR 9A, VASHI, NEAR NOOR MASJID, NAVI MUMBAI 400703\r\n	INDIA	Maharashtra	\N	125	amol-bhalachandra-suryawanshi	19.0793546999999997	72.99920130000001	submitted	184	2014-03-14 08:10:17.717218	2014-03-14 08:10:17.717218	AGNEL 	\N	\N	\N	\N	113	1	14677	400703	2
128	1206	Scorp Enterprises	t	1206	KAJAL DHIRAJ DHAGE 	BUSINESS		TAM MEDIA RESEARCH  PVT LTD., 9TH FLOOR HINCON HOUSE (TOWER-B), 247, PARK , LBS MARG, VIKHROLI W , \r\n	INDIA	Maharashtra	\N	84	kajal-dhiraj-dhage	19.1118674000000013	72.9259040000000027	submitted	208	2014-03-20 07:10:15.23246	2014-03-20 07:10:15.23246	TAM MEDIA RESEARCH  PVT LTD	\N	\N	\N	\N	34	1	1131	400079	1
104	1170	Scorp Enterprises	t	1170	SHRI MANGESH NIRANJAN GAWHALE	BUSINESS		RELIANCE INFRASTRUCTURE LIMITED,CPG D BLOCK GROUND FLOOR,DHIRUBHAI AMBANI KNOWLEDGE CITY (DACK),KOPARKHAIRNE,\r\n	INDIA	Maharashtra	\N	132	shri-mangesh-niranjan-gawhale	19.7514797999999985	75.7138884000000019	verified	172	2014-03-12 07:33:49.287147	2014-03-12 07:33:49.287147	RELIANCE INFRASTRUCTURE LIMITED	\N	\N	\N	\N	28	1	5165	400709	2
116	1189	Scorp Enterprises	f	1189	HARSHAD PRABHAT JOSHI	BUSINESS		"3I -INFOTECH LTD., TOWER -5, INTERNATIONAL INFOTECH PARK, VASHI STATION COMPLEX, ABOVE VASHI RAILWAY STATION, VASHI,  NAVI MUMBAI - 400703\r\n"\r\n	INDIA	Maharashtra	\N	125	harshad-prabhat-joshi	19.7514797999999985	75.7138884000000019	submitted	191	2014-03-15 08:02:24.295386	2014-03-15 08:02:24.295386	3I -INFOTECH LTD	\N	\N	\N	\N	27	1	7124	400703	2
117	1190	Scorp Enterprises	f	1190	PRAKASH REDDY	BUSINESS		MASTEK LTD, MILLIENNIUM CENTER,A/7,SECTOR/1, MILLENNIUM BUSSINESS PARK, THANE BELAPUR RD\r\n	INDIA	Maharashtra	\N	196	prakash-reddy	\N	\N	submitted	192	2014-03-15 08:06:40.54465	2014-03-15 08:06:40.54465	MASTEK LTD	\N	\N	\N	\N	70	1	4498	400710	2
118	1191	Scorp Enterprises	t	1191	SANDHYA HARISHCHNDRA MORE	BUSINESS		GOVIK ELECTRICALS PVT LTD,G1-MAHAPE WORKS ,PLOT NO A 524/525,MIDC,TTC INDUSTRIAL AREA ,MAHAPE,NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	196	sandhya-harishchndra-more	19.093781700000001	73.0187584999999899	submitted	193	2014-03-15 08:07:55.96263	2014-03-15 08:07:55.96263	GOVIK ELECTRICALS PVT LTD	\N	\N	\N	\N	14	1	4380	400710	2
119	1192	Scorp Enterprises	t	1192	MOHAMMED SHAHID POONAWALA 	BUSINESS		TUBETURN PVT  LTD, R/808 , TTC INDUSTRIAC AREA, MIDC RABALE , NAVI MUMBAI , THANE 400701 \r\n	INDIA	Maharashtra	\N	196	mohammed-shahid-poonawala	19.1370180000000012	73.0027068999999926	submitted	194	2014-03-15 08:10:13.147199	2014-03-15 08:10:13.147199	TUBETURN PVT  LTD	\N	\N	\N	\N	14	1	4380	400710	2
120	1193	Scorp Enterprises	t	1193	Mr Amit Vilas Narkhede	BUSINESS		Accenture Services Pvt Ltd.Bldg no.10, 3rd floor Mind space Airoli,Near Airoli rly stn Navi Mumbai.\r\n	INDIA	Maharashtra	\N	131	mr-amit-vilas-narkhede	\N	\N	submitted	195	2014-03-15 08:11:41.529548	2014-03-15 08:11:41.529548	Accenture Services Pvt Ltd	\N	\N	\N	\N	27	1	7124	400708	2
121	1194	Scorp Enterprises	t	1194	SACHIN ANKUSH SABLE	BUSINESS		CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, LBS MARG, GODREJ AND BOYCE COMPOUND, VIKHROLI WEST, MUMBAI 400079\r\n	INDIA	Maharashtra	\N	84	sachin-ankush-sable	19.1091760999999991	72.9194797999999906	submitted	196	2014-03-18 08:19:19.179966	2014-03-18 08:19:19.179966	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	113	1	14677	400079	1
123	1196	Scorp Enterprises	t	1196	RAVINDER GUPTA 	BUSINESS		ACCENTURESERVICES PVT LTD., PLANT 3, GODREJ COMPLEX, VIKHROLI W , LBS MARG , MUMBAI 400079 \r\n	INDIA	Maharashtra	\N	84	ravinder-gupta	19.1055205000000008	72.9221979000000005	submitted	198	2014-03-18 08:22:05.028671	2014-03-18 08:22:05.028671	ACCENTURESERVICES PVT LTD	\N	\N	\N	\N	14	1	4380	400079	1
124	1197	Scorp Enterprises	t	1197	ASHISH MAYEKAR	BUSINESS		"FIRMENICH AROMATICS I PVT LTD\r\n9TH FLOOR, ARENA SPACE, PLOT NO 4, NEAR SHYAM NAGAR, OFF JOGESHWARI VIKHROLI LINK ROAD, JOGESHWARI E\r\n"\r\n	INDIA	Maharashtra	\N	84	ashish-mayekar	19.7514797999999985	75.7138884000000019	submitted	199	2014-03-18 08:24:59.472961	2014-03-18 08:24:59.472961	FIRMENICH AROMATICS I PVT LTD	\N	\N	\N	\N	52	1	10331	400079	1
126	1202	Scorp Enterprises	t	1202	PRAVIN RAVIKANT SAWANT 	BUSINESS		SHRIRAM FORTUNE SOLUTIONS LTD 408/409,DEVVRATA BLID, SECTOR 17, NEAR HDFC BANK VASHI 400703\r\n	INDIA	Maharashtra	\N	125	pravin-ravikant-sawant	19.0793549999999996	73.0000330000000019	submitted	204	2014-03-18 08:33:53.360908	2014-03-18 08:33:53.360908	SHRIRAM FORTUNE SOLUTIONS LTD	\N	\N	\N	\N	70	1	4498	400703	2
127	1204	Scorp Enterprises	t	1204	DNYANESHWAR AJINATH KHIRSAGAR 	BUSINESS		TOYO ENGINEERING INDIA LIMITED , TOYO HOUSE, L.B.S. MARG , KANJURMARG (W), MUMBAI 400078 ,. \r\n	INDIA	Maharashtra	\N	195	dnyaneshwar-ajinath-khirsagar	19.1338787000000004	72.9281625999999932	submitted	206	2014-03-19 07:17:08.947563	2014-03-19 07:17:08.947563	TOYO ENGINEERING INDIA LIMITED 	\N	\N	\N	\N	34	1	1131	400078	1
125	1199	Scorp Enterprises	t	1199	GOVIND PRABHAKAR DHURI	BUSINESS		SIEMENS LTD, KALWA WORKS SWITCH BOARD, THANE BELAPUR ROAD, OPP AIROLI RLY STATION, AIROLI 400601\r\n	INDIA	Maharashtra	\N	127	govind-prabhakar-dhuri	19.201050200000001	72.9785352999999901	verified	201	2014-03-18 08:27:36.326503	2014-03-18 08:27:36.326503	SIEMENS LTD	\N	\N	\N	\N	34	1	1131	400705	2
122	1195	Scorp Enterprises	t	1195	SACHIN DHONDIRAM CHAVAN	BUSINESS		TATA CONSULTANCY SERVICES, 12-D, 115, KENSINGTON B WING, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI \r\n	INDIA	Maharashtra	\N	80	sachin-dhondiram-chavan	19.1196772999999993	72.9050809000000015	verified	197	2014-03-18 08:20:59.766616	2014-03-18 08:20:59.766616	TATA CONSULTANCY SERVICES	\N	\N	\N	\N	113	1	14677	400076	1
130	1208	Scorp Enterprises	t	1208	MANGESH THASAL 	BUSINESS		WORLEY PARSONS SEA INDIA PVT LTD, RAHEJA PLAZA , 1ST FLOOR LBS MARG GHATKOPAR W MUMBAI 400086 \r\n	INDIA	Maharashtra	\N	82	mangesh-thasal	19.0893210999999994	72.9077190000000144	submitted	210	2014-03-20 07:14:00.191583	2014-03-20 07:14:00.191583	WORLEY PARSONS SEA INDIA PVT LTD	\N	\N	\N	\N	34	1	1131	400077	1
132	1211	Scorp Enterprises	t	1211	SREENI VASALU G	BUSINESS		SANDOZ PVT LTD, MIDC PLOT NO 8 A1/1,8A/2, 8B, TTC INDVSTRIAL AREA KALNE BLACK , NAVI MUMBAI 400708\r\n	INDIA	Maharashtra	\N	196	sreeni-vasalu-g	19.1598725999999999	72.99920130000001	submitted	213	2014-03-20 07:22:34.769435	2014-03-20 07:22:34.769435	SANDOZ PVT LTD	\N	\N	\N	\N	34	1	1131	400708	2
133	1213	Scorp Enterprises	t	1213	Mr. I Rajiv Reddy 	BUSINESS		Glenmark Pharmaceuticals, Glenmark research centre, Plot No. A 607, MIDC, Mahape Navi Mumbai- 400709.\r\n	INDIA	Maharashtra	\N	196	mr-i-rajiv-reddy	19.0997616999999984	73.0021533999999974	verified	215	2014-03-20 07:27:14.673527	2014-03-20 07:27:14.673527	Glenmark Pharmaceuticals	\N	\N	\N	\N	90	1	3736	400709	2
131	1210	Scorp Enterprises	t	1210	JALINDAR RAMCHANDRA PAWAR	BUSINESS		INDOCO REMEDIES LTD, R & D CENTER, R92 / 93, TTC INDUSTRIAL AREA, THANE BELAPUR ROAD, RABALE, NAVI MUMBAI 400701\r\n	INDIA	Maharashtra	\N	123	jalindar-ramchandra-pawar	19.1370180000000012	73.0027068999999926	verified	212	2014-03-20 07:20:02.008474	2014-03-20 07:20:02.008474	INDOCO REMEDIES LTD	\N	\N	\N	\N	113	1	14677	400701	2
135	1216	Scorp Enterprises	t	1216	DIPTI RANJAN PALEI	BUSINESS		LARSEN & TOUBRO LTD, G3 FIRST FLR, GATE 1, SAKI VIHAR ROAD POWAI CAMPUS 72\r\n	INDIA	Maharashtra	\N	80	dipti-ranjan-palei	19.7514797999999985	75.7138884000000019	submitted	218	2014-03-21 07:35:43.387568	2014-03-21 07:35:43.387568	LARSEN & TOUBRO INFOTECH LTD	\N	\N	\N	\N	70	1	4498	400076	1
136	1217	Scorp Enterprises	t	1217	YOGESH DADA GHADAGE	BUSINESS		LARSEN & TOUBRO LTD POWAI , SAKI VIHAR ROAD POWAI , MUMBAI 400072\r\n	INDIA	Maharashtra	\N	80	yogesh-dada-ghadage	19.1178114999999984	72.8899114000000026	submitted	219	2014-03-21 07:37:46.845073	2014-03-21 07:37:46.845073	LARSEN & TOUBRO INFOTECH LTD	\N	\N	\N	\N	34	1	1131	400072	1
137	1218	Scorp Enterprises	t	1218	SHRI RAJESH PETHE	BUSINESS		ABBOT INDIA LTD,1ST FLOOR,D MART BLDG,MULUND-GOREGAON LINK ROAD,MULUND,MUMBAI\r\n	INDIA	Maharashtra	\N	85	shri-rajesh-pethe	19.1635060999999993	72.9397208000000035	submitted	220	2014-03-21 07:39:39.840372	2014-03-21 07:39:39.840372	ABBOT INDIA LTD	\N	\N	\N	\N	36	1	11708	400080	1
138	1219	Scorp Enterprises	t	1219	RAMPRASAD K BHAT	BUSINESS		SANOFI AVENTIS LTD, 54/A MATHURDAS VASWANTI ROAD, ANDHERI EAST , MUMBAI 93\r\n	INDIA	Maharashtra	\N	62	ramprasad-k-bhat	19.7514797999999985	75.7138884000000019	submitted	221	2014-03-21 07:42:02.562182	2014-03-21 07:42:02.562182	SANOFI AVENTIS LTD	\N	\N	\N	\N	63	1	13034	400059	1
139	1220	Scorp Enterprises	t	1220	SHASHANK PARSHURAM PAWNARKAR 	BUSINESS		CAPGEMINI CONSULTING INDIA PVT LTD,PLANT 2, BLOCK A GODREJ  IT  PARK , GODREJ &  BOYCE COMPOUND LBS MARG , VIKHROLI W MUMBAI 400079 \r\n	INDIA	Maharashtra	\N	84	shashank-parshuram-pawnarkar	19.1055205000000008	72.9221979000000005	submitted	222	2014-03-21 07:43:44.920226	2014-03-21 07:43:44.920226	CAPGEMINI CONSULTING INDIA PVT LTD	\N	\N	\N	\N	14	1	4380	400079	1
140	1221	Scorp Enterprises	t	1221	SMT TANYA MALHOTRA 	BUSINESS		JP MORGAN SERVICES INDIA PVT LTD , 2ND FLOOR , VENTURA TOER, HIRANANDANI , POWAI , MUMABI 400066\r\n	INDIA	Maharashtra	\N	80	smt-tanya-malhotra	19.230592399999999	72.8663172999999915	submitted	223	2014-03-21 07:44:45.201484	2014-03-21 07:44:45.201484	JP MORGAN SERVICES INDIA PVT LTD 	\N	\N	\N	\N	14	1	4380	400076	1
141	1222	Scorp Enterprises	t	1222	HARPREET SINGH BABBAR	BUSINESS		IBIS, NAVI MUMBAI, D266, TTC INDUSTRIAL ESTATE, THANE BELAPUR ROAD, NEAR S K WHEELS, TURBHE, NAVI MUMBAI \r\n	INDIA	Maharashtra	\N	121	harpreet-singh-babbar	19.0726785999999997	73.0198654000000005	submitted	224	2014-03-21 07:46:50.965109	2014-03-21 07:46:50.965109	IBIS	\N	\N	\N	\N	113	1	14677	400613	2
142	1223	Scorp Enterprises	t	1223	SMITA MISHRA	BUSINESS		HEXAWARE TECHNOLOGIES, 152 MBP, SECTOR III, A BLOCK, TTC INDUSTRIAL AREA, MAHAPE, NAVI MUMBAI 400709\r\n	INDIA	Maharashtra	\N	196	smita-mishra	19.0997616999999984	73.0021533999999974	submitted	225	2014-03-21 07:48:56.008577	2014-03-21 07:48:56.008577	HEXAWARE TECHNOLOGIES	\N	\N	\N	\N	113	1	14677	400709	2
143	1224	Scorp Enterprises	t	1224	BHAWANA JAIN	BUSINESS		RELIANCE CORPORATE PARK, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	Maharashtra	\N	123	bhawana-jain	19.1248678000000005	73.0049225000000064	submitted	226	2014-03-21 07:51:57.184077	2014-03-21 07:51:57.184077	RELIANCE CORPORATE PARK	\N	\N	\N	\N	113	1	14677	400701	2
144	1226	Scorp Enterprises	t	1226	RUPA SUDHIR GANDHI 	BUSINESS		B/5, JAY BANDHU,90, FEET ROAD, GARODIA NAGAR,GHATKOPAR E \r\n	INDIA	Maharashtra	\N	81	rupa-sudhir-gandhi	19.075989400000001	72.9085991000000035	submitted	228	2014-03-28 07:24:22.254273	2014-03-28 07:24:22.254273	OWNS BUSS	\N	\N	\N	\N	34	1	1131	400077	1
61	1099	Scorp Enterprises	t	1099	LEENA ANIL DHERE	BUSINESS		THE NIELSEN COMPANY, 6TH FLOOR C BLOCK GODREJ BUSINESS, DISTRICT PHIROJSHAHNAGAR, VIKHROLI WEST, MUMBAI 79\r\n	INDIA	Maharashtra	\N	84	leena-anil-dhere	19.7514797999999985	75.7138884000000019	verified	101	2014-02-22 07:11:03.942625	2014-02-22 07:11:03.942625	THE NIELSEN COMPANY	\N	\N	\N	\N	34	1	1131	400079	1
145	1227	Scorp Enterprises	t	1227	MINAL SINGLA	BUSINESS		CAPGEMINI INDIA PVT LTD, GODREJ COMPLEX BLOCK A LBS MARG VIKHROLI ,MUMBAI  400079\r\n	INDIA	Maharashtra	\N	84	minal-singla	19.1024907000000006	72.92011269999999	verified	229	2014-03-28 07:27:34.427854	2014-03-28 07:27:34.427854	CAPGEMINI CONSULTING INDIA PVT LTD	\N	\N	\N	\N	34	1	1131	400079	1
146	1230	Scorp Enterprises	t	1230	MAHESH SURESH DHOBLI	BUSINESS		GODREJ & BOYCE MFG. CO. LTD. , PRIMA DIVISION, 14P, PIROJSHA NAGAR, VIKHROLI WEST, 1ST FLOOR, DESIGN DEPT, MUMBAI 400079\r\n	INDIA	Maharashtra	\N	84	mahesh-suresh-dhobli	19.0852663999999983	72.9401508999999919	submitted	232	2014-04-03 07:22:11.968954	2014-04-03 07:22:11.968954	GODREJ & BOYCE MFG. CO. LTD	\N	\N	\N	\N	34	1	1131	400079	1
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 146, true);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cities (id, name, created_at, updated_at) FROM stdin;
1	Mumbai	2014-02-04 09:02:59.53825	2014-02-04 09:02:59.53825
2	Navi Mumbai	2014-02-04 09:02:59.632593	2014-02-04 09:02:59.632593
3	Thane	2014-02-04 09:02:59.653296	2014-02-04 09:02:59.653296
\.


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cities_id_seq', 3, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
1	1	3	1	\N	2014-02-13 10:10:57.931554	2014-02-13 10:10:57.983107
2	2	1	1	\N	2014-02-19 07:58:12.906428	2014-02-19 07:58:12.931179
3	6	1	1	\N	2014-03-04 07:34:58.854204	2014-03-04 07:34:58.871922
4	7	2	1	\N	2014-03-04 07:40:57.227132	2014-03-04 07:40:57.251342
5	8	1	1	\N	2014-03-05 07:51:05.858869	2014-03-05 07:51:05.883646
6	3	2	\N	\N	2014-03-05 08:01:58.750613	2014-03-05 08:01:58.750613
7	4	2	\N	\N	2014-03-05 08:01:58.795059	2014-03-05 08:01:58.795059
8	5	2	\N	\N	2014-03-05 08:01:58.811602	2014-03-05 08:01:58.811602
9	9	1	1	\N	2014-03-11 07:07:28.716273	2014-03-11 07:07:28.737182
10	10	1	1	\N	2014-03-11 07:14:34.56289	2014-03-11 07:14:34.585147
11	11	2	1	\N	2014-03-18 08:31:41.25506	2014-03-18 08:31:41.275938
12	12	2	1	\N	2014-03-21 07:50:23.429668	2014-03-21 07:50:23.445709
13	13	1	1	\N	2014-03-28 07:25:52.13576	2014-03-28 07:25:52.159794
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 13, true);


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clients (id, name, created_at, updated_at) FROM stdin;
1	SBI	2014-02-04 09:03:03.570849	2014-02-04 09:03:03.570849
\.


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clients_id_seq', 1, true);


--
-- Data for Name: co_applicant_business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_business_documents (id, co_applicant_business_id, co_applicant_work_detail_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at) FROM stdin;
1	2	1	\N	\N	\N	2014-02-19 13:41:08.146675	2014-02-19 13:41:08.146675
2	2	2	\N	\N	\N	2014-02-19 13:41:45.260032	2014-02-19 13:41:45.260032
3	2	3	\N	\N	\N	2014-02-19 13:41:46.222995	2014-02-19 13:41:46.222995
4	2	4	\N	\N	\N	2014-02-19 13:42:34.398107	2014-02-19 13:42:34.398107
5	11	11	\N	\N	\N	2014-03-18 15:04:39.921489	2014-03-19 07:13:08.791299
\.


--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_business_documents_id_seq', 5, true);


--
-- Data for Name: co_applicant_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
1	1023	Scorp Enterprises	t	1023	SHIVKUMAR KUBADIRAM PARCHA 	BUSINESS		R.C.F. COLONY, TOWNSHIP CHEMBUR  M-74 \r\n	INDIA	mumbai	maharashtra	74	shivkumar-kubadiram-parcha	19.0759836999999983	72.8776558999999935	submitted	25	R.C.F	2014-02-13 10:10:48.138649	2014-02-13 10:10:48.138649	\N	\N	\N	\N	34	1	1131	\N	\N
11	1201	Scorp Enterprises	t	1201	ROHIT KUMAR	BUSINESS		RELIANCE INDUSTRY LTD , TC23, BLOCK A RCD THANE BELAPUR GHANSOLI 400701 \r\n	INDIA	\N	maharashtra	\N	rohit-kumar	19.1272720000000014	72.9966780000000028	verified	203	RELIANCE INDUSTRY LTD	2014-03-18 08:31:32.431286	2014-03-18 08:31:32.431286	\N	\N	\N	\N	70	1	4498	400701	2
2	1076	Scorp Enterprises	t	1076	MEENA G WAGH	BUSINESS		SHALINI ,SHOP NO 9, AMRUTNAGAR CHS, AMRUTNAGAR, GHATKOPAR WEST, MUMBAI 86\r\n	INDIA	\N		82	meena-g-wagh	\N	\N	verified	78	SHALINI 	2014-02-19 07:57:00.647763	2014-02-19 07:57:00.647763	\N	\N	\N	\N	34	1	1131	400077	1
6	1119	Scorp Enterprises	t	1119	MAHESH MARUTI JADHAV 	BUSINESS		TERADATA INDIA PVT LTD, NOMURA BUIL., GROUND FLOOR 1 HIRANANDANI BUSINESS PARK POWAI 400076\r\n	INDIA	\N		80	mahesh-maruti-jadhav	19.1253004000000004	72.9076668999999953	submitted	121	TERADATA INDIA PVT LTD	2014-03-04 07:34:49.723559	2014-03-04 07:34:49.723559	\N	\N	\N	\N	34	1	1131	400076	1
7	1120	Scorp Enterprises	t	1120	SHISHIR CHANDRA GUPTA	BUSINESS		LARSEN & TOUBRO, A-600, TTC INDUSTRIAL AREA, SHIL-MAHAPE ROAD, NAVI MUMBAI 400709\r\n	INDIA	\N		\N	shishir-chandra-gupta	19.1122790000000009	73.0078005000000019	submitted	122	LARSEN & TOUBRO	2014-03-04 07:40:47.018662	2014-03-04 07:40:47.018662	\N	\N	\N	\N	113	1	14677	400710	2
8	1124	Scorp Enterprises	t	1124	MONA LALWANI	BUSINESS		DELOITTE, F AIRMONT HIRANANDANI BUSNISS PARK, POWAI, MUMBAI 76\r\n	INDIA	\N		80	mona-lalwani	\N	\N	submitted	126	DELOITT	2014-03-05 07:50:57.176821	2014-03-05 07:50:57.176821	\N	\N	\N	\N	34	1	1131	400076	1
3	1085	Scorp Enterprises	t	1085	PRATIMA AMOL KOKATE	BUSINESS		AGNEL POLYTECHNIC, SECTOR 9A, VASHI, NAVI  MUMBAI 400703\r\n	INDIA	\N	maharashtra	\N	pratima-amol-kokate	19.0756397	72.9911094999999932	submitted	87	AGNEL POLYTECHNIC	2014-02-19 09:03:16.166626	2014-02-19 09:03:16.166626	\N	\N	\N	\N	113	1	14677	400703	2
4	1103	Scorp Enterprises	t	1103	RAJESH K SINHA	BUSINESS		RELIANCE GAS TRANSPORTATION INFRA LTD, 7A, IIND FLOOR, RELIANCE CORPORATE PARK, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400709\r\n	INDIA	\N		\N	rajesh-k-sinha	19.0997616999999984	73.0021533999999974	submitted	105	RELIANCE GAS TRANSPORTATION INFRA LTD	2014-02-22 07:19:49.034909	2014-02-22 07:19:49.034909	\N	\N	\N	\N	113	1	14677	400701	2
5	1107	Scorp Enterprises	t	1107	MURTUZA HUSAINY KHAMBATY	BUSINESS		WHITE CEDAR FACILITY MANAGEMENT INDIA PVT LTD, SHOP NO 1, SUN PALM VIEW, PLOT NO 1/1A, SECTOR 15, PALM BEACH ROAD, SANPADA, NAVI MUMBAI 400705\r\n	INDIA	\N		\N	murtuza-husainy-khambaty	19.0810288999999997	73.0047083000000043	submitted	109	WHITE CEDAR FACILITY MANAGEMENT INDIA PVT LTD	2014-02-26 07:05:48.10076	2014-02-26 07:05:48.10076	\N	\N	\N	\N	113	1	14677	400705	2
9	1155	Scorp Enterprises	t	1155	KANAN CHOURASIA	BUSINESS		TATA CONSULTANCY SERVICES,11 FLOOR B -WING KENSINGTON,,HIRANANDANI BUSINESS PARK,POWAI MUMBAI 400076\r\n	INDIA	\N		80	kanan-chourasia	19.1253004000000004	72.9076668999999953	submitted	157	TATA CONSULTANCY SERVICES,	2014-03-11 07:07:19.686154	2014-03-11 07:07:19.686154	\N	\N	\N	\N	14	1	4380	400076	1
10	1156	Scorp Enterprises	t	1156	INDERPAL CHAND BHANDARI	BUSINESS		GAUTAM LABDHI MARKETING, 20, NAHUR UDYOG PRE CO-OP HSG SOC, PNT COLONY ,OPP JOHNSON & JOHNSON CO, MUMBAI\r\n	INDIA	\N		84	inderpal-chand-bhandari	19.0759836999999983	72.8776558999999935	submitted	158	GAUTAM LABDHI MARKETING,	2014-03-11 07:14:21.964392	2014-03-11 07:14:21.964392	\N	\N	\N	\N	14	1	4380	400078	1
12	1223	Scorp Enterprises	t	1223	SANDEEP MISHRA	BUSINESS		RELIANCE CORPORATE PARK, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	\N	maharashtra	\N	sandeep-mishra	19.1248678000000005	73.0049225000000064	submitted	225	RELIANCE CORPORATE PARK	2014-03-21 07:50:15.192902	2014-03-21 07:50:15.192902	\N	\N	\N	\N	113	1	14677	400701	2
13	1226	Scorp Enterprises	t	1226	SUDHIR RAMNIKLAL GANDHI 	BUSINESS		CENTRAL BANK OF INDIA , LBS MARG, GHATKOPAR W NR SARVODAYA HOSPITAL MUMBAI 400086\r\n	INDIA	\N		82	sudhir-ramniklal-gandhi	19.0971164999999985	72.91357339999999	submitted	228	CENTRAL BANK OF INDIA	2014-03-28 07:25:43.851437	2014-03-28 07:25:43.851437	\N	\N	\N	\N	34	1	1131	400086	1
\.


--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_businesses_id_seq', 13, true);


--
-- Data for Name: co_applicant_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_documents (id, co_applicant_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at, co_applicant_servey_id) FROM stdin;
1	\N	Screenshot_from_2013-07-28_18_52_50.png	image/png	137969	2014-02-05 17:14:44.815164	2014-02-05 17:14:44.815164	1
2	\N	5553006750_d98f6e7b32_b.jpg	image/jpeg	181003	2014-02-05 17:14:44.855812	2014-02-05 17:14:44.855812	1
\.


--
-- Name: co_applicant_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_documents_id_seq', 2, true);


--
-- Data for Name: co_applicant_serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_serveys (id, co_applicant_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, photo_required, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	1	2	t	t	2014-02-05	22:41:59	Chetan Tandel	Husband	3	\N	proffessional	Married	5	4	0	t	Eclerx	t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- watchman\n- neighbour\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	Morning	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card,\r\nDriving licence,\r\nPassport	\N	Accept	2014-02-05 17:14:44.807674	2014-02-05 17:14:44.807674	\N	1963-02-05	UDGU72727GHG	\N	FTF3266633FF	dydwyc3663
2	2	1	t	t	2014-02-13	15:20:26	durgaparsad	security	4	\N	others	Self Owned	\N	\N	\N	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- watchman\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:00pm	\N	Third party conframation	\N	Accept	2014-02-13 09:51:53.79398	2014-02-13 09:51:53.79398	\N	2014-02-13		\N		
3	4	1	t	t	2014-02-14	11:08:08	chitra keni	mother	3	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:30pm	\N	Tol--home\r\nAmt--22.30lac	\N	Accept	2014-02-14 05:41:06.72162	2014-02-14 05:41:06.72162	\N	1982-04-28		\N		000012134550
4	13	1	t	t	2014-02-14	16:04:15	sudeshana ray	wife	11	Rented	others	Married	2	1	0	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:20pm	\N	Tol--home\r\nAmt--1.2core\r\nRent ex date--dec2014	\N	Accept	2014-02-14 10:39:44.91941	2014-02-14 10:39:44.91941	\N	1982-12-01		\N		
5	12	1	t	t	2014-02-14	16:13:07	self	self	12	\N	others	Married	5	1	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	4:30pm	\N	Tol--home\r\nAmt--no idea	\N	Accept	2014-02-14 10:44:43.370847	2014-02-14 10:44:43.370847	\N	1971-03-26		\N		
6	17	1	t	t	2014-02-17	19:06:54	self	self	35	\N	\N	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:00p	\N	Tol--home\r\nAmt--12.50lac	\N	Accept	2014-02-17 13:38:31.482643	2014-02-17 13:38:31.482643	\N	2014-03-20		\N		
7	18	1	t	t	2014-02-17	19:10:43	self	self	10	\N	others	Married	5	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:40pm	\N	Tol--home\r\nAmt--62lac	\N	Accept	2014-02-17 13:42:26.943706	2014-02-17 13:42:26.943706	\N	1974-11-17		\N		
8	19	1	t	t	2014-02-17	19:15:25	sunil desai	father	1	Owned By Parents	\N	Married	4	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:30pm	\N	Tol--home\r\nAmt'--- no idea	\N	Accept	2014-02-17 13:47:24.283544	2014-02-17 13:47:24.283544	\N	1980-12-03		\N		
9	20	1	t	t	2014-02-17	19:19:26	vijya	mother in law	4	\N	others	Married	5	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:00pm	\N	Tol--home\r\nAmt--42lac	\N	Accept	2014-02-17 13:50:55.887148	2014-02-17 13:50:55.887148	\N	1987-11-10		\N		
10	22	1	t	t	2014-02-19	18:53:15	aisha	wife	2	Rented	others	Married	6	2	2	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	3:00pm	\N	Tol--edu\r\nAmt--3lac	\N	Accept	2014-02-19 13:25:24.273319	2014-02-19 13:25:24.273319	\N	1963-06-30		\N		
11	23	1	t	t	2014-02-19	19:05:51	self	self	10	\N	others	Married	4	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	3:20pm	\N	Tol--car\r\nAmt--6lac	\N	Accept	2014-02-19 13:37:35.030593	2014-02-19 13:37:35.030593	\N	2014-05-24		\N		
12	25	2	t	t	2014-02-20	15:54:32	self 		22	\N	others	Married	3	1	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Dob-1.07.1947, loan amount  30 lakh home \r\nLoan	\N	Accept	2014-02-20 10:29:41.071432	2014-02-20 10:29:41.071432	\N	2014-02-20		\N		
13	26	2	t	t	2014-02-21	10:22:05	self 		3	Rented	Post Graduate	Married	2	2	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	6:00pm	\N	Loan amount-20 lakh home  loan,rent aggrement end april 15	\N	Accept	2014-02-21 04:55:40.827762	2014-02-21 04:55:40.827762	\N	1987-11-30		\N		
14	28	1	t	t	2014-02-24	11:06:34	devyani	wife	3	Rented	others	Married	4	2	0	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	3:20pm	\N	Tol--home\r\nRentbexpried date--31march2014	\N	Accept	2014-02-24 05:38:46.002575	2014-02-24 05:38:46.002575	\N	1979-01-17		\N		
15	43	2	t	t	2014-03-12	18:19:23	self 		4	\N	\N	Married	3	1	1	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	20 lakh transfer loan from another bank	\N	Accept	2014-03-12 12:51:48.350592	2014-03-12 12:51:48.350592	\N	1981-04-30		\N		
16	48	2	t	\N	2014-03-20	13:08:14	 shweta	wife	1	Rented	others	Married	4	1	2	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	other	Easy	pakka	---\n- others\n- ''\n	\N	sofa		\N	\N	7:00	\N		\N	Accept	2014-03-18 14:58:35.43237	2014-03-20 07:38:55.928399	\N	1974-04-15		\N		
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 16, true);


--
-- Data for Name: co_applicant_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_verifications (id, co_applicant_id, user_id, customer_id, tab_id, created_at, updated_at) FROM stdin;
1	1	1	\N	2	2014-02-05 17:08:40.543505	2014-02-05 17:08:40.571359
2	2	1	\N	1	2014-02-13 06:56:50.018814	2014-02-13 06:56:50.035294
3	4	1	\N	1	2014-02-13 07:32:56.47296	2014-02-13 07:32:56.499053
4	9	1	\N	3	2014-02-13 10:08:33.332486	2014-02-13 10:08:33.361263
5	10	1	\N	3	2014-02-13 10:10:10.105101	2014-02-13 10:10:10.127603
6	11	1	\N	3	2014-02-13 10:13:44.675078	2014-02-13 10:13:44.700359
7	12	1	\N	1	2014-02-14 08:25:31.221465	2014-02-14 08:25:31.239868
8	13	1	\N	1	2014-02-14 08:27:30.064832	2014-02-14 08:27:30.086143
9	14	1	\N	1	2014-02-14 08:46:17.798952	2014-02-14 08:46:17.821893
10	15	1	\N	2	2014-02-14 09:52:08.123045	2014-02-14 09:52:08.144326
11	16	1	\N	2	2014-02-14 09:55:01.383203	2014-02-14 09:55:01.406061
12	6	1	\N	1	2014-02-17 04:38:11.454979	2014-02-17 04:38:11.542627
13	17	1	\N	1	2014-02-17 06:56:00.713789	2014-02-17 06:56:00.737287
14	18	1	\N	1	2014-02-17 06:58:00.039937	2014-02-17 06:58:00.066334
15	19	1	\N	1	2014-02-17 07:03:29.913929	2014-02-17 07:03:29.938767
16	20	1	\N	1	2014-02-17 07:07:04.698672	2014-02-17 07:07:04.719635
17	21	1	\N	2	2014-02-17 07:34:01.856392	2014-02-17 07:34:01.880584
18	22	1	\N	1	2014-02-19 07:42:43.265394	2014-02-19 07:42:43.29093
19	23	1	\N	1	2014-02-19 07:56:31.186102	2014-02-19 07:56:31.210044
20	24	1	\N	2	2014-02-19 09:02:25.461591	2014-02-19 09:02:25.480347
21	25	1	\N	2	2014-02-20 07:36:03.861301	2014-02-20 07:36:03.887481
22	26	1	\N	2	2014-02-20 07:38:25.636137	2014-02-20 07:38:25.671024
23	27	1	\N	2	2014-02-20 07:42:22.772401	2014-02-20 07:42:22.796994
24	28	1	\N	1	2014-02-22 07:13:10.840514	2014-02-22 07:13:10.860634
25	29	1	\N	2	2014-02-22 07:14:46.20102	2014-02-22 07:14:46.220044
26	30	1	\N	2	2014-02-22 07:19:16.714867	2014-02-22 07:19:16.73168
27	31	1	\N	1	2014-02-26 06:44:16.470055	2014-02-26 06:44:16.494059
28	32	1	\N	2	2014-02-26 07:05:22.16518	2014-02-26 07:05:22.200701
29	33	1	\N	1	2014-03-01 07:13:29.023219	2014-03-01 07:13:29.044716
30	34	1	\N	1	2014-03-04 07:34:11.556154	2014-03-04 07:34:11.575537
31	35	1	\N	2	2014-03-04 07:40:19.224471	2014-03-04 07:40:19.245247
32	36	1	\N	1	2014-03-05 07:34:20.617975	2014-03-05 07:34:20.640057
33	37	1	\N	1	2014-03-05 07:50:25.0503	2014-03-05 07:50:25.071373
34	5	\N	\N	2	2014-03-05 08:01:38.084676	2014-03-05 08:01:38.084676
35	7	\N	\N	2	2014-03-05 08:01:38.114536	2014-03-05 08:01:38.114536
36	8	\N	\N	2	2014-03-05 08:01:38.139478	2014-03-05 08:01:38.139478
37	38	\N	\N	2	2014-03-07 08:46:25.414577	2014-03-07 08:46:25.414577
38	39	\N	\N	2	2014-03-07 08:46:25.447258	2014-03-07 08:46:25.447258
39	38	\N	\N	2	2014-03-07 08:47:00.011683	2014-03-07 08:47:00.011683
40	40	1	\N	2	2014-03-08 07:25:22.219333	2014-03-08 07:25:22.241088
41	40	1	\N	2	2014-03-08 07:25:22.830945	2014-03-08 07:25:22.84049
42	41	1	\N	1	2014-03-11 07:06:15.232219	2014-03-11 07:06:15.256481
43	42	1	\N	1	2014-03-11 07:13:43.459765	2014-03-11 07:13:43.483223
44	43	1	\N	2	2014-03-11 07:24:22.646624	2014-03-11 07:24:22.666398
45	44	1	\N	1	2014-03-12 07:12:08.172619	2014-03-12 07:12:08.190245
46	45	1	\N	1	2014-03-12 07:22:50.02999	2014-03-12 07:22:50.051753
47	46	1	\N	1	2014-03-15 07:52:56.953766	2014-03-15 07:52:56.986422
48	47	1	\N	1	2014-03-15 07:58:42.77811	2014-03-15 07:58:42.801961
49	48	1	\N	2	2014-03-18 08:31:05.395053	2014-03-18 08:31:05.418161
50	49	1	\N	1	2014-03-19 07:15:06.191597	2014-03-19 07:15:06.228733
51	50	1	\N	2	2014-03-20 07:16:19.604968	2014-03-20 07:16:19.632965
52	51	1	\N	2	2014-03-21 07:49:43.789151	2014-03-21 07:49:43.808075
53	52	1	\N	1	2014-03-28 07:20:25.136547	2014-03-28 07:20:25.151274
54	53	1	\N	1	2014-03-28 07:25:10.72338	2014-03-28 07:25:10.756487
55	54	1	\N	1	2014-03-28 07:28:24.119476	2014-03-28 07:28:24.140924
56	55	1	\N	1	2014-04-03 07:19:29.484455	2014-04-03 07:19:29.504284
57	56	1	\N	1	2014-04-03 07:23:52.056422	2014-04-03 07:23:52.073177
58	57	1	\N	2	2014-04-03 07:25:23.76481	2014-04-03 07:25:23.786322
59	58	1	\N	2	2014-04-03 07:29:13.522126	2014-04-03 07:29:13.54493
60	59	1	\N	2	2014-04-03 07:30:29.70843	2014-04-03 07:30:29.731476
61	60	1	\N	2	2014-04-03 07:32:56.269772	2014-04-03 07:32:56.293261
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 61, true);


--
-- Data for Name: co_applicant_work_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_work_details (id, co_applicant_business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, co_applicant_id, pincode_id, customer_id, status, document_required, company_name, landmark, city, state, application_ref_no, company_name_new, tab_id) FROM stdin;
1	2	N/A	\N	\N	t	proprietor	2014-02-19	19:08:03	gangadhar	proprietor			9324546346	33	f	SHALINI 	Private LTD.	\N	\N	Owned	\N	\N	\N	\N	Permanent	Others	f	\N	\N	f	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	\N	\N	\N	2014-02-19 13:41:08.120389	2014-02-19 13:41:08.120389	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	clinical	1
2	2	N/A	\N	\N	t	proprietor	2014-02-19	19:08:03	gangadhar	proprietor			9324546346	33	f	SHALINI 	Private LTD.	\N	\N	Owned	\N	\N	\N	\N	Permanent	Others	f	\N	\N	f	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	\N	\N	\N	2014-02-19 13:41:45.256879	2014-02-19 13:41:45.256879	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	clinical	1
3	2	N/A	\N	\N	t	proprietor	2014-02-19	19:08:03	gangadhar	proprietor			9324546346	33	f	SHALINI 	Private LTD.	\N	\N	Owned	\N	\N	\N	\N	Permanent	Others	f	\N	\N	f	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	\N	\N	\N	2014-02-19 13:41:46.220503	2014-02-19 13:41:46.220503	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	clinical	1
4	2	N/A	\N	\N	t	proprietor	2014-02-19	19:08:03	gangadhar	proprietor			9324546346	33	f	SHALINI 	Private LTD.	\N	\N	Owned	\N	\N	\N	\N	Permanent	Others	f	\N	\N	f	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	\N	\N	\N	2014-02-19 13:42:34.393725	2014-02-19 13:42:34.393725	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	clinical	1
5	11	N/A	\N	\N	t	sr manager	2014-03-19	12:42:18	self 					1	\N	RELIANCE INDUSTRY LTD	Others	Others	\N	Owned			\N	\N	Permanent	Senior/Middle Manager	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-03-18 15:04:39.917426	2014-03-19 07:13:08.786758	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		2
\.


--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_work_details_id_seq', 5, true);


--
-- Data for Name: co_applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicants (id, applicant_name, agency_name, document_required, fh_code, landmark, country_name, country_state, country_city, slug, status, customer_id, address, latitude, longitude, application_status, created_at, updated_at, contact_number, application_ref_no, pincode_id, state, d_o_b, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
1	Anita Verma	Scorp Enterprises	f	1003	MIG Colony	INDIA	Maharashtra	\N	anita-verma	verified	3	kurla	19.0719889999999985	72.8840819999999923	RESIDENTIAL	2014-02-05 17:07:56.101526	2014-02-05 17:07:56.101526	\N	1003	1	\N	\N	\N	1	1	0	400070	1
14	PRADEEP PRABHAKAR NAIR	Scorp Enterprises	t	1036		INDIA	Maharashtra	\N	pradeep-prabhakar-nair	submitted	38	702, GANESH DASHAN CHS LTD, KANJURMARG EAST, SHAH COLON ROAD, MUMBAI 42\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-14 08:46:12.243015	2014-02-14 08:46:12.243015	\N	1036	83	\N	\N	\N	45	1	6249	400042	1
15	LAXMI JANARDHAN TUMMA	Scorp Enterprises	t	1046		INDIA	Maharashtra	\N	laxmi-janardhan-tumma	submitted	48	OM SHRI SIDDHIVINAYAK CHS, B-16-2-12, PLOT NO 30, SECTOR 24, JUINAGAR, NAVI MUMBAI 400705\r\n	19.0505795999999989	73.0180204999999916	RESIDENTIAL	2014-02-14 09:10:17.840165	2014-02-14 09:10:17.840165	\N	1046	\N	\N	\N	\N	113	1	14677	400703	2
9	PRAVIN GANPAT KARNIK 	Scorp Enterprises	t	1022		INDIA	Maharashtra	\N	pravin-ganpat-karnik	submitted	24	ROOM NO 10,  BLD NO 1,BPT COLONY , EKTA NAGAR DOCKYARD ROAD WADI , BANDAR MUMBAI 10\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-13 10:08:24.684658	2014-02-13 10:08:24.684658	\N	1022	12	\N	\N	\N	34	1	1131	400010	1
10	SHIVKUMAR KUBADIRAM PARCHA 	Scorp Enterprises	t	1023		INDIA	Maharashtra	\N	shivkumar-kubadiram-parcha	submitted	25	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n	19.0493282999999991	72.8294843999999983	RESIDENTIAL	2014-02-13 10:10:02.989641	2014-02-13 10:10:02.989641	\N	1023	74	\N	\N	\N	34	1	1131	400071	1
11	SANJIVANI ARUN ALAT	Scorp Enterprises	t	1025		INDIA	Maharashtra	\N	sanjivani-arun-alat	submitted	27	ROOM NO 28,CHAWL NO 4, TRANSIT CAMP , BEHIND BLDG NO 49 & 50, SUBHASH NAGAR CHEMBUR 400071 .\r\n	19.0582606000000006	72.9054519999999968	RESIDENTIAL	2014-02-13 10:13:38.140173	2014-02-13 10:13:38.140173	\N	1025	74	\N	\N	\N	34	1	1131	400071	1
2	VASUDEO VAIKUNTH NARVEKAR	Scorp Enterprises	f	1008		INDIA	Maharashtra	\N	vasudeo-vaikunth-narvekar	verified	9	1202, BANGASHREE TOWER CO-KOP HSG SOC LTD, DAJI RAMCHANDRA ROAD, NEAR MAKHMALI TALAO, CHARAI, THANE WEST 400601\r\n	19.1985422999999997	72.9748447999999996	RESIDENTIAL	2014-02-13 06:56:41.517906	2014-02-13 06:56:41.517906	\N	1008	109	\N	\N	\N	70	1	4498	400601	1
25	SINDHU MARUTIRAI PATIL	Scorp Enterprises	t	1093		INDIA	Maharashtra	\N	sindhu-marutirai-patil	verified	95	B-13, SHIVSHAKTI, 6TH FLOOR, BEHIND MC DONALDS, SECTOR 17, VASHI, NAVI MUMBAI 400703\r\n	19.0723057999999988	73.0006774000000007	RESIDENTIAL	2014-02-20 07:35:33.25383	2014-02-20 07:35:33.25383	\N	1093	\N	\N	\N	\N	113	1	14677	400703	2
16	SUBHASH PUNDALIK GHOLAP	Scorp Enterprises	t	1047		INDIA	Maharashtra	\N	subhash-pundalik-gholap	submitted	49	AISHWARYA CHS, F-7/2:1, SECTOR 7, SANPADA, NEAR NEWAY HOSPITAL, NAVI MUMBAI 400705\r\n	19.0574665000000003	73.0110095999999942	RESIDENTIAL	2014-02-14 09:54:53.966958	2014-02-14 09:54:53.966958	\N	1047	\N	\N	\N	\N	113	1	14677	400705	2
13	MADHURJYA BANERJEE	Scorp Enterprises	t	1034		INDIA	Maharashtra	\N	madhurjya-banerjee	verified	36	1103, C-WING, LAKE PRIMROSE, LAKE HOMES, POWAI, MUMBAI 76\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-14 08:27:25.048047	2014-02-14 08:27:25.048047	\N	1034	80	\N	\N	\N	14	1	4380	400076	1
12	SONAL NIRMAL MEHTA	Scorp Enterprises	t	1033		INDIA	Maharashtra	\N	sonal-nirmal-mehta	verified	35	A/502, PADMAVATI NAGAR, DIN DAYAL UPADHYAY MARG, MULUND WEST, NEAR CROMA SHOW ROOM, MUMBAI 80\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-14 08:25:25.615859	2014-02-14 08:25:25.615859	\N	1033	85	\N	\N	\N	14	1	4380	400080	1
4	AKSHADA DHUME	Scorp Enterprises	t	1009		INDIA	Maharashtra	\N	akshada-dhume	verified	11	C2-104, KHAMAJ CHS, KAVYADHARA COMPLEX, DHOKALI KOLSHET RD, KAVYADHARA COMPLEX, THANE 400607\r\n	19.2392834000000015	72.9873923999999903	RESIDENTIAL	2014-02-13 07:03:57.524474	2014-02-13 07:03:57.524474	\N	1009	\N	\N	\N	\N	70	1	4498	400607	3
6	RANJANA GUPTA	Scorp Enterprises	f	1011		INDIA	Maharashtra	\N	ranjana-gupta	submitted	13	FLAT NO 402, FAIRFIELD-B, LODHA LUXURIA, MAJEWADA, LODHA COMPLEX, THANE 400601\r\n	19.201050200000001	72.9785352999999901	RESIDENTIAL	2014-02-13 08:03:45.676474	2014-02-13 08:03:45.676474	\N	1011	\N	\N	\N	\N	70	1	4498	400601	3
20	SHARMISHTHA VAIBHAV BHOSLE 	Scorp Enterprises	t	1058		INDIA	Maharashtra	\N	sharmishtha-vaibhav-bhosle	verified	60	G/S, GURUPUSHYAMROT CHS, VIDYALAYA ROAD , MUMBAI MULUND E GAVANPADA MUMABAI 400081\r\n	19.1706630000000011	72.9642341999999928	RESIDENTIAL	2014-02-17 07:06:58.542072	2014-02-17 07:06:58.588866	\N	1058	86	\N	\N	\N	34	1	1131	400081	1
18	VIDHYA VIVEKANAND	Scorp Enterprises	t	1054		INDIA	Maharashtra	\N	vidhya-vivekanand	verified	56	BLDG A2, FLAT NO 31, HIGHLAND PARK, NR JAI SHASTRI NGR MULUND COLONY, MULUND WEST \r\n	19.1688690000000008	72.934983299999999	RESIDENTIAL	2014-02-17 06:57:53.949307	2014-02-17 06:57:53.983542	\N	1054	85	\N	\N	\N	34	1	1131	400080	1
21	YASHA GUPTA	Scorp Enterprises	t	1065		INDIA	Maharashtra	\N	yasha-gupta	submitted	67	FLAT NO A-1101, BHUMIRAJ IRAISA, RELIANCE PETROL PUMP, SECTOR 19, SANPADA, NAVI MUMBAI 400705\r\n	19.0539187000000005	73.0076885999999945	RESIDENTIAL	2014-02-17 07:30:38.177621	2014-02-17 07:30:38.177621	\N	1065	\N	\N	\N	\N	113	1	14677	400705	2
5	GAJANAN VISHNU SOMAVANSHI	Scorp Enterprises	t	1010		INDIA	Maharashtra	\N	gajanan-vishnu-somavanshi	submitted	12	B/402 MARTAND APT, DAMODAR VITAVKAR MARG, VITAVA, THANE 400605\r\n	19.1943854000000016	72.99920130000001	RESIDENTIAL	2014-02-13 08:01:15.645214	2014-02-13 08:01:15.645214	\N	1010	\N	\N	\N	\N	70	1	4498	400605	3
17	ANUPAMA ASHOK ANERAO	Scorp Enterprises	t	1053		INDIA	Maharashtra	\N	anupama-ashok-anerao	verified	55	13, RUKMINI NIWAS CHAWL, NARDAS NAGAR, PANDAV KUND PATH, ICHHAPURTI GANESH MANDIR, BHANDULP WEST, MUMBAI 78\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-17 06:55:54.787508	2014-02-17 06:55:54.864974	\N	1053	83	\N	\N	\N	34	1	1131	400078	1
19	SHWETA BHAGYESH BHAVE	Scorp Enterprises	t	1056		INDIA	Maharashtra	\N	shweta-bhagyesh-bhave	verified	58	C- 1603, LAVENDER , BULIDING  , SPLENDOOR ,L.B.S.ROAD , OPP MAGNET MALL BHANDUP W ,MUMBAI 400078\r\n	19.1499009999999998	72.9311340000000001	RESIDENTIAL	2014-02-17 07:03:23.966753	2014-02-17 07:03:24.006742	\N	1056	83	\N	\N	\N	34	1	1131	400078	1
24	PRATIMA AMOL KOKATE	Scorp Enterprises	t	1085		INDIA	Maharashtra	\N	pratima-amol-kokate	submitted	87	22, CREEK  VIEW CHS, PLOT NO 33/34, SECTOR 9A, VASHI, NAVI MUMBAI 400703\r\n	19.0762569999999982	72.9951890999999904	RESIDENTIAL	2014-02-19 09:02:08.280384	2014-02-19 09:02:08.280384	\N	1085	\N	\N	\N	\N	113	1	14677	400703	2
22	ANWAR ALAM MOHAMMED TAHIR KHAN	Scorp Enterprises	t	1071		INDIA	Maharashtra	\N	anwar-alam-mohammed-tahir-khan	verified	73	ROOM NO 5, BEHIND SUHEL MECH WORKS AZAD NAGAR, GHATKOPAR W, MUMBAI 86\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-19 07:42:35.361021	2014-02-19 07:42:35.411406	\N	1071	82	\N	\N	\N	34	1	1131	400077	1
26	PRIYANKA NASKAR	Scorp Enterprises	t	1094		INDIA	Maharashtra	\N	priyanka-naskar	verified	96	FLAT NO 303, SAI RAM BUILDING, PLOT NO 775, SECTOR 19, KOPARKHAIRANE, NEAR TEEN TANKI & GANESH MANDIR, NAVI MUMBAI\r\n	19.0330487999999995	73.0296625000000006	RESIDENTIAL	2014-02-20 07:38:10.17383	2014-02-20 07:38:10.17383	\N	1094	\N	\N	\N	\N	113	1	14677	400705	2
23	MEENA G WAGH	Scorp Enterprises	t	1076		INDIA	Maharashtra	\N	meena-g-wagh	verified	78	A-5, VASANT VILLA, AMRUTNAGAR, GHATKOPAR WEST, MUMBAI 86\r\n	19.1016785999999996	72.9106553000000019	RESIDENTIAL	2014-02-19 07:56:24.910992	2014-02-19 07:56:24.953043	\N	1076	82	\N	\N	\N	34	1	1131	400077	1
7	MRS. NAVYA M.P.	Scorp Enterprises	t	1013		INDIA	Maharashtra	\N	mrs-navya-m-p	submitted	15	B-6001, OLIVE SHALLOTS, SEC-16A, PLOT-17, PALM BEACH ROAD, NEAR SBI SANPADA BRANCH, NAVI MUMBAI 400705\r\n	19.0637934999999992	73.0066446999999954	RESIDENTIAL	2014-02-13 08:11:50.516293	2014-02-13 08:11:50.516293	\N	1013	\N	\N	\N	\N	86	1	5141	400703	2
8	NILIMA PAWAR	Scorp Enterprises	t	1015		INDIA	Maharashtra	\N	nilima-pawar	submitted	17	GHARONDA, F-21, 104, SECTOR 9, GHANSOLI, OPP NEW CITY SCHOOL, NAVI MUMBAI 400701\r\n	19.1264800999999984	73.0110095999999942	RESIDENTIAL	2014-02-13 09:31:40.807405	2014-02-13 09:31:40.807405	\N	1015	\N	\N	\N	\N	113	1	14677	400701	2
27	SANDEEP EKNATH GHADGE	Scorp Enterprises	t	1097		INDIA	Maharashtra	\N	sandeep-eknath-ghadge	submitted	99	FLAT NO 602, SWARAJ PLANET, PLOT NO 392 & 393, SECTOR 19, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-02-20 07:42:10.05661	2014-02-20 07:42:10.05661	\N	1097	\N	\N	\N	\N	113	1	14677	400709	2
29	GORAKH PRASAD	Scorp Enterprises	t	1101		INDIA	Maharashtra	\N	gorakh-prasad	submitted	103	FAM CHS 401/25, SECTOR 11, KALAS UDYAN, KOPERKHAIRANE 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-02-22 07:14:33.429335	2014-02-22 07:14:33.429335	\N	1101	\N	\N	\N	\N	34	1	1131	400709	2
30	RAJESH K SINHA	Scorp Enterprises	t	1103		INDIA	Maharashtra	\N	rajesh-k-sinha	submitted	105	FLAT NO 702, BHOOMI OSCAR, PLOT NO 16/17, SECTOR 9, GHANSOLI, NEAR GHARONDA, NAVI MUMBAI 400701\r\n	19.1264800999999984	73.0110095999999942	RESIDENTIAL	2014-02-22 07:19:02.049166	2014-02-22 07:19:02.049166	\N	1103	\N	\N	\N	\N	113	1	14677	4000701	2
37	MONA LALWANI	Scorp Enterprises	t	1124		INDIA	Maharashtra	\N	mona-lalwani	submitted	126	FLAT NO 406, PANCHVATI A WING, PANCH SHRISHTI COMPLEX, CHANDIVALI, POWAI, NEAR S M SHETTY SCHOOL, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	RESIDENTIAL	2014-03-05 07:50:18.476897	2014-03-05 07:50:18.514707	\N	1124	80	\N	\N	\N	34	1	1131	400076	1
28	AMIT GUPTA	Scorp Enterprises	t	1100		INDIA	Maharashtra	\N	amit-gupta	verified	102	B-706 EDEN 2, HIRANANDANI GARDENS, POWAI, OPPOSITE JANTA BAKERS, MUMBAI \r\n	\N	\N	RESIDENTIAL	2014-02-22 07:13:04.808902	2014-02-22 07:13:04.844459	\N	1100	80	\N	\N	\N	34	1	1131	400076	1
31	MONA KUMAR 	Scorp Enterprises	t	1104		INDIA	Maharashtra	\N	mona-kumar	submitted	106	FLAT NO -101, BLDG-19, SIDDHANCHL PHAS E  , THANE 400610\r\n	19.2291664000000004	72.9649649999999923	RESIDENTIAL	2014-02-26 06:44:04.419776	2014-02-26 06:44:04.419776	\N	1104	\N	\N	\N	\N	70	1	4498	400610	3
32	MURTUZA HUSAINY KHAMBATY	Scorp Enterprises	t	1107		INDIA	Maharashtra	\N	murtuza-husainy-khambaty	submitted	109	FLAT NO C-501, SUN PALM VIEW, PLOT NO 1/1A, SECTOR 15, PALM BEACH ROAD, SANPADA, NEAR SURAJ HOSPITAL, NAVI MUMBAI 400705\r\n	19.0574665000000003	73.0110095999999942	RESIDENTIAL	2014-02-26 07:05:10.399502	2014-02-26 07:05:10.399502	\N	1107	\N	\N	\N	\N	113	1	14677	400705	2
33	SIVASATYA RAMA  KRISHNAN 	Scorp Enterprises	t	1109		INDIA	Maharashtra	\N	sivasatya-rama-krishnan	submitted	111	F7/56, GODREJ HILLSIDE COLONY VIKHROLI W MUMBAI 400079\r\n	19.1099597999999986	72.921763999999996	RESIDENTIAL	2014-03-01 07:13:07.532005	2014-03-01 07:13:07.568381	\N	1109	84	\N	\N	\N	34	1	1131	400079	1
34	MAHESH MARUTI JADHAV 	Scorp Enterprises	t	1119		INDIA	Maharashtra	\N	mahesh-maruti-jadhav	submitted	121	1 A 33, KALPATARU AURA, LBS RUAD OPP , R CITY MALL GHATKOPAR  MUMBAI 400086\r\n	19.0865009999999984	72.8888390000000044	RESIDENTIAL	2014-03-04 07:34:04.373747	2014-03-04 07:34:04.411552	\N	1119	82	\N	\N	\N	34	1	1131	400077	1
35	SHISHIR CHANDRA GUPTA	Scorp Enterprises	t	1120		INDIA	Maharashtra	\N	shishir-chandra-gupta	submitted	122	FLAT NO 502, CHHADVA AVENUE, PLOT NO 61, SECTOR 2A, TERNA BUS STOP, KOPARKHAIRANE, NEAR MAHAPE BRIDGE, NAVI MUMBAI 400709\r\n	19.1109144999999998	73.0013206999999937	RESIDENTIAL	2014-03-04 07:40:05.782376	2014-03-04 07:40:05.782376	\N	1120	\N	\N	\N	\N	113	1	14677	400709	2
38	SUREKHA SADASHIV PATIL	Scorp Enterprises	t	1132		INDIA	Maharashtra	\N	surekha-sadashiv-patil	submitted	134	A22 / 3:4, POOJA CHS, OPP WELCOME SWEET MART, SECTOR 15, AIROLI, NAVI MUMBAI 400708\r\n	19.1500810000000001	72.9907137000000006	RESIDENTIAL	2014-03-07 08:21:33.400572	2014-03-07 08:21:33.400572	\N	1132	\N	\N	\N	\N	113	1	14677	4000708	2
36	RITA KAMLESH HEMANI 	Scorp Enterprises	t	1123		INDIA	Maharashtra	\N	rita-kamlesh-hemani	submitted	125	104 SHREE RAJSHREE VIHAR , CHITTARANJAN NAGAR D COLONY RAJAWADI , VIDYAVIHAR E 400070\r\n	19.0707531999999986	72.878132199999996	RESIDENTIAL	2014-03-05 07:34:14.850992	2014-03-05 07:34:14.891326	\N	1123	81	\N	\N	\N	34	1	1131	400077	1
39	MINAL AJIT MHAPANKAR	Scorp Enterprises	t	1133		INDIA	Maharashtra	\N	minal-ajit-mhapankar	submitted	135	306, A/12 SIDDHIVINAYAK SOC, SEC-9, GHARONDA, GHANSOLI, 400701\r\n	19.1272720000000014	72.9966780000000028	RESIDENTIAL	2014-03-07 08:22:58.304523	2014-03-07 08:22:58.304523	\N	1133	\N	\N	\N	\N	14	1	4380	400701	2
40	MANJU DEVI  CHOUDHARY 	Scorp Enterprises	t	1141		INDIA	Maharashtra	\N	manju-devi-choudhary	submitted	143	CHAMUNDA ENCLAVE, FLAT NO 302, PLOT NO 89, SECTOR 8A, AIROLI , NAVI MUMBAI -708\r\n	19.1431265999999987	72.9969871999999924	RESIDENTIAL	2014-03-08 07:25:10.209895	2014-03-08 07:25:10.209895	\N	1141	\N	\N	\N	\N	14	1	4380	400708	2
41	KANAN CHOURASIA	Scorp Enterprises	t	1155		INDIA	Maharashtra	\N	kanan-chourasia	submitted	157	B-804 GUNDECHA ALTURA,OPP ST.XAVIER SCHOOL,LBS MARG,KANJURMARG WEST MUMBAI 400078\r\n	\N	\N	RESIDENTIAL	2014-03-11 07:06:08.306508	2014-03-11 07:06:08.349668	\N	1155	80	\N	\N	\N	14	1	4380	400076	1
42	INDERPAL CHAND BHANDARI	Scorp Enterprises	t	1156		INDIA	Maharashtra	\N	inderpal-chand-bhandari	submitted	158	E/13, MAMTA APT, LBS RD, OPP SANTOSHI MATA MANDIR, MULUNS W\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-03-11 07:13:37.375056	2014-03-11 07:13:37.40912	\N	1156	85	\N	\N	\N	14	1	4380	400080	1
44	PRAVEENTA SINGH	Scorp Enterprises	t	1162		INDIA	Maharashtra	\N	praveenta-singh	submitted	164	A-1002 GUNDECHA HILLS,NEAR SM SHETTY SCHOOL,CHANDIVALI ROAD POWAI MUMBAI 400072\r\n	19.1136561	72.9035368999999918	RESIDENTIAL	2014-03-12 07:12:01.840817	2014-03-12 07:12:01.866722	\N	1162	80	\N	\N	\N	34	1	1131	400076	1
46	SMT  SHILPA MANGAL	Scorp Enterprises	t	1186		INDIA	Maharashtra	\N	smt-shilpa-mangal	submitted	188	"FLAT  NO 502, MERCURY,  SUNCITY COMPLEX,  POWAI , MUMBAI -400076\r\n"\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-03-15 07:52:50.621123	2014-03-15 07:52:50.65425	\N	1186	80	\N	\N	\N	81	1	1109	400076	1
45	HIRABAI S GADEKAR	Scorp Enterprises	t	1165		INDIA	Maharashtra	\N	hirabai-s-gadekar	submitted	167	DOKE BAINDER CHAWL, ROOM NO 6, GOLIBAR RD, NEELKAMAL MITRA MADAL, GHATKOPARW\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-03-12 07:22:41.46761	2014-03-12 07:22:41.504799	\N	1165	82	\N	\N	\N	34	1	1131	400077	1
47	Mr Amit Vilas Narkhede	Scorp Enterprises	t	1187		INDIA	Maharashtra	\N	mr-amit-vilas-narkhede	submitted	189	1 B/H Near Hanuman Mandir Saraswati Chawl,Waman Master wadi Nityanand Nagar Ghatkopar west\r\n	19.0951711000000017	72.9157883999999967	RESIDENTIAL	2014-03-15 07:58:37.233343	2014-03-15 07:58:37.269645	\N	1187	82	\N	\N	\N	27	1	7124	400077	1
49	VINITHA DINESH	Scorp Enterprises	t	1203		INDIA	Maharashtra	\N	vinitha-dinesh	submitted	205	FLAT NO 11, UDYAN CHS, SAINATH NAGAR LANE, OFF LBS MARG, GHATKOPAR, MUMBAI 400086\r\n	19.0872402000000001	72.9015430999999978	RESIDENTIAL	2014-03-19 07:15:00.297434	2014-03-19 07:15:00.3473	\N	1203	82	\N	\N	\N	113	1	14677	400077	1
50	MANISH LAXMIDAS PATIL	Scorp Enterprises	t	1209		INDIA	Maharashtra	\N	manish-laxmidas-patil	submitted	211	FLAT NO B-301, SHIVNER PLAZA, PLOT NO 8, SECTOR 15, NEAR PALM BEACH ROAD, NEAR SADHU VASWANI INTERNATIONAL SCHOOL, SANPADA, NAVI MUMBAI 400705\r\n	19.0606201999999989	73.0139616000000018	RESIDENTIAL	2014-03-20 07:15:58.619703	2014-03-20 07:15:58.619703	\N	1209	\N	\N	\N	\N	113	1	14677	400705	2
48	ROHIT KUMAR	Scorp Enterprises	t	1201		INDIA	Maharashtra	\N	rohit-kumar	verified	203	LAKE VIEW CO OPRATIVE SOC, H 6, 1/1, SECTOR 14 AIROLI , NEAR NATION BURN CENTRE, AIROLI 400708 \r\n	19.1511828999999985	72.9996314999999925	RESIDENTIAL	2014-03-18 08:30:05.400746	2014-03-18 08:30:05.400746	\N	1201	\N	\N	\N	\N	70	1	4498	400708	2
51	SANDEEP MISHRA	Scorp Enterprises	t	1223		INDIA	Maharashtra	\N	sandeep-mishra	submitted	225	FLAT NO A 401, SAWAN ELEGANCE CHS, PLOT NO 68/69, SECTOR 2A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-03-21 07:49:32.843364	2014-03-21 07:49:32.843364	\N	1223	\N	\N	\N	\N	113	1	14677	400709	2
52	MANGAL SANJAY LANDGE	Scorp Enterprises	t	1225		INDIA	Maharashtra	\N	mangal-sanjay-landge	submitted	227	A/1, SHANKAR SOCIETY, ASALFA VILLAGE, SHIVAJI NAGAR, GHATKOPAR (W), MUMBAI 400084\r\n	19.0975710999999997	72.9032369999999901	RESIDENTIAL	2014-03-28 07:20:16.929112	2014-03-28 07:20:16.963026	\N	1225	82	\N	\N	\N	113	1	14677	400077	1
43	NEHA RAMESH YADAV	Scorp Enterprises	t	1159		INDIA	Maharashtra	\N	neha-ramesh-yadav	verified	161	FLAT NO C-401, TWINS HALLMARK, PLOT NO A83-A87, SECTOR 19, KOPARKHAIRANE, OPP RANA DEVI TEMPLE, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-03-11 07:24:09.253152	2014-03-11 07:24:09.253152	\N	1159	\N	\N	\N	\N	113	1	14677	400709	2
53	SUDHIR RAMNIKLAL GANDHI 	Scorp Enterprises	t	1226		INDIA	Maharashtra	\N	sudhir-ramniklal-gandhi	submitted	228	B/5, JAY BANDHU,90, FEET ROAD, GARODIA NAGAR,GHATKOPAR E \r\n	19.0856491000000013	72.9082207000000011	RESIDENTIAL	2014-03-28 07:25:05.465858	2014-03-28 07:25:05.516924	\N	1226	81	\N	\N	\N	34	1	1131	400077	1
54	ANKUR SINGLA	Scorp Enterprises	t	1227		INDIA	Maharashtra	\N	ankur-singla	submitted	229	B-306, AASHISH CHS LTD, AMRUT NAGAR , GHATKOPAR W BANK OF INDIA MUMABI 400086\r\n	19.0971164999999985	72.91357339999999	RESIDENTIAL	2014-03-28 07:28:17.66227	2014-03-28 07:28:17.701086	\N	1227	82	\N	\N	\N	34	1	1131	400077	1
55	PUSHPAVATHI KAUNDAR	Scorp Enterprises	t	1228		INDIA	Maharashtra	\N	pushpavathi-kaundar	submitted	230	B-204, PARIMAL PARK, HARI OM NAGAR, MULUND W 81\r\n	19.1760480000000015	72.973247299999997	RESIDENTIAL	2014-04-03 07:19:11.314405	2014-04-03 07:19:11.351219	\N	1228	85	\N	\N	\N	14	1	4380	400080	1
56	Mr Shantaram G Shinde 	Scorp Enterprises	t	1231		INDIA	Maharashtra	\N	mr-shantaram-g-shinde	submitted	233	B/4 DEENDAYAL NAGARNAVGHAR ROAD OPP LAXMIBHAI SCHOOL MULUND EASTMUMBAI-400081\r\n	\N	\N	RESIDENTIAL	2014-04-03 07:23:37.475577	2014-04-03 07:23:37.515296	\N	1231	86	\N	\N	\N	62	1	4210	400081	1
57	SMT TARUNA KHADKA	Scorp Enterprises	t	1232		INDIA	Maharashtra	\N	smt-taruna-khadka	submitted	234	FLAT NO 201, SECTOR 24, PLOT NO 261, SECT 22, BEHIND HOTEL SHIKARA, TURBHEGAON, \r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-04-03 07:25:11.83032	2014-04-03 07:25:11.83032	\N	1232	\N	\N	\N	\N	14	1	4380	400703	2
58	Ms. Varsha Talati 	Scorp Enterprises	t	1234		INDIA	Maharashtra	\N	ms-varsha-talati	submitted	236	A/2, GALAXY CHS, PLOT NO. 30, GROUND FLOOR, SECTOR- 2, VASHI, NAVI MUMBAI. NEAR NAVRATNA HOTEL\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-04-03 07:29:02.121194	2014-04-03 07:29:02.121194	\N	1234	\N	\N	\N	\N	90	1	3736	400705	2
59	MANISHA DIPAK KACHA	Scorp Enterprises	t	1235		INDIA	Maharashtra	\N	manisha-dipak-kacha	submitted	237	ROOM NO. 02, BLDG NO. B 1, M S E B COLONY, SECTOR 3, VASHI, NAVI MUMBAI 400703\r\n	19.0735104	72.994404000000003	RESIDENTIAL	2014-04-03 07:30:18.769253	2014-04-03 07:30:18.769253	\N	1235	\N	\N	\N	\N	113	1	14677	400703	2
60	ANJU NAVEEN GEORGE	Scorp Enterprises	t	1237		INDIA	Maharashtra	\N	anju-naveen-george	submitted	239	101 SHRI KARAN CHS, PLOT NO. 91, SECTOR 17, KOPARKHAIRANE, MUNCIPALTY HOSPITAL, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-04-03 07:32:46.033497	2014-04-03 07:32:46.033497	\N	1237	\N	\N	\N	\N	113	1	14677	400709	2
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 60, true);


--
-- Data for Name: customer_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_documents (id, customer_id, photo, photo_name, created_at, updated_at, servey_id) FROM stdin;
1	2	9325782441_8aa0d6d02e_o.jpg	\N	2014-02-05 06:24:09.451338	2014-02-05 06:24:09.451338	1
3	3	customer-service-1024x682.jpg	\N	2014-02-06 12:14:09.4793	2014-02-06 12:14:09.4793	3
4	3	customer-engagement.jpg	\N	2014-02-06 12:14:09.508894	2014-02-06 12:14:09.508894	3
5	5	1391838905451.jpg	\N	2014-02-08 05:58:09.85062	2014-02-08 05:58:09.85062	4
7	9	\N	\N	2014-02-13 08:48:29.652349	2014-02-13 08:48:29.652349	6
8	13	\N	\N	2014-02-13 09:50:06.623022	2014-02-13 09:50:06.623022	7
9	11	\N	\N	2014-02-14 05:37:59.035771	2014-02-14 05:37:59.035771	8
10	36	\N	\N	2014-02-14 10:34:05.302351	2014-02-14 10:34:05.302351	9
11	37	\N	\N	2014-02-14 10:41:40.098583	2014-02-14 10:41:40.098583	10
12	35	\N	\N	2014-02-14 10:42:59.851093	2014-02-14 10:42:59.851093	11
13	29	\N	\N	2014-02-14 10:46:39.211642	2014-02-14 10:46:39.211642	12
14	69	\N	\N	2014-02-17 12:07:15.592833	2014-02-17 12:07:15.592833	13
15	55	\N	\N	2014-02-17 13:36:32.362454	2014-02-17 13:36:32.362454	14
16	56	\N	\N	2014-02-17 13:40:24.919404	2014-02-17 13:40:24.919404	15
17	58	\N	\N	2014-02-17 13:45:01.587008	2014-02-17 13:45:01.587008	16
18	60	\N	\N	2014-02-17 13:48:59.925018	2014-02-17 13:48:59.925018	17
19	73	\N	\N	2014-02-19 13:17:42.5567	2014-02-19 13:17:42.5567	18
20	73	\N	\N	2014-02-19 13:18:02.995097	2014-02-19 13:18:02.995097	19
21	78	\N	\N	2014-02-19 13:34:33.775025	2014-02-19 13:34:33.775025	20
22	78	\N	\N	2014-02-19 13:34:50.175033	2014-02-19 13:34:50.175033	21
23	78	\N	\N	2014-02-19 13:35:26.891194	2014-02-19 13:35:26.891194	22
24	79	\N	\N	2014-02-20 03:33:11.236173	2014-02-20 03:33:11.236173	23
25	79	\N	\N	2014-02-20 03:33:11.296367	2014-02-20 03:33:11.296367	24
26	80	\N	\N	2014-02-20 03:37:58.362512	2014-02-20 03:37:58.362512	25
27	98	\N	\N	2014-02-20 10:10:19.678898	2014-02-20 10:10:19.678898	26
28	95	\N	\N	2014-02-20 10:19:50.439562	2014-02-20 10:19:50.439562	27
29	90	\N	\N	2014-02-20 15:38:27.247284	2014-02-20 15:38:27.247284	28
30	75	\N	\N	2014-02-20 16:05:25.22042	2014-02-20 16:05:25.22042	29
31	96	\N	\N	2014-02-21 04:51:39.936752	2014-02-21 04:51:39.936752	30
32	101	\N	\N	2014-02-24 05:33:27.431261	2014-02-24 05:33:27.431261	31
33	102	\N	\N	2014-02-24 05:36:14.50249	2014-02-24 05:36:14.50249	32
34	100	\N	\N	2014-02-24 05:43:30.161366	2014-02-24 05:43:30.161366	33
35	123	\N	\N	2014-03-04 12:41:11.729538	2014-03-04 12:41:11.729538	34
36	130	\N	\N	2014-03-07 14:25:54.576305	2014-03-07 14:25:54.576305	35
37	146	\N	\N	2014-03-10 11:18:13.214581	2014-03-10 11:18:13.214581	36
38	155	\N	\N	2014-03-10 11:57:06.189764	2014-03-10 11:57:06.189764	37
39	131	\N	\N	2014-03-10 14:45:58.526903	2014-03-10 14:45:58.526903	38
40	175	\N	\N	2014-03-12 11:02:24.748745	2014-03-12 11:02:24.748745	39
41	176	\N	\N	2014-03-12 11:04:22.088818	2014-03-12 11:04:22.088818	40
42	162	\N	\N	2014-03-12 11:08:21.601164	2014-03-12 11:08:21.601164	41
43	161	\N	\N	2014-03-12 11:11:05.119259	2014-03-12 11:11:05.119259	42
44	202	\N	\N	2014-03-18 14:43:06.445935	2014-03-18 14:43:06.445935	43
45	203	\N	\N	2014-03-18 14:48:01.634723	2014-03-18 14:48:01.634723	44
46	200	\N	\N	2014-03-19 04:32:38.389746	2014-03-19 04:32:38.389746	45
47	215	\N	\N	2014-03-20 13:00:13.622068	2014-03-20 13:00:13.622068	46
48	216	1395387205227.jpg	\N	2014-03-21 07:35:34.636897	2014-03-21 07:35:34.636897	47
49	229	\N	\N	2014-04-01 09:51:21.373495	2014-04-01 09:51:21.373495	48
50	229	\N	\N	2014-04-01 09:51:51.744312	2014-04-01 09:51:51.744312	49
51	229	\N	\N	2014-04-01 09:56:23.341705	2014-04-01 09:56:23.341705	50
52	240	\N	\N	2014-04-04 06:46:07.500551	2014-04-04 06:46:07.500551	51
53	239	\N	\N	2014-04-09 10:26:32.50572	2014-04-09 10:26:32.50572	52
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 53, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
1	1	2	2	2014-02-05 06:22:48.485559	2014-02-05 06:22:48.508745	\N	\N	\N
2	1	3	1	2014-02-05 17:06:52.948079	2014-02-05 17:06:52.965255	\N	\N	\N
48	1	73	1	2014-02-19 07:37:15.29272	2014-02-19 07:37:15.317254	\N	\N	\N
4	1	4	2	2014-02-07 13:34:31.203756	2014-02-07 13:34:31.215269	\N	\N	\N
5	5	5	2	2014-02-08 05:45:36.682847	2014-02-08 05:49:05.168636	\N	\N	\N
49	1	74	1	2014-02-19 07:44:35.81442	2014-02-19 07:44:35.834188	\N	\N	\N
50	1	75	1	2014-02-19 07:47:04.644498	2014-02-19 07:47:04.668849	\N	\N	\N
8	1	9	1	2014-02-13 06:55:07.551239	2014-02-13 06:55:07.573613	\N	\N	\N
51	1	78	1	2014-02-19 07:55:07.559151	2014-02-19 07:55:07.580464	\N	\N	\N
10	1	11	1	2014-02-13 07:03:28.394601	2014-02-13 07:03:28.417287	\N	\N	\N
11	1	12	1	2014-02-13 07:59:11.715081	2014-02-13 07:59:11.736953	\N	\N	\N
12	1	13	1	2014-02-13 08:03:00.234591	2014-02-13 08:03:00.254004	\N	\N	\N
52	1	79	1	2014-02-19 08:04:27.818568	2014-02-19 08:04:27.843434	\N	\N	\N
13	1	15	2	2014-02-13 08:10:28.92118	2014-02-13 09:33:26.407715	\N	\N	\N
14	1	17	2	2014-02-13 09:27:31.439848	2014-02-13 09:34:22.449692	\N	\N	\N
15	1	19	3	2014-02-13 09:53:53.996361	2014-02-13 09:53:54.023385	\N	\N	\N
16	1	20	3	2014-02-13 09:56:51.205077	2014-02-13 09:56:51.231076	\N	\N	\N
17	1	21	3	2014-02-13 09:58:05.881302	2014-02-13 09:58:05.910783	\N	\N	\N
18	1	22	3	2014-02-13 10:01:55.592876	2014-02-13 10:01:55.61063	\N	\N	\N
19	1	23	3	2014-02-13 10:04:00.298952	2014-02-13 10:04:00.317962	\N	\N	\N
20	1	24	3	2014-02-13 10:07:48.872872	2014-02-13 10:07:48.894189	\N	\N	\N
21	1	25	3	2014-02-13 10:09:32.435148	2014-02-13 10:09:32.45483	\N	\N	\N
22	1	26	3	2014-02-13 10:12:03.535922	2014-02-13 10:12:03.555385	\N	\N	\N
23	1	27	3	2014-02-13 10:13:06.037279	2014-02-13 10:13:06.070172	\N	\N	\N
24	1	29	1	2014-02-14 08:08:35.525126	2014-02-14 08:08:35.545989	\N	\N	\N
25	1	30	1	2014-02-14 08:09:23.945804	2014-02-14 08:09:23.967111	\N	\N	\N
26	1	32	1	2014-02-14 08:20:45.911079	2014-02-14 08:20:45.932109	\N	\N	\N
27	1	33	1	2014-02-14 08:21:39.27368	2014-02-14 08:21:39.298501	\N	\N	\N
28	1	34	1	2014-02-14 08:23:02.334229	2014-02-14 08:23:02.353464	\N	\N	\N
29	1	35	1	2014-02-14 08:24:38.00994	2014-02-14 08:24:38.03011	\N	\N	\N
30	1	36	1	2014-02-14 08:27:00.410538	2014-02-14 08:27:00.430778	\N	\N	\N
31	1	37	1	2014-02-14 08:35:46.189833	2014-02-14 08:35:46.20963	\N	\N	\N
32	1	38	1	2014-02-14 08:43:49.704693	2014-02-14 08:43:49.728323	\N	\N	\N
33	1	44	2	2014-02-14 08:59:41.861249	2014-02-14 08:59:41.879995	\N	\N	\N
34	1	47	2	2014-02-14 09:06:48.514593	2014-02-14 09:06:48.536327	\N	\N	\N
35	1	48	2	2014-02-14 09:09:37.119838	2014-02-14 09:09:37.144025	\N	\N	\N
36	1	49	2	2014-02-14 09:53:47.006345	2014-02-14 09:53:47.026785	\N	\N	\N
37	1	52	1	2014-02-17 06:49:02.898601	2014-02-17 06:49:02.957157	\N	\N	\N
38	1	53	1	2014-02-17 06:52:22.926119	2014-02-17 06:52:22.951064	\N	\N	\N
39	1	54	1	2014-02-17 06:53:52.010198	2014-02-17 06:53:52.033751	\N	\N	\N
40	1	55	1	2014-02-17 06:55:18.454409	2014-02-17 06:55:18.477005	\N	\N	\N
41	1	56	1	2014-02-17 06:57:07.718455	2014-02-17 06:57:07.740652	\N	\N	\N
42	1	58	1	2014-02-17 07:02:28.602693	2014-02-17 07:02:28.63011	\N	\N	\N
43	1	60	1	2014-02-17 07:06:27.478465	2014-02-17 07:06:27.504772	\N	\N	\N
44	1	61	1	2014-02-17 07:14:51.699892	2014-02-17 07:14:51.721042	\N	\N	\N
45	1	62	2	2014-02-17 07:16:15.58046	2014-02-17 07:16:15.600185	\N	\N	\N
46	1	67	2	2014-02-17 07:28:52.096014	2014-02-17 07:28:52.122959	\N	\N	\N
47	1	69	2	2014-02-17 07:37:56.486677	2014-02-17 07:37:56.508826	\N	\N	\N
53	1	80	1	2014-02-19 08:08:10.245834	2014-02-19 08:08:10.267252	\N	\N	\N
54	1	84	2	2014-02-19 08:20:36.98267	2014-02-19 08:20:37.006099	\N	\N	\N
55	1	87	2	2014-02-19 09:00:33.820209	2014-02-19 09:00:33.835485	\N	\N	\N
56	1	89	1	2014-02-20 07:18:26.539288	2014-02-20 07:18:26.566474	\N	\N	\N
57	1	90	1	2014-02-20 07:20:28.598069	2014-02-20 07:20:28.626544	\N	\N	\N
58	1	93	2	2014-02-20 07:28:43.574004	2014-02-20 07:28:43.601537	\N	\N	\N
59	1	95	2	2014-02-20 07:33:58.989643	2014-02-20 07:33:59.01307	\N	\N	\N
60	1	96	2	2014-02-20 07:37:15.460199	2014-02-20 07:37:15.486597	\N	\N	\N
61	1	97	2	2014-02-20 07:39:11.537911	2014-02-20 07:39:11.569146	\N	\N	\N
62	1	98	2	2014-02-20 07:40:17.85946	2014-02-20 07:40:17.88135	\N	\N	\N
63	1	99	2	2014-02-20 07:41:37.106271	2014-02-20 07:41:37.131742	\N	\N	\N
64	1	100	1	2014-02-22 07:05:25.236691	2014-02-22 07:05:25.257901	\N	\N	\N
65	1	101	1	2014-02-22 07:10:40.454776	2014-02-22 07:10:40.468321	\N	\N	\N
66	1	102	1	2014-02-22 07:11:57.407789	2014-02-22 07:11:57.428705	\N	\N	\N
84	1	120	1	2014-03-04 07:28:58.824997	2014-03-04 07:28:58.845351	\N	\N	\N
67	1	103	2	2014-02-22 07:14:07.058642	2014-02-22 07:15:12.3669	\N	\N	\N
68	1	104	2	2014-02-22 07:16:07.501051	2014-02-22 07:16:07.518348	\N	\N	\N
69	1	105	2	2014-02-22 07:17:31.115109	2014-02-22 07:17:31.147887	\N	\N	\N
70	1	106	1	2014-02-26 06:39:14.467918	2014-02-26 06:39:14.495514	\N	\N	\N
71	1	107	1	2014-02-26 06:48:53.854336	2014-02-26 06:48:53.873344	\N	\N	\N
72	1	108	2	2014-02-26 07:01:34.11261	2014-02-26 07:01:34.130985	\N	\N	\N
73	1	109	2	2014-02-26 07:03:56.414503	2014-02-26 07:03:56.430214	\N	\N	\N
74	1	110	2	2014-02-26 07:07:05.081358	2014-02-26 07:07:05.103613	\N	\N	\N
75	1	111	1	2014-03-01 07:11:17.611273	2014-03-01 07:11:17.635237	\N	\N	\N
76	1	112	1	2014-03-01 07:17:49.693425	2014-03-01 07:17:49.707236	\N	\N	\N
77	1	113	1	2014-03-01 07:21:05.923957	2014-03-01 07:21:05.947166	\N	\N	\N
78	1	114	1	2014-03-01 07:23:14.750296	2014-03-01 07:23:14.775918	\N	\N	\N
79	1	115	2	2014-03-01 07:24:57.832441	2014-03-01 07:24:57.85428	\N	\N	\N
80	1	116	2	2014-03-01 07:29:07.771434	2014-03-01 07:29:07.80223	\N	\N	\N
81	1	117	2	2014-03-01 07:31:25.576062	2014-03-01 07:31:25.589721	\N	\N	\N
82	1	118	2	2014-03-01 07:34:54.896352	2014-03-01 07:34:54.909298	\N	\N	\N
83	1	119	1	2014-03-04 07:25:57.641789	2014-03-04 07:25:57.66591	\N	\N	\N
85	1	121	1	2014-03-04 07:31:36.923908	2014-03-04 07:31:36.937337	\N	\N	\N
86	1	122	2	2014-03-04 07:38:24.563307	2014-03-04 07:38:24.59496	\N	\N	\N
87	1	123	2	2014-03-04 07:41:56.739536	2014-03-04 07:41:56.770075	\N	\N	\N
88	1	124	2	2014-03-04 07:42:46.765585	2014-03-04 07:42:46.789894	\N	\N	\N
89	1	125	1	2014-03-05 07:32:45.669324	2014-03-05 07:32:45.696234	\N	\N	\N
90	1	126	1	2014-03-05 07:48:40.857852	2014-03-05 07:48:40.877794	\N	\N	\N
91	\N	127	2	2014-03-05 08:01:16.432923	2014-03-05 08:01:16.432923	\N	\N	\N
92	\N	128	2	2014-03-05 08:01:16.467388	2014-03-05 08:01:16.467388	\N	\N	\N
93	\N	129	2	2014-03-05 08:01:16.492771	2014-03-05 08:01:16.492771	\N	\N	\N
94	\N	130	1	2014-03-07 08:13:02.621768	2014-03-07 08:13:02.621768	\N	\N	\N
95	1	131	1	2014-03-07 08:14:27.961458	2014-03-07 08:14:27.995695	\N	\N	\N
96	\N	134	2	2014-03-07 08:45:56.658094	2014-03-07 08:45:56.658094	\N	\N	\N
97	\N	135	2	2014-03-07 08:45:56.681495	2014-03-07 08:45:56.681495	\N	\N	\N
98	\N	136	2	2014-03-07 08:45:56.699225	2014-03-07 08:45:56.699225	\N	\N	\N
99	1	137	1	2014-03-08 07:19:36.793737	2014-03-08 07:19:36.81738	\N	\N	\N
100	1	138	1	2014-03-08 07:20:32.32755	2014-03-08 07:20:32.347669	\N	\N	\N
101	1	139	1	2014-03-08 07:21:32.344503	2014-03-08 07:21:32.3661	\N	\N	\N
102	1	140	1	2014-03-08 07:22:26.646537	2014-03-08 07:22:26.656719	\N	\N	\N
103	1	141	1	2014-03-08 07:23:15.26222	2014-03-08 07:23:15.277554	\N	\N	\N
104	1	142	2	2014-03-08 07:23:54.909119	2014-03-08 07:23:54.940073	\N	\N	\N
105	1	143	2	2014-03-08 07:24:42.192815	2014-03-08 07:24:42.212342	\N	\N	\N
106	1	144	2	2014-03-08 07:26:09.314645	2014-03-08 07:26:09.338318	\N	\N	\N
107	1	145	1	2014-03-10 07:33:06.274792	2014-03-10 07:33:06.300575	\N	\N	\N
108	1	146	1	2014-03-10 07:54:16.348729	2014-03-10 07:54:16.367526	\N	\N	\N
109	1	147	1	2014-03-10 07:55:28.829497	2014-03-10 07:55:28.840651	\N	\N	\N
110	1	148	1	2014-03-10 07:56:10.349825	2014-03-10 07:56:10.368213	\N	\N	\N
111	1	149	1	2014-03-10 07:56:56.897723	2014-03-10 07:56:56.924324	\N	\N	\N
112	1	152	2	2014-03-10 08:03:25.484331	2014-03-10 08:03:25.5085	\N	\N	\N
113	1	155	2	2014-03-10 08:09:08.078118	2014-03-10 08:09:08.094029	\N	\N	\N
114	1	156	1	2014-03-11 07:01:06.963289	2014-03-11 07:01:06.995799	\N	\N	\N
115	1	157	1	2014-03-11 07:03:05.113542	2014-03-11 07:03:05.126352	\N	\N	\N
116	1	158	1	2014-03-11 07:12:14.296529	2014-03-11 07:12:14.317195	\N	\N	\N
117	1	159	1	2014-03-11 07:15:49.518364	2014-03-11 07:15:49.531194	\N	\N	\N
118	1	160	2	2014-03-11 07:19:28.498428	2014-03-11 07:19:28.524862	\N	\N	\N
119	1	161	2	2014-03-11 07:23:43.302213	2014-03-11 07:23:43.328476	\N	\N	\N
120	1	162	2	2014-03-11 07:25:05.050441	2014-03-11 07:25:05.076432	\N	\N	\N
121	1	163	2	2014-03-11 07:25:57.790348	2014-03-11 07:25:57.80988	\N	\N	\N
122	1	164	1	2014-03-12 07:11:32.619785	2014-03-12 07:11:32.640286	\N	\N	\N
123	1	166	2	2014-03-12 07:17:50.399019	2014-03-12 07:17:50.417703	\N	\N	\N
124	1	167	1	2014-03-12 07:21:41.54189	2014-03-12 07:21:41.558173	\N	\N	\N
125	1	174	2	2014-03-12 07:36:39.391256	2014-03-12 07:36:39.411878	\N	\N	\N
126	1	175	2	2014-03-12 07:37:23.522568	2014-03-12 07:37:23.545285	\N	\N	\N
127	1	176	2	2014-03-12 07:38:02.265243	2014-03-12 07:38:02.283847	\N	\N	\N
128	1	177	1	2014-03-14 07:55:42.564137	2014-03-14 07:55:42.585703	\N	\N	\N
129	1	178	1	2014-03-14 08:00:16.003319	2014-03-14 08:00:16.028627	\N	\N	\N
130	1	179	1	2014-03-14 08:01:34.221092	2014-03-14 08:01:34.238305	\N	\N	\N
131	1	180	2	2014-03-14 08:04:02.864614	2014-03-14 08:04:02.889837	\N	\N	\N
132	1	185	2	2014-03-14 08:11:09.93792	2014-03-14 08:11:09.962464	\N	\N	\N
133	1	186	2	2014-03-14 08:11:52.667464	2014-03-14 08:11:52.697121	\N	\N	\N
134	1	187	1	2014-03-15 07:50:29.772373	2014-03-15 07:50:29.800062	\N	\N	\N
135	1	188	1	2014-03-15 07:51:13.35753	2014-03-15 07:51:13.383946	\N	\N	\N
136	1	189	1	2014-03-15 07:54:05.233374	2014-03-15 07:54:05.247194	\N	\N	\N
137	1	200	1	2014-03-18 08:26:01.055241	2014-03-18 08:26:01.071399	\N	\N	\N
138	1	202	2	2014-03-18 08:28:49.616507	2014-03-18 08:28:49.628476	\N	\N	\N
139	1	203	2	2014-03-18 08:29:38.543545	2014-03-18 08:29:38.565995	\N	\N	\N
140	1	205	1	2014-03-19 07:14:31.886465	2014-03-19 07:14:31.919478	\N	\N	\N
141	1	207	1	2014-03-19 07:19:07.41106	2014-03-19 07:19:07.434636	\N	\N	\N
142	1	211	2	2014-03-20 07:15:14.126961	2014-03-20 07:15:14.151946	\N	\N	\N
143	1	214	2	2014-03-20 07:24:12.099206	2014-03-20 07:24:12.120455	\N	\N	\N
144	\N	215	2	2014-03-20 07:26:12.513552	2014-03-20 07:26:12.513552	\N	\N	\N
145	1	216	2	2014-03-20 07:28:26.378662	2014-03-20 07:28:26.397289	\N	\N	\N
146	1	221	1	2014-03-21 07:41:13.260206	2014-03-21 07:41:13.30063	\N	\N	\N
147	1	223	1	2014-03-21 07:44:18.226738	2014-03-21 07:44:18.24739	\N	\N	\N
148	1	224	2	2014-03-21 07:45:59.048339	2014-03-21 07:45:59.060601	\N	\N	\N
149	1	225	2	2014-03-21 07:48:16.809013	2014-03-21 07:48:16.839109	\N	\N	\N
150	1	226	2	2014-03-21 07:51:14.036343	2014-03-21 07:51:14.05595	\N	\N	\N
151	1	227	1	2014-03-28 07:19:51.557993	2014-03-28 07:19:51.582879	\N	\N	\N
152	1	228	1	2014-03-28 07:21:39.48965	2014-03-28 07:21:39.513844	\N	\N	\N
153	1	229	1	2014-03-28 07:26:57.655594	2014-03-28 07:26:57.680914	\N	\N	\N
154	1	230	1	2014-04-03 07:18:40.401948	2014-04-03 07:18:40.417268	\N	\N	\N
155	1	231	1	2014-04-03 07:20:53.825669	2014-04-03 07:20:53.849163	\N	\N	\N
156	1	232	1	2014-04-03 07:21:40.91656	2014-04-03 07:21:40.938046	\N	\N	\N
157	1	233	1	2014-04-03 07:23:01.502579	2014-04-03 07:23:01.537716	\N	\N	\N
158	1	234	2	2014-04-03 07:24:45.228971	2014-04-03 07:24:45.247998	\N	\N	\N
159	1	236	2	2014-04-03 07:28:40.316011	2014-04-03 07:28:40.334656	\N	\N	\N
160	1	237	2	2014-04-03 07:29:58.064567	2014-04-03 07:29:58.086364	\N	\N	\N
161	1	239	2	2014-04-03 07:32:13.951055	2014-04-03 07:32:13.974747	\N	\N	\N
162	5	240	2	2014-04-04 06:42:12.166045	2014-04-04 06:42:12.191718	\N	\N	\N
163	\N	217	2	2014-04-12 10:21:17.792819	2014-04-12 10:21:17.792819	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 165, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required, message, branch_id, client_id, branch_code, area_name, city_id, no_verifcation) FROM stdin;
12	1010	Scorp Enterprises	1010	MAHESH GAJANAN SOMAVANSHI	B/402 MARTAND APT, DAMODAR VITAVKAR MARG, VITAVA, THANE 400605\r\n		\N	114	2014-02-13 07:57:06.898958	2014-02-13 07:57:06.898958	mahesh-gajanan-somavanshi	19.1943854000000016	72.99920130000001	\N	9920882939	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400605	3	f
3	1003	Scorp Enterprises	1003	Chetan Tandel	Kurla	MIG Colony	\N	1	2014-02-05 17:06:44.461692	2014-02-05 17:06:44.461692	chetan-tandel	19.0719889999999985	72.8840819999999923	\N	9870230193	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	0	400070	1	f
20	1018	Scorp Enterprises	1018	PELURI AMAR 	D 1001,ASHOK GARDEN TOKERSHI JIVRAJ ROAD , SEWREE MUMBAI 400015 \r\n		\N	20	2014-02-13 09:56:46.792193	2014-02-13 09:56:46.792193	peluri-amar	18.9953740999999994	72.8559788000000026	\N	9969295709 / 8097009610	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400015	1	f
4	1004	Scorp Enterprises	1004	Anidhya Ahuja	New panvel	Ramdev Park	\N	179	2014-02-07 13:34:13.79925	2014-02-07 13:34:13.79925	anidhya-ahuja	18.9959105999999984	73.1209226000000001	\N	9658748596	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	8	1	7452	410216	2	f
14	1012	Scorp Enterprises	1012	KETKAR KAUSTUBH SHIRESH	NO RESI		\N	190	2014-02-13 08:07:24.9677	2014-02-13 08:07:24.9677	ketkar-kaustubh-shiresh	19.1358792000000015	73.0081429999999898	\N	9920724060	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	66	1	16720	401303	3	t
5	1005	Scorp Enterprises	1005	Tinesh	Kurla	MIG Colony	\N	73	2014-02-08 05:45:12.429236	2014-02-08 05:45:28.493994	tinesh	19.0719889999999985	72.8840819999999923	\N	9819765434	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	2	1	11690	400070	1	f
7	1006	Scorp Enterprises	1006	ERTYUU	FJFJJ	GBGHJKL	\N	6	2014-02-08 07:17:47.578819	2014-02-08 07:17:47.578819	ertyuu	19.7514797999999985	75.7138884000000019	\N	89799707	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400005	1	t
15	1013	Scorp Enterprises	1013	MR.NYJU SHANKUKHAN	B-6001, OLIVE SHALLOTS, SEC-16A, PLOT-17, PALM BEACH ROAD, NEAR SBI SANPADA BRANCH, NAVI MUMBAI 400705\r\n		\N	125	2014-02-13 08:10:25.174574	2014-02-13 08:10:25.174574	mr-nyju-shankukhan	19.0637934999999992	73.0066446999999954	\N	9833093385	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	86	1	5141	400703	2	f
21	1019	Scorp Enterprises	1019	USHA MANMOHAN SHARMA 	A/2 , SHREE CHS, TANSA PIPELINE,  ROAD TILAK NAGAR ,400089\r\n		\N	95	2014-02-13 09:58:01.030192	2014-02-13 09:58:01.030192	usha-manmohan-sharma	19.0697900000000011	72.8941995999999932	\N	022 25226346 /9820441373	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400089	1	f
16	1014	Scorp Enterprises	1014	SACHIN A GADEKAR	no resi		\N	123	2014-02-13 09:20:12.911927	2014-02-13 09:20:12.911927	sachin-a-gadekar	19.1358792000000015	73.0081429999999898	\N	022-44780763\t9819035550	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400701	2	t
2	1002	Scorp Enterprises	1002	Sudhir vishwakarma	Mira road	Ramdev Park	\N	1	2014-02-05 05:42:10.422875	2014-02-05 06:08:06.905636	sudhir-vishwakarma	19.2815280000000016	72.8583469999999949	\N	9920750913	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	401107	1	f
17	1015	Scorp Enterprises	1015	PRAVIN PAWAR	GHARONDA, F-21, 104, SECTOR 9, GHANSOLI, OPP NEW CITY SCHOOL, NAVI MUMBAI 400701\r\n		\N	123	2014-02-13 09:27:28.503476	2014-02-13 09:27:28.503476	pravin-pawar	19.1264800999999984	73.0110095999999942	\N	9372280777	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400701	2	f
29	1027	Scorp Enterprises	1027	SAMEER R. KOLANDE	A/7, HAPPY HOMES, JAIDEEP NAGAR, OPP NAHUR RLY STN, BHANDUP E\r\n		\N	49	2014-02-14 08:08:32.365632	2014-02-14 08:08:32.365632	sameer-r-kolande	19.1368259999999992	72.939562400000014	\N	9167470225/9224126155	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	96	1	15474	400042	1	f
18	1016	Scorp Enterprises	1016	PRASHANT RAMCHANDRA PANDEY	no resi		\N	155	2014-02-13 09:45:47.441467	2014-02-13 09:45:47.441467	prashant-ramchandra-pandey	19.1358792000000015	73.0081429999999898	\N	9823444366	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	401402	1	t
28	1026	Scorp Enterprises	1026	PRIYANKA PRASHANT PANDEY	NO RESI		\N	53	2014-02-14 07:13:53.096821	2014-02-14 07:13:53.096821	priyanka-prashant-pandey	19.1358792000000015	73.0081429999999898	\N	022-25947273\t9890022903/9823444366	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400050	1	t
19	1017	Scorp Enterprises	1017	RADHIKARANT SENGUPTA	C-61, SUNDER APPTS SION TROMBAY RD CHEMBUR OPP DIAMOND GARDEN MUMBAI-71\r\n		\N	74	2014-02-13 09:53:49.234108	2014-02-13 09:53:49.234108	radhikarant-sengupta	19.7514797999999985	75.7138884000000019	\N	9820719692	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	5	1	4276	400071	1	f
22	1020	Scorp Enterprises	1020	JEGAN SHANMUGANATHAN NADAR	R NO 414, B NO 02, JAY BHARAT SOLIETY, MAHADA COLONY , VASHINAKA, CHEMBUR\r\n		\N	74	2014-02-13 10:01:50.727011	2014-02-13 10:01:50.727011	jegan-shanmuganathan-nadar	19.0327996000000006	72.8963567999999924	\N	9952789709	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
23	1021	Scorp Enterprises	1021	SHANMHGANATHAN PERUMAL NADAR	R NO 414, B NO 02, JAY BHARAT SOLIETY, MHADA COLONY , VASHINAKA, CHEMBUR\r\n		\N	77	2014-02-13 10:03:55.813175	2014-02-13 10:03:55.813175	shanmhganathan-perumal-nadar	19.0327996000000006	72.8963567999999924	\N	9930273869	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400073	1	f
24	1022	Scorp Enterprises	1022	NEHA PRAVIN KARNIK 	ROOM NO 10,  BLD NO 1, BPT COLONY , EKTA NAGAR, DOCKYARD ROAD WADI  BANDAR MUMBAI 10\r\n		\N	12	2014-02-13 10:07:42.653673	2014-02-13 10:07:42.653673	neha-pravin-karnik	19.7514797999999985	75.7138884000000019	\N	8655389213	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400010	1	f
25	1023	Scorp Enterprises	1023	ANUJ SHIVKUMAR  PARCHA 	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n		\N	74	2014-02-13 10:09:27.813435	2014-02-13 10:09:27.813435	anuj-shivkumar-parcha	19.0493282999999991	72.8294843999999983	\N	8652535081	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
26	1024	Scorp Enterprises	1024	MUNESH SHIVKUMAR PARCHA 	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n		\N	74	2014-02-13 10:11:59.458532	2014-02-13 10:11:59.458532	munesh-shivkumar-parcha	19.0493282999999991	72.8294843999999983	\N	9967450201	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
27	1025	Scorp Enterprises	1025	RASIKA ARUN ALAT	ROOM NO 28, CHAWL NO 4, TRANSIT CAMP , BEHIND BLDG NO 49 & 50, SUBHASH NAGAR, CHEMBUR 400071 .\r\n		\N	74	2014-02-13 10:13:01.14599	2014-02-13 10:13:01.14599	rasika-arun-alat	19.0582606000000006	72.9054519999999968	\N	8767880515	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
9	1008	Scorp Enterprises	1008	SAURABH VASUDEO NARVEKAR	1202, BANGASHREE TOWER CO-KOP HSG SOC LTD, DAJI RAMCHANDRA ROAD, NEAR MAKHMALI TALAO, CHARAI, THANE WEST 400601\r\n		\N	116	2014-02-13 06:54:49.20008	2014-02-13 06:54:49.20008	saurabh-vasudeo-narvekar	19.1985422999999997	72.9748447999999996	\N	022-25442522/9819021789	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400606	3	f
13	1011	Scorp Enterprises	1011	BRIJENDRA KUMAR GUPLTA	FLAT NO 402, FAIRFIELD-B, LODHA LUXURIA, MAJEWADA, LODHA COMPLEX, THANE 400601\r\n		\N	109	2014-02-13 08:02:55.70757	2014-02-13 08:02:55.70757	brijendra-kumar-guplta	19.201050200000001	72.9785352999999901	\N	022-65166313\t9819730421/9702014760	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400601	3	f
30	1028	Scorp Enterprises	1028	NISRIN MANVA 	501 AMBER POWAI VIHAR COMPLEX POWAI MUMBAI OPP POWAI LAKE ,POWAI MUMBAI-76\r\n		\N	80	2014-02-14 08:09:21.252562	2014-02-14 08:09:21.252562	nisrin-manva	19.7514797999999985	75.7138884000000019	\N	9665040760	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	5	1	4276	400076	1	f
31	1029	Scorp Enterprises	1029	ASHOK MAHADEV PARAB 	NO RESI		\N	80	2014-02-14 08:16:36.789543	2014-02-14 08:16:36.789543	ashok-mahadev-parab	19.1358792000000015	73.0081429999999898	\N	022 6735467\t982025221	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400076	1	t
11	1009	Scorp Enterprises	1009	CHAITANYA DHUME	C2-104, KHAMAJ CHS, KAVYADHARA COMPLEX, DHOKALI KOLSHET RD, KAVYADHARA COMPLEX, THANE 400607\r\n		\N	117	2014-02-13 07:03:25.22818	2014-02-13 07:03:25.22818	chaitanya-dhume	19.2392834000000015	72.9873923999999903	\N	9930843474	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400607	3	f
32	1030	Scorp Enterprises	1030	KOTAKOTTA SUNITA KUMARI PRUSTY	1602/B, LAKECASTLE , HIRANANDANI GARDENS POWAI 400076 \r\n		\N	80	2014-02-14 08:20:41.754935	2014-02-14 08:20:41.754935	kotakotta-sunita-kumari-prusty	19.1136997999999991	72.9077089000000029	\N	2225704138\t9768527751/7738260122	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400076	1	f
33	1031	Scorp Enterprises	1031	VIJAY THAKKAR	A- 1005, 10 TH FLR , MARATHON COSMOS, L.B.S. MARG, MULUND W, NEAR VASANT OSCAR, MUMBAI 80\r\n		\N	85	2014-02-14 08:21:36.717058	2014-02-14 08:21:36.717058	vijay-thakkar	19.1687030999999983	72.9364442999999909	\N	022 25910088\t9820188204	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400080	1	f
34	1032	Scorp Enterprises	1032	MRS SHREELATHA K POOJARY	202 NILGIRI LOK EVEREST C H S L, A C C ROAD, LOK EVEREST COMPLEX, MULUND WEST, MUMBAI 80\r\n		\N	85	2014-02-14 08:22:59.76841	2014-02-14 08:22:59.76841	mrs-shreelatha-k-poojary	19.7514797999999985	75.7138884000000019	\N	25611535\t9833106247	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400080	1	f
52	1050	Scorp Enterprises	1050	DEEPAK P CHINDARKAR 	1403, HURRAH CITY OF JOY J.S DOSA ROAD MULUND WEST MUMBAI-80\r\n		\N	85	2014-02-17 06:48:55.515997	2014-02-17 06:48:55.515997	deepak-p-chindarkar	19.7514797999999985	75.7138884000000019	\N	9004496830	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	5	1	4276	400080	1	f
37	1035	Scorp Enterprises	1035	DINESH KUMAR	FLAT NO 704, 7TH FLR, BLDG NO 17 E, GANGA MAHDA CUSTOM COLONY, A S MARG, POWAI, MUMBAI 76\r\n		\N	80	2014-02-14 08:35:43.708704	2014-02-14 08:35:43.708704	dinesh-kumar	19.7514797999999985	75.7138884000000019	\N	7738131705	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400076	1	f
38	1036	Scorp Enterprises	1036	REENA PRADEEP NAIR	702, GANESH DASHAN CHS LTD, KANJURMARG EAST, SHAH COLONY ROAD, MUMBAI 42\r\n		\N	49	2014-02-14 08:43:46.580952	2014-02-14 08:43:46.580952	reena-pradeep-nair	19.7514797999999985	75.7138884000000019	\N	022-25783780\t9167005904/9167005905	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400042	1	f
39	1037	Scorp Enterprises	1037	MISS VAISHALI VIJAYRAO SADANPAWAR	NO RESI		\N	80	2014-02-14 08:48:17.53986	2014-02-14 08:48:17.53986	miss-vaishali-vijayrao-sadanpawar	19.1358792000000015	73.0081429999999898	\N	022-67324525\t9324437292 / 9022252531	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400076	1	t
40	1038	Scorp Enterprises	1038	PURVA ASHOK NARAYANAN	NO RESI		\N	84	2014-02-14 08:50:12.039233	2014-02-14 08:50:12.039233	purva-ashok-narayanan	19.1358792000000015	73.0081429999999898	\N	67557000\t9920723446	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400079	1	t
41	1039	Scorp Enterprises	1039	JAY MAHENDRA RAMBHIA	NO RESI		\N	80	2014-02-14 08:51:36.223587	2014-02-14 08:51:36.223587	jay-mahendra-rambhia	19.1358792000000015	73.0081429999999898	\N	022 67324731 \t9820896491	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400076	1	t
42	1040	Scorp Enterprises	1040	MR. JAYDEEP M. DEOGHARE	NO RESI		\N	84	2014-02-14 08:53:23.832108	2014-02-14 08:53:23.832108	mr-jaydeep-m-deoghare	19.1358792000000015	73.0081429999999898	\N	:    022-67118003\t9833052212	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	81	1	1109	400079	1	t
43	1041	Scorp Enterprises	1041	LYDIA RONALD DSOUZA 	NO RESI		\N	84	2014-02-14 08:55:01.213079	2014-02-14 08:55:01.213079	lydia-ronald-dsouza	19.1358792000000015	73.0081429999999898	\N	9819824567	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	111	1	1467	400079	1	t
44	1042	Scorp Enterprises	1042	MR SHINDE SAGAR TRYAMBAK	"FLAT NO 002, MAHAVIR SARGAM,  PLOT NO 2, SECTOR-5, \r\nGHANSOLI 400701 NAVI MUMBAI\r\nLandmark: Near Mukambika Mandir"\r\n		\N	123	2014-02-14 08:57:12.1119	2014-02-14 08:57:12.1119	mr-shinde-sagar-tryambak	19.7514797999999985	75.7138884000000019	\N	7506078834	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	89	1	16215	400701	2	f
45	1043	Scorp Enterprises	1043	MAITREYI M NIRKHEDKAR	NO RESI		\N	127	2014-02-14 09:01:13.005961	2014-02-14 09:01:13.005961	maitreyi-m-nirkhedkar	19.1358792000000015	73.0081429999999898	\N	022-61194545\t9766349132	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400705	2	t
46	1044	Scorp Enterprises	1044	MR SANDEEP TRIMBAKRAO PACHKAWADE	NO RESI		\N	121	2014-02-14 09:03:07.594199	2014-02-14 09:03:07.594199	mr-sandeep-trimbakrao-pachkawade	19.1358792000000015	73.0081429999999898	\N	022-67919595\t8080027332	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400613	2	t
47	1045	Scorp Enterprises	1045	MISS VAISHALI VIJAYRAO SADANPAWAR	C/O MR DHANAJI K PATIL, FLAT NO 202, C.K.P SADAN, PLOT NO B-32, SECTOR 9, AIROLI, NAVI MUMBAI 400708\r\n		\N	127	2014-02-14 09:06:43.616993	2014-02-14 09:06:43.616993	miss-vaishali-vijayrao-sadanpawar--2	19.1468808000000017	72.9910826999999927	\N	022-6739324437292 / 9022252531	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
48	1046	Scorp Enterprises	1046	JANARDHAN VAJRESHWAR TUMMA	OM SHRI SIDDHIVINAYAK CHS, B-16-2-12, PLOT NO 30, SECTOR 24, JUINAGAR, NAVI MUMBAI 400705\r\n		\N	125	2014-02-14 09:09:31.574695	2014-02-14 09:09:31.574695	janardhan-vajreshwar-tumma	19.0505795999999989	73.0180204999999916	\N	8976237090 / 9224384279	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
49	1047	Scorp Enterprises	1047	DR PRACHI SUBHASH GHOLAP	AISHWARYA CHS, F-7/2:1, SECTOR 7, SANPADA, NEAR NEWAY HOSPITAL, NAVI MUMBAI 400705\r\n		\N	125	2014-02-14 09:52:54.991827	2014-02-14 09:52:54.991827	dr-prachi-subhash-gholap	19.0574665000000003	73.0110095999999942	\N	8082110022	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400703	2	f
50	1048	Scorp Enterprises	1048	VIJAY SAKHARAM SANAP	NO RESI		\N	132	2014-02-14 09:58:38.522981	2014-02-14 09:58:38.522981	vijay-sakharam-sanap	19.1358792000000015	73.0081429999999898	\N	9321215566 / 8080215566	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400709	2	t
51	1049	Scorp Enterprises	1049	PANKAJ KUMAR	NO RESI		\N	196	2014-02-14 10:05:37.234112	2014-02-14 10:05:37.234112	pankaj-kumar	19.1358792000000015	73.0081429999999898	\N	022-66809000\t9004390235	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400710	2	t
53	1051	Scorp Enterprises	1051	PRASHANT MANOHAR MURKAR.	G  WING FLAT NO-203,KAMAL PARK, LBS MARG,NEAR NEPTUNE MALL,BHANDUP-WEST-400078\r\n		\N	53	2014-02-17 06:52:19.291761	2014-02-17 06:52:19.291761	prashant-manohar-murkar	19.1499009999999998	72.9311340000000001	\N	5942177\t9987445553	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400050	1	f
36	1034	Scorp Enterprises	1034	SUDESHNA RAY	1103, C-WING, LAKE PRIMROSE, LAKE HOMES, POWAI, MUMBAI 76\r\n		\N	80	2014-02-14 08:26:57.482411	2014-02-14 08:26:57.482411	sudeshna-ray	19.7514797999999985	75.7138884000000019	\N	9167636982/9920363690	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400076	1	f
35	1033	Scorp Enterprises	1033	NIRMAI PRATAPRAI MEHTA	A/502, PADMAVATI NAGAR, DIN DAYAL UPADHYAY MARG, MULUND WEST, NEAR CROMA SHOW ROOM, MUMBAI 80\r\n		\N	85	2014-02-14 08:24:35.325944	2014-02-14 08:24:35.325944	nirmai-prataprai-mehta	19.7514797999999985	75.7138884000000019	\N	25672664/9702080905	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400080	1	f
54	1052	Scorp Enterprises	1052	RAKESH BHALKE 	"B-704 SHUBHAKAMANA SOCIETY,\r\nM D KENI ROAD, BHANDUP VILLEGE, RBI COMPLEX, BHANDUP EAST, \r\nMUMBAI 400042\r\n"\r\n		\N	49	2014-02-17 06:53:49.139016	2014-02-17 06:53:49.139016	rakesh-bhalke	19.7514797999999985	75.7138884000000019	\N	9819366892	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	114	1	10330	400042	1	f
56	1054	Scorp Enterprises	1054	VIVEKANAND KRISHNASWAMI	BLDG A2, FLAT NO 31, HIGHLAND PARK, NR JAI SHASTRI NGR MULUND COLONY, MULUND WEST \r\n		\N	85	2014-02-17 06:57:04.913849	2014-02-17 06:57:04.913849	vivekanand-krishnaswami	19.1688690000000008	72.934983299999999	\N	25640039\t7738373370	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400080	1	f
57	1055	Scorp Enterprises	1055	MR. VIRENDRAKUMAR PUNDLIK BADGUJAR	no resi		\N	83	2014-02-17 06:59:18.268765	2014-02-17 06:59:18.268765	mr-virendrakumar-pundlik-badgujar	19.1358792000000015	73.0081429999999898	\N	25949793\t9892007013	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	103	1	489	400078	1	t
80	1078	Scorp Enterprises	1078	MR SATISH BABULAL CHANDAN	A-2/39, DGQA COMPLEX, JAGDUSHA NAGAR, FIFLE RANGE ROAD, NEAR SAI MANDIR, GHATKOPAR W, MUMBAI \r\n		\N	82	2014-02-19 08:08:07.516176	2014-02-19 08:08:07.516176	mr-satish-babulal-chandan	19.0908063000000006	72.9076668999999953	\N	9969707606/9004058998	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
59	1057	Scorp Enterprises	1057	LALIT KUMAR SHARMA 	no resi		\N	195	2014-02-17 07:04:28.224071	2014-02-17 07:04:28.224071	lalit-kumar-sharma	19.1358792000000015	73.0081429999999898	\N	022 25782951\t9322867625/9867613193	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400042	1	t
76	1074	Scorp Enterprises	1074	SHRI. MANISH SAXENA	NO RESI		\N	84	2014-02-19 07:49:20.610648	2014-02-19 07:49:20.610648	shri-manish-saxena	19.1358792000000015	73.0081429999999898	\N	022-67209717,	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	120	1	1406	400079	1	t
61	1059	Scorp Enterprises	1059	MR SURESH PIRAPPA MANE	ANAND NAGAR CO-OPHOUSING SOCIETY,B.M.C PLOT,NEW P.M.G.P COLONY,ROOM NO-87,MULUND EAST,MUMBAI-400081\r\n		\N	86	2014-02-17 07:14:48.29617	2014-02-17 07:14:48.29617	mr-suresh-pirappa-mane	19.1602277000000001	72.972630499999994	\N	8652477425	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	57	1	13377	400081	1	f
62	1060	Scorp Enterprises	1060	MR SANDEEP TRIMBAKRAO PACHKAWADE	NO RESI		\N	196	2014-02-17 07:16:04.324733	2014-02-17 07:16:04.324733	mr-sandeep-trimbakrao-pachkawade--2	19.1358792000000015	73.0081429999999898	\N	022-67919595\t8080027332	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400710	2	f
63	1061	Scorp Enterprises	1061	BHALCHANDRA MUKUND URSEKAR 	NO RESI		\N	127	2014-02-17 07:21:43.577563	2014-02-17 07:21:43.577563	bhalchandra-mukund-ursekar	19.1358792000000015	73.0081429999999898	\N	022 27601688,  8879940162\t9967011969,  9167152524	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	27	1	7124	400705	2	t
64	1062	Scorp Enterprises	1062	BHARAT FAKIRRAO DESHMUKH	NO RESI		\N	196	2014-02-17 07:24:08.433069	2014-02-17 07:24:08.433069	bharat-fakirrao-deshmukh	19.1358792000000015	73.0081429999999898	\N	022-61892000\t7276531323 / 7276531323	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400710	2	t
65	1063	Scorp Enterprises	1063	DALJIT KAUR CHARANJIT SINGH SAUNTA	NO RESI		\N	125	2014-02-17 07:25:38.63421	2014-02-17 07:25:38.63421	daljit-kaur-charanjit-singh-saunta	19.1358792000000015	73.0081429999999898	\N	022-61589999\t7506261981 / 9833055050	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400703	2	t
66	1064	Scorp Enterprises	1064	Mr. ZAHID HUSSAIN SHAIKH	NO RESI		\N	197	2014-02-17 07:27:29.446777	2014-02-17 07:27:29.446777	mr-zahid-hussain-shaikh	19.1358792000000015	73.0081429999999898	\N	022-27759798\t9819386774, 7208647274	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	38	1	11786	400705	2	t
67	1065	Scorp Enterprises	1065	HIMANSHU SARAF	FLAT NO A-1101, BHUMIRAJ IRAISA, RELIANCE PETROL PUMP, SECTOR 19, SANPADA, NAVI MUMBAI 400705\r\n		\N	197	2014-02-17 07:28:47.875415	2014-02-17 07:28:47.875415	himanshu-saraf	19.0539187000000005	73.0076885999999945	\N	9987068451	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
68	1066	Scorp Enterprises	1066	PRAMITA PRAKASH BENGLE	NO RESI		\N	197	2014-02-17 07:36:00.74288	2014-02-17 07:36:00.74288	pramita-prakash-bengle	19.1358792000000015	73.0081429999999898	\N	9223500137	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400705	2	t
69	1067	Scorp Enterprises	1067	JAGPREET SINGH CHADHA	FLAT NO 301/302, ABHIRUP, SECTOR 2A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	132	2014-02-17 07:37:51.607586	2014-02-17 07:37:51.607586	jagpreet-singh-chadha	19.0997616999999984	73.0021533999999974	\N	022-27541083\t9821233882	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
70	1068	Scorp Enterprises	1068	SHARMISHTHA VAIBHAV BHOSLE 	NO RESI		\N	131	2014-02-17 07:39:29.959685	2014-02-17 07:39:29.959685	sharmishtha-vaibhav-bhosle	19.1358792000000015	73.0081429999999898	\N	022 280420\t9820202696/9167006656	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400708	2	t
71	1069	Scorp Enterprises	1069	CHANDARANI V BHOITE	NO RESI		\N	125	2014-02-17 07:41:08.028434	2014-02-17 07:41:08.028434	chandarani-v-bhoite	\N	\N	\N	2267670999\t9892186682	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400703	2	t
72	1070	Scorp Enterprises	1070	NEELESH VANARAJ THAKKAR	NO RESI		\N	131	2014-02-17 07:43:12.722505	2014-02-17 07:43:12.722505	neelesh-vanaraj-thakkar	19.1358792000000015	73.0081429999999898	\N	9820377782	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400708	2	t
77	1075	Scorp Enterprises	1075	SHAILENDRA SINGH GUSAIN	NO RESI		\N	82	2014-02-19 07:51:37.359925	2014-02-19 07:51:37.359925	shailendra-singh-gusain	19.1358792000000015	73.0081429999999898	\N	022-42003200\t9769296286	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400077	1	t
60	1058	Scorp Enterprises	1058	VAIBHAV PRATAP BHOSLE 	G/S, GURUPUSHYAMROT CHS, VIDYALAYA ROAD , MUMBAI MULUND E GAVANPADA MUMABAI 400081\r\n		\N	86	2014-02-17 07:06:24.182052	2014-02-17 07:06:24.182052	vaibhav-pratap-bhosle	19.1706630000000011	72.9642341999999928	\N	9820202696	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400081	1	f
58	1056	Scorp Enterprises	1056	BHAGYESH AVINASH BHAVE 	C- 1603, LAVENDER , BULIDING  , SPLENDOOR ,L.B.S.ROAD , OPP MAGNET MALL BHANDUP W ,MUMBAI 400078\r\n		\N	83	2014-02-17 07:02:25.906533	2014-02-17 07:02:25.906533	bhagyesh-avinash-bhave	19.1499009999999998	72.9311340000000001	\N	9820775300 / 9819150316	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400078	1	f
75	1073	Scorp Enterprises	1073	SHARAD KATIYAR	B/1202/ELDORA,HILLSIDE, AVENUE, HIRANANDANI GARDEN,POWAI, NR DR L.H HIRANANDANI HOSPITAL, MUMBAI\r\n		\N	80	2014-02-19 07:47:01.690243	2014-02-19 07:47:01.690243	sharad-katiyar	19.1204016999999986	72.9170536999999968	\N	022-25707765\t9321866347	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400076	1	f
74	1072	Scorp Enterprises	1072	MOHD ZAHEER ALAM KHAN	NO RESI		\N	84	2014-02-19 07:44:32.755368	2014-02-19 07:44:32.755368	mohd-zaheer-alam-khan	19.1358792000000015	73.0081429999999898	\N	022-67332934\t9892801070	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400079	1	f
78	1076	Scorp Enterprises	1076	GANGADHAR GAWLI WAGH	A-5, VASANT VILLA, AMRUTNAGAR, GHATKOPAR WEST, MUMBAI 86\r\n		\N	82	2014-02-19 07:55:04.235362	2014-02-19 07:55:04.235362	gangadhar-gawli-wagh	19.1016785999999996	72.9106553000000019	\N	25007249\t9324546346	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
79	1077	Scorp Enterprises	1077	SHRI. VASUDEVA RAGHAVENDRA KOWSIK BODI	15, STAFF HOSTEL ANNEXE, IIT BOMBAY, IIT MAIN GATE, ADI SHANKARACHARYA MARG, POWAI, MUMBAI 400076.\r\n		\N	80	2014-02-19 08:04:24.873161	2014-02-19 08:04:24.873161	shri-vasudeva-raghavendra-kowsik-bodi	19.1230377999999988	72.9147959000000014	\N	022-25768126 \t9920947126	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	81	1	1109	400076	1	f
55	1053	Scorp Enterprises	1053	DIPTI ASHOK ANERAO	13, RUKMINI NIWAS CHAWL, NARDAS NAGAR, PANDAV KUND PATH, ICHHAPURTI GANESH MANDIR, BHANDULP WEST, MUMBAI 78\r\n		\N	83	2014-02-17 06:55:13.265043	2014-02-17 06:55:13.265043	dipti-ashok-anerao	19.7514797999999985	75.7138884000000019	\N	022-25957264\t9004045448/9987239729	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400078	1	f
81	1079	Scorp Enterprises	1079	VISHWAS HEGDE	NO RESI		\N	123	2014-02-19 08:11:37.2555	2014-02-19 08:11:37.2555	vishwas-hegde	19.1358792000000015	73.0081429999999898	\N	8451919362	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400701	2	t
82	1080	Scorp Enterprises	1080	MR ASHWIN PETER FERNANDES	NO RESI		\N	196	2014-02-19 08:13:59.406031	2014-02-19 08:13:59.406031	mr-ashwin-peter-fernandes	19.1358792000000015	73.0081429999999898	\N	022-27541083\t	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400710	2	t
83	1081	Scorp Enterprises	1081	RUPESH VISHWANATH KHATAVKAR	NO RESI		\N	132	2014-02-19 08:19:03.176048	2014-02-19 08:19:03.176048	rupesh-vishwanath-khatavkar	19.1358792000000015	73.0081429999999898	\N	022-64598200\t9869307089/9404162672	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400709	2	t
84	1082	Scorp Enterprises	1082	MANGALARAM P CHOUDHARY	ROOM NO 002, KRISHNA SADAN, PLOT NO 71, SECTOR 09, DIVAGAON, AIROLI, NAVI MUMBAI 400708\r\n		\N	131	2014-02-19 08:20:32.523031	2014-02-19 08:20:32.523031	mangalaram-p-choudhary	19.1511828999999985	72.9996314999999925	\N	9768875248 / 9867811891	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400708	2	f
85	1083	Scorp Enterprises	1083	ROHIT DIWAKAR 	NO RESI		\N	196	2014-02-19 08:22:46.882184	2014-02-19 08:22:46.882184	rohit-diwakar	19.1358792000000015	73.0081429999999898	\N	9096963283	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	48	1	11673	400710	2	t
86	1084	Scorp Enterprises	1084	SOMNATH SAKHAHARI NIRMAL	NO RESI		\N	121	2014-02-19 08:28:59.342785	2014-02-19 08:28:59.342785	somnath-sakhahari-nirmal	19.1358792000000015	73.0081429999999898	\N	022-41287700\t9594913192	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400613	2	t
87	1085	Scorp Enterprises	1085	AMOL RANGRAO KOKATE	22, CREEK  VIEW CHS, PLOT NO 33/34, SECTOR 9A, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-02-19 09:00:29.33466	2014-02-19 09:00:29.33466	amol-rangrao-kokate	19.0762569999999982	72.9951890999999904	\N	27899994\t7498076607 / 9930876118	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
88	1086	Scorp Enterprises	1086	Mr. NIKESH NITIN PITHADIA	NO RESI		\N	80	2014-02-20 07:16:55.060508	2014-02-20 07:16:55.060508	mr-nikesh-nitin-pithadia	19.1358792000000015	73.0081429999999898	\N	2242434493\t9869918203/9870923650	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	45	1	6249	400076	1	t
89	1087	Scorp Enterprises	1087	Mr. P.VEDAGIRI	ROOM NO.183/C,POWAI-400076\r\n		\N	80	2014-02-20 07:18:20.44421	2014-02-20 07:18:20.44421	mr-p-vedagiri	19.1196772999999993	72.9050809000000015	\N	9920297307	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400076	1	f
96	1094	Scorp Enterprises	1094	KUSHAL KUMAR GUPTA	FLAT NO 303, SAI RAM BUILDING, PLOT NO 775, SECTOR 19, KOPARKHAIRANE, NEAR TEEN TANKI & GANESH MANDIR, NAVI MUMBAI\r\n		\N	132	2014-02-20 07:37:10.170855	2014-02-20 07:37:10.170855	kushal-kumar-gupta	19.0330487999999995	73.0296625000000006	\N	9664914455 / 9664814455	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
91	1089	Scorp Enterprises	1089	URMILA V MANE	NO RESI		\N	195	2014-02-20 07:22:40.399114	2014-02-20 07:22:40.399114	urmila-v-mane	19.1358792000000015	73.0081429999999898	\N	67302500/67521599\t9821662167	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	45	1	6249	400042	1	t
92	1090	Scorp Enterprises	1090	GIRISH GOVILKAR	NO RESI		\N	125	2014-02-20 07:26:47.676755	2014-02-20 07:26:47.676755	girish-govilkar	19.1358792000000015	73.0081429999999898	\N	022-39176317\t9322649044	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	76	1	448	400703	2	t
93	1091	Scorp Enterprises	1091	JYOTHI NAIR	B-16, COSMOPOLITAN CHS, PLOT NO 48, SECTOR 9A, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-02-20 07:28:38.662744	2014-02-20 07:28:38.662744	jyothi-nair	19.0728857000000005	73.0020612	\N	022-71222000	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
94	1092	Scorp Enterprises	1092	NEELAM AVINASH GANGADHARE	NO RESI		\N	125	2014-02-20 07:32:30.46377	2014-02-20 07:32:30.46377	neelam-avinash-gangadhare	19.1358792000000015	73.0081429999999898	\N	022-27452566\t9322901202	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400703	2	t
95	1093	Scorp Enterprises	1093	VARDHAN MARUTIRAO PATIL	B-13, SHIVSHAKTI, 6TH FLOOR, BEHIND MC DONALDS, SECTOR 17, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-02-20 07:33:53.855193	2014-02-20 07:33:53.855193	vardhan-marutirao-patil	19.0723057999999988	73.0006774000000007	\N	022-27895291\t9969687707	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
90	1088	Scorp Enterprises	1088	Mr.SANTOSH MARUTI PATIL	9/142,3 RD FLR,SAEESH CHS.KANNAMWAR NAGAR-1,VIKHROLI-EAST-400083\r\n		\N	84	2014-02-20 07:20:24.499743	2014-02-20 07:20:24.499743	mr-santosh-maruti-patil	19.1102106999999997	72.9379361999999958	\N	9769483391/9769363391	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400083	1	f
97	1095	Scorp Enterprises	1095	RAVIKANT VISHNU SALAME	FLAT NO 801, JYOTI APT, PLOT NO 88, SECTOR 3, KOPARKHAIRANE, NEAR MSEB, NAVI MUMBAI 400709\r\n		\N	132	2014-02-20 07:39:06.716332	2014-02-20 07:39:06.716332	ravikant-vishnu-salame	19.0997616999999984	73.0021533999999974	\N	9920033276 / 9321116884	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
99	1097	Scorp Enterprises	1097	PRADEEP EKNATH GHADGE	FLAT NO 602, SWARAJ PLANET, PLOT NO 392 & 393, SECTOR 19, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	132	2014-02-20 07:41:32.042776	2014-02-20 07:41:32.042776	pradeep-eknath-ghadge	19.0997616999999984	73.0021533999999974	\N	9833261173	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
106	1104	Scorp Enterprises	1104	ALOK KUMAR	FLAT NO -101, BLDG-19, SIDDHANCHL PHAS E  , THANE 400610\r\n		\N	109	2014-02-26 06:39:09.450721	2014-02-26 06:39:09.450721	alok-kumar	19.2291664000000004	72.9649649999999923	\N	2233261806\t9930137470	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400610	3	f
98	1096	Scorp Enterprises	1096	RAVIKANT VISHNU SALAME	FLAT NO 801, JYOTI APT, PLOT NO 88, SECTOR 3, KOPARKHAIRANE, NEAR MSEB, NAVI MUMBAI 400709\r\n		\N	132	2014-02-20 07:40:12.89234	2014-02-20 07:40:12.89234	ravikant-vishnu-salame--2	19.0997616999999984	73.0021533999999974	\N	9920033276 / 9321116884	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
103	1101	Scorp Enterprises	1101	KIRAN KUMARI	FAM CHS 401/25, SECTOR 11, KALAS UDYAN, KOPERKHAIRANE 400709\r\n		\N	132	2014-02-22 07:14:04.079133	2014-02-22 07:14:04.079133	kiran-kumari	19.0997616999999984	73.0021533999999974	\N	7738427129/8450907317	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400709	2	f
104	1102	Scorp Enterprises	1102	CHETAN SHALIGRAM BAVISKAR	SS 4/5, SECOND FLOOR, SECTOR 2, NEAR GANESH TEMPLE, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-02-22 07:16:02.865865	2014-02-22 07:16:02.865865	chetan-shaligram-baviskar	19.0793549999999996	73.0000330000000019	\N	7709310426 / 7276084730	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
105	1103	Scorp Enterprises	1103	DR BANDITA SINHA	FLAT NO 702, BHOOMI OSCAR, PLOT NO 16/17, SECTOR 9, GHANSOLI, NEAR GHARONDA, NAVI MUMBAI 400701\r\n		\N	123	2014-02-22 07:17:27.261231	2014-02-22 07:17:27.261231	dr-bandita-sinha	19.1264800999999984	73.0110095999999942	\N	9987578254 / 9867690308	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400701	2	f
73	1071	Scorp Enterprises	1071	MOINUDDIN ANWAR ALAM KHAN	ROOM NO 5, BEHIND SUHEL MECH WORKS AZAD NAGAR, GHATKOPAR W, MUMBAI 86\r\n		\N	82	2014-02-19 07:37:10.577328	2014-02-19 07:37:10.577328	moinuddin-anwar-alam-khan	19.7514797999999985	75.7138884000000019	\N	9773523512	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400086	1	f
102	1100	Scorp Enterprises	1100	DEVYANI TYAGI	B-706 EDEN 2, HIRANANDANI GARDENS, POWAI, OPPOSITE JANTA BAKERS, MUMBAI \r\n		\N	80	2014-02-22 07:11:54.64446	2014-02-22 07:11:54.64446	devyani-tyagi	19.0759836999999983	72.8776558999999935	\N	9833625040	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400076	1	f
101	1099	Scorp Enterprises	1099	LEENA ANIL DHERE	1104 TOWER 4 THE ORCHARD RESIDENCY, LBS ROAD, BEHIND RCITY MALL GHATKOPAR WEST 400086\r\n		\N	82	2014-02-22 07:10:37.43792	2014-02-22 07:10:37.43792	leena-anil-dhere	19.0908063000000006	72.9076668999999953	\N	9820607946	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400086	1	f
107	1105	Scorp Enterprises	1105	SANDEEP NARAYAN PATIL	ROOM NO 78, VITTHAL MANDIR SOCIETY NEAR, VITTHAL MANDIR, PAKHADI KHAREGAON KALWA, VITTHAL MANDIR, THANE 400605\r\n		\N	112	2014-02-26 06:48:47.596182	2014-02-26 06:48:47.596182	sandeep-narayan-patil	19.1943854000000016	72.99920130000001	\N	9167627778/9773535035	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400603	3	f
100	1098	Scorp Enterprises	1098	RATILAL AMBAVI PATEL	A/4, SAHYADRI CHS, BUILDING NO 35, GURUDUTT MADIR MARG, PANTNGAR , GHATKOPAR EAST,M UMBAI 400078\r\n		\N	82	2014-02-22 07:05:20.721654	2014-02-22 07:05:20.721654	ratilal-ambavi-patel	19.1520170999999984	72.9165265999999974	\N	9920469734\t9819970456/9820552058	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400078	1	f
108	1106	Scorp Enterprises	1106	MR.VAIBHAV HIRALAL SHARMA	502,BHOOMI SYMPHONY APARTMENT,PLOT NO.16,SECTOR-20,KOPARKHAIRANE- 400709 \r\n		\N	132	2014-02-26 07:01:29.809792	2014-02-26 07:01:29.809792	mr-vaibhav-hiralal-sharma	19.1093563000000017	73.0014614999999907	\N	9167110931	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	99	1	7192	400709	2	f
109	1107	Scorp Enterprises	1107	ZEHRA MURTUZA KHAMBATY	FLAT NO C-501, SUN PALM VIEW, PLOT NO 1/1A, SECTOR 15, PALM BEACH ROAD, SANPADA, NEAR SURAJ HOSPITAL, NAVI MUMBAI 400705\r\n		\N	197	2014-02-26 07:03:51.807644	2014-02-26 07:03:51.807644	zehra-murtuza-khambaty	19.0574665000000003	73.0110095999999942	\N	9594156053	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
110	1108	Scorp Enterprises	1108	ANIL MASKARA	FLAT NO A-204, SURYAKIRAN SOCIETY, PLOT NO 12 & 13, SECTOR 5, GHANSOLI, NAVI MUMBAI 400701\r\n		\N	123	2014-02-26 07:06:59.738821	2014-02-26 07:06:59.738821	anil-maskara	19.1272720000000014	72.9966780000000028	\N	022-71411686\t9769704980	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400701	2	f
111	1109	Scorp Enterprises	1109	RAMAKRISHNAN I	F7/56, GODREJ HILLSIDE COLONY VIKHROLI W MUMBAI 400079\r\n		\N	84	2014-03-01 07:11:02.035705	2014-03-01 07:11:02.035705	ramakrishnan-i	19.1099597999999986	72.921763999999996	\N	9819900875	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400079	1	f
112	1110	Scorp Enterprises	1110	RAJNIKANT VRAJLAL SHAH	FLAT NO 702, 7TH FLR, KAVITA 188, R B MEHTA RD,  NEXT TO UTI BANK,  GHATKOPAR E 77\r\n		\N	78	2014-03-01 07:17:45.669765	2014-03-01 07:17:45.669765	rajnikant-vrajlal-shah	19.7514797999999985	75.7138884000000019	\N	21026360\t9819860010	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	118	1	11710	400077	1	f
113	1111	Scorp Enterprises	1111	JAGRIT SHRIKANT BHALJA	203/5547 AMAR JYOT, R N NARKAR ROAD, GHATKOPAR EAST, OPP R -ODEON THEATRE, MUMBAI 75\r\n		\N	78	2014-03-01 07:21:02.2356	2014-03-01 07:21:02.2356	jagrit-shrikant-bhalja	19.7514797999999985	75.7138884000000019	\N	9768066650	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400075	1	f
114	1112	Scorp Enterprises	1112	BHAVIN MANSHUKLAL SHAH	BLDG NO 3/F-203, GULMOHAR BLDG, LBS ROAD, KUKREJA COMPLEX, BHANDUP WEST, MUMBAI 78\r\n		\N	83	2014-03-01 07:23:11.970544	2014-03-01 07:23:11.970544	bhavin-manshuklal-shah	19.7514797999999985	75.7138884000000019	\N	9223432309/8108103938	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	122	1	15713	400078	1	f
115	1113	Scorp Enterprises	1113	GURUSIDDARABHU D GALAGALI	G-7, 21, KALPATRU HOUSING SOCIET, SECTOR 14, NEAR NATIONAL BURNS CENTRE, AIORLI 400708\r\n		\N	131	2014-03-01 07:24:53.192462	2014-03-01 07:24:53.192462	gurusiddarabhu-d-galagali	19.1598725999999999	72.99920130000001	\N	9167495301	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	82	1	3375	400708	2	f
116	1114	Scorp Enterprises	1114	SARITA AVINASH SHETTY	FLAT NO 804, GREEN ABODE, PLOT NO 65, SECTOR-19, AIROLI, NEAR VPM INTERNATIONAL SCHOOL, NAVI MUMBAI 400708\r\n		\N	131	2014-03-01 07:29:03.851347	2014-03-01 07:29:03.851347	sarita-avinash-shetty	19.1598725999999999	72.99920130000001	\N	9967813980/7303047986	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	82	1	3375	400708	2	f
117	1115	Scorp Enterprises	1115	MR.MAYUR A PATIL	"HOUSE NO. 760, PLOT NO 338 A, SURSHREE NIWAS, SECTOR- 22,                         \r\nTURBHE, NAVI MUMBAI- 400705\r\n"\r\n\r\n		\N	121	2014-03-01 07:31:21.648376	2014-03-01 07:31:21.648376	mr-mayur-a-patil	19.7514797999999985	75.7138884000000019	\N	9870697731, 9664356261	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	114	1	10330	400613	2	f
118	1116	Scorp Enterprises	1116	 MR. ASHOK RAMCHANDRA PATIL 	"HOUSE NO. 760, PLOT NO 338 A, SURSHREE NIWAS, SECTOR- 22,                         \r\nTURBHE, NAVI MUMBAI- 400705\r\n"\r\n		\N	121	2014-03-01 07:34:28.163439	2014-03-01 07:34:28.163439	mr-ashok-ramchandra-patil	19.7514797999999985	75.7138884000000019	\N	9870697731, 9664356261	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	114	1	10330	400613	2	f
119	1117	Scorp Enterprises	1117	MR KANCHANAPALLI PAVAN SESHU VENKATA RAO	FLAT NO 702, 7TH FLR, BLDG NO 3B, MHADA, POWAI LAKE VIEW APPARTMENTS, BEHIND POWAI POLICE STATIO, MUMBAI 76\r\n		\N	80	2014-03-04 07:25:46.966381	2014-03-04 07:25:46.966381	mr-kanchanapalli-pavan-seshu-venkata-rao	19.7514797999999985	75.7138884000000019	\N	9833866499	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	15	1	551	400076	1	f
120	1118	Scorp Enterprises	1118	PUSHPA TIWARI 	329 ,34 , SURABHI CO OPERATIVE HOUSING SOC, PANT NAGAR HINGWALA LANE , NEAR POPULAR HOTEL GHATKOPAR E MUMBAI 400077\r\n		\N	78	2014-03-04 07:28:54.280443	2014-03-04 07:28:54.280443	pushpa-tiwari	19.0777314999999987	72.9061902999999916	\N	9987084553/9987084552	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400075	1	f
121	1119	Scorp Enterprises	1119	TRUPIT PRAMOD SALVI 	1 A 33, KALPATARU AURA, LBS RUAD OPP , R CITY MALL GHATKOPAR  MUMBAI 400086\r\n		\N	82	2014-03-04 07:31:34.034806	2014-03-04 07:31:34.034806	trupit-pramod-salvi	19.0865009999999984	72.8888390000000044	\N	9833509827	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
122	1120	Scorp Enterprises	1120	DR. SHALU SHISHIR GUPTA	FLAT NO 502, CHHADVA AVENUE, PLOT NO 61, SECTOR 2A, TERNA BUS STOP, KOPARKHAIRANE, NEAR MAHAPE BRIDGE, NAVI MUMBAI 400709\r\n		\N	132	2014-03-04 07:38:19.266045	2014-03-04 07:38:19.266045	dr-shalu-shishir-gupta	19.1109144999999998	73.0013206999999937	\N	022-27549875\t9870403485	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
124	1122	Scorp Enterprises	1122	MR.SOUNDARARAJAN SUBRAMANIAM	BLDG NO.I-4,2ND FLOOR,FLAT  NO.6,SPAGHETTI HOUSING COMPLEX,SECTOR NO.15,KHARGHAR,NAVI MUMBAI - 410210 \r\n		\N	178	2014-03-04 07:42:42.026325	2014-03-04 07:42:42.026325	mr-soundararajan-subramaniam	19.0381949000000006	73.0796105000000011	\N	9869060806 /9869073202	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	99	1	7192	410210	2	f
126	1124	Scorp Enterprises	1124	SUMIT RANJAN	FLAT NO 406, PANCHVATI A WING, PANCH SHRISHTI COMPLEX, CHANDIVALI, POWAI, NEAR S M SHETTY SCHOOL, MUMBAI 400072\r\n		\N	80	2014-03-05 07:48:37.97228	2014-03-05 07:48:37.97228	sumit-ranjan	19.1063666999999988	72.8899466000000018	\N	9619366408	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400076	1	f
123	1121	Scorp Enterprises	1121	MANAS LAXMIKANT KHOLE	FLAT NO H-603, LAKE VIEW CHSL, SECTOR 14, AIROLI, NEAR ASIAN'S BURNS HOSPITAL, NAVI MUMBAI 400708\r\n		\N	131	2014-03-04 07:41:52.408092	2014-03-04 07:41:52.408092	manas-laxmikant-khole	19.1598725999999999	72.99920130000001	\N	9167079439	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400708	2	f
125	1123	Scorp Enterprises	1123	KAMLESH BHIMJI HEMANI	104 SHREE RAJSHREE VIHAR , CHITTARANJAN NAGAR D COLONY RAJAWADI , VIDYAVIHAR E 400070\r\n		\N	81	2014-03-05 07:32:39.01091	2014-03-05 07:32:39.01091	kamlesh-bhimji-hemani	19.0707531999999986	72.878132199999996	\N	21026389\t9930138140/9967266454	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
127	1125	Scorp Enterprises	1125	SHRI AVINASH RAGHUNATH SHEWALE	A-601, SHRIKRISHNA COMPLEX CHS LTD, PLOT NO 16-A, SEC 14, SANPADA, \r\n		\N	197	2014-03-05 07:52:13.19815	2014-03-05 07:52:13.19815	shri-avinash-raghunath-shewale	19.0606201999999989	73.0139616000000018	\N	9423992663	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	72	1	5087	400705	2	f
128	1126	Scorp Enterprises	1126	PRANIT SHIVAJI PATIL	D-12 / 2, SAHYADRI CHS, SECTOR 8, SANPADA, NAVI MUMBAI 400705\r\n		\N	197	2014-03-05 07:52:55.28309	2014-03-05 07:52:55.28309	pranit-shivaji-patil	19.0624169999999999	73.0082420999999897	\N	022-27759363\t9773425015	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
129	1127	Scorp Enterprises	1127	RUPA GOPAL MOGAVEERA 	B 57 , ROWHOUSE , SECTOR 4 , OPP FIRE BRIGARDE , AIROLI  400708\r\n		\N	131	2014-03-05 07:53:36.343954	2014-03-05 07:53:36.343954	rupa-gopal-mogaveera	19.1511828999999985	72.9996314999999925	\N	8879770883/9820551988	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400708	2	f
130	1128	Scorp Enterprises	1128	SULBHA ATUL KHAVANEKAR	2 B / 806 DREAMS,L.B.S.MARG,OPP PAWAR PUBLIC SCHOOL,BHANDUP WEST MUMBAI 400078\r\n		\N	83	2014-03-07 08:10:51.812538	2014-03-07 08:10:51.812538	sulbha-atul-khavanekar	19.1499009999999998	72.9311340000000001	\N	022-21660724\t9833599785/9820860893	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400078	1	f
132	1130	Scorp Enterprises	1130	ANUBHAV  HIRAMAN  PATIL	NO RESI		\N	84	2014-03-07 08:17:05.206897	2014-03-07 08:17:05.206897	anubhav-hiraman-patil	19.1358792000000015	73.0081429999999898	\N	2267781546	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400079	1	t
133	1131	Scorp Enterprises	1131	MEENAL  ANUBHAV  PATIL	NO RESI		\N	84	2014-03-07 08:19:26.179466	2014-03-07 08:19:26.179466	meenal-anubhav-patil	19.1358792000000015	73.0081429999999898	\N	2267783000	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400079	1	t
134	1132	Scorp Enterprises	1132	SADASHIV PUNDLIK PATIL	A22 / 3:4, POOJA CHS, OPP WELCOME SWEET MART, SECTOR 15, AIROLI, NAVI MUMBAI 400708\r\n		\N	131	2014-03-07 08:20:50.071493	2014-03-07 08:20:50.071493	sadashiv-pundlik-patil	19.1500810000000001	72.9907137000000006	\N	9987456897	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400708	2	f
135	1133	Scorp Enterprises	1133	AJIT PURUSHOTTAM MHAPANKAR	306, A/12 SIDDHIVINAYAK SOC, SEC-9, GHARONDA, GHANSOLI, 400701\r\n		\N	123	2014-03-07 08:22:25.890714	2014-03-07 08:22:25.890714	ajit-purushottam-mhapankar	19.1272720000000014	72.9966780000000028	\N	8108023762/9619571399	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400701	2	f
136	1134	Scorp Enterprises	1134	Mr.Vivek Panbude	HOUSE NO. 503, Pandurang apartment, PLOT NO 23  A, Sector- 44A, Seawoods, Nerul - 400706\r\n\r\n		\N	129	2014-03-07 08:25:26.782532	2014-03-07 08:25:26.782532	mr-vivek-panbude	19.0120179	73.0114016999999933	\N	9004377679	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	115	1	15285	400706	2	f
137	1135	Scorp Enterprises	1135	BASTAV SHAILENDRA NILKANTH	B/9, SAGAR PRASAD CHS LTD, GAVAN PADA, NEAR FIRE BRIGADE, MULUND MUMBAI 81\r\n		\N	85	2014-03-08 07:19:31.972868	2014-03-08 07:19:31.972868	bastav-shailendra-nilkanth	19.7514797999999985	75.7138884000000019	\N	022-25636373\t9833345232	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400080	1	f
138	1136	Scorp Enterprises	1136	VIJAY ANANT BHOSALE 	ROOM NO 3, GAWANDE NIWAS, VEER SAVARKAR ROAD DATAR COLONY , NEAR GANESH TEMPLE , BHANDUP E \r\n		\N	49	2014-03-08 07:20:29.060814	2014-03-08 07:20:29.060814	vijay-anant-bhosale	19.1368259999999992	72.939562400000014	\N	9221387873	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400042	1	f
139	1137	Scorp Enterprises	1137	RAJEEV KUMAR	C 502 FIESTA VASANT OSCAR, LBS ROAD MULUND W MUMBAI 400080\r\n		\N	85	2014-03-08 07:21:28.665158	2014-03-08 07:21:28.665158	rajeev-kumar	19.1826475999999992	72.9491306999999978	\N	63985090	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400080	1	f
140	1138	Scorp Enterprises	1138	AARTEE ABHIJIT KAKATKAR	B-8,KAVITA KIRAN,NEELAM NAGAR,MULUND-EAST-MUMBAI-400081\r\n		\N	86	2014-03-08 07:22:23.472296	2014-03-08 07:22:23.472296	aartee-abhijit-kakatkar	19.1750630000000015	72.9637266999999952	\N	9819982931	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400081	1	f
141	1139	Scorp Enterprises	1139	PRAVIN ANANT MOHARE	FLAT NO 18, SASWATI CHS 4/D WING, LOK PRIYA PARK, NR BHANDUPESHWAR KUND, BHANDUP EAST, MUMBAI 42\r\n		\N	49	2014-03-08 07:23:12.398102	2014-03-08 07:23:12.398102	pravin-anant-mohare	19.7514797999999985	75.7138884000000019	\N	9820989746	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	66	1	16720	400042	1	f
142	1140	Scorp Enterprises	1140	MR. RAJEEV DAS 	A/3/3/6 , MILLENIUM TOWERS, SECTOR- 9, SANPADA, NAVI MUMBAI- 400705. \r\n		\N	197	2014-03-08 07:23:50.87099	2014-03-08 07:23:50.87099	mr-rajeev-das	19.0583579999999984	73.0120898999999923	\N	27750614\t9869407079	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	114	1	10330	400705	2	f
143	1141	Scorp Enterprises	1141	RABINDRA NATH CHOUDHARY 	CHAMUNDA ENCLAVE, FLAT NO 302, PLOT NO 89, SECTOR 8A, AIROLI , NAVI MUMBAI -708\r\n		\N	131	2014-03-08 07:24:37.424461	2014-03-08 07:24:37.424461	rabindra-nath-choudhary	19.1431265999999987	72.9969871999999924	\N	9833820702	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400708	2	f
144	1142	Scorp Enterprises	1142	ANANDA CHANDU MANE 	A/405, SAI SAGAR COMPLEX CHS , PALM BEACH ROAD , SANPADA , SCTOR -13 , NR SADHU WASWANI SCHOOL , NAVI MUMANI 400705 \r\n		\N	197	2014-03-08 07:26:05.218892	2014-03-08 07:26:05.218892	ananda-chandu-mane	19.0574665000000003	73.0110095999999942	\N	9969131455	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400705	2	f
145	1143	Scorp Enterprises	1143	MR RITESH NAIK	11A/52,MMRDA COMP. OPP DURGA NAGAR,JOG-VIKHROLI LINK ROAD,ANDHERI EAST 400093\r\n		\N	72	2014-03-10 07:33:02.422418	2014-03-10 07:33:02.422418	mr-ritesh-naik	19.1310393999999988	72.8751846999999913	\N	9619450203	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	35	1	1266	400069	1	f
146	1144	Scorp Enterprises	1144	DIPTI ASHWIN SHROFF                                	F 1/52, GODREJ HILLSIDE COLONY,PHIROJSHAHNAGAR , VIKHROLI --79 \r\n		\N	84	2014-03-10 07:54:13.409106	2014-03-10 07:54:13.409106	dipti-ashwin-shroff	19.1046510000000005	72.9317819999999983	\N	9833088863	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	120	1	1406	400079	1	f
147	1145	Scorp Enterprises	1145	YOGESH VISHNU KAMBLE 	ROOM NO 10, SUBHASH NAGAR NAHUR VILLAGE ROAD OPP VASANT STORE , BHANDUP W MUMBAI 400078 \r\n		\N	83	2014-03-10 07:55:24.283659	2014-03-10 07:55:24.283659	yogesh-vishnu-kamble	19.1499009999999998	72.9311340000000001	\N	9867945409	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	118	1	11710	400078	1	f
148	1146	Scorp Enterprises	1146	DASHARATH RAVIKANT AKERKAR	ROOM NO CHAWL NO 9, PITRUKRUPA CHAWL, MIRASHI NAGAR , NEAR ANKUR HOSPITAL KANJUR MARG E 400042 \r\n		\N	195	2014-03-10 07:56:07.292277	2014-03-10 07:56:07.292277	dasharath-ravikant-akerkar	19.1322811000000002	72.9357214999999997	\N	9322009993	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400042	1	f
149	1147	Scorp Enterprises	1147	KUNTAL MAITI 	4803, MAYURESH PARK , LAKE ROAD BHANDUP W, ASIAN PAINTS, MUMBAI 400078 \r\n		\N	83	2014-03-10 07:56:52.751096	2014-03-10 07:56:52.751096	kuntal-maiti	19.1520170999999984	72.9165265999999974	\N	9220163961	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400078	1	f
150	1148	Scorp Enterprises	1148	SWAPNIL BABASAHEB MANE	NO RESI		\N	80	2014-03-10 07:58:46.883694	2014-03-10 07:58:46.883694	swapnil-babasaheb-mane	19.1358792000000015	73.0081429999999898	\N	8879126547	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400076	1	t
151	1149	Scorp Enterprises	1149	SUSHAMA SHRINGARE	NO RESI		\N	196	2014-03-10 08:01:36.787896	2014-03-10 08:01:36.787896	sushama-shringare	19.1358792000000015	73.0081429999999898	\N	022-67919595\t9769919780	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400710	2	t
152	1150	Scorp Enterprises	1150	PRASAD YASHWANT SALUNKHE	FLAT NO 201, RAMESHWARAM APARTMENT, VASHI GAON, PLOT NO 276, BHARAT SEVASHRAM, SECTOR 31A, VASHI, NAVI MUMBAI\r\n		\N	125	2014-03-10 08:03:21.219851	2014-03-10 08:03:21.219851	prasad-yashwant-salunkhe	19.0793549999999996	73.0000330000000019	\N	022-27811098\t9664027127	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
153	1151	Scorp Enterprises	1151	PRASAD VISHNU SAWANT	NO RESI		\N	119	2014-03-10 08:04:00.444624	2014-03-10 08:04:00.444624	prasad-vishnu-sawant	19.1358792000000015	73.0081429999999898	\N	022-39194000, EXT 2216264\t9833383146	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400611	2	t
154	1152	Scorp Enterprises	1152	SNEHA PRASAD SAWANT	NO RESI		\N	131	2014-03-10 08:07:32.035546	2014-03-10 08:07:32.035546	sneha-prasad-sawant	19.1358792000000015	73.0081429999999898	\N	022-39194000, EXT 2211358\t9833784544	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400708	2	t
155	1153	Scorp Enterprises	1153	RAVIKIRAN CHAVAN	D-13,1 / 4, SAGAR CHS, SECTOR NO 29, VASHI NAVI MUMBAI\r\n		\N	125	2014-03-10 08:09:04.310421	2014-03-10 08:09:04.310421	ravikiran-chavan	19.0869326000000008	73.004275199999995	\N	9867046302	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	39	1	12701	400703	2	f
131	1129	Scorp Enterprises	1129	MR RAVINDRA MADHUSUDAN MUNAGEKAR 	19, MULUND PRATIMA COOP HSG SOCIETY,INDRAPRASTHA PARK,NEAR JANAKALYAN BANK, 90 FEET ROAD,MULUND EAST,MUMBAI-400081 \r\n		\N	86	2014-03-07 08:14:23.934762	2014-03-07 08:14:23.934762	mr-ravindra-madhusudan-munagekar	19.1711197999999996	72.9618923000000024	\N	022-25633225\t9773363067	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400081	1	f
156	1154	Scorp Enterprises	1154	VIRAV UPADHYAY	34, YASHODA NIWAS, RAJWADI RD, VIDYA VIHAR\r\n		\N	81	2014-03-11 07:00:57.459718	2014-03-11 07:00:57.459718	virav-upadhyay	19.1734304000000009	72.9527003999999977	\N	022-21028169\t9769250524	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400077	1	f
157	1155	Scorp Enterprises	1155	MUKESH CHOURASIA	B-804 GUNDECHA ALTURA,OPP ST.XAVIER SCHOOL,LBS MARG,KANJURMARG WEST MUMBAI 400078\r\n		\N	195	2014-03-11 07:03:00.501706	2014-03-11 07:03:00.501706	mukesh-chourasia	19.1338787000000004	72.9281625999999932	\N	022-2578876\t9987581831	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400078	1	f
158	1156	Scorp Enterprises	1156	SAROJ INDERPAL BHANDARI	E/13, MAMTA APT, LBS RD, OPP SANTOSHI MATA MANDIR, MULUNS W\r\n		\N	85	2014-03-11 07:12:09.113259	2014-03-11 07:12:09.113259	saroj-inderpal-bhandari	19.7514797999999985	75.7138884000000019	\N	022-25622736\t7666477558	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400080	1	f
159	1157	Scorp Enterprises	1157	AYUSHI INDERPAL BHANDARI	E/13, MAMTA APT, LBS RD, OPP SANTOSHI MATA MANDIR, MULUNS W\r\n		\N	85	2014-03-11 07:15:45.621327	2014-03-11 07:15:45.621327	ayushi-inderpal-bhandari	19.7514797999999985	75.7138884000000019	\N	9867926372	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400080	1	f
160	1158	Scorp Enterprises	1158	ABHINAV NIGAM	PLOT NO 60, SECTOR 4, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	132	2014-03-11 07:19:20.616998	2014-03-11 07:19:20.616998	abhinav-nigam	19.1045237999999991	73.0042926999999935	\N	9167910541	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
175	1173	Scorp Enterprises	1173	CONY SEBASTINE DCOSTA	101/MAHVIR KUTIR, PLOT NO 40, SEC 1,KOPARKHARINE, NR ADARSH HOTEL, NAVI MUMBAI\r\n		\N	132	2014-03-12 07:37:18.93031	2014-03-12 07:37:18.93031	cony-sebastine-dcosta	19.0330487999999995	73.0296625000000006	\N	9004496906	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400709	2	f
163	1161	Scorp Enterprises	1161	CHANDRAKANT HANDU KOLI 	A WING RNO 304, GURUDATTA COMPLEX , SECTOR 8-A, OPP YASH PARADISE AIROLI , NAVI MUMBAI THANE 400708\r\n		\N	131	2014-03-11 07:25:52.771496	2014-03-11 07:25:52.771496	chandrakant-handu-koli	\N	\N	\N	9967131378	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400708	2	f
164	1162	Scorp Enterprises	1162	HARJEET SINGH	A-1002 GUNDECHA HILLS,NEAR SM SHETTY SCHOOL,CHANDIVALI ROAD POWAI MUMBAI 400072\r\n		\N	80	2014-03-12 07:11:29.54268	2014-03-12 07:11:29.54268	harjeet-singh	19.1136561	72.9035368999999918	\N	022-40157262\t9819546884/9930709841	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400076	1	f
165	1163	Scorp Enterprises	1163	NISHA NARAYAN GABHANE	NO RESI		\N	80	2014-03-12 07:12:51.858549	2014-03-12 07:12:51.858549	nisha-narayan-gabhane	19.1358792000000015	73.0081429999999898	\N	022-61267673\t9833747827	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400076	1	t
166	1164	Scorp Enterprises	1164	Linit C Kulkarni 	B1, 12/5, Millennium Towers, Sector-9, Sanpada, Navi Mumbai – 400705\r\n		\N	197	2014-03-12 07:14:38.164366	2014-03-12 07:14:38.164366	linit-c-kulkarni	19.0568680000000015	73.013477299999991	\N	9960699473	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	38	1	11786	400705	2	f
167	1165	Scorp Enterprises	1165	DATTATRAY S GADEKAR	DOKE BAINDER CHAWL, ROOM NO 6, GOLIBAR RD, NEELKAMAL MITRA MADAL, GHATKOPARW\r\n		\N	82	2014-03-12 07:19:41.054045	2014-03-12 07:19:41.054045	dattatray-s-gadekar	19.7514797999999985	75.7138884000000019	\N	022-25103503\t9967338223	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
168	1166	Scorp Enterprises	1166	VEENA P NAIR 	NO RESI		\N	80	2014-03-12 07:24:15.271739	2014-03-12 07:24:15.271739	veena-p-nair	19.1358792000000015	73.0081429999999898	\N	39481613\t8097148529	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400076	1	t
169	1167	Scorp Enterprises	1167	ANURADHA AMIT NAGARSEKER	NO RESI		\N	80	2014-03-12 07:27:17.120246	2014-03-12 07:27:17.120246	anuradha-amit-nagarseker	19.1358792000000015	73.0081429999999898	\N	2267766776\t9987310204	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400076	1	t
170	1168	Scorp Enterprises	1168	AMITA JAYSING KHAMKAR	NO RESI		\N	80	2014-03-12 07:29:22.119778	2014-03-12 07:29:22.119778	amita-jaysing-khamkar	19.1358792000000015	73.0081429999999898	\N	9833090040	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	15	1	551	400076	1	t
171	1169	Scorp Enterprises	1169	HEENA NARAYANRAO GABHANE	NO RESI		\N	125	2014-03-12 07:31:22.187195	2014-03-12 07:31:22.187195	heena-narayanrao-gabhane	19.1358792000000015	73.0081429999999898	\N	022-39525047\t9819194731	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400703	2	t
172	1170	Scorp Enterprises	1170	SHRI MANGESH NIRANJAN GAWHALE	NO RESI		\N	132	2014-03-12 07:33:11.289859	2014-03-12 07:33:11.289859	shri-mangesh-niranjan-gawhale	\N	\N	\N	9320019092	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	28	1	5165	400709	2	t
173	1171	Scorp Enterprises	1171	SHEETAL KRISHNA CHATUR	NO RESI		\N	196	2014-03-12 07:35:06.500101	2014-03-12 07:35:06.500101	sheetal-krishna-chatur	19.1358792000000015	73.0081429999999898	\N	8652463377 / 9167236818	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	94	1	13757	400710	2	t
174	1172	Scorp Enterprises	1172	Mr Sanjay Waghmare	Flat No B-204,2nd Floor,Sai Sangat CHS, Plot No-4, Sec-3, Sanpada (E),\r\n		\N	197	2014-03-12 07:36:34.792066	2014-03-12 07:36:34.792066	mr-sanjay-waghmare	19.0641561000000017	73.0105125999999984	\N	022-27758235\t9930081221	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	89	1	16215	400705	2	f
177	1175	Scorp Enterprises	1175	PREMLAL MAHENDRA SHAH	15, GAURAV APARTMENT, NAHUR ROAD, MULUND-WEST\r\n		\N	85	2014-03-14 07:55:37.992001	2014-03-14 07:55:37.992001	premlal-mahendra-shah	19.1546596999999998	72.9466563999999948	\N	9769997657	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400080	1	f
178	1176	Scorp Enterprises	1176	UMESH GOVIND PANWALKAR	A-202, SANNDHI PARK CHS LTD,HARI OM NAGAR, MULUND-EAST-400081\r\n		\N	86	2014-03-14 08:00:13.268473	2014-03-14 08:00:13.268473	umesh-govind-panwalkar	19.1602277000000001	72.972630499999994	\N	9322263837 / 9819104995	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400081	1	f
162	1160	Scorp Enterprises	1160	RAJENDRA NIWRATI PAWAR	FLAT NO 202, 2ND FLOOR, CASA MARINA, PLOT NO 230A, SECTOR 19A, KOPARKHAIRANE, NEAR RANA DEVI GARDEN, NAVI MUMBAI 400709\r\n		\N	132	2014-03-11 07:25:00.449401	2014-03-11 07:25:00.449401	rajendra-niwrati-pawar	19.0211937000000013	73.011655300000001	\N		verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
176	1174	Scorp Enterprises	1174	RAVINDRA VISHWANATH SONAR	ROOM NO 0287/024, ASHTAVINAYAK RAHIVASHI CHAWL , NR PUVAKA COMPOUND ILTHANPADA DIGHA , AIROLI 400708\r\n		\N	131	2014-03-12 07:37:58.010949	2014-03-12 07:37:58.010949	ravindra-vishwanath-sonar	19.1749293999999999	72.9963874999999973	\N	9967436180	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400708	2	f
179	1177	Scorp Enterprises	1177	JYOTI UMESH PANWALKAR	A-202, SANNDHI PARK CHS LTD,HARI OM NAGAR, MULUND-EAST-400081\r\n		\N	86	2014-03-14 08:01:31.222587	2014-03-14 08:01:31.222587	jyoti-umesh-panwalkar	19.1602277000000001	72.972630499999994	\N	9322263837 / 9819104995	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400081	1	f
180	1178	Scorp Enterprises	1178	 Mr. Gaurav Nag 	FLAT NO 402, MADHUBAN SOCIETY, PLOT NO 25, SECTOR 06, AIROLI, NEAR JUPITER BLDG, AIROLI, NAVI MUMBAI- 400708\r\n		\N	131	2014-03-14 08:03:53.958817	2014-03-14 08:03:53.958817	mr-gaurav-nag	19.1511828999999985	72.9996314999999925	\N	9619134130, 9322895008	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	90	1	3736	400708	2	f
181	1179	Scorp Enterprises	1179	Mrs Prachi Sanjeev Naidu	no resi		\N	196	2014-03-14 08:04:53.881753	2014-03-14 08:04:53.881753	mrs-prachi-sanjeev-naidu	19.1358792000000015	73.0081429999999898	\N	022-41842000\t9920990131	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400710	2	t
182	1180	Scorp Enterprises	1180	MONA AGARWAL	no resi		\N	125	2014-03-14 08:06:22.144187	2014-03-14 08:06:22.144187	mona-agarwal	19.1358792000000015	73.0081429999999898	\N	022-61217156\t9769089991	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	45	1	6249	400703	2	t
183	1181	Scorp Enterprises	1181	YASHODHAN ARUN VYAVAHARI	NO RESI		\N	131	2014-03-14 08:07:58.498405	2014-03-14 08:07:58.498405	yashodhan-arun-vyavahari	19.1358792000000015	73.0081429999999898	\N	022-61714500\t9930122883/9930122884	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400708	2	t
184	1182	Scorp Enterprises	1182	AMOL BHALACHANDRA SURYAWANSHI	NO RESI		\N	125	2014-03-14 08:09:17.114728	2014-03-14 08:09:17.114728	amol-bhalachandra-suryawanshi	19.1358792000000015	73.0081429999999898	\N	022-27661924\t9594669479 / 9922294773	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400703	2	t
185	1183	Scorp Enterprises	1183	KALIYAPERUMAL JAYARAMAN	E1 / 2 : 1, SECTOR 1, E1 CIDCO BUILDING, E TYPE OWNER'S ASSOCIATION, BEHIND ICICI BANK, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-03-14 08:11:05.798054	2014-03-14 08:11:05.798054	kaliyaperumal-jayaraman	19.0793549999999996	73.0000330000000019	\N	9167987813	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
186	1184	Scorp Enterprises	1184	MR GURUSIDDAPRABHU DUNDAPPA GALAGALI 	"G-7/2:1, KALPATARU COOP HOUSING SOCIETY,SECTOR 14, NEAR NATIONAL BURNS HOSPITAL, AIROLI, NAVI MUMBAI-400708\r\n"\r\n		\N	131	2014-03-14 08:11:49.056271	2014-03-14 08:11:49.056271	mr-gurusiddaprabhu-dundappa-galagali	19.7514797999999985	75.7138884000000019	\N	9167495301	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400708	2	f
187	1185	Scorp Enterprises	1185	MONA AGARWAL	B-704, MAYFAIR SOATA GREENS, VIKHROLI-WEST-400079\r\n		\N	84	2014-03-15 07:50:26.631543	2014-03-15 07:50:26.631543	mona-agarwal--2	19.1062840999999999	72.9167635999999959	\N	022-42155515\t9769089991	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	45	1	6249	400079	1	f
188	1186	Scorp Enterprises	1186	SHRI NATH GARG 	"FLAT  NO 502, MERCURY,  SUNCITY COMPLEX,  POWAI , MUMBAI -400076\r\n"\r\n		\N	80	2014-03-15 07:51:10.574893	2014-03-15 07:51:10.574893	shri-nath-garg	19.7514797999999985	75.7138884000000019	\N	8879652238	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	81	1	1109	400076	1	f
189	1187	Scorp Enterprises	1187	Mr Vilas Madhukar Narkhede	1 B/H Near Hanuman Mandir Saraswati Chawl,Waman Master wadi Nityanand Nagar Ghatkopar west\r\n		\N	82	2014-03-15 07:54:01.707331	2014-03-15 07:54:01.707331	mr-vilas-madhukar-narkhede	19.0951711000000017	72.9157883999999967	\N	9423091555	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	27	1	7124	400077	1	f
190	1188	Scorp Enterprises	1188	BHAGYASHREE HARSHAD JOSHI 	NO RES		\N	123	2014-03-15 08:00:21.541575	2014-03-15 08:00:21.541575	bhagyashree-harshad-joshi	19.1795481999999993	72.8548710999999969	\N		ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	27	1	7124	400701	2	t
191	1189	Scorp Enterprises	1189	HARSHAD PRABHAT JOSHI	no res		\N	125	2014-03-15 08:01:46.071991	2014-03-15 08:01:46.071991	harshad-prabhat-joshi	19.1795481999999993	72.8548710999999969	\N	67928690\t9820633193	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	27	1	7124	400703	2	t
192	1190	Scorp Enterprises	1190	PRAKASH REDDY	no res		\N	196	2014-03-15 08:03:08.902918	2014-03-15 08:03:08.902918	prakash-reddy	19.1795481999999993	72.8548710999999969	\N	9819348302	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400710	2	t
193	1191	Scorp Enterprises	1191	SANDHYA HARISHCHNDRA MORE	NO RES		\N	196	2014-03-15 08:07:22.275996	2014-03-15 08:07:22.275996	sandhya-harishchndra-more	19.1795481999999993	72.8548710999999969	\N	9819239302	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400710	2	t
194	1192	Scorp Enterprises	1192	MOHAMMED SHAHID POONAWALA 	NO RES		\N	196	2014-03-15 08:09:27.684569	2014-03-15 08:09:27.684569	mohammed-shahid-poonawala	19.1795481999999993	72.8548710999999969	\N	27695430\t976987086	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400710	2	t
195	1193	Scorp Enterprises	1193	Mr Amit Vilas Narkhede	NO RES		\N	131	2014-03-15 08:11:10.009073	2014-03-15 08:11:10.009073	mr-amit-vilas-narkhede	19.1795481999999993	72.8548710999999969	\N	9769118322	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	27	1	7124	400708	2	t
196	1194	Scorp Enterprises	1194	SACHIN ANKUSH SABLE	NO RESI		\N	84	2014-03-18 08:18:52.428279	2014-03-18 08:18:52.428279	sachin-ankush-sable	19.1358792000000015	73.0081429999999898	\N	022-66860500\t7738141882 / 9967821122	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400079	1	t
197	1195	Scorp Enterprises	1195	SACHIN DHONDIRAM CHAVAN	NO RESI		\N	80	2014-03-18 08:20:34.944813	2014-03-18 08:20:34.944813	sachin-dhondiram-chavan	19.1358792000000015	73.0081429999999898	\N	022-67326153\t9970967850 / 9561511299	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400076	1	t
198	1196	Scorp Enterprises	1196	RAVINDER GUPTA 	NO RESI		\N	84	2014-03-18 08:21:41.115409	2014-03-18 08:21:41.115409	ravinder-gupta	19.1358792000000015	73.0081429999999898	\N	7738220103	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400079	1	t
199	1197	Scorp Enterprises	1197	ASHISH MAYEKAR	NO RESI		\N	84	2014-03-18 08:23:13.24142	2014-03-18 08:23:13.24142	ashish-mayekar	\N	\N	\N	9819100502 / 9833195856	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	52	1	10331	400079	1	t
201	1199	Scorp Enterprises	1199	GOVIND PRABHAKAR DHURI	NO RESI		\N	131	2014-03-18 08:27:05.387745	2014-03-18 08:27:05.387745	govind-prabhakar-dhuri	19.1358792000000015	73.0081429999999898	\N	9664509019	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400708	2	t
202	1200	Scorp Enterprises	1200	MR.DATTAJI DESHMUKH 	ROOM NO. 562, SECTOR-8, SSI, TRIMURTI NIWAS, KOPARKHAIRANE, NAVI MUMBAI- 400709\r\n		\N	132	2014-03-18 08:28:45.472122	2014-03-18 08:28:45.472122	mr-dattaji-deshmukh	19.0997616999999984	73.0021533999999974	\N	9619523169	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	90	1	3736	400709	2	f
204	1202	Scorp Enterprises	1202	PRAVIN RAVIKANT SAWANT 	NO RESI		\N	125	2014-03-18 08:33:27.892967	2014-03-18 08:33:27.892967	pravin-ravikant-sawant	19.1358792000000015	73.0081429999999898	\N	2241581129\t9892668240	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400703	2	t
203	1201	Scorp Enterprises	1201	SHWETA SAGAR 	LAKE VIEW CO OPRATIVE SOC, H 6, 1/1, SECTOR 14 AIROLI , NEAR NATION BURN CENTRE, AIROLI 400708 \r\n		\N	127	2014-03-18 08:29:31.525253	2014-03-18 08:29:31.525253	shweta-sagar	19.1511828999999985	72.9996314999999925	\N	8452047616	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400705	2	f
205	1203	Scorp Enterprises	1203	DINESH NARAYANAN KUTTY	FLAT NO 11, UDYAN CHS, SAINATH NAGAR LANE, OFF LBS MARG, GHATKOPAR, MUMBAI 400086\r\n		\N	91	2014-03-19 07:14:29.149641	2014-03-19 07:14:29.149641	dinesh-narayanan-kutty	19.0872402000000001	72.9015430999999978	\N	022-25001437\t9920787021 / 9820666472	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400086	1	f
206	1204	Scorp Enterprises	1204	DNYANESHWAR AJINATH KHIRSAGAR 	NO RESI		\N	195	2014-03-19 07:15:57.243276	2014-03-19 07:15:57.243276	dnyaneshwar-ajinath-khirsagar	19.1358792000000015	73.0081429999999898	\N	022 257370000\t9975982169	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131		1	t
207	1205	Scorp Enterprises	1205	GAGE SUREKHA PANDHRINATH 	UTTARESHWAR CHAWAL NO 3, BHATWADI, NEAR RANVIR KRIDA MANDAL , GHATKOAR ,MUMBAI 400084 \r\n		\N	82	2014-03-19 07:19:04.422868	2014-03-19 07:19:04.422868	gage-surekha-pandhrinath	19.0975710999999997	72.9032369999999901	\N	9987876562	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
208	1206	Scorp Enterprises	1206	KAJAL DHIRAJ DHAGE 	NO RESI		\N	84	2014-03-20 07:09:50.901467	2014-03-20 07:09:50.901467	kajal-dhiraj-dhage	19.1358792000000015	73.0081429999999898	\N	66531253\t9967330041	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400079	1	t
209	1207	Scorp Enterprises	1207	DINESH THASAL 	NO RESI		\N	195	2014-03-20 07:11:30.539347	2014-03-20 07:11:30.539347	dinesh-thasal	19.1358792000000015	73.0081429999999898	\N	66915501	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400042	1	t
210	1208	Scorp Enterprises	1208	MANGESH THASAL 	NO RESI		\N	82	2014-03-20 07:13:26.457714	2014-03-20 07:13:26.457714	mangesh-thasal	19.1358792000000015	73.0081429999999898	\N	2267618000	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400077	1	t
211	1209	Scorp Enterprises	1209	ANITA MANISH PATIL	FLAT NO B-301, SHIVNER PLAZA, PLOT NO 8, SECTOR 15, NEAR PALM BEACH ROAD, NEAR SADHU VASWANI INTERNATIONAL SCHOOL, SANPADA, NAVI MUMBAI 400705\r\n		\N	197	2014-03-20 07:15:02.871958	2014-03-20 07:15:02.871958	anita-manish-patil	19.0606201999999989	73.0139616000000018	\N	9870634708 / 9870634700	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400705	2	f
212	1210	Scorp Enterprises	1210	JALINDAR RAMCHANDRA PAWAR	NO RESI		\N	123	2014-03-20 07:18:22.947017	2014-03-20 07:18:22.947017	jalindar-ramchandra-pawar	19.1358792000000015	73.0081429999999898	\N	022-27698899\t9768873867 / 9987891004	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400701	2	t
213	1211	Scorp Enterprises	1211	SREENI VASALU G	NO RESI		\N	196	2014-03-20 07:22:02.138552	2014-03-20 07:22:02.138552	sreeni-vasalu-g	19.1358792000000015	73.0081429999999898	\N	2227639100\t9930972952/9773030465 	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400708	2	t
214	1212	Scorp Enterprises	1212	MUKESH RAMCHANDRA KURAKULA	SANA APARTMET,PLOT NO.140/141,FLAT NO.301,SECTOR-5, SANPADA,NAVI MUMBAI-4000705\r\n		\N	197	2014-03-20 07:24:05.270882	2014-03-20 07:24:05.270882	mukesh-ramchandra-kurakula	19.7514797999999985	75.7138884000000019	\N	9930818585	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	46	1	6994	400705	2	f
225	1223	Scorp Enterprises	1223	SMITA MISHRA	FLAT NO A 401, SAWAN ELEGANCE CHS, PLOT NO 68/69, SECTOR 2A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	132	2014-03-21 07:48:11.50623	2014-03-21 07:48:11.50623	smita-mishra	19.0997616999999984	73.0021533999999974	\N	9004711878	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
232	1230	Scorp Enterprises	1230	MAHESH SURESH DHOBLI	F/6, 77, GODREJ HILLS SIDE COLONY, LBS MARG, VIKHROLI\r\n		\N	84	2014-04-03 07:21:38.349306	2014-04-03 07:21:38.349306	mahesh-suresh-dhobli	19.1069373999999996	72.9231862999999976	\N	9920460992	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400079	1	f
218	1216	Scorp Enterprises	1216	DIPTI RANJAN PALEI	\r\nNO RESI		\N	80	2014-03-21 07:35:00.116216	2014-03-21 07:35:00.116216	dipti-ranjan-palei	19.1358792000000015	73.0081429999999898	\N	9833450290	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	400076	1	t
226	1224	Scorp Enterprises	1224	BHAWANA JAIN	HOUSE NO 302, PLOT NO 169, SECTOR 12, VASHI, NEAR BLUE DIAMOND HOTEL, NAVI MUMBAI 400703\r\n		\N	125	2014-03-21 07:51:10.202319	2014-03-21 07:51:10.202319	bhawana-jain	19.0793546999999997	72.99920130000001	\N	9867741079	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
219	1217	Scorp Enterprises	1217	YOGESH DADA GHADAGE	NO RESI		\N	80	2014-03-21 07:37:16.914375	2014-03-21 07:37:16.914375	yogesh-dada-ghadage	19.1358792000000015	73.0081429999999898	\N	9920496299	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	34	1	1131	400076	1	t
220	1218	Scorp Enterprises	1218	SHRI RAJESH PETHE	NO RESI		\N	85	2014-03-21 07:39:05.249308	2014-03-21 07:39:05.249308	shri-rajesh-pethe	19.1358792000000015	73.0081429999999898	\N	9833788851	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	36	1	11708	400080	1	t
216	1214	Scorp Enterprises	1214	VIKAS TIWARI	ROW HOUSE NO R-210, SECTOR 4, NR CORPORATION BANK, AIROLI , NAVI MUMBAI\r\n		\N	127	2014-03-20 07:28:09.616238	2014-03-20 07:28:09.616238	vikas-tiwari	19.1511828999999985	72.9996314999999925	\N	022-27793189\t9833859760	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	89	1	16215	400708	2	f
221	1219	Scorp Enterprises	1219	RAMPRASAD K BHAT	D/503, SAINATH TOWERS, NEELAM NAGAR PHASE 2, MULUND EAST , MUMBAI 81\r\n		\N	86	2014-03-21 07:41:08.603282	2014-03-21 07:41:08.603282	ramprasad-k-bhat	19.7514797999999985	75.7138884000000019	\N	00000000	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	63	1	13034	400081	1	f
222	1220	Scorp Enterprises	1220	SHASHANK PARSHURAM PAWNARKAR 	NO RESI		\N	84	2014-03-21 07:42:54.490212	2014-03-21 07:42:54.490212	shashank-parshuram-pawnarkar	19.1358792000000015	73.0081429999999898	\N	9867633835	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380	400079	1	t
223	1221	Scorp Enterprises	1221	SMT TANYA MALHOTRA 	NO RES		\N	\N	2014-03-21 07:44:13.602069	2014-03-21 07:44:13.602069	smt-tanya-malhotra	19.1795481999999993	72.8548710999999969	\N	9818861616	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	14	1	4380		1	f
224	1222	Scorp Enterprises	1222	HARPREET SINGH BABBAR	B-1, PARMANU NAGAR, SECTOR 4, VASHI, NEAR HDFC ATM, NAVI MUMBAI 400703\r\n		\N	125	2014-03-21 07:45:54.863934	2014-03-21 07:45:54.863934	harpreet-singh-babbar	19.0793546999999997	72.99920130000001	\N	022-27823457\t8600022212 / 9820336141	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
215	1213	Scorp Enterprises	1213	Mr. I Rajiv Reddy 	Flat No. 202, shrishti , Plot No. 111, sector-11, kopar khairane, navi mumbai - 400709\r\n		\N	132	2014-03-20 07:25:16.267487	2014-03-20 07:25:16.267487	mr-i-rajiv-reddy	19.0940587000000015	73.01027160000001	\N	9920606407	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	90	1	3736	400709	2	f
227	1225	Scorp Enterprises	1225	SANJAY SUDAN LANDGE	A/1, SHANKAR SOCIETY, ASALFA VILLAGE, SHIVAJI NAGAR, GHATKOPAR (W), MUMBAI 400084\r\n		\N	91	2014-03-28 07:19:48.4585	2014-03-28 07:19:48.4585	sanjay-sudan-landge	19.0975710999999997	72.9032369999999901	\N	9223335541	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400086	1	f
228	1226	Scorp Enterprises	1226	RUPA SUDHIR GANDHI 	B/5, JAY BANDHU,90, FEET ROAD, GARODIA NAGAR,GHATKOPAR E \r\n		\N	81	2014-03-28 07:21:34.717666	2014-03-28 07:21:34.717666	rupa-sudhir-gandhi	19.075989400000001	72.9085991000000035	\N	2225064501\t9820115273	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400077	1	f
229	1227	Scorp Enterprises	1227	MINAL SINGLA	B-306, AASHISH CHS LTD, AMRUT NAGAR , GHATKOPAR W BANK OF INDIA MUMABI 400086\r\n		\N	82	2014-03-28 07:26:53.933442	2014-03-28 07:26:53.933442	minal-singla	19.0971164999999985	72.91357339999999	\N	9930035174	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400086	1	f
230	1228	Scorp Enterprises	1228	ELAMARAN THIYAGARAJAN	B-204, PARIMAL PARK, HARI OM NAGAR, MULUND W 81\r\n		\N	85	2014-04-03 07:18:36.9489	2014-04-03 07:18:36.9489	elamaran-thiyagarajan	19.1760480000000015	72.973247299999997	\N	9987084250/9820618046	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400080	1	f
231	1229	Scorp Enterprises	1229	SHRI. BHAVIN DOSHI	199 / 5471, MADHU MAHAL, PANT NAGAR, GHATKOPAR EAST, MUMBAI 400075\r\n		\N	78	2014-04-03 07:20:51.17567	2014-04-03 07:20:51.17567	shri-bhavin-doshi	19.0866350000000011	72.9091435999999931	\N	9892566349	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	81	1	1109	400075	1	f
233	1231	Scorp Enterprises	1231	Mr Vivek Shantaram Shinde	B/4 DEENDAYAL NAGARNAVGHAR ROAD OPP LAXMIBHAI SCHOOL MULUND EASTMUMBAI-400081\r\n		\N	86	2014-04-03 07:22:59.007298	2014-04-03 07:22:59.007298	mr-vivek-shantaram-shinde	19.1602277000000001	72.972630499999994	\N	022-25633665\t9004712721	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	62	1	4210	400081	1	f
234	1232	Scorp Enterprises	1232	SHRI DEEPAK KHADKA	FLAT NO 201, SECTOR 24, PLOT NO 261, SECT 22, BEHIND HOTEL SHIKARA, TURBHEGAON, \r\n		\N	121	2014-04-03 07:24:41.22889	2014-04-03 07:24:41.22889	shri-deepak-khadka	19.7514797999999985	75.7138884000000019	\N	123	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	14	1	4380	400613	2	f
235	1233	Scorp Enterprises	1233	MS. RAGINI TALATI 	A/2, GALAXY CHS, PLOT NO. 30, GROUND FLOOR, SECTOR- 2, VASHI, NAVI MUMBAI. NEAR NAVRATNA HOTEL\r\n		\N	125	2014-04-03 07:26:57.865167	2014-04-03 07:26:57.865167	ms-ragini-talati	\N	\N	\N	27821988\t9819163635/	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	90	1	3736	400703	2	t
236	1234	Scorp Enterprises	1234	MS. RAGINI TALATI 	A/2, GALAXY CHS, PLOT NO. 30, GROUND FLOOR, SECTOR- 2, VASHI, NAVI MUMBAI. NEAR NAVRATNA HOTEL\r\n		\N	125	2014-04-03 07:28:35.843063	2014-04-03 07:28:35.843063	ms-ragini-talati--2	19.7514797999999985	75.7138884000000019	\N	27821988\t9819163635/	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	90	1	3736	400703	2	f
217	1215	Scorp Enterprises	1215	yogesh	add1 \r\naadd12\r\nadd3	MIDC	\N	28	2014-03-21 07:30:31.277264	2014-03-21 07:30:31.277264	yogesh	19.7514797999999985	75.7138884000000019	\N	9819288158	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400022	1	f
237	1235	Scorp Enterprises	1235	DEEPAK RATILAL KACHA	ROOM NO. 02, BLDG NO. B 1, M S E B COLONY, SECTOR 3, VASHI, NAVI MUMBAI 400703\r\n		\N	125	2014-04-03 07:29:53.599547	2014-04-03 07:29:53.599547	deepak-ratilal-kacha	19.0735104	72.994404000000003	\N	9820852256/9820852292\t9820852256	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400703	2	f
248	1246	Scorp Enterprises	1246	test Data	Test Data	Andheri	\N	121	2014-04-30 09:47:22.004874	2014-04-30 09:47:22.004874	test-data	19.7514797999999985	75.7138884000000019	\N	999999999	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	6	1	4650	400613	2	t
249	1247	Scorp Enterprises	1247	test Data2	test address 2 	Ramdev Park	\N	16	2014-04-30 09:48:25.804462	2014-04-30 09:48:25.804462	test-data2	19.7514797999999985	75.7138884000000019	\N	9999999991	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400012	1	t
250	1248	Scorp Enterprises	1248	test Data3	Testd Address 23	Ramdev Park	\N	1	2014-04-30 10:21:33.871577	2014-04-30 10:21:33.871577	test-data3	19.7514797999999985	75.7138884000000019	\N	9620750900	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400001	1	t
240	1238	Scorp Enterprises	1238	yogesh	a1 - 704 	pant nagar	\N	78	2014-04-04 06:41:59.688842	2014-04-04 06:41:59.688842	yogesh--2	19.0700421999999996	76.5079633999999942	\N	9819288158	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	31	1	516	400075	1	f
239	1237	Scorp Enterprises	1237	NAVEEN CHERIAN GEORGE	101 SHRI KARAN CHS, PLOT NO. 91, SECTOR 17, KOPARKHAIRANE, MUNCIPALTY HOSPITAL, NAVI MUMBAI 400709\r\n		\N	132	2014-04-03 07:32:09.86507	2014-04-03 07:32:09.86507	naveen-cherian-george--2	19.0997616999999984	73.0021533999999974	\N	022-27540323	awaiting_to_get_verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
251	1249	Scorp Enterprises	1249	Tushar patel	Belapur	Palm Beach	\N	119	2014-05-01 17:40:37.513556	2014-05-01 17:40:37.513556	tushar-patel	19.5748694000000008	74.6458987000000036	\N	9833454345	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	18	1	13551	400611	2	t
161	1159	Scorp Enterprises	1159	RAMESH GANGARAM YADAV	FLAT NO C-401, TWINS HALLMARK, PLOT NO A83-A87, SECTOR 19, KOPARKHAIRANE, OPP RANA DEVI TEMPLE, NAVI MUMBAI 400709\r\n		\N	132	2014-03-11 07:23:38.908952	2014-03-11 07:23:38.908952	ramesh-gangaram-yadav	19.0997616999999984	73.0021533999999974	\N	8454949010 / 9769018113	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	113	1	14677	400709	2	f
200	1198	Scorp Enterprises	1198	SWAPNA KAMALAKAR MORE	701/3A, POWAI LAKE VIEW APT, RAMBAG POWAI, NR POWAI POLICE STN MUMBAI 76\r\n		\N	80	2014-03-18 08:25:58.341804	2014-03-18 08:25:58.341804	swapna-kamalakar-more	19.7514797999999985	75.7138884000000019	\N	25703851\t9321377789/8275893129	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	15	1	551	400076	1	f
252	1250	Scorp Enterprises	1250	Ishwari Patel	Belapur	Palm Beach	\N	119	2014-05-01 17:43:11.735071	2014-05-01 17:43:11.735071	ishwari-patel	19.5748694000000008	74.6458987000000036	\N	9876873742	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	18	1	13551	400611	2	t
241	1239	Scorp Enterprises	1239	Rajesh kuradia	 lokhande marg, Chembur	Lokhande marg	\N	74	2014-04-16 03:11:43.363804	2014-04-16 04:13:42.339387	rajesh-kuradia	19.0613278999999984	72.9079136000000005	\N	9819565550	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400071	1	f
242	1240	Scorp Enterprises	1240	RYAN CYRIL MASCARENHAS	B-902, CHHEDA HEIGHTS, LBS MARG, BHANDUP W 78\r\n		\N	83	2014-04-25 11:00:24.157427	2014-04-25 11:00:24.157427	ryan-cyril-mascarenhas	19.1572159999999982	72.9366904999999974	\N	9930998455	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	66	1	16720	400078	1	f
243	1241	Scorp Enterprises	1241	RYAN CYRIL MASCARENHAS	B-902, CHHEDA HEIGHTS, LBS MARG, BHANDUP W 78\r\n		\N	83	2014-04-25 11:01:32.269588	2014-04-25 11:01:32.269588	ryan-cyril-mascarenhas--2	19.1572159999999982	72.9366904999999974	\N	9930998455	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	66	1	16720	400078	1	f
244	1242	Scorp Enterprises	1242	AVISHKAR PRABHAKAR NAIK  	31, MANIK APARTMENT, BHAVANI SHANKAR MARG, DADAR WEST, MUMBAI- 400028 \r\n		\N	19	2014-04-25 11:02:34.272678	2014-04-25 11:02:34.272678	avishkar-prabhakar-naik	19.0158856999999983	72.8373960999999923	\N	2224314554\t9869126299	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	98	1	4296	400028	1	f
245	1243	Scorp Enterprises	1243	RYAN CYRIL MASCARENHAS	B-902, CHHEDA HEIGHTS, LBS MARG, BHANDUP W 78\r\n		\N	83	2014-04-25 11:07:49.359913	2014-04-25 11:07:49.359913	ryan-cyril-mascarenhas--3	19.1572159999999982	72.9366904999999974	\N	9930998455	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	66	1	16720	400078	1	f
246	1244	Scorp Enterprises	1244	SAJAI SADANANDA	FLAT NO 8, BHARAT CHS, PLOT NO 40, SECTOR 14, VASHI, NAVI MUMBAI\r\n		\N	125	2014-04-30 06:44:56.731452	2014-04-30 06:44:56.731452	sajai-sadananda	19.0484231999999984	73.0151607999999896	\N	9619135432	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	113	1	14677	400703	2	t
247	1245	Scorp Enterprises	1245	Javagal Srinath	test Address	Ramdev Park	\N	123	2014-04-30 09:45:40.946095	2014-04-30 09:45:40.946095	javagal-srinath	\N	\N	\N	8974563214	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	1	1	539	400701	2	t
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 252, true);


--
-- Data for Name: customers_office_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers_office_assets (customer_id, office_asset_id) FROM stdin;
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departments (id, name, created_at, updated_at) FROM stdin;
1	A/C OFFICER MTNL	2014-02-04 09:03:03.647071	2014-02-04 09:03:03.647071
2	ACCESS SYSTEM	2014-02-04 09:03:03.661451	2014-02-04 09:03:03.661451
3	ACCOUNT & FINANCE MANAGER	2014-02-04 09:03:03.668855	2014-02-04 09:03:03.668855
4	ACCOUNT FINANCE	2014-02-04 09:03:03.677335	2014-02-04 09:03:03.677335
5	ACCOUNTANT AUDIT	2014-02-04 09:03:03.685474	2014-02-04 09:03:03.685474
6	ADDITIONAL	2014-02-04 09:03:03.69384	2014-02-04 09:03:03.69384
7	ADMINISTRATOR	2014-02-04 09:03:03.702119	2014-02-04 09:03:03.702119
8	ADVANCED CENTER FOR WOMEN RESEARCH	2014-02-04 09:03:03.710504	2014-02-04 09:03:03.710504
9	ADVISOR	2014-02-04 09:03:03.718775	2014-02-04 09:03:03.718775
10	AGRICULTURE	2014-02-04 09:03:03.727181	2014-02-04 09:03:03.727181
11	AGRICULTURE SERVICES	2014-02-04 09:03:03.735416	2014-02-04 09:03:03.735416
12	AIRCRAFT	2014-02-04 09:03:03.743755	2014-02-04 09:03:03.743755
13	MAINTENANCE ENGINEERING	2014-02-04 09:03:03.752111	2014-02-04 09:03:03.752111
14	ALLOTMENT LETTER	2014-02-04 09:03:03.76063	2014-02-04 09:03:03.76063
15	ANALAYZE	2014-02-04 09:03:03.768775	2014-02-04 09:03:03.768775
16	ANALTST	2014-02-04 09:03:03.777035	2014-02-04 09:03:03.777035
17	ANALYSE	2014-02-04 09:03:03.78536	2014-02-04 09:03:03.78536
18	ANALYST	2014-02-04 09:03:03.793678	2014-02-04 09:03:03.793678
19	ANIMAL HUSBANDRY	2014-02-04 09:03:03.802047	2014-02-04 09:03:03.802047
20	APPLICATION ANALYSE	2014-02-04 09:03:03.810375	2014-02-04 09:03:03.810375
21	APPLICATION DEVLOPMENT	2014-02-04 09:03:03.818715	2014-02-04 09:03:03.818715
22	APPORVAL	2014-02-04 09:03:03.827006	2014-02-04 09:03:03.827006
23	ARCHITECT	2014-02-04 09:03:03.835363	2014-02-04 09:03:03.835363
24	ASSEMBLY	2014-02-04 09:03:03.843665	2014-02-04 09:03:03.843665
25	ASSEMBLY FITTER	2014-02-04 09:03:03.851998	2014-02-04 09:03:03.851998
26	ASSISTANCE  MANAGER	2014-02-04 09:03:03.860343	2014-02-04 09:03:03.860343
27	ASSISTANCE GENRAL MANAGER	2014-02-04 09:03:03.868619	2014-02-04 09:03:03.868619
28	ASSISTANT	2014-02-04 09:03:03.876948	2014-02-04 09:03:03.876948
29	COMPUTER OPREATOR	2014-02-04 09:03:03.885264	2014-02-04 09:03:03.885264
30	ASSISTANT CONSULTANCY	2014-02-04 09:03:03.893592	2014-02-04 09:03:03.893592
31	ASSISTANT ENGGINER	2014-02-04 09:03:03.901927	2014-02-04 09:03:03.901927
32	ASSISTANT FOREMAN	2014-02-04 09:03:03.910268	2014-02-04 09:03:03.910268
33	ASSISTANT LAW OFFICER	2014-02-04 09:03:03.918874	2014-02-04 09:03:03.918874
34	ASSISTANT LOCO	2014-02-04 09:03:03.926954	2014-02-04 09:03:03.926954
35	PILOT	2014-02-04 09:03:03.935257	2014-02-04 09:03:03.935257
36	ASSISTANT MANAGER	2014-02-04 09:03:03.951966	2014-02-04 09:03:03.951966
37	ASSISTANT PROFESSOR	2014-02-04 09:03:03.960366	2014-02-04 09:03:03.960366
38	ASSISTANT SALES MANAGER	2014-02-04 09:03:03.968596	2014-02-04 09:03:03.968596
39	ASSISTANT SUPERINTENDENT	2014-02-04 09:03:03.976843	2014-02-04 09:03:03.976843
40	ASSISTANT TEACHER	2014-02-04 09:03:03.98537	2014-02-04 09:03:03.98537
41	ASSISTANT WISE	2014-02-04 09:03:03.993507	2014-02-04 09:03:03.993507
42	PRESIDENT & DELIVERY MANAGER	2014-02-04 09:03:04.00196	2014-02-04 09:03:04.00196
43	ASSIT  CONSULTANCY	2014-02-04 09:03:04.010254	2014-02-04 09:03:04.010254
44	ASSIT COMPUTER OPREATOR 	2014-02-04 09:03:04.018744	2014-02-04 09:03:04.018744
45	ASSIT PROFESSOR	2014-02-04 09:03:04.026907	2014-02-04 09:03:04.026907
46	ASSOCIAITE	2014-02-04 09:03:04.035198	2014-02-04 09:03:04.035198
47	ASSOCIAITE PROFESSOR	2014-02-04 09:03:04.043542	2014-02-04 09:03:04.043542
48	SENIOR GREAT	2014-02-04 09:03:04.051868	2014-02-04 09:03:04.051868
49	ASSOCIAITE VICE PRESIDENT	2014-02-04 09:03:04.060333	2014-02-04 09:03:04.060333
50	ASSOCIATE	2014-02-04 09:03:04.068516	2014-02-04 09:03:04.068516
51	ASSOCIATE SOCIAL MEDIA	2014-02-04 09:03:04.076858	2014-02-04 09:03:04.076858
52	ASTROLOGY	2014-02-04 09:03:04.085294	2014-02-04 09:03:04.085294
53	ATOMIC ENERGY	2014-02-04 09:03:04.093506	2014-02-04 09:03:04.093506
54	AUDIT DIRECTOR	2014-02-04 09:03:04.101831	2014-02-04 09:03:04.101831
55	AUDITOR	2014-02-04 09:03:04.110148	2014-02-04 09:03:04.110148
56	AUTOMOBILE ENGINEERING	2014-02-04 09:03:04.118598	2014-02-04 09:03:04.118598
57	BIOSCINES	2014-02-04 09:03:04.126836	2014-02-04 09:03:04.126836
58	BMC MUNCIPAL CORPORATION	2014-02-04 09:03:04.135357	2014-02-04 09:03:04.135357
59	BUILDING & FACTORIES DEVELOPER	2014-02-04 09:03:04.143655	2014-02-04 09:03:04.143655
60	BUSINESS AUDIT	2014-02-04 09:03:04.152118	2014-02-04 09:03:04.152118
61	BUSINESS DEVELOPER	2014-02-04 09:03:04.160246	2014-02-04 09:03:04.160246
62	BUSINESS DEVELOPMENT MANAGER	2014-02-04 09:03:04.168432	2014-02-04 09:03:04.168432
63	BUSINESS ENABLING TEAM	2014-02-04 09:03:04.176731	2014-02-04 09:03:04.176731
64	BUSINESS RESEARCH	2014-02-04 09:03:04.185057	2014-02-04 09:03:04.185057
65	BYO CHEMISTRY	2014-02-04 09:03:04.193349	2014-02-04 09:03:04.193349
66	C.A LICENCE	2014-02-04 09:03:04.20169	2014-02-04 09:03:04.20169
67	CONSALTUNT	2014-02-04 09:03:04.210031	2014-02-04 09:03:04.210031
68	CARGO INCHARG	2014-02-04 09:03:04.218358	2014-02-04 09:03:04.218358
69	CASIER	2014-02-04 09:03:04.226756	2014-02-04 09:03:04.226756
70	CENTRAL EXCISE MUMBAI III	2014-02-04 09:03:04.235035	2014-02-04 09:03:04.235035
71	CHANNEL SALES EXECUTIVE	2014-02-04 09:03:04.243404	2014-02-04 09:03:04.243404
72	CHEMICAL	2014-02-04 09:03:04.251713	2014-02-04 09:03:04.251713
73	CHEMISTRY	2014-02-04 09:03:04.260004	2014-02-04 09:03:04.260004
74	CHIEF AIRCRAFT	2014-02-04 09:03:04.26834	2014-02-04 09:03:04.26834
75	OPERATOR	2014-02-04 09:03:04.276624	2014-02-04 09:03:04.276624
76	CHIEF ENGINEER	2014-02-04 09:03:04.28492	2014-02-04 09:03:04.28492
77	CHIEF FINANCE CONSULTANT	2014-02-04 09:03:04.293317	2014-02-04 09:03:04.293317
78	CHIF STAFF INSPECTOR	2014-02-04 09:03:04.3016	2014-02-04 09:03:04.3016
79	CIVIL CONSTRUCTION	2014-02-04 09:03:04.310003	2014-02-04 09:03:04.310003
80	CLERK	2014-02-04 09:03:04.318318	2014-02-04 09:03:04.318318
81	CLERK CUM TYPIST	2014-02-04 09:03:04.326676	2014-02-04 09:03:04.326676
82	CLIENT	2014-02-04 09:03:04.334972	2014-02-04 09:03:04.334972
83	SERVICES	2014-02-04 09:03:04.343276	2014-02-04 09:03:04.343276
84	COAL LOGISTICS FOR POWER PLANTS	2014-02-04 09:03:04.351675	2014-02-04 09:03:04.351675
85	COMMANDER	2014-02-04 09:03:04.359949	2014-02-04 09:03:04.359949
86	COMMERCIAL	2014-02-04 09:03:04.368275	2014-02-04 09:03:04.368275
87	COMMISSION OF CENTRAL EXCISE REVENUE	2014-02-04 09:03:04.376632	2014-02-04 09:03:04.376632
88	COMPARTMENT	2014-02-04 09:03:04.384937	2014-02-04 09:03:04.384937
89	COMPLIANCE	2014-02-04 09:03:04.393445	2014-02-04 09:03:04.393445
90	COMPLIMENTARY ANUR VECHIL MEDICS	2014-02-04 09:03:04.401616	2014-02-04 09:03:04.401616
91	COMPUTER TECHNICAL	2014-02-04 09:03:04.409945	2014-02-04 09:03:04.409945
92	CONDUCTOR	2014-02-04 09:03:04.418236	2014-02-04 09:03:04.418236
93	CONSTRUCTION	2014-02-04 09:03:04.426589	2014-02-04 09:03:04.426589
94	CONSTRUCTION MANAGEMENT	2014-02-04 09:03:04.434905	2014-02-04 09:03:04.434905
95	CONSULTANCE	2014-02-04 09:03:04.443219	2014-02-04 09:03:04.443219
96	CONSULTANCY	2014-02-04 09:03:04.451524	2014-02-04 09:03:04.451524
97	CONSULTANT	2014-02-04 09:03:04.45987	2014-02-04 09:03:04.45987
98	CONTAINER MAINTENANCE	2014-02-04 09:03:04.468191	2014-02-04 09:03:04.468191
99	CO-ORDINATOR	2014-02-04 09:03:04.476535	2014-02-04 09:03:04.476535
100	CORPORATE ACTIONS	2014-02-04 09:03:04.484826	2014-02-04 09:03:04.484826
101	COUNSELLOR	2014-02-04 09:03:04.493181	2014-02-04 09:03:04.493181
102	CREADIT MANAGER	2014-02-04 09:03:04.614445	2014-02-04 09:03:04.614445
103	CREATIVE	2014-02-04 09:03:04.747128	2014-02-04 09:03:04.747128
104	CUSTOMER SERVICE	2014-02-04 09:03:04.776416	2014-02-04 09:03:04.776416
105	D.Y. COMMISSIONER	2014-02-04 09:03:04.784638	2014-02-04 09:03:04.784638
106	DAUGHTER	2014-02-04 09:03:04.793062	2014-02-04 09:03:04.793062
107	DEPUTY	2014-02-04 09:03:04.801415	2014-02-04 09:03:04.801415
108	DEPUTY CHIFE OFFICER	2014-02-04 09:03:04.809726	2014-02-04 09:03:04.809726
109	DEPUTY COMMISINOR	2014-02-04 09:03:04.818107	2014-02-04 09:03:04.818107
110	DEPUTY COMMISSIONER	2014-02-04 09:03:04.82633	2014-02-04 09:03:04.82633
111	DEPUTY DIRECTOR	2014-02-04 09:03:04.834569	2014-02-04 09:03:04.834569
112	DEPUTY DIRECTOR OF TOWN PLANNING	2014-02-04 09:03:04.842872	2014-02-04 09:03:04.842872
113	DEPUTY ENGINEER	2014-02-04 09:03:04.85137	2014-02-04 09:03:04.85137
114	DEPUTY GENRAL	2014-02-04 09:03:04.859632	2014-02-04 09:03:04.859632
115	DEPUTY GENRAL MANAGER	2014-02-04 09:03:04.867857	2014-02-04 09:03:04.867857
116	DEPUTY MANAGER	2014-02-04 09:03:04.876348	2014-02-04 09:03:04.876348
117	DEPUTY MANAGER TECHNICAL	2014-02-04 09:03:04.884578	2014-02-04 09:03:04.884578
118	DEPUTY PROJECT DIRECTOR	2014-02-04 09:03:04.89289	2014-02-04 09:03:04.89289
119	DESIGNER	2014-02-04 09:03:04.901139	2014-02-04 09:03:04.901139
120	DESINOR	2014-02-04 09:03:04.909484	2014-02-04 09:03:04.909484
121	DESK OFFICER	2014-02-04 09:03:04.917903	2014-02-04 09:03:04.917903
122	DEVELOPMENT	2014-02-04 09:03:04.926175	2014-02-04 09:03:04.926175
123	DEVLOPMENT	2014-02-04 09:03:04.934519	2014-02-04 09:03:04.934519
124	DGM (DEPUTY,GERNERAL MANAGER)	2014-02-04 09:03:04.942862	2014-02-04 09:03:04.942862
125	DIRECTOR	2014-02-04 09:03:04.951164	2014-02-04 09:03:04.951164
126	DIRECTOR PROPERITOR	2014-02-04 09:03:04.959454	2014-02-04 09:03:04.959454
127	DIRECTOR REFAR	2014-02-04 09:03:04.967776	2014-02-04 09:03:04.967776
128	DISTRACTION	2014-02-04 09:03:04.976115	2014-02-04 09:03:04.976115
129	DRILLING	2014-02-04 09:03:04.984649	2014-02-04 09:03:04.984649
130	DRIVER	2014-02-04 09:03:04.992775	2014-02-04 09:03:04.992775
131	DUTY OFFICER	2014-02-04 09:03:05.001092	2014-02-04 09:03:05.001092
132	EDUCATION	2014-02-04 09:03:05.009408	2014-02-04 09:03:05.009408
133	ELECTRICAL MANAGER	2014-02-04 09:03:05.017775	2014-02-04 09:03:05.017775
134	ELECTRICIAN	2014-02-04 09:03:05.026077	2014-02-04 09:03:05.026077
135	ELECTRONICS	2014-02-04 09:03:05.034407	2014-02-04 09:03:05.034407
136	ENDOCRINOLOGY	2014-02-04 09:03:05.042701	2014-02-04 09:03:05.042701
137	ENGG ELECTRICAL	2014-02-04 09:03:05.051077	2014-02-04 09:03:05.051077
138	ENGGINERING	2014-02-04 09:03:05.059373	2014-02-04 09:03:05.059373
139	ENGGINERING ELECTRICAL	2014-02-04 09:03:05.067746	2014-02-04 09:03:05.067746
140	EQUIPMENT OPERATOR	2014-02-04 09:03:05.07603	2014-02-04 09:03:05.07603
141	ESTABLISHMENT	2014-02-04 09:03:05.084351	2014-02-04 09:03:05.084351
142	EXCHANGE	2014-02-04 09:03:05.092675	2014-02-04 09:03:05.092675
143	EXCUTIVE SALES SUPPORTS	2014-02-04 09:03:05.100989	2014-02-04 09:03:05.100989
144	EXECUTIVE	2014-02-04 09:03:05.109349	2014-02-04 09:03:05.109349
145	EXECUTIVE  SECRETARIES	2014-02-04 09:03:05.117627	2014-02-04 09:03:05.117627
146	ASSISTANT MANAGING DIRECTOR	2014-02-04 09:03:05.128195	2014-02-04 09:03:05.128195
147	EXECUTIVE ENGINEER	2014-02-04 09:03:05.142723	2014-02-04 09:03:05.142723
148	EXPORT IMPORT	2014-02-04 09:03:05.151173	2014-02-04 09:03:05.151173
149	FACILITY	2014-02-04 09:03:05.159513	2014-02-04 09:03:05.159513
150	FINANCIAL	2014-02-04 09:03:05.167698	2014-02-04 09:03:05.167698
151	PARMACY	2014-02-04 09:03:05.184333	2014-02-04 09:03:05.184333
152	FINANCE	2014-02-04 09:03:05.192649	2014-02-04 09:03:05.192649
153	FINANCE &ACTSFINANCIAL	2014-02-04 09:03:05.200915	2014-02-04 09:03:05.200915
154	FINANCIAL CONTROLLER	2014-02-04 09:03:05.209511	2014-02-04 09:03:05.209511
155	FIREBRIGDE	2014-02-04 09:03:05.217629	2014-02-04 09:03:05.217629
156	FITTER	2014-02-04 09:03:05.225981	2014-02-04 09:03:05.225981
157	FRIEND	2014-02-04 09:03:05.234296	2014-02-04 09:03:05.234296
158	FRIENDS	2014-02-04 09:03:05.242826	2014-02-04 09:03:05.242826
159	FRIND OFFICE	2014-02-04 09:03:05.250985	2014-02-04 09:03:05.250985
160	GENRAL MANAGER	2014-02-04 09:03:05.259273	2014-02-04 09:03:05.259273
161	GENRAL MANAGER IN BUSSINESS	2014-02-04 09:03:05.267604	2014-02-04 09:03:05.267604
162	GLOBAL TEKNOLOJI DEVELOPMENT	2014-02-04 09:03:05.277099	2014-02-04 09:03:05.277099
163	GLOBLE  RISK LABORATORY	2014-02-04 09:03:05.284241	2014-02-04 09:03:05.284241
164	GRAFISH	2014-02-04 09:03:05.292587	2014-02-04 09:03:05.292587
165	GROUND HANDLING	2014-02-04 09:03:05.300865	2014-02-04 09:03:05.300865
166	HAIRDRESSER & MAKEUP ARTIST	2014-02-04 09:03:05.309205	2014-02-04 09:03:05.309205
167	HEAD CONSATBLE	2014-02-04 09:03:05.317504	2014-02-04 09:03:05.317504
168	HEAD QTRS	2014-02-04 09:03:05.325879	2014-02-04 09:03:05.325879
169	HEALTH	2014-02-04 09:03:05.33418	2014-02-04 09:03:05.33418
170	HIGHER GRADE ASSISTANT	2014-02-04 09:03:05.342553	2014-02-04 09:03:05.342553
171	HYDRO QUEBEC	2014-02-04 09:03:05.35085	2014-02-04 09:03:05.35085
172	IMPLEMENTATION	2014-02-04 09:03:05.359158	2014-02-04 09:03:05.359158
173	INDUSTRIAL	2014-02-04 09:03:05.36748	2014-02-04 09:03:05.36748
174	INDUSTRIAL AUTOMATION	2014-02-04 09:03:05.375812	2014-02-04 09:03:05.375812
175	INFORMATION	2014-02-04 09:03:05.384276	2014-02-04 09:03:05.384276
176	INFORMATION TECHNOLOGY SOFTWARE	2014-02-04 09:03:05.393013	2014-02-04 09:03:05.393013
177	INFRASTRUCTURE	2014-02-04 09:03:05.401359	2014-02-04 09:03:05.401359
178	INFRATECH MANAGEMENT CONSULTANTS	2014-02-04 09:03:05.409643	2014-02-04 09:03:05.409643
179	INSORT	2014-02-04 09:03:05.417954	2014-02-04 09:03:05.417954
180	INSPECTOR	2014-02-04 09:03:05.426294	2014-02-04 09:03:05.426294
181	INSURANCE	2014-02-04 09:03:05.434327	2014-02-04 09:03:05.434327
182	INTEGRATION	2014-02-04 09:03:05.442524	2014-02-04 09:03:05.442524
183	INTEGRATOR	2014-02-04 09:03:05.450956	2014-02-04 09:03:05.450956
184	INTERIO-LAB	2014-02-04 09:03:05.459177	2014-02-04 09:03:05.459177
185	INTERIOR	2014-02-04 09:03:05.467571	2014-02-04 09:03:05.467571
186	INTERNATIONAL BUSINESS	2014-02-04 09:03:05.475769	2014-02-04 09:03:05.475769
187	INTERVIWE	2014-02-04 09:03:05.484043	2014-02-04 09:03:05.484043
188	INVESTMENT	2014-02-04 09:03:05.492393	2014-02-04 09:03:05.492393
189	HELP SAFETY	2014-02-04 09:03:05.500664	2014-02-04 09:03:05.500664
190	JOINT COMMISSIONER	2014-02-04 09:03:05.509024	2014-02-04 09:03:05.509024
191	JOUNIOR ENGINEERING	2014-02-04 09:03:05.51736	2014-02-04 09:03:05.51736
192	JUNIOR	2014-02-04 09:03:05.525692	2014-02-04 09:03:05.525692
193	JUNIOR CLERK	2014-02-04 09:03:05.534028	2014-02-04 09:03:05.534028
194	JUNIOR ELECTRICAL ENGINEER	2014-02-04 09:03:05.54237	2014-02-04 09:03:05.54237
195	JUNIOR TECHNICAL SUPERINTENDENT	2014-02-04 09:03:05.550732	2014-02-04 09:03:05.550732
196	JUNIOR TECHNICIAN	2014-02-04 09:03:05.559002	2014-02-04 09:03:05.559002
197	LAB TECHNICHAN	2014-02-04 09:03:05.567355	2014-02-04 09:03:05.567355
198	LABORATORY	2014-02-04 09:03:05.575644	2014-02-04 09:03:05.575644
199	LACTURALE	2014-02-04 09:03:05.584013	2014-02-04 09:03:05.584013
200	LASCAR	2014-02-04 09:03:05.592518	2014-02-04 09:03:05.592518
201	LEADER	2014-02-04 09:03:05.600679	2014-02-04 09:03:05.600679
202	LECTURER	2014-02-04 09:03:05.608949	2014-02-04 09:03:05.608949
203	LECTURERS	2014-02-04 09:03:05.617263	2014-02-04 09:03:05.617263
204	LEICA MICROSYSTEM SERVICE	2014-02-04 09:03:05.650062	2014-02-04 09:03:05.650062
205	LOGHISTIC MANAGER	2014-02-04 09:03:05.658226	2014-02-04 09:03:05.658226
206	M.S.C.AGRICULTURE	2014-02-04 09:03:05.667662	2014-02-04 09:03:05.667662
207	MAC ENGINEERING	2014-02-04 09:03:05.676442	2014-02-04 09:03:05.676442
208	MAHARASHTRA JEEVAN PRADHIKARAN	2014-02-04 09:03:05.684741	2014-02-04 09:03:05.684741
209	MAINTENANCE	2014-02-04 09:03:05.693078	2014-02-04 09:03:05.693078
210	MAJOR ARCHITECT MANAGER	2014-02-04 09:03:05.701362	2014-02-04 09:03:05.701362
211	MANAGEMENT	2014-02-04 09:03:05.709649	2014-02-04 09:03:05.709649
212	OPERATIONS	2014-02-04 09:03:05.717883	2014-02-04 09:03:05.717883
213	MANAGING DIRECTOR	2014-02-04 09:03:05.726145	2014-02-04 09:03:05.726145
214	MANUFACTURING	2014-02-04 09:03:05.735012	2014-02-04 09:03:05.735012
215	MARKET SECURTY	2014-02-04 09:03:05.742921	2014-02-04 09:03:05.742921
216	MATERIAL MANAGEMENT	2014-02-04 09:03:05.752605	2014-02-04 09:03:05.752605
217	MEASUREMENT	2014-02-04 09:03:05.876366	2014-02-04 09:03:05.876366
218	MECHANICAL ENGINEERING	2014-02-04 09:03:05.99302	2014-02-04 09:03:05.99302
219	MECHANICAL OPERATOR	2014-02-04 09:03:06.00116	2014-02-04 09:03:06.00116
220	MEDICINE	2014-02-04 09:03:06.009483	2014-02-04 09:03:06.009483
221	METER READING	2014-02-04 09:03:06.017824	2014-02-04 09:03:06.017824
222	MICROBIOLOGY	2014-02-04 09:03:06.026218	2014-02-04 09:03:06.026218
223	MINISTERING BRODCASTING	2014-02-04 09:03:06.034434	2014-02-04 09:03:06.034434
224	MOTOR TRANSFER FUNCTION	2014-02-04 09:03:06.042843	2014-02-04 09:03:06.042843
225	MSC AGRICULTURE	2014-02-04 09:03:06.051078	2014-02-04 09:03:06.051078
226	NATIONAL	2014-02-04 09:03:06.059426	2014-02-04 09:03:06.059426
227	NATIONAL SALES MANAGER	2014-02-04 09:03:06.067784	2014-02-04 09:03:06.067784
228	NETWORK SOLUTIONS	2014-02-04 09:03:06.076112	2014-02-04 09:03:06.076112
229	OFFICE MANAGEMENT STAFF	2014-02-04 09:03:06.084282	2014-02-04 09:03:06.084282
230	OPERATING	2014-02-04 09:03:06.092503	2014-02-04 09:03:06.092503
231	OPERATION & MAINTENANCE	2014-02-04 09:03:06.100887	2014-02-04 09:03:06.100887
232	OPERATION MANAGER	2014-02-04 09:03:06.109213	2014-02-04 09:03:06.109213
233	OPTOMETRIST	2014-02-04 09:03:06.118854	2014-02-04 09:03:06.118854
234	ORTHOPEDIC	2014-02-04 09:03:06.134253	2014-02-04 09:03:06.134253
235	PANCHAYAT COMMITTEE	2014-02-04 09:03:06.142574	2014-02-04 09:03:06.142574
236	PARTNER	2014-02-04 09:03:06.151076	2014-02-04 09:03:06.151076
237	PASSENGER	2014-02-04 09:03:06.159298	2014-02-04 09:03:06.159298
238	GARD	2014-02-04 09:03:06.167804	2014-02-04 09:03:06.167804
239	PATHOLOGY	2014-02-04 09:03:06.176014	2014-02-04 09:03:06.176014
240	PENSION	2014-02-04 09:03:06.184232	2014-02-04 09:03:06.184232
241	PEON	2014-02-04 09:03:06.192657	2014-02-04 09:03:06.192657
242	PERSONAL DATA BASE	2014-02-04 09:03:06.201202	2014-02-04 09:03:06.201202
243	PERSONAL EXECUTIVE	2014-02-04 09:03:06.209417	2014-02-04 09:03:06.209417
244	PHARMACYS	2014-02-04 09:03:06.217214	2014-02-04 09:03:06.217214
245	PHARMACYS SECTION	2014-02-04 09:03:06.22585	2014-02-04 09:03:06.22585
246	PHILOSOPHY	2014-02-04 09:03:06.234426	2014-02-04 09:03:06.234426
247	POLICE COMMISSIONER	2014-02-04 09:03:06.244101	2014-02-04 09:03:06.244101
248	POLICE CONSTABLE	2014-02-04 09:03:06.259365	2014-02-04 09:03:06.259365
249	POLICE CONSTEBAL	2014-02-04 09:03:06.267685	2014-02-04 09:03:06.267685
250	POLLUTION LAW DIVISION	2014-02-04 09:03:06.275914	2014-02-04 09:03:06.275914
251	POST ELECTRICAL	2014-02-04 09:03:06.284174	2014-02-04 09:03:06.284174
252	MANAGER	2014-02-04 09:03:06.292378	2014-02-04 09:03:06.292378
253	POST JUNIOR CLERK	2014-02-04 09:03:06.300803	2014-02-04 09:03:06.300803
254	POST SENIOR ANALYST	2014-02-04 09:03:06.309137	2014-02-04 09:03:06.309137
255	POSTGRADUATE DIPLOMA IN FORESTRY	2014-02-04 09:03:06.317466	2014-02-04 09:03:06.317466
256	PREMIER WEALTH MANAGER	2014-02-04 09:03:06.325805	2014-02-04 09:03:06.325805
257	PRIMESES	2014-02-04 09:03:06.334245	2014-02-04 09:03:06.334245
258	PRINCIPAL SEINE	2014-02-04 09:03:06.342559	2014-02-04 09:03:06.342559
259	PRIVATE EQUITY	2014-02-04 09:03:06.350873	2014-02-04 09:03:06.350873
260	PROCESS	2014-02-04 09:03:06.359206	2014-02-04 09:03:06.359206
261	PROCUREMENT	2014-02-04 09:03:06.367517	2014-02-04 09:03:06.367517
262	PRODUCT	2014-02-04 09:03:06.375828	2014-02-04 09:03:06.375828
263	PRODUCTION	2014-02-04 09:03:06.384236	2014-02-04 09:03:06.384236
264	PROFESSION IS	2014-02-04 09:03:06.392381	2014-02-04 09:03:06.392381
265	PROFESSOR	2014-02-04 09:03:06.400729	2014-02-04 09:03:06.400729
266	PROGRAMER	2014-02-04 09:03:06.417431	2014-02-04 09:03:06.417431
267	PROJECT	2014-02-04 09:03:06.425801	2014-02-04 09:03:06.425801
268	PROPOSAL	2014-02-04 09:03:06.434168	2014-02-04 09:03:06.434168
269	PROPRIETOR	2014-02-04 09:03:06.442761	2014-02-04 09:03:06.442761
270	PUBLIC & MORTALITY	2014-02-04 09:03:06.450901	2014-02-04 09:03:06.450901
271	PURCHASE	2014-02-04 09:03:06.459164	2014-02-04 09:03:06.459164
272	PURCHASE MANAGER	2014-02-04 09:03:06.4676	2014-02-04 09:03:06.4676
273	QUALIFICATION	2014-02-04 09:03:06.475641	2014-02-04 09:03:06.475641
274	QULITY CONTROL	2014-02-04 09:03:06.48389	2014-02-04 09:03:06.48389
275	REACTOR SAFETY	2014-02-04 09:03:06.492229	2014-02-04 09:03:06.492229
276	REGINAL SELES MANAGER	2014-02-04 09:03:06.500633	2014-02-04 09:03:06.500633
277	REGISTER	2014-02-04 09:03:06.508995	2014-02-04 09:03:06.508995
278	REGISTRAR MEDICAL	2014-02-04 09:03:06.517327	2014-02-04 09:03:06.517327
279	REGULATING	2014-02-04 09:03:06.525696	2014-02-04 09:03:06.525696
280	REGULATORY AFFAIRS	2014-02-04 09:03:06.534355	2014-02-04 09:03:06.534355
281	REGULATORY EXECUTIVE	2014-02-04 09:03:06.542429	2014-02-04 09:03:06.542429
282	RELATIONSHIP	2014-02-04 09:03:06.550769	2014-02-04 09:03:06.550769
283	REPAIR WALL	2014-02-04 09:03:06.559041	2014-02-04 09:03:06.559041
284	RESEARCH & DEVELOPMENT AGRICULTURE	2014-02-04 09:03:06.567213	2014-02-04 09:03:06.567213
285	RESEARCH ASSOCIATE	2014-02-04 09:03:06.575569	2014-02-04 09:03:06.575569
286	RESEARCH LABORATORY	2014-02-04 09:03:06.583803	2014-02-04 09:03:06.583803
287	RESERCH	2014-02-04 09:03:06.592177	2014-02-04 09:03:06.592177
288	RESPONDED	2014-02-04 09:03:06.60075	2014-02-04 09:03:06.60075
289	REVENUE	2014-02-04 09:03:06.608963	2014-02-04 09:03:06.608963
290	REVENUE ACCOUNT	2014-02-04 09:03:06.617265	2014-02-04 09:03:06.617265
291	RISK MANAGEMENT	2014-02-04 09:03:06.625561	2014-02-04 09:03:06.625561
292	SALES COORDINATOR	2014-02-04 09:03:06.634118	2014-02-04 09:03:06.634118
293	SALES SCHEME	2014-02-04 09:03:06.642457	2014-02-04 09:03:06.642457
294	SALES TEAM LEADER	2014-02-04 09:03:06.650767	2014-02-04 09:03:06.650767
295	SCIENTIFIC	2014-02-04 09:03:06.659052	2014-02-04 09:03:06.659052
296	OFFICER	2014-02-04 09:03:06.66733	2014-02-04 09:03:06.66733
297	SCIENTIST	2014-02-04 09:03:06.675472	2014-02-04 09:03:06.675472
298	SECOND OFFICER	2014-02-04 09:03:06.683824	2014-02-04 09:03:06.683824
299	SECRETARIAL	2014-02-04 09:03:06.692354	2014-02-04 09:03:06.692354
300	SECRETARY	2014-02-04 09:03:06.700495	2014-02-04 09:03:06.700495
301	SECTION	2014-02-04 09:03:06.708849	2014-02-04 09:03:06.708849
302	SECURITY	2014-02-04 09:03:06.717187	2014-02-04 09:03:06.717187
303	SELES CO-ORDINATOR	2014-02-04 09:03:06.725674	2014-02-04 09:03:06.725674
304	SENIOR ACCOUNTANT	2014-02-04 09:03:06.733973	2014-02-04 09:03:06.733973
305	SENIOR ADVISOR &CONSULTANT	2014-02-04 09:03:06.742371	2014-02-04 09:03:06.742371
306	SENIOR ANALYST	2014-02-04 09:03:06.750674	2014-02-04 09:03:06.750674
307	SENIOR ASSISTANT CONSULTANT	2014-02-04 09:03:06.758962	2014-02-04 09:03:06.758962
308	SENIOR AUDITOR	2014-02-04 09:03:06.814175	2014-02-04 09:03:06.814175
309	SENIOR CAD MANAGER TECHNICIAN	2014-02-04 09:03:06.825133	2014-02-04 09:03:06.825133
310	SENIOR CLERK,SENIOR CONDUCTION	2014-02-04 09:03:06.833155	2014-02-04 09:03:06.833155
311	SENIOR CONSULTANT	2014-02-04 09:03:06.841383	2014-02-04 09:03:06.841383
312	SENIOR CLERK	2014-02-04 09:03:06.849772	2014-02-04 09:03:06.849772
313	SENIOR DUPTY ENGINEER	2014-02-04 09:03:06.858097	2014-02-04 09:03:06.858097
314	SENIOR ENGINEER	2014-02-04 09:03:06.866456	2014-02-04 09:03:06.866456
315	SENIOR EXECUTIVE	2014-02-04 09:03:06.874808	2014-02-04 09:03:06.874808
316	SENIOR GENERAL MANAGER	2014-02-04 09:03:06.883117	2014-02-04 09:03:06.883117
317	SENIOR INSPECTOR	2014-02-04 09:03:06.89136	2014-02-04 09:03:06.89136
318	SENIOR MANAGER	2014-02-04 09:03:06.899672	2014-02-04 09:03:06.899672
319	SENIOR OFFICER GRAED 1	2014-02-04 09:03:06.908014	2014-02-04 09:03:06.908014
320	SENIOR PHARMACYS	2014-02-04 09:03:06.916463	2014-02-04 09:03:06.916463
321	SENIOR PRODUCTION ENGG	2014-02-04 09:03:06.924676	2014-02-04 09:03:06.924676
322	SENIOR RELATIONSHIP MANAGER	2014-02-04 09:03:06.932977	2014-02-04 09:03:06.932977
323	SENIOR RESEARCH ANALYST	2014-02-04 09:03:06.941359	2014-02-04 09:03:06.941359
324	SENIOR SECTION SUPERVISIOR	2014-02-04 09:03:06.949608	2014-02-04 09:03:06.949608
325	SENIOR SECTION SUPERVISIOR.	2014-02-04 09:03:06.957984	2014-02-04 09:03:06.957984
326	SENIOR SERVICE	2014-02-04 09:03:06.96631	2014-02-04 09:03:06.96631
327	ENGINEER	2014-02-04 09:03:06.974634	2014-02-04 09:03:06.974634
328	SENIOR SPECIALIST	2014-02-04 09:03:06.982988	2014-02-04 09:03:06.982988
329	SENIOR STENOGRAPHER	2014-02-04 09:03:06.9913	2014-02-04 09:03:06.9913
330	SENIOR TECHNICIAN	2014-02-04 09:03:06.999616	2014-02-04 09:03:06.999616
331	SENIOR TERRITORY	2014-02-04 09:03:07.00793	2014-02-04 09:03:07.00793
332	SENIOUR ADMINISTRATOR	2014-02-04 09:03:07.016257	2014-02-04 09:03:07.016257
333	SENIOUR EXECUTIVE	2014-02-04 09:03:07.132848	2014-02-04 09:03:07.132848
334	SENOIR HR ADMIN	2014-02-04 09:03:07.249623	2014-02-04 09:03:07.249623
335	SERVICE	2014-02-04 09:03:07.257938	2014-02-04 09:03:07.257938
336	SERVICE ENGINEER	2014-02-04 09:03:07.266269	2014-02-04 09:03:07.266269
337	STAFF NURSE	2014-02-04 09:03:07.274596	2014-02-04 09:03:07.274596
338	SHOP & ESTABLISHMENT LICENSE	2014-02-04 09:03:07.282943	2014-02-04 09:03:07.282943
339	SENIOR VICE PRESIDENT	2014-02-04 09:03:07.291227	2014-02-04 09:03:07.291227
340	SISTHA	2014-02-04 09:03:07.299473	2014-02-04 09:03:07.299473
341	SITE ENGINEER	2014-02-04 09:03:07.309191	2014-02-04 09:03:07.309191
342	SOFTWARE	2014-02-04 09:03:07.324394	2014-02-04 09:03:07.324394
343	SOFTWARE ENGINEER	2014-02-04 09:03:07.332724	2014-02-04 09:03:07.332724
344	SPECIALIST	2014-02-04 09:03:07.340968	2014-02-04 09:03:07.340968
345	SPECILSED	2014-02-04 09:03:07.349342	2014-02-04 09:03:07.349342
346	SR. MEDICAL ADVISOR	2014-02-04 09:03:07.357621	2014-02-04 09:03:07.357621
347	STABILITY OFFICER	2014-02-04 09:03:07.365968	2014-02-04 09:03:07.365968
348	STAFF	2014-02-04 09:03:07.374332	2014-02-04 09:03:07.374332
349	STATE INTELLIGENCE	2014-02-04 09:03:07.383757	2014-02-04 09:03:07.383757
350	STATIONARY	2014-02-04 09:03:07.390965	2014-02-04 09:03:07.390965
351	STENOGRAPHER	2014-02-04 09:03:07.39927	2014-02-04 09:03:07.39927
352	STOCK EXCHANGE	2014-02-04 09:03:07.407595	2014-02-04 09:03:07.407595
353	STRUCTURAL ENGINEERING	2014-02-04 09:03:07.415949	2014-02-04 09:03:07.415949
354	SUPERINTENDENT	2014-02-04 09:03:07.42424	2014-02-04 09:03:07.42424
355	SUPERVISIOR	2014-02-04 09:03:07.43254	2014-02-04 09:03:07.43254
356	SUPPLY CHAIN (PRODUCTION)	2014-02-04 09:03:07.440918	2014-02-04 09:03:07.440918
357	SUPPLY CHAIN MANAGER	2014-02-04 09:03:07.449251	2014-02-04 09:03:07.449251
358	SUPPORT	2014-02-04 09:03:07.457512	2014-02-04 09:03:07.457512
359	SURVIVOR	2014-02-04 09:03:07.465869	2014-02-04 09:03:07.465869
360	SYBASE UNWIRED PLATFORM	2014-02-04 09:03:07.474221	2014-02-04 09:03:07.474221
361	SYSTEM	2014-02-04 09:03:07.482542	2014-02-04 09:03:07.482542
362	SYSTEM ADMINISTRATOR	2014-02-04 09:03:07.490829	2014-02-04 09:03:07.490829
363	TAHSILDAR	2014-02-04 09:03:07.499192	2014-02-04 09:03:07.499192
364	TEACHER	2014-02-04 09:03:07.507489	2014-02-04 09:03:07.507489
365	TECHNICAL	2014-02-04 09:03:07.516054	2014-02-04 09:03:07.516054
366	TECHNICAL MANAGER	2014-02-04 09:03:07.524361	2014-02-04 09:03:07.524361
367	TECHNICAL OFFICER	2014-02-04 09:03:07.532516	2014-02-04 09:03:07.532516
368	TECHNICAL SOFTWARE ENGINEER	2014-02-04 09:03:07.540808	2014-02-04 09:03:07.540808
369	TECHNICAN	2014-02-04 09:03:07.549102	2014-02-04 09:03:07.549102
370	TECHNOLOGY	2014-02-04 09:03:07.557446	2014-02-04 09:03:07.557446
371	TEST ENGINEER	2014-02-04 09:03:07.565784	2014-02-04 09:03:07.565784
372	TESTING	2014-02-04 09:03:07.574118	2014-02-04 09:03:07.574118
373	TESTING SOGETI	2014-02-04 09:03:07.582438	2014-02-04 09:03:07.582438
374	TEXCEL	2014-02-04 09:03:07.590777	2014-02-04 09:03:07.590777
375	TEXSTYLE	2014-02-04 09:03:07.599065	2014-02-04 09:03:07.599065
376	THREE DESGNIOR	2014-02-04 09:03:07.607449	2014-02-04 09:03:07.607449
377	TOWN PLANNING	2014-02-04 09:03:07.615735	2014-02-04 09:03:07.615735
378	TRAFFIC	2014-02-04 09:03:07.62411	2014-02-04 09:03:07.62411
379	CONTROLLER	2014-02-04 09:03:07.633774	2014-02-04 09:03:07.633774
380	TRANSPORT	2014-02-04 09:03:07.640941	2014-02-04 09:03:07.640941
381	TRANSPORTATION	2014-02-04 09:03:07.649077	2014-02-04 09:03:07.649077
382	TRANSPORT POLICE CONSTABAL.	2014-02-04 09:03:07.665966	2014-02-04 09:03:07.665966
383	TUITION	2014-02-04 09:03:07.674265	2014-02-04 09:03:07.674265
384	TYPIST	2014-02-04 09:03:07.682555	2014-02-04 09:03:07.682555
385	UNDER SECURITY	2014-02-04 09:03:07.69074	2014-02-04 09:03:07.69074
386	UNDERWRITING	2014-02-04 09:03:07.699062	2014-02-04 09:03:07.699062
387	UTELITE	2014-02-04 09:03:07.70733	2014-02-04 09:03:07.70733
388	UTILITIES	2014-02-04 09:03:07.715712	2014-02-04 09:03:07.715712
389	VICE PRESIDENT	2014-02-04 09:03:07.724049	2014-02-04 09:03:07.724049
390	VIGILENCE	2014-02-04 09:03:07.732497	2014-02-04 09:03:07.732497
391	VIGILENCE  ELECTRICAL  SUPPLY	2014-02-04 09:03:07.740763	2014-02-04 09:03:07.740763
392	YOGA THERAPIST	2014-02-04 09:03:07.75013	2014-02-04 09:03:07.75013
393	Others	2014-03-29 04:06:55.554992	2014-03-29 04:06:55.554992
\.


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departments_id_seq', 393, true);


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
1	Telephones	2014-02-04 09:03:07.960244	2014-02-04 09:03:07.960244
2	Computer	2014-02-04 09:03:07.972842	2014-02-04 09:03:07.972842
3	Fax	2014-02-04 09:03:07.981124	2014-02-04 09:03:07.981124
4	AC	2014-02-04 09:03:07.989453	2014-02-04 09:03:07.989453
5	Photocopier	2014-02-04 09:03:07.997633	2014-02-04 09:03:07.997633
\.


--
-- Name: office_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('office_assets_id_seq', 5, true);


--
-- Data for Name: pincode_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincode_groups (id, name, created_at, updated_at) FROM stdin;
1	Central	2014-04-30 10:10:35.016495	2014-04-30 10:10:35.016495
2	Western	2014-04-30 10:10:53.262303	2014-04-30 10:11:16.1411
3	Harbour	2014-04-30 10:11:28.085338	2014-04-30 10:11:28.085338
\.


--
-- Name: pincode_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincode_groups_id_seq', 3, true);


--
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at, city, city_id, pincode_group_id) FROM stdin;
144	Vasai	401205	2014-02-04 09:03:01.395647	2014-02-04 09:03:01.395647	Thane	3	3
145	Ganeshpuri (Khopoli)	401206	2014-02-04 09:03:01.403976	2014-02-04 09:03:01.403976	Thane	3	3
146	Papdi	401207	2014-02-04 09:03:01.412219	2014-02-04 09:03:01.412219	Thane	3	3
147	Vasai E I/E	401208	2014-02-04 09:03:01.420524	2014-02-04 09:03:01.420524	Thane	3	3
148	Nalasopara (E)	401209	2014-02-04 09:03:01.428942	2014-02-04 09:03:01.428942	Thane	3	3
149	Vasai Road E	401210	2014-02-04 09:03:01.437281	2014-02-04 09:03:01.437281	Thane	3	3
150	Agashi	401301	2014-02-04 09:03:01.445541	2014-02-04 09:03:01.445541	Thane	3	3
151	Arnala	401302	2014-02-04 09:03:01.45388	2014-02-04 09:03:01.45388	Thane	3	3
152	Virar	401303	2014-02-04 09:03:01.462174	2014-02-04 09:03:01.462174	Thane	3	3
153	Nirmal	401304	2014-02-04 09:03:01.47057	2014-02-04 09:03:01.47057	Thane	3	3
154	Kelwa	401401	2014-02-04 09:03:01.478844	2014-02-04 09:03:01.478844	Thane	3	3
155	Kelwa Mahim	401402	2014-02-04 09:03:01.487121	2014-02-04 09:03:01.487121	Thane	3	3
156	Manor	401403	2014-02-04 09:03:01.495416	2014-02-04 09:03:01.495416	Thane	3	3
157	Palghar H O	401404	2014-02-04 09:03:01.503713	2014-02-04 09:03:01.503713	Thane	3	3
158	Satpati	401405	2014-02-04 09:03:01.511927	2014-02-04 09:03:01.511927	Thane	3	3
159	Boisar	401501	2014-02-04 09:03:01.520351	2014-02-04 09:03:01.520351	Thane	3	3
160	Tarapur	401502	2014-02-04 09:03:01.528692	2014-02-04 09:03:01.528692	Thane	3	3
161	Chinchani	401503	2014-02-04 09:03:01.537055	2014-02-04 09:03:01.537055	Thane	3	3
162	Tarapur App	401504	2014-02-04 09:03:01.545416	2014-02-04 09:03:01.545416	Thane	3	3
163	Tarapur J/A	401506	2014-02-04 09:03:01.553843	2014-02-04 09:03:01.553843	Thane	3	3
164	Dahanu	401601	2014-02-04 09:03:01.562067	2014-02-04 09:03:01.562067	Thane	3	3
165	Dahanu Road	401602	2014-02-04 09:03:01.570492	2014-02-04 09:03:01.570492	Thane	3	3
166	Jawhar	401603	2014-02-04 09:03:01.578826	2014-02-04 09:03:01.578826	Thane	3	3
167	Mokhada	401604	2014-02-04 09:03:01.587125	2014-02-04 09:03:01.587125	Thane	3	3
168	Vikramgad	401605	2014-02-04 09:03:01.595379	2014-02-04 09:03:01.595379	Thane	3	3
169	Talasari	401606	2014-02-04 09:03:01.603617	2014-02-04 09:03:01.603617	Thane	3	3
170	Kasa	401607	2014-02-04 09:03:01.611983	2014-02-04 09:03:01.611983	Thane	3	3
171	Suryanagar	401609	2014-02-04 09:03:01.620203	2014-02-04 09:03:01.620203	Thane	3	3
172	Dapcheri	401610	2014-02-04 09:03:01.628603	2014-02-04 09:03:01.628603	Thane	3	3
173	Bordi	401701	2014-02-04 09:03:01.636972	2014-02-04 09:03:01.636972	Thane	3	3
174	Gholvad	401702	2014-02-04 09:03:01.645471	2014-02-04 09:03:01.645471	Thane	3	3
175	Kosbad Hill	401703	2014-02-04 09:03:01.653574	2014-02-04 09:03:01.653574	Thane	3	3
181	Ulhasnagar	421001	2014-02-04 09:03:01.707031	2014-02-04 09:03:01.707031	Thane	3	3
182	Dombivali (E)	421201	2014-02-04 09:03:01.73436	2014-02-04 09:03:01.73436	Thane	3	3
183	Dombivali (W)	421202	2014-02-04 09:03:01.745184	2014-02-04 09:03:01.745184	Thane	3	3
184	Kalyan	421301	2014-02-04 09:03:01.753485	2014-02-04 09:03:01.753485	Thane	3	3
185	Bhiwandi	421302	2014-02-04 09:03:01.761859	2014-02-04 09:03:01.761859	Thane	3	3
186	Ambernath	421501	2014-02-04 09:03:01.777349	2014-02-04 09:03:01.777349	Thane	3	3
187	Titwala	421503	2014-02-04 09:03:01.786646	2014-02-04 09:03:01.786646	Thane	3	3
188	Murbad	421504	2014-02-04 09:03:01.794981	2014-02-04 09:03:01.794981	Thane	3	3
189	Badlapur	421506	2014-02-04 09:03:01.806887	2014-02-04 09:03:01.806887	Thane	3	3
190	THANE	401303	2014-02-04 09:03:01.830393	2014-02-04 09:03:01.830393	Thane	3	3
109	Thane (H Q)	400601	2014-02-04 09:03:01.07887	2014-02-04 09:03:01.07887	Thane	3	3
110	Naupada	400602	2014-02-04 09:03:01.087205	2014-02-04 09:03:01.087205	Thane	3	3
111	Kopri Colony Thane (W)	400603	2014-02-04 09:03:01.095434	2014-02-04 09:03:01.095434	Thane	3	3
112	Thane (E)	400603	2014-02-04 09:03:01.103762	2014-02-04 09:03:01.103762	Thane	3	3
113	Wagle Industrial Estate Thane (W)	400604	2014-02-04 09:03:01.112115	2014-02-04 09:03:01.112115	Thane	3	3
114	Kalwa	400605	2014-02-04 09:03:01.120382	2014-02-04 09:03:01.120382	Thane	3	3
115	Jakegram  Thane (W)	400606	2014-02-04 09:03:01.128715	2014-02-04 09:03:01.128715	Thane	3	3
116	Thane (W)	400606	2014-02-04 09:03:01.137246	2014-02-04 09:03:01.137246	Thane	3	3
117	Sandoz Baug Thane (E)	400607	2014-02-04 09:03:01.145556	2014-02-04 09:03:01.145556	Thane	3	3
118	Balcum  Thane (W)	400608	2014-02-04 09:03:01.157498	2014-02-04 09:03:01.157498	Thane	3	3
133	Bhayandar	401101	2014-02-04 09:03:01.303651	2014-02-04 09:03:01.303651	Thane	3	3
134	Umbarpada (Bhayandar)	401102	2014-02-04 09:03:01.31196	2014-02-04 09:03:01.31196	Thane	3	3
135	Vangam (Mira road)	401103	2014-02-04 09:03:01.320247	2014-02-04 09:03:01.320247	Thane	3	3
136	Mira road	401104	2014-02-04 09:03:01.328545	2014-02-04 09:03:01.328545	Thane	3	3
137	Bhayandar (E)	401105	2014-02-04 09:03:01.336856	2014-02-04 09:03:01.336856	Thane	3	3
138	Uttan	401106	2014-02-04 09:03:01.345208	2014-02-04 09:03:01.345208	Thane	3	3
139	Mira Road (E)	401107	2014-02-04 09:03:01.35349	2014-02-04 09:03:01.35349	Thane	3	3
140	Bassien	401201	2014-02-04 09:03:01.362271	2014-02-04 09:03:01.362271	Thane	3	3
141	Bassien Road	401202	2014-02-04 09:03:01.370386	2014-02-04 09:03:01.370386	Thane	3	3
142	Sopara	401203	2014-02-04 09:03:01.378915	2014-02-04 09:03:01.378915	Thane	3	3
143	Vajreshwari	401204	2014-02-04 09:03:01.387231	2014-02-04 09:03:01.387231	Thane	3	3
191	PALGHAR	401504	2014-02-04 09:03:01.936794	2014-02-04 09:03:01.936794	Thane	3	3
195	KANJURMARG	400042	2014-02-14 08:47:14.560923	2014-02-14 08:47:14.560923	Mumbai	1	\N
196	MAHAPE	400710	2014-02-14 09:03:35.956199	2014-02-14 09:03:35.956199	Navi Mumbai	2	\N
192	KHOPOLI	410203	2014-02-04 09:03:02.053309	2014-02-04 09:03:02.053309	Thane	3	3
193	Shahad	421001	2014-02-04 09:03:02.06521	2014-02-04 09:03:02.06521	Thane	3	3
194	Thakurli	421202	2014-02-04 09:03:02.07823	2014-02-04 09:03:02.07823	Thane	3	3
120	Mumbra	400612	2014-02-04 09:03:01.178911	2014-02-04 09:03:01.178911	Thane	3	3
121	Turbhe	400613	2014-02-04 09:03:01.187066	2014-02-04 09:03:01.187066	Navi Mumbai	2	2
122	Konkan Bhawan Belapur	400614	2014-02-04 09:03:01.195377	2014-02-04 09:03:01.195377	Navi Mumbai	2	2
123	Ghansoli	400701	2014-02-04 09:03:01.203681	2014-02-04 09:03:01.203681	Navi Mumbai	2	2
124	Uran	400702	2014-02-04 09:03:01.215561	2014-02-04 09:03:01.215561	Navi Mumbai	2	2
125	Vashi	400703	2014-02-04 09:03:01.228849	2014-02-04 09:03:01.228849	Navi Mumbai	2	2
126	N A D Karanja (New Panvel)	400704	2014-02-04 09:03:01.237163	2014-02-04 09:03:01.237163	Navi Mumbai	2	2
127	Airoli	400705	2014-02-04 09:03:01.245295	2014-02-04 09:03:01.245295	Navi Mumbai	2	2
128	Krishi Utpanna Bazar( A P M C BAZAR )	400705	2014-02-04 09:03:01.253636	2014-02-04 09:03:01.253636	Navi Mumbai	2	2
129	Nerul Mode	400706	2014-02-04 09:03:01.2655	2014-02-04 09:03:01.2655	Navi Mumbai	2	2
130	JNPT Town Ship	400707	2014-02-04 09:03:01.278852	2014-02-04 09:03:01.278852	Navi Mumbai	2	2
131	Airoli Mode	400708	2014-02-04 09:03:01.287119	2014-02-04 09:03:01.287119	Navi Mumbai	2	2
132	Koparkhairne	400709	2014-02-04 09:03:01.295318	2014-02-04 09:03:01.295318	Navi Mumbai	2	2
176	Panvel	410206	2014-02-04 09:03:01.661888	2014-02-04 09:03:01.661888	Navi Mumbai	2	2
177	Kamotha	410209	2014-02-04 09:03:01.670219	2014-02-04 09:03:01.670219	Navi Mumbai	2	2
178	Kharghar	410210	2014-02-04 09:03:01.678518	2014-02-04 09:03:01.678518	Navi Mumbai	2	2
179	New Panvel	410216	2014-02-04 09:03:01.686882	2014-02-04 09:03:01.686882	Navi Mumbai	2	2
180	Kalamboli	410218	2014-02-04 09:03:01.695033	2014-02-04 09:03:01.695033	Navi Mumbai	2	2
119	Belapur	400611	2014-02-04 09:03:01.170414	2014-02-04 09:03:01.170414	Navi Mumbai	2	2
1	Mumbai G P O	400001	2014-02-04 09:02:59.723748	2014-02-04 09:02:59.723748	Mumbai	1	1
2	Kalbadevi	400002	2014-02-04 09:02:59.738348	2014-02-04 09:02:59.738348	Mumbai	1	1
3	Mandvi	400003	2014-02-04 09:02:59.746072	2014-02-04 09:02:59.746072	Mumbai	1	1
4	Masjid Bunder	400003	2014-02-04 09:02:59.754302	2014-02-04 09:02:59.754302	Mumbai	1	1
5	Girgaon	400004	2014-02-04 09:02:59.762954	2014-02-04 09:02:59.762954	Mumbai	1	1
6	Colaba	400005	2014-02-04 09:02:59.771615	2014-02-04 09:02:59.771615	Mumbai	1	1
7	Malabar Hill	400006	2014-02-04 09:02:59.780108	2014-02-04 09:02:59.780108	Mumbai	1	1
8	Grant Road	400007	2014-02-04 09:02:59.788291	2014-02-04 09:02:59.788291	Mumbai	1	1
9	Byculla	400008	2014-02-04 09:02:59.796689	2014-02-04 09:02:59.796689	Mumbai	1	1
10	Mumbai Central	400008	2014-02-04 09:02:59.81335	2014-02-04 09:02:59.81335	Mumbai	1	1
11	Chinch Bunder	400009	2014-02-04 09:02:59.821725	2014-02-04 09:02:59.821725	Mumbai	1	1
12	Mazgaon	400010	2014-02-04 09:02:59.871182	2014-02-04 09:02:59.871182	Mumbai	1	1
13	Jacob Circle	400011	2014-02-04 09:02:59.879297	2014-02-04 09:02:59.879297	Mumbai	1	1
14	Mahalaxmi	400011	2014-02-04 09:02:59.888185	2014-02-04 09:02:59.888185	Mumbai	1	1
15	Currey Road	400012	2014-02-04 09:02:59.896505	2014-02-04 09:02:59.896505	Mumbai	1	1
16	Parel	400012	2014-02-04 09:02:59.904866	2014-02-04 09:02:59.904866	Mumbai	1	1
17	Delisle Road	400013	2014-02-04 09:02:59.913235	2014-02-04 09:02:59.913235	Mumbai	1	1
18	Lower Parel	400013	2014-02-04 09:02:59.921669	2014-02-04 09:02:59.921669	Mumbai	1	1
19	Dadar (W)	400014	2014-02-04 09:02:59.929985	2014-02-04 09:02:59.929985	Mumbai	1	1
20	Sewree	400015	2014-02-04 09:02:59.938301	2014-02-04 09:02:59.938301	Mumbai	1	1
21	Mahim	400016	2014-02-04 09:02:59.946538	2014-02-04 09:02:59.946538	Mumbai	1	1
22	Dharavi	400017	2014-02-04 09:02:59.954751	2014-02-04 09:02:59.954751	Mumbai	1	1
23	Worli	400018	2014-02-04 09:02:59.963112	2014-02-04 09:02:59.963112	Mumbai	1	1
24	Matunga	400019	2014-02-04 09:02:59.971469	2014-02-04 09:02:59.971469	Mumbai	1	1
25	Marine Lines	400020	2014-02-04 09:02:59.97992	2014-02-04 09:02:59.97992	Mumbai	1	1
26	Nariman Point	400021	2014-02-04 09:02:59.988238	2014-02-04 09:02:59.988238	Mumbai	1	1
27	Chunabhatti	400022	2014-02-04 09:02:59.996491	2014-02-04 09:02:59.996491	Mumbai	1	1
28	Kurla (E)	400022	2014-02-04 09:03:00.00482	2014-02-04 09:03:00.00482	Mumbai	1	1
29	Sion	400022	2014-02-04 09:03:00.013109	2014-02-04 09:03:00.013109	Mumbai	1	1
30	Hutatma Chowk	400023	2014-02-04 09:03:00.021427	2014-02-04 09:03:00.021427	Mumbai	1	1
31	Nehru Nagar Kurla (E)	400024	2014-02-04 09:03:00.029781	2014-02-04 09:03:00.029781	Mumbai	1	1
197	SANPADA	400705	2014-02-14 09:54:12.430114	2014-02-14 09:54:12.430114	Navi Mumbai	2	\N
32	Prabhadevi	400025	2014-02-04 09:03:00.038088	2014-02-04 09:03:00.038088	Mumbai	1	1
33	Cumballa Hill	400026	2014-02-04 09:03:00.046422	2014-02-04 09:03:00.046422	Mumbai	1	1
34	Byculla (E)	400027	2014-02-04 09:03:00.054738	2014-02-04 09:03:00.054738	Mumbai	1	1
35	Bhavani Shankar Road Dadar (E)	400028	2014-02-04 09:03:00.063022	2014-02-04 09:03:00.063022	Mumbai	1	1
36	Dadar (E)	400028	2014-02-04 09:03:00.071362	2014-02-04 09:03:00.071362	Mumbai	1	1
37	Kalina / Santacruz P&T Colony	400029	2014-02-04 09:03:00.079687	2014-02-04 09:03:00.079687	Mumbai	1	1
38	Wadala	400031	2014-02-04 09:03:00.088126	2014-02-04 09:03:00.088126	Mumbai	1	1
39	Mantralaya	400032	2014-02-04 09:03:00.096414	2014-02-04 09:03:00.096414	Mumbai	1	1
40	Cotton Green	400033	2014-02-04 09:03:00.104893	2014-02-04 09:03:00.104893	Mumbai	1	1
41	Tank Road	400033	2014-02-04 09:03:00.113159	2014-02-04 09:03:00.113159	Mumbai	1	1
42	Haji Ali	400034	2014-02-04 09:03:00.121394	2014-02-04 09:03:00.121394	Mumbai	1	1
43	Tardeo	400034	2014-02-04 09:03:00.133484	2014-02-04 09:03:00.133484	Mumbai	1	1
44	Walkeshwar	400035	2014-02-04 09:03:00.146408	2014-02-04 09:03:00.146408	Mumbai	1	1
45	Antop Hill	400037	2014-02-04 09:03:00.158191	2014-02-04 09:03:00.158191	Mumbai	1	1
46	Ballard Estate	400038	2014-02-04 09:03:00.17155	2014-02-04 09:03:00.17155	Mumbai	1	1
47	Cuffe Parade	400039	2014-02-04 09:03:00.179678	2014-02-04 09:03:00.179678	Mumbai	1	1
48	Poonam Ngr Jogeshwari (E)	400041	2014-02-04 09:03:00.188106	2014-02-04 09:03:00.188106	Mumbai	1	1
49	Bhandup (E)	400042	2014-02-04 09:03:00.196429	2014-02-04 09:03:00.196429	Mumbai	1	1
50	Shivaji Nagar Govandi (W)	400043	2014-02-04 09:03:00.204918	2014-02-04 09:03:00.204918	Mumbai	1	1
51	Juhu	400049	2014-02-04 09:03:00.240402	2014-02-04 09:03:00.240402	Mumbai	1	1
52	Santacruz (W)	400049	2014-02-04 09:03:00.271426	2014-02-04 09:03:00.271426	Mumbai	1	1
53	Bandra (W)	400050	2014-02-04 09:03:00.279837	2014-02-04 09:03:00.279837	Mumbai	1	1
54	Bandra (E)	400051	2014-02-04 09:03:00.288103	2014-02-04 09:03:00.288103	Mumbai	1	1
55	Khar (W)	400052	2014-02-04 09:03:00.29637	2014-02-04 09:03:00.29637	Mumbai	1	1
56	Andheri (W)	400053	2014-02-04 09:03:00.304651	2014-02-04 09:03:00.304651	Mumbai	1	1
57	Santacruz (West)	400054	2014-02-04 09:03:00.313109	2014-02-04 09:03:00.313109	Mumbai	1	1
58	Santacruz (E)	400055	2014-02-04 09:03:00.321294	2014-02-04 09:03:00.321294	Mumbai	1	1
59	Vile Parle (W)	400056	2014-02-04 09:03:00.329611	2014-02-04 09:03:00.329611	Mumbai	1	1
60	Vile Parle (E)	400057	2014-02-04 09:03:00.337915	2014-02-04 09:03:00.337915	Mumbai	1	1
61	Andheri (West)	400058	2014-02-04 09:03:00.346369	2014-02-04 09:03:00.346369	Mumbai	1	1
62	Andheri (E) J B Nagar	400059	2014-02-04 09:03:00.354559	2014-02-04 09:03:00.354559	Mumbai	1	1
63	Jogeshwari (East)	400060	2014-02-04 09:03:00.362872	2014-02-04 09:03:00.362872	Mumbai	1	1
64	Goregaon (E)	400061	2014-02-04 09:03:00.371191	2014-02-04 09:03:00.371191	Mumbai	1	1
65	Vesava (Versova)	400061	2014-02-04 09:03:00.379569	2014-02-04 09:03:00.379569	Mumbai	1	1
66	Goregaon (West)	400062	2014-02-04 09:03:00.387745	2014-02-04 09:03:00.387745	Mumbai	1	1
67	Malad (W)	400064	2014-02-04 09:03:00.399825	2014-02-04 09:03:00.399825	Mumbai	1	1
68	Aarey Milk Colony	400065	2014-02-04 09:03:00.412857	2014-02-04 09:03:00.412857	Mumbai	1	1
69	Borivali (E)	400066	2014-02-04 09:03:00.421338	2014-02-04 09:03:00.421338	Mumbai	1	1
70	Kandivali (W)	400067	2014-02-04 09:03:00.429557	2014-02-04 09:03:00.429557	Mumbai	1	1
71	Dahisar	400068	2014-02-04 09:03:00.437952	2014-02-04 09:03:00.437952	Mumbai	1	1
72	Andheri (E)	400069	2014-02-04 09:03:00.446179	2014-02-04 09:03:00.446179	Mumbai	1	1
73	Kurla	400070	2014-02-04 09:03:00.454561	2014-02-04 09:03:00.454561	Mumbai	1	1
74	Chembur	400071	2014-02-04 09:03:00.462867	2014-02-04 09:03:00.462867	Mumbai	1	1
75	Saki Naka Andheri (E)	400072	2014-02-04 09:03:00.471178	2014-02-04 09:03:00.471178	Mumbai	1	1
76	Kurla (W)	400072	2014-02-04 09:03:00.592885	2014-02-04 09:03:00.592885	Mumbai	1	1
77	Chembur Vashi Naka	400073	2014-02-04 09:03:00.704507	2014-02-04 09:03:00.704507	Mumbai	1	1
78	Pant Nagar Ghatkopar (E)	400075	2014-02-04 09:03:00.716138	2014-02-04 09:03:00.716138	Mumbai	1	1
79	I I T Mumbai	400076	2014-02-04 09:03:00.729265	2014-02-04 09:03:00.729265	Mumbai	1	1
80	Powai	400076	2014-02-04 09:03:00.737552	2014-02-04 09:03:00.737552	Mumbai	1	1
81	Rajawadi Ghatkopar (E)	400077	2014-02-04 09:03:00.745898	2014-02-04 09:03:00.745898	Mumbai	1	1
82	Ghatkopar (W)	400077	2014-02-04 09:03:00.754235	2014-02-04 09:03:00.754235	Mumbai	1	1
83	Bhandup	400078	2014-02-04 09:03:00.762344	2014-02-04 09:03:00.762344	Mumbai	1	1
84	Vikhroli	400079	2014-02-04 09:03:00.770705	2014-02-04 09:03:00.770705	Mumbai	1	1
85	Mulund (W)	400080	2014-02-04 09:03:00.779235	2014-02-04 09:03:00.779235	Mumbai	1	1
86	Mulund (E)	400081	2014-02-04 09:03:00.787495	2014-02-04 09:03:00.787495	Mumbai	1	1
87	Mulund Colony	400082	2014-02-04 09:03:00.79584	2014-02-04 09:03:00.79584	Mumbai	1	1
88	Tagore Nagar Vikroli (E)	400083	2014-02-04 09:03:00.804188	2014-02-04 09:03:00.804188	Mumbai	1	1
89	Barve Nagar Ghatkopar (W)	400084	2014-02-04 09:03:00.816084	2014-02-04 09:03:00.816084	Mumbai	1	1
90	B A R C (Trombay)	400085	2014-02-04 09:03:00.832523	2014-02-04 09:03:00.832523	Mumbai	1	1
91	Ghatkopar (West)	400086	2014-02-04 09:03:00.845611	2014-02-04 09:03:00.845611	Mumbai	1	1
92	N I T I E Vikhroli (W)	400087	2014-02-04 09:03:00.853927	2014-02-04 09:03:00.853927	Mumbai	1	1
93	Telecom Factory Deonar	400088	2014-02-04 09:03:00.862326	2014-02-04 09:03:00.862326	Mumbai	1	1
94	Deonar (E)	400088	2014-02-04 09:03:00.909722	2014-02-04 09:03:00.909722	Mumbai	1	1
95	Tilak Nagar Chembur (w)	400089	2014-02-04 09:03:00.920243	2014-02-04 09:03:00.920243	Mumbai	1	1
96	Tilak Nagar	400089	2014-02-04 09:03:00.930996	2014-02-04 09:03:00.930996	Mumbai	1	1
97	GOREGAON (W)	400090	2014-02-04 09:03:00.94572	2014-02-04 09:03:00.94572	Mumbai	1	1
98	Borivali (W)	400092	2014-02-04 09:03:00.957563	2014-02-04 09:03:00.957563	Mumbai	1	1
99	Chakala MIDC	400093	2014-02-04 09:03:00.97073	2014-02-04 09:03:00.97073	Mumbai	1	1
100	Anu Shakti Nagar	400094	2014-02-04 09:03:00.982528	2014-02-04 09:03:00.982528	Mumbai	1	1
101	Seepz	400096	2014-02-04 09:03:00.999218	2014-02-04 09:03:00.999218	Mumbai	1	1
102	Malad (East)	400097	2014-02-04 09:03:01.012318	2014-02-04 09:03:01.012318	Mumbai	1	1
103	Vidyanagari	400098	2014-02-04 09:03:01.020605	2014-02-04 09:03:01.020605	Mumbai	1	1
104	Sahar Andheri (E) 	400099	2014-02-04 09:03:01.028975	2014-02-04 09:03:01.028975	Mumbai	1	1
105	Kandivali (E)	400101	2014-02-04 09:03:01.040657	2014-02-04 09:03:01.040657	Mumbai	1	1
106	Jogeshwari (W)	400102	2014-02-04 09:03:01.053774	2014-02-04 09:03:01.053774	Mumbai	1	1
107	Mandpeshwar Borivali (W)	400103	2014-02-04 09:03:01.062154	2014-02-04 09:03:01.062154	Mumbai	1	1
108	Motilal Nagar Goregaon (E)	400104	2014-02-04 09:03:01.070657	2014-02-04 09:03:01.070657	Mumbai	1	1
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 197, true);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profiles (id, user_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size, slug, contact_no_1, contact_no_2, blood_group, address, date_of_birth, verification_area, hobbies) FROM stdin;
1	1	2014-02-04 09:04:34.040115	2014-02-04 09:04:34.040115	\N	\N	\N	1					2014-02-04	\N	
2	5	2014-02-05 05:26:12.321877	2014-02-05 05:26:12.321877	scorp-logo-eps.png	image/png	27405	5					2014-02-05	\N	
3	3	2014-02-05 06:24:13.600413	2014-02-05 06:24:13.600413	\N	\N	\N	3					2014-02-05	\N	
4	2	2014-02-06 12:09:43.764696	2014-02-06 12:09:43.764696	verifime_logo_2.jpg	image/jpeg	59086	2					2014-02-06	\N	
5	6	2014-02-06 12:36:48.230089	2014-02-06 12:36:48.230089	logo-eps.png	image/png	11056	6					2014-02-06	\N	
6	4	2014-02-10 10:05:32.668943	2014-02-10 10:05:32.668943	\N	\N	\N	4					2014-02-10	\N	
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profiles_id_seq', 6, true);


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
20130930104213
20130930104233
20130930104307
20130930105302
20131117062235
20140116120857
20140201073515
20140201073616
20140201073810
20140201100118
20140201100202
20140201104507
20140202175327
20140202175741
20140203031820
20140203031853
20140203031927
20140203193648
20140203193957
20140204060612
20140204060621
20140204060630
20140204060643
20140204063300
20140329035226
20140413133348
20140413133751
20140413140859
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serveys (id, customer_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	2	2	t	t	2014-02-05	11:53:16	Sudhir Vishwakarma	self	3	\N	proffessional	Unmarried	3	3	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill	\N	Accept	2014-02-05 06:24:09.444411	2014-02-05 06:24:09.444411	1969-02-05	ASDDSF23424D	\N	dsrhdseh	543y4eyheyh
4	5	2	t	t	2014-02-08	11:24:54	yogesh bhasin	brother	20	\N	proffessional	Unmarried	5	3	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card,\r\nDriving licence,\r\nPassport	\N	Accept	2014-02-08 05:58:09.843803	2014-02-08 05:58:09.843803	1971-02-08	hakaowo	\N	hjsksksb	19238394921
7	13	1	t	t	2014-02-13	15:17:17	ranjana	wife	1	\N	others	Married	3	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--45lac	\N	Accept	2014-02-13 09:50:06.618717	2014-02-13 09:50:06.618717	1970-07-13	ajrpg5022c	\N		
8	11	1	t	t	2014-02-14	11:03:10	chitra keni	mother in law	3	\N	others	Married	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--22.30lac	\N	Accept	2014-02-14 05:37:59.031423	2014-02-14 05:37:59.031423	1980-02-14		\N		000012134550
9	36	1	t	t	2014-02-14	15:50:05	self	self	11	Rented	others	Married	2	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--1.2core\r\nRent ex date--dec2014	\N	Accept	2014-02-14 10:34:05.298036	2014-02-14 10:34:05.298036	1985-11-29		\N		
11	35	1	t	t	2014-02-14	16:11:46	sonal	wife	12	\N	others	Married	\N	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--noidea	\N	Accept	2014-02-14 10:42:59.84726	2014-02-14 10:42:59.84726	1969-05-31		\N		
12	29	1	t	t	2014-02-14	16:15:12	shurti	wife	13	\N	others	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--5.60lac	\N	Accept	2014-02-14 10:46:39.20837	2014-02-14 10:46:39.20837	2014-02-14		\N		
13	69	2	t	t	2014-02-17	17:33:07	simran kaur	wife 	7	\N	Graduate	Married	10	3	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Home loan 9 lakh	\N	Accept	2014-02-17 12:07:15.588476	2014-02-17 12:07:15.588476	1985-08-06		\N		
14	55	1	t	t	2014-02-17	19:04:59	anupama	mother	35	\N	others	Unmarried	\N	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--12.50lac	\N	Accept	2014-02-17 13:36:32.355447	2014-02-17 13:36:32.355447	1983-01-29		\N		
15	56	1	t	t	2014-02-17	19:08:53	vidhya	wife	10	\N	others	Married	5	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--62lac	\N	Accept	2014-02-17 13:40:24.915069	2014-02-17 13:40:24.915069	1971-06-21		\N		
16	58	1	t	t	2014-02-17	19:12:44	sunil desai	father in law	1	\N	\N	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--no idea\r\n	\N	Accept	2014-02-17 13:45:01.582764	2014-02-17 13:45:01.582764	1979-09-02		\N		
17	60	1	t	t	2014-02-17	19:17:33	vijya	mother	4	\N	others	Married	5	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--42lac	\N	Accept	2014-02-17 13:48:59.920557	2014-02-17 13:48:59.920557	1982-02-17		\N		
18	73	1	t	t	2014-02-19	18:45:29	aisha	mother	2	Rented	others	Unmarried	6	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAmt--3lac	\N	Accept	2014-02-19 13:17:42.550161	2014-02-19 13:17:42.550161	1991-02-04		\N		
19	73	1	t	t	2014-02-19	18:45:29	aisha	mother	2	Rented	others	Unmarried	6	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAmt--3lac	\N	Accept	2014-02-19 13:18:02.991613	2014-02-19 13:18:02.991613	1991-02-04		\N		
20	78	1	t	t	2014-02-19	19:02:33	meena	wife	10	\N	others	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	Accept	2014-02-19 13:34:33.770471	2014-02-19 13:34:33.770471	2014-08-16		\N		
21	78	1	t	t	2014-02-19	19:02:33	meena	wife	10	\N	others	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	Accept	2014-02-19 13:34:50.172458	2014-02-19 13:34:50.172458	2014-08-16		\N		
22	78	1	t	t	2014-02-19	19:02:33	meena	wife	10	\N	others	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	Accept	2014-02-19 13:35:26.888676	2014-02-19 13:35:26.888676	2014-08-16		\N		
23	79	1	t	t	2014-02-20	09:01:11	yashawani	wife	2	Company Accomodation	others	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--32lac	\N	Accept	2014-02-20 03:33:11.231859	2014-02-20 03:33:11.231859	1980-12-25		\N		
25	80	1	t	t	2014-02-20	09:06:34	rashmi	wife	1	Company Accomodation	others	Married	2	1	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--11lac	\N	Accept	2014-02-20 03:37:58.358223	2014-02-20 03:37:58.358223	1984-04-27		\N		
26	98	2	t	t	2014-02-20	15:34:07	vishnu salame	father	2	Rented	Graduate	Unmarried	3	1	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Flat no-301 joyti apt. Rent aggrement end sep-14, loan amount 23 lakh.	\N	Accept	2014-02-20 10:10:19.67445	2014-02-20 10:10:19.67445	1985-02-07		\N		
27	95	2	t	t	2014-02-20	15:44:35	sindhu marutirai	mother	22	\N	Post Graduate	Self Owned	3	1	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Loan amount-30 lakh home	\N	Accept	2014-02-20 10:19:50.435369	2014-02-20 10:19:50.435369	1986-11-27		\N		
28	90	1	t	t	2014-02-20	21:06:43	trupati	wife	11	\N	others	Married	5	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--5.50lac	\N	Accept	2014-02-20 15:38:27.243622	2014-02-20 15:38:27.243622	1977-08-29		\N		
29	75	1	t	t	2014-02-20	21:33:50	self	self	7	\N	others	Married	3	2	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--2.25core	\N	Accept	2014-02-20 16:05:25.216012	2014-02-20 16:05:25.216012	1970-04-01		\N		
30	96	2	t	t	2014-02-21	10:17:01	priyanka gupta	wife 	3	Rented	Graduate	Married	2	2	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Loan amount-20 lakh rent aggrement end april 2015, personal met time 6clock.	\N	Accept	2014-02-21 04:51:39.929627	2014-02-21 04:51:39.929627	1987-10-04		\N		
31	101	1	t	t	2014-02-24	11:02:09	self	self	2	\N	others	Married	2	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--15lac	\N	Accept	2014-02-24 05:33:27.423268	2014-02-24 05:33:27.423268	1979-11-04		\N		
32	102	1	t	t	2014-02-24	11:03:46	self	self	3	Rented	others	Married	4	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nRent expried date--31march 2014	\N	Accept	2014-02-24 05:36:14.498942	2014-02-24 05:36:14.498942	1981-12-17		\N		
33	100	1	t	t	2014-02-24	11:12:02	badhiben	wife	7	\N	others	Married	6	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--30lac	\N	Accept	2014-02-24 05:43:30.157058	2014-02-24 05:43:30.157058	1960-07-24		\N		
34	123	2	t	t	2014-03-04	18:08:00	lalita khole	mother	10	Owned By Parents	Graduate	Unmarried	4	3	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	28 lakh home loan	\N	Accept	2014-03-04 12:41:11.725099	2014-03-05 07:21:38.972869	1987-10-17		\N		
24	79	1	t	t	2014-02-20	09:01:11	yashawani	wife	2	Company Accomodation	others	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	Flat	upper middle class	easy	pakka	others	\N	carpated		\N	\N	\N	\N	Tol--home\r\nAmt--32lac	\N	Accept	2014-02-20 03:33:11.292211	2014-03-07 13:26:54.883868	1980-12-25		\N		
10	37	1	t	t	2014-02-14	16:10:04	harsh	son	10	Company Accomodation	Graduate	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	other	\N	temperory	\N	\N	\N		\N	\N	\N	\N	Tol--home\r\nAmt--17lac	\N	Accept	2014-02-14 10:41:40.094194	2014-03-07 13:23:22.488196	1970-07-01		\N		
35	130	1	t	t	2014-03-07	19:53:47	self	self	5	\N	Post Graduate	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	upper middle class	easy	pakka	others	\N	ventilation blinds		\N	\N	\N	\N	Tol--home\r\nAmt--14lac	\N	Accept	2014-03-07 14:25:54.57123	2014-03-08 07:06:45.871362	1968-04-12		\N		
36	146	1	t	t	2014-03-10	16:46:20	self	self	5	Company Accomodation	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac	\N	Accept	2014-03-10 11:18:13.190907	2014-03-10 11:18:13.190907	1983-05-09		\N		
37	155	2	t	t	2014-03-10	17:24:37	sailaja	mother	12	Owned By Parents	Graduate	Married	5	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Loan amount 8 lakh car loan	\N	Accept	2014-03-10 11:57:06.185473	2014-03-10 11:57:06.185473	1977-05-23		\N		
38	131	1	t	t	2014-03-10	20:14:08	amey	brother	12	\N	Graduate	Married	8	4	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6.99lac	\N	Accept	2014-03-10 14:45:58.522367	2014-03-10 14:45:58.522367	1985-10-02		\N		
6	9	1	t	t	2014-02-13	14:16:42	durgaparsad	security	4	\N	Post Graduate	Married	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	upper middle class	easy	pakka	fenced	\N	sofa		\N	\N	\N	\N	Thaird party conframation	\N	Accept	2014-02-13 08:48:29.646017	2014-03-11 07:10:42.957157	2014-02-13		\N		
42	161	2	t	t	2014-03-12	16:38:49	neha	wife	4	\N	Graduate	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20 lakh transfer loan	\N	Accept	2014-03-12 11:11:05.116465	2014-03-12 11:11:05.116465	1982-01-04		\N		
39	175	2	t	t	2014-03-12	16:29:58	sarmila	wife	7	\N	others	Married	4	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	upper middle class	easy	pakka	\N	\N	sofa		\N	\N	\N	\N	4 lakh car loan	\N	Accept	2014-03-12 11:02:24.74438	2014-03-14 07:35:32.393082	1968-01-02		\N		
3	3	1	t	t	2014-02-06	17:42:20	chetan	self	10	Company Accomodation	proffessional	Married	4	2	\N	f	Elerkx	f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- neighbour\n- ''\n	Multitanent House	Posh locality	easy	pakka	\N	800	sofa	Sofa , TV	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card	\N	Accept	2014-02-06 12:14:09.476318	2014-03-18 01:50:38.542755	1980-02-06		\N		
43	202	2	t	t	2014-03-18	20:08:23	self		2	Rented	Graduate	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Loan amount-3 lakh  car loan rent aggrement end july15	\N	Accept	2014-03-18 14:43:06.439425	2014-03-18 14:43:06.439425	1983-07-25		\N		
44	203	2	t	t	2014-03-18	20:13:26	self		1	Rented	Post Graduate	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Home loan 36 lakh, rent aggrement end after 1 yr	\N	Accept	2014-03-18 14:48:01.630418	2014-03-18 14:48:01.630418	1981-12-31		\N		
45	200	1	t	t	2014-03-19	10:01:06	shitij	son	5	Self Owned	others	Married	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--22.40lac	\N	Accept	2014-03-19 04:32:38.385431	2014-03-19 04:32:38.385431	1976-10-27		\N		
46	215	2	\N	\N	2014-03-20	18:27:07	bhavani	wife	2	Self Owned	Post Graduate	\N	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Car loan 3.6 lakh,	\N	Accept	2014-03-20 13:00:13.617757	2014-03-20 13:00:13.617757	1977-06-26		\N		
47	216	2	t	t	2014-03-21	13:03:16	self	self	4	Self Owned	proffessional	Married	\N	5	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-03-21 07:35:34.634037	2014-03-21 07:35:34.634037	1965-07-25		\N		
40	176	2	t	t	2014-03-12	16:32:37	suvarna	wife 	10	Self Owned	others	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Sitting Chawl	other	easy	pakka	others	\N	clean		\N	\N	\N	\N		\N	Accept	2014-03-12 11:04:22.086273	2014-03-29 07:46:01.808887	1972-07-20		\N		
49	229	1	t	t	2014-04-01	15:16:30	self		3	Rented	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	Posh locality	easy	pakka	others	\N	sofa		\N	\N	\N	\N		\N	Accept	2014-04-01 09:51:51.741805	2014-04-01 11:01:27.197991	1984-11-27		\N		
50	229	1	t	t	2014-04-01	15:25:51	self		3	Rented	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	TYPE OF LOAN HOME LOAN 35.50	\N	Accept	2014-04-01 09:56:23.339051	2014-04-01 11:06:48.167142	1984-11-27		\N		
48	229	1	t	t	2014-04-01	15:16:30	self		3	Rented	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	other	easy	pakka	others	\N	sofa		\N	\N	\N	\N	Type of loan home loan 1 cr	\N	Accept	2014-04-01 09:51:21.366977	2014-04-01 11:10:04.317514	1984-11-27		\N		
51	240	2	t	t	2014-04-04	12:13:47			\N	Self Owned	proffessional	Married	\N	2	\N	f	abc corp	f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card	\N	Accept	2014-04-04 06:46:07.459828	2014-04-04 06:46:07.459828	1991-06-10		\N		
52	239	2	\N	\N	2014-04-09	15:56:25			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2014-04-09 10:26:32.459743	2014-04-09 10:26:32.459743	2014-04-09		\N		
41	162	2	t	t	2014-03-12	16:34:33	vimal 	mother	7	Rented	Post Graduate	Self Owned	5	4	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Rent house aggrement end april2015,19 lakh home loan	\N	Accept	2014-03-12 11:08:21.59689	2014-03-12 11:08:21.59689	1984-01-08		\N		
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 52, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id, pincode_group_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2014-02-04 09:03:08.068171	2014-02-04 09:03:08.068171	\N	\N	\N	\N
2	TAB-VIKROLI	T0102031	2014-02-04 09:03:08.081366	2014-02-04 09:03:08.081366	\N	\N	\N	\N
3	TAB-SION	T0102032	2014-02-04 09:03:08.089773	2014-02-04 09:03:08.089773	\N	\N	\N	\N
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
3	scorpeo.tab2@gmail.com	$2a$10$TNkFFLfsyn3V6u6t/nXJwu.hKqKcDr1ZDlg5c/K.67lMJqLEVcTrm	\N	\N	\N	62	2014-04-29 03:40:37.044276	2014-04-17 10:31:30.863341	182.237.161.33	61.16.181.41	2013-09-21 12:51:03.387013	2014-04-29 03:40:37.045161	tab_user	scorpeo.tab2	2
1	avcv@scorpeo.in	$2a$10$bwzp8.ePaE48C4sJ6wMmWOj9yCzTgR2GBfJan8eWDAVBHNa/mFjpC	\N	\N	\N	420	2014-05-01 17:31:41.16968	2014-04-30 08:18:46.331919	182.237.161.150	61.16.181.42	2013-09-21 12:47:19.137738	2014-05-01 17:31:41.170528	super_user	data entry	1
5	ithelpdesk@scorpeo.in	$2a$10$HqPrM6cOQG9w2oDJubh.1OEtuddu2sfFR9jMnPAuY.MvxCLMlW5GK	\N	\N	\N	80	2014-04-12 10:16:25.021865	2014-04-12 10:01:56.618	59.184.5.227	59.184.5.227	2013-10-28 09:08:06.486517	2014-04-12 10:16:25.022721	super_user	IT Helpdesk	1
4	scorpeo.tab3@gmail.com	$2a$10$jIn4qaFmKkZhjlNqe/B17eUzLoylK/Z3Ib8x7oAopgDrOJHiPYtUq	\N	\N	\N	44	2014-04-12 10:21:20.749765	2014-04-01 02:41:38.747882	59.184.5.227	182.237.161.28	2013-09-23 08:55:49.271805	2014-04-12 10:21:20.750595	tab_user	scorpeo.tab3	3
6	srikumar@scorpeo.in	$2a$10$W9vIqe7zI3osu3ysLGllPuxdbx.IyT3pbezEDdGAN7nZ2Xzcnpv32	\N	\N	\N	2	2014-02-06 12:35:30.142465	2013-10-28 09:12:21.407536	59.184.28.164	59.184.31.105	2013-10-28 09:12:21.387733	2014-02-06 12:35:30.143238	super_user	N Srikumar	1
2	scorpeo.tab1@gmail.com	$2a$10$cyFp7iE88/ikiAOt2hQ3JO9uuXcHWN7lO9x3paAToAPkg/2vaFzm2	\N	\N	\N	109	2014-04-12 11:15:34.947141	2014-04-12 11:06:16.775302	59.184.5.227	59.184.5.227	2013-09-21 12:48:30.353638	2014-04-12 11:15:34.947976	tab_user	scorpeo.tab1	1
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

COPY work_serveys (id, business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, pincode_id, customer_id, status, tab_id, company_name_new, department_id, new_department_name) FROM stdin;
11	12	I D UTTARI BHARAT SABHA HINDHI PRIMARY SCHOOL, STATION ROAD, BHANDUP W, MUMBAI 78\r\n	\N	\N	t	asst.teacher	2014-02-14	15:47:44	self				9890022903	5	f	I D UTTARI BHARAT SABHA HINDHI PRIMARY SCHOOL	Others	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card--abucu3990l\r\nDob--11/11/84\r\nTol--home\r\nAmt--29lac	\N	positive	\N	\N	2014-02-14 10:19:55.991367	2014-02-14 10:19:56.021799	\N	\N	ready_for_verification	1	education staff	1	\N
2	4	6UR546U5758HJFGJHGJHG67U56U	\N	\N	t	N/A	2014-02-11	12:00:14	ggh	vbn				\N	t	GG	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	t	\N	\N	t	---\n- colleage\n- receptionist\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip,\r\nMobile Bill,\r\nPan Card	\N	positive	\N	\N	2014-02-11 06:31:14.347145	2014-02-11 06:31:14.379793	\N	\N	ready_for_verification	1		1	\N
5	19	UNIFY ENTERPRISE COMMUNICATIONS PVT LTD, HINCON HOUSE, 247 PARK, TOWER-B, 6TH FLR, LBS MARG, VIKHROLI WEST, MUMBA 83\r\n	\N	\N	t	human research	2014-02-14	15:33:02	self				9819824567	4	f	UNIFY ENTERPRISE COMMUNICATIONS PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--74283716\r\nPan Card--aexpd6054l(9/12/75)\r\nTol--car\r\nAmt--10lac	\N	positive	\N	\N	2014-02-14 10:06:40.476785	2014-02-14 10:06:40.506286	\N	\N	ready_for_verification	1	hr	1	\N
6	16	CAPGEMINI INDIA PVT LTD., OFFICE M6 , GODRET IT PARK NEAR PAUS REST, VIKHROLI WEST , MUMBAI  400079 .\r\n	19.1091760999999991	72.9194797999999906	t	senior consultant	2014-02-14	15:37:13	self				9920723446	4	f	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-14 10:08:07.74105	2014-02-14 10:08:07.773122	\N	\N	ready_for_verification	1	qu	1	\N
7	18	CAPGEMINI CONSULTING INDIA PVT.LTD., M - 6 - 3RD FLR., PLANT 5, GODREJ & BOYCE MFG. CO. LTD., PIROJSHANAGAR, LBS MARG, VIKHROLI (W), MUMBAI - 79\r\n	\N	\N	t	manager	2014-02-14	15:38:39	self				9833052212	6	f	CAPGEMINI CONSULTING INDIA PVT.LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	\N	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--12378\r\nTol--car\r\nAmt--9.45lac\r\nDob--22/12/74	\N	positive	\N	\N	2014-02-14 10:10:55.997353	2014-02-14 10:10:56.022684	\N	\N	ready_for_verification	1	it	1	\N
8	17	TATA CONSULTANCY SERVICES, FINANCE 10 TH , KENSINGTON B- WING , HIRANANDANI BUSINESS PARK , SEZ/ITES , POWAI MUMBAI \r\n	\N	\N	t	asst. system anyalist	2014-02-14	15:41:30	self				9820896491	3	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--392894\r\nTol--home\r\nAmt--22lac\r\nDob--21/04/87	\N	positive	\N	\N	2014-02-14 10:13:41.160344	2014-02-14 10:13:41.200469	\N	\N	ready_for_verification	1	bussiness finance	1	\N
9	15	TATA CONSULTANCY SERVICES, POWAI BRANCH, KENSINGTON, B WING, HIRANANDANI BUSINESS PARK, SEZ-ITES, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	associate  consultant	2014-02-14	15:43:49	teena(hr)				9324437292	4	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Third party conframation	\N	positive	\N	\N	2014-02-14 10:15:36.361641	2014-02-14 10:15:36.391721	\N	\N	ready_for_verification	1	it	1	\N
10	13	TCS ,KENSINGTON - B , 11F74  ,POWAI MUMBAI 400076 .\r\n	19.1253004000000004	72.9076668999999953	t	àsst.consultant	2014-02-14	15:45:46	self				9820252218	6	f	TCS 	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--227507\r\nTol--home\r\nAmt--47lac\r\nDob--7/8/84	\N	positive	\N	\N	2014-02-14 10:17:32.886811	2014-02-14 10:17:32.915116	\N	\N	ready_for_verification	1	it	1	\N
15	32	SR. EEE (TRS)'S OFFICE, CENTRAL RAILWAY, MUMBAI DIVISION, SECTOR -9, SANPADA (EAST), BACK SIDE OF MILLENIUM TOWER, SANPADA, NAVI MUMBAI - 400 705.\r\n	\N	\N	t	technician	2014-02-17	16:36:31	self					17	\N	SR. EEE (TRS)'S OFFICE, CENTRAL RAILWAY	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dob-25.5.1974,laon amount-4.5lakh home loan\r\nCentral goverment emp, company name-trs rolling stock.	\N	positive	\N	\N	2014-02-17 11:11:56.42464	2014-02-17 11:11:56.456251	\N	\N	ready_for_verification	2		1	\N
12	22	RELIANCE TECH SERV PVT LTD, DAKC, THANE BELAPUR ROAD, KOPARKHAIRANE, NAVI MUMBAI 400710\r\n	19.1045893999999983	73.0228172999999998	t	depUty manager	2014-02-15	12:16:40	SELF					3	f	RELIANCE TECH SERV PVT LTD	Private LTD.	Others	\N	\N			\N	\N	\N	Others	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	positive	\N	\N	2014-02-14 11:23:03.425065	2014-02-15 06:49:03.371929	\N	\N	ready_for_verification	2		212	\N
13	21	HEXAWARE TECHNOLOGIES LTD, BLDG 152, MBP PARK, A BLOCK, SECTOR -3, TTC INDUSTRIAL AREA, MAHAPE, NAVI MUMBAI 400710\r\n	19.093781700000001	73.0187584999999899	t	system analist	2014-02-17	15:34:53	self					6	\N	HEXAWARE TECHNOLOGIES LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-15070,loan amount-45 lakh home loan,dob-5.06.1974	\N	\N	\N	\N	2014-02-17 10:17:44.505682	2014-02-17 10:17:44.543575	\N	\N	ready_for_verification	2		342	\N
14	30	JACOBS ENGINEERING INDIA PVT LTD, PR. PROCESS ENGG, BLDG NO 7(104), SECTOR 2, MILLENIUM BUSINESS PARK, MAHAPE MIDC, NAVI MUMBAI 400710\r\n	19.1045893999999983	73.0228172999999998	t	principal process engg	2014-02-17	16:30:33	self					2	\N	JACOBS ENGINEERING INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-832753,45lakh home laon,dob-1 may 1979,desg-process eng.	\N	positive	\N	\N	2014-02-17 11:05:28.033215	2014-02-17 11:05:28.064439	\N	\N	ready_for_verification	2		1	\N
4	11	 603,SHRIKANT CHAMBURS PHASE I ,ADJACEPT TO R.K. STUDIO SION TRUMBAY ROAD CHEBUR \r\n	\N	\N	t	N/A	2014-02-13	16:09:01						\N	\N	xyz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-13 10:39:12.820199	2014-02-13 10:39:12.850307	\N	\N	ready_for_verification	3		1	\N
3	6	PURNIK BUILDERS PVT LTD, PURNIK ONE KANCHAN PUSHPA,KAVESWAR, NR SURAJ WATER PARK,THANE\r\n	\N	\N	t	senior excutive 	2014-02-13	14:27:58	self				9920724060	2	f	PURNIK BUILDERS PVT LTD	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--6522\r\nDob--19/05/88\r\nTol--car\r\nAmt--6.5lac	\N	positive	\N	\N	2014-02-13 09:03:00.239376	2014-02-13 09:03:00.257316	\N	\N	ready_for_verification	1	marketing	1	\N
18	34	TATA TELESERVICES LTD, VAS PLANNING, D-26/TTC INDUSTRIAL AREA, MIDC TURBHE, NEAR SANPADA POLICE STATION, NAVI MUMBAI 400703\r\n	19.0793546999999997	72.99920130000001	t	assistant manager	2014-02-17	17:41:30	self					\N	\N	TATA TELESERVICES LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-17 12:14:38.568661	2014-02-17 12:14:38.60499	\N	\N	ready_for_verification	2		228	\N
21	29	"AVTOS LIFE SCIENCES PVT LTD , B 22, TTC, MIDC, CHINCHVALI VILLAGE,   AIROLI,  RABALE - 400708   DIST. THANE. \r\n \r\n"\r\n	\N	\N	t	manager	2014-02-18	15:59:16	self					\N	\N	AVTOS LIFE SCIENCES PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-av907,5 lakh car loan,dob-4.06.1972 dept-formulat devlelopment.	\N	positive	\N	\N	2014-02-18 10:33:25.160227	2014-02-18 10:33:25.184745	\N	\N	ready_for_verification	2		1	\N
19	25	NITCO LTD , MOSAICO DIV, PLOT NO 3, STATION ROAD, KANJURMARG E ,OPP R.N.A RESIDENCIAN ESTATE MUMBAI 400042\r\n	19.1323864999999991	72.951962199999997	t	senior process officr	2014-02-17	19:21:14	self					13	f	NITCO LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--1118\r\nTol--home\r\nAmt--8lac\r\nDob--3/08/1964	\N	positive	\N	\N	2014-02-17 13:53:49.038606	2014-02-17 13:53:49.073454	\N	\N	ready_for_verification	1	mosaico division	1	\N
20	24	DECENT ACDEMY, SHOP NO. 1, SAISMRUTI BLDG, T.P. ROAD, NARDAS NAGAR, BHANDUP WEST NR SHIVDARSHAN BUS STOP,\r\n	\N	\N	t	director	2014-02-18	11:33:25	self				9892007013	9	f	DECENT ACDEMY	Partnership	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--10.70lac\r\nDob-24/07/1979	\N	positive	\N	\N	2014-02-18 06:07:08.96062	2014-02-18 06:07:08.991883	\N	\N	ready_for_verification	1	teaching	1	\N
16	23	ANMSOFT TECHNOLOGIES PVT LTD, UNIT NO 219-220, BLDG NO 2, SECTOR 1, MILLENIUM BUSINESS PARK, MAHAPE, NAVI MUMBAI 400710\r\n	19.1045893999999983	73.0228172999999998	t	vice presidant	2014-02-17	16:42:15	self					3	\N	ANMSOFT TECHNOLOGIES PVT LTD	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-539, dob-15.jan1973 ,20 lakh home loan dept-it	\N	positive	\N	\N	2014-02-17 11:16:32.388389	2014-02-17 11:16:32.412559	\N	\N	ready_for_verification	2		1	\N
22	31	TEAM INDIA CAREER HUB, SAMNA PRESS BLDG, SECTOR 30A, VASHI, NEAR INORBIT MALL, NAVI MUMBAI\r\n	19.0330487999999995	73.0296625000000006	t	marketing head	2014-02-18	16:07:56	self					5	\N	TEAM INDIA CAREER HUB	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	40 lakh home loan,dob-07.02.1981, dept-marketing head.	\N	positive	\N	\N	2014-02-18 10:42:30.704451	2014-02-18 10:42:30.728638	\N	\N	ready_for_verification	2		1	\N
23	36	COGNIZANT BLDG-5 , FLR -7 ,AIROLI MINDSPACE SEZ, THANE BELAPUR ROAD AIROLI \r\n	19.1625225000000015	72.9998654999999985	t	jr.data analyist	2014-02-18	16:41:55						\N	\N	COGNIZANT	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-18 11:12:25.298756	2014-02-18 11:12:25.326648	\N	\N	ready_for_verification	2		1	\N
24	43	I.I.T BOMBAY,AEROSPACE ENGINEERING DEPT,ADI SHANKARACHARYA MARG, POWAI, MUMBAI 400076\r\n	19.1230377999999988	72.9147959000000014	t	asst.professor	2014-02-20	08:58:24	self				9920947126	2	f	I.I.T BOMBAY 	Others	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--i11093\r\nTol--home\r\nAmt--32lac\r\nDob--25/12/1980	\N	positive	\N	\N	2014-02-20 03:30:57.014822	2014-02-20 03:30:57.043648	\N	\N	ready_for_verification	1	aerospace engg.	1	\N
25	44	, ROOM NO 80, FAMILY WELFARE CENTER, NAVAL HOSPITAL POWAI, NAVAL CIVILIAN HSG COLONY, KANJURMARG W, MUMBAI 78\r\n	\N	\N	t	store keeper cleark	2014-02-20	09:03:40	self				9969707606	5	f	NAVAL HOSPITAL POWAI	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--83405b\r\nTol--home\r\nAmt--11lac\r\nDob--27/04/84	\N	positive	\N	\N	2014-02-20 03:36:12.002598	2014-02-20 03:36:12.028965	\N	\N	ready_for_verification	1	store	1	\N
26	39	ATOS INDIA PVT LTD, GODREJ COMPLEX PLANT 5, GATE NO 2, PIROJSHA NAGAR, LBS MARG ,VIKROLI\r\n	\N	\N	t	system anyalist	2014-02-20	09:08:43	self				9892801070	3	f	ATOS INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--25lac	\N	positive	\N	\N	2014-02-20 03:40:42.873929	2014-02-20 03:40:42.899025	\N	\N	ready_for_verification	1	sai	1	\N
27	42	SHALINI, SHOP NO 9, AMRUTNAGAR CHS, AMRUTNAGAR, GHATKOPAR WEST, MUMBAI 86\r\n	\N	\N	t	proprietorship	2014-02-20	09:11:30	self				9324546346	33	f	SHALINI	Propreietorship	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6lac\r\nDob--16/08/1948	\N	positive	\N	\N	2014-02-20 03:43:49.240792	2014-02-20 03:43:49.256623	\N	\N	ready_for_verification	1	clinical	1	\N
28	59	MASTEK LTD, MILLENIUM BUSINESS PARK, MAHAPE , THANE BELAPUR ROAD, NAVI MUMBAI\r\n	19.1119243999999995	73.0165612999999922	t	sr.software engg	2014-02-20	15:40:51	self					2	\N	MASTEK LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-11335,dob-7 feb 1985,loan amount-23 lakh home laon.	\N	positive	\N	\N	2014-02-20 10:13:51.725471	2014-02-20 10:13:51.750889	\N	\N	ready_for_verification	2		1	\N
30	56	SKYSCATE INDIA PVT LTD, 1101/1102, PLATINAM TECHNO PARK, PLOT NO 17/18, SECTOR 38, VASHI 400703\r\n	19.0793549999999996	73.0000330000000019	t	sr.software engg	2014-02-20	16:01:15	self					\N	\N	SKYSCATE INDIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-1336,dob-3 feb 1986, loan amount-21 lakh home loan ,dept -it\r\n	\N	positive	\N	\N	2014-02-20 10:33:47.371033	2014-02-20 10:33:47.397869	\N	\N	ready_for_verification	2		1	\N
17	35	ANCHOR BOLTS ENTERPRISES, CHADHA ENGINEERING COMPOUND, PLOT NO 4, SECTOR 1-A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	t	N/A	2014-02-17	17:37:39	self					\N	\N	ANCHOR BOLTS ENTERPRISES	Propreietorship	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Doing her business since- 8 yr	\N	\N	\N	\N	2014-02-17 12:09:13.401132	2014-02-17 12:09:13.43689	\N	\N	ready_for_verification	2		1	\N
31	55	NITCO LTD.MARBLE LAND,PLOT-3,KANJUR VILLAGE ROAD,KANJURMARG-EAST-400042\r\n	19.1371929999999999	72.9369140000000016	t	senior mqnager product	2014-02-20	21:01:16	self				9821662167	1	f	NITCO LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--7038\r\nTol--car\r\nAmt--8lac\r\nDob--3/11/1972	\N	positive	\N	\N	2014-02-20 15:33:24.863764	2014-02-20 15:33:24.894584	\N	\N	ready_for_verification	1	marketing	1	\N
32	54	CAPGEMINI PVT LTD.PLANT-2,C-WING,2 ND FLR,GODREJ IT PARK,GODREJ & BOYCE COMPOUND,VIKHROLI-WEST-400079.\r\n	19.1091760999999991	72.9194797999999906	t	 consultant	2014-02-20	21:04:06	self				9769483391	3	f	CAPGEMINI PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--572278\r\nTol--car\r\nAmt--5.50lac\r\nDob--29/08/1977	\N	positive	\N	\N	2014-02-20 15:36:28.44852	2014-02-20 15:36:28.479744	\N	\N	ready_for_verification	1	consultant	1	\N
33	52	SWIBER OFF SHORE INDIA P LTD. B-502,DELPHI,HIRANANDANI BUSINESS PARK,POWAI-400076\r\n	19.1253004000000004	72.9076668999999953	t	asst.manager	2014-02-20	21:09:03	self				9869918203	10	f	SWIBER OFF SHORE INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--144\r\nTol--car\r\nAmt--4.15lac\r\nDob--11/10/83	\N	positive	\N	\N	2014-02-20 15:57:17.076885	2014-02-20 15:57:17.092828	\N	\N	ready_for_verification	1	taxien	1	\N
34	40	IPS MEHTALIA PVT LTD, UNIT B-101-109.KAILASH VAIBHAV INDUSTRIAL COMPLEX, PARK SITE , VIKHROLI WEST -400079\r\n	19.1091760999999991	72.9194797999999906	t	genral manager project	2014-02-20	21:27:37	self					1	f	IPS MEHTALIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--181284\r\nTol--car\r\nAmt--7.25lac\r\nDob--7/12/68	\N	positive	\N	\N	2014-02-20 16:03:30.060584	2014-02-20 16:03:30.091026	\N	\N	ready_for_verification	1	project	1	\N
35	60	OFF NM__, A/4, SAHYADRI CHS, BUILDING NO 35, GURUDUTT MADIR MARG, PANTHNAGAR, GHATKOPAR EAST, MUMBAI \r\n	19.0790700000000015	72.9079759999999908	t	proprietorship	2014-02-24	11:09:38	badhiben	wife			9819970456	27	f	no off name	Propreietorship	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--30lac\r\nDob--24/07/60	\N	positive	\N	\N	2014-02-24 05:41:37.749759	2014-02-24 05:41:37.773227	\N	\N	ready_for_verification	1	concreit	1	\N
36	61	THE NIELSEN COMPANY, 6TH FLOOR C BLOCK GODREJ BUSINESS, DISTRICT PHIROJSHAHNAGAR, VIKHROLI WEST, MUMBAI 79\r\n	\N	\N	t	associate director	2014-02-24	11:22:25	self				9820607946	8	f	THE NIELSEN COMPANY	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-24 05:53:41.863453	2014-02-24 05:53:41.888867	\N	\N	ready_for_verification	1	consumar in site	1	\N
37	62	CREDIT SUISSE INDIA LTD, CITYPARK CENTRAL BUSINESS AVENUE, HIRANANDANI BUSINESS PARK, MUMBAI \r\n	19.0759836999999983	72.8776558999999935	t	eno	2014-02-24	11:24:00	self	self			9833625040	3	\N	CREDIT SUISSE INDIA LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nEmoly id--15i8\r\nDob--17/12/81	\N	positive	\N	\N	2014-02-24 05:56:36.978493	2014-02-24 05:56:36.998719	\N	\N	ready_for_verification	1	mrm	1	\N
40	84	UNION BANK OF INDIA,BHANDUP BRANCH 100 BHAICHAND TEXTILE MILL COMPOUND BESIDE JAINAM HALL LBS MARG BHANDUP WEST MUMBAI 400078\r\n	19.142919599999999	72.9331617999999935	t	singal windows operator	2014-03-07	19:58:09	self				9833599785	5	f	UNION BANK OF INDIA	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--355672\r\nTol--home\r\nAmt--14lac\r\nDob--12/04/1968	\N	positive	\N	\N	2014-03-07 14:32:13.123946	2014-03-07 14:32:13.15273	\N	\N	ready_for_verification	1	deposit	1	\N
41	92	CAPGEMINI INDIA PVT LTD, BLDG NO 8, RAHEJA MINDSPACE, THANE BELAPUR RD, AIROLI\r\n	19.1625225000000015	72.9998654999999985	t	sr.consultant	2014-03-10	17:28:04	self					4	\N	CAPGEMINI CONSULTING INDIA PVT.LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dept-oracale apps,deg-sr.consultant,empid-22090 loan -transfer loan amount not confirm.	\N	positive	\N	\N	2014-03-10 12:02:54.174691	2014-03-10 12:02:54.2057	\N	\N	ready_for_verification	2		1	\N
42	91	CAPGEMINI INDIA PVT LTD, BLDG NO 8, RAHEJA MINDSPACE, THANE BELAPUR RD, AIROLI\r\n	19.1625225000000015	72.9998654999999985	t	sr.consultant	2014-03-10	17:33:11	self					4	\N	CAPGEMINI INDIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dob-11.07.1986, desg-  sr.consultant,dept- apps in oracale, empid-21352, transfer loan amount not confirm .	\N	positive	\N	\N	2014-03-10 12:06:07.64956	2014-03-10 12:06:07.680618	\N	\N	ready_for_verification	2		1	\N
43	90	HEXAWARE TECHNOLOGIES LTD, BLDG NO 1, MILLENIUM BUSINESS PARK, 'A' BLOCK, SECTOR 3, TTC INDUSTRIAL AREA, MAHAPE, NAVI MUMBAI 400710\r\n	19.1116309999999991	73.0249929999999949	t	technical arectichure	2014-03-10	17:39:05	self					6	\N	HEXAWARE TECHNOLOGIES LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dept-java deliver, dob-07.01.1977 loan amount-31 lakh home loan,empid-26257	\N	positive	\N	\N	2014-03-10 12:12:46.994025	2014-03-10 12:12:47.020407	\N	\N	ready_for_verification	2		1	\N
44	85	GENX ENTERPRISE,SHOP NO.3, MUNICIPAL MARKET,CHAFEKAR BANDHU MARG,NEAR KHANDOBA MANDIR,MULUND EAST,MUMBAI-400081\r\n	19.1602277000000001	72.972630499999994	t	proprietorship	2014-03-10	20:10:54	self				9321047185	5	f	GENX ENTERPRISE	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---car\r\nAmt--6.99lac\r\nDob--2/10/1985	\N	positive	\N	\N	2014-03-10 14:43:47.011918	2014-03-10 14:43:47.043946	\N	\N	ready_for_verification	1	proprietor	1	\N
45	89	DELOITTE, F AIRMONT LEVEL 4 HIRANANDANI BUSNISS PARK, POWAI, MUMBAI 76\r\n	\N	\N	t	anyalist	2014-03-10	20:16:53	self				9879126547	3	t	DELOITTE	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	\N	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card---321410\r\nTol--home\r\nAmt--14.55lac\r\nDob--15/12/1988	\N	positive	\N	\N	2014-03-10 14:49:17.671911	2014-03-10 14:49:17.698818	\N	\N	ready_for_verification	1	customer soluation	1	\N
46	103	ALEPO TECHNOLOGIES PVT.LTD.REAL TECHPARK OFFICE NO 709-714,PLOT NO 39/2,SECTOR NO 30A NEAR VASHI RAILWAY STATION VASHI NAVI MUMBAI 400703\r\n	19.0638420000000011	72.997911000000002	\N	traning manager	2014-03-12	16:41:33	self					7	\N	ALEPO TECHNOLOGIES PVT.LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dept-rnd empid-mm1018,dob-10 oct 1982 loan amount -1 cr.	\N	positive	\N	\N	2014-03-12 12:45:12.401255	2014-03-12 12:45:12.428476	\N	\N	ready_for_verification	2		1	\N
47	104	RELIANCE INFRASTRUCTURE LIMITED,CPG D BLOCK GROUND FLOOR,DHIRUBHAI AMBANI KNOWLEDGE CITY (DACK),KOPARKHAIRNE,\r\n	\N	\N	t	purchaseing	2014-03-12	18:22:14	self					7	\N	RELIANCE INFRASTRUCTURE LIMITED	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Desg-manager,dob-19 aug1980,empid-41016473, laon amount-3.5 car loan	\N	positive	\N	\N	2014-03-12 12:55:25.920098	2014-03-12 12:55:25.949448	\N	\N	ready_for_verification	2		1	\N
49	122	TATA CONSULTANCY SERVICES, 12-D, 115, KENSINGTON B WING, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI \r\n	19.1196772999999993	72.9050809000000015	t	senior  process assoicate	2014-03-19	09:57:41	deepak khychale	team leadar			9970967850	3	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	positive	\N	positive	\N	\N	2014-03-19 04:30:58.399857	2014-03-19 04:30:58.431186	\N	\N	ready_for_verification	1	farme life science	1	\N
29	58	QUALITY KIOSK TECHNOLOGIES PVT LTD, 201-205 BLDG NO 2, SECTOR 3, MBP MAHAPE, NEAR HOTEL RAMADA, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	t	solution engg	2014-03-29	13:20:27	self					3	\N	QUALITY KIOSK TECHNOLOGIES PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Others	\N	\N	\N	\N	---\n- colleage\n- ''\n	Others	Others	\N	Good	\N	\N	Easy	\N	\N	\N	\N	\N		\N	positive	\N	\N	2014-02-20 10:24:04.968832	2014-03-29 07:53:55.249589	\N	\N	ready_for_verification	2		1	\N
50	133	Glenmark Pharmaceuticals, Glenmark research centre, Plot No. A 607, MIDC, Mahape Navi Mumbai- 400709.\r\n	19.0997616999999984	73.0021533999999974	t	sr manager	2014-03-20	18:34:02	self					6	\N	Glenmark Pharmaceuticals	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	positive	\N	positive	\N	\N	2014-03-20 13:06:14.798107	2014-03-20 13:06:14.82704	\N	\N	ready_for_verification	2		1	\N
51	131	INDOCO REMEDIES LTD, R & D CENTER, R92 / 93, TTC INDUSTRIAL AREA, THANE BELAPUR ROAD, RABALE, NAVI MUMBAI 400701\r\n	19.1370180000000012	73.0027068999999926	t	depty manager	2014-03-20	18:36:42						2	\N	INDOCO REMEDIES LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\npositive	\N	positive	\N	\N	2014-03-20 13:08:41.641686	2014-03-20 13:08:41.672488	\N	\N	ready_for_verification	2		1	\N
48	125	SIEMENS LTD, KALWA WORKS SWITCH BOARD, THANE BELAPUR ROAD, OPP AIROLI RLY STATION, AIROLI 400601\r\n	\N	\N	t	wswv	2014-03-18	20:35:49	self					5	\N	SIEMENS LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	positive	\N	positive	\N	\N	2014-03-18 15:09:00.620168	2014-03-18 15:09:00.655589	\N	\N	ready_for_verification	2		1	\N
52	145	CAPGEMINI INDIA PVT LTD, GODREJ COMPLEX BLOCK A LBS MARG VIKHROLI ,MUMBAI  400079\r\n	19.1024907000000006	72.92011269999999	t	CONSULTANT	2014-04-01	16:34:21	self				9930035174	4	f	CAPGEMINI CONSULTING INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	\N	Others	t	\N	\N	\N	---\n- ''\n	Others	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	positive	\N	\N	2014-04-01 10:17:26.475963	2014-04-01 11:05:07.462946	\N	\N	ready_for_verification	1		393	\N
38	80	902, VENTURA , HIRANANDANI BUSINESS  PARK POWAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	N/A	2014-03-04	17:51:52						-1	\N	VENTURA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-03-04 12:25:30.23644	2014-03-04 12:25:30.272203	\N	\N	ready_for_verification	1		1	\N
39	80	902, VENTURA , HIRANANDANI BUSINESS  PARK POWAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	N/A	2014-03-04	17:51:52						-1	\N	VENTURA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-03-04 12:25:30.51853	2014-03-04 12:25:30.530269	\N	\N	ready_for_verification	1		1	\N
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 52, true);


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
-- Name: attendences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY attendences
    ADD CONSTRAINT attendences_pkey PRIMARY KEY (id);


--
-- Name: b_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY b_documents
    ADD CONSTRAINT b_documents_pkey PRIMARY KEY (id);


--
-- Name: branches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY branches
    ADD CONSTRAINT branches_pkey PRIMARY KEY (id);


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
-- Name: cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: client_verifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client_verifications
    ADD CONSTRAINT client_verifications_pkey PRIMARY KEY (id);


--
-- Name: clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


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
-- Name: pincode_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pincode_groups
    ADD CONSTRAINT pincode_groups_pkey PRIMARY KEY (id);


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

