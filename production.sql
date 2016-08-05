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
-- Name: pincodes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pincodes (
    id integer NOT NULL,
    name character varying(255),
    pin_number integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    city character varying(255),
    city_id integer
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
    company_name_new character varying(255),
    department_id integer
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
4	4	2014-02-04 16:55:00	2014-02-04 18:17:00	2014-02-04	2014-02-04 11:25:30.482065	2014-02-04 12:47:02.472648
81	2	2014-02-13 14:27:00	\N	2014-02-13	2014-02-13 08:57:43.110134	2014-02-13 08:57:43.110134
82	2	2014-02-13 14:36:00	\N	2014-02-13	2014-02-13 09:06:08.563461	2014-02-13 09:06:08.563461
83	2	2014-02-13 15:17:00	\N	2014-02-13	2014-02-13 09:47:10.89249	2014-02-13 09:47:10.89249
20	1	2014-02-06 11:14:00	\N	2014-02-06	2014-02-06 05:44:39.941495	2014-02-06 05:44:39.941495
86	4	2014-02-13 16:04:00	\N	2014-02-13	2014-02-13 10:34:46.364035	2014-02-13 10:34:46.364035
87	4	2014-02-13 16:05:00	\N	2014-02-13	2014-02-13 10:35:44.723363	2014-02-13 10:35:44.723363
12	5	2014-02-05 11:42:00	2014-02-06 18:04:00	2014-02-05	2014-02-05 06:12:45.912959	2014-02-06 12:34:58.01871
25	6	2014-02-06 18:05:00	2014-02-06 18:11:00	2014-02-06	2014-02-06 12:35:30.176787	2014-02-06 12:41:57.626622
26	5	2014-02-06 18:38:00	\N	2014-02-06	2014-02-06 13:08:37.328633	2014-02-06 13:08:37.328633
14	5	2014-02-05 11:46:00	2014-02-06 19:13:00	2014-02-05	2014-02-05 06:16:17.835845	2014-02-06 13:43:42.87537
28	5	2014-02-07 10:04:00	\N	2014-02-07	2014-02-07 04:34:22.563575	2014-02-07 04:34:22.563575
19	5	2014-02-06 10:43:00	2014-02-07 10:06:00	2014-02-06	2014-02-06 05:13:21.774965	2014-02-07 04:36:09.233401
29	5	2014-02-07 11:19:00	\N	2014-02-07	2014-02-07 05:49:33.339743	2014-02-07 05:49:33.339743
30	1	2014-02-07 11:33:00	\N	2014-02-07	2014-02-07 06:03:47.549614	2014-02-07 06:03:47.549614
31	1	2014-02-07 12:02:00	\N	2014-02-07	2014-02-07 06:32:49.674289	2014-02-07 06:32:49.674289
9	1	2014-02-05 10:30:00	2014-02-07 12:03:00	2014-02-05	2014-02-05 05:00:25.657359	2014-02-07 06:33:47.783228
21	5	2014-02-06 17:36:00	2014-02-07 17:56:00	2014-02-06	2014-02-06 12:06:15.721006	2014-02-07 12:26:49.006831
34	1	2014-02-08 09:46:00	\N	2014-02-08	2014-02-08 04:16:12.564173	2014-02-08 04:16:12.564173
35	5	2014-02-08 11:08:00	\N	2014-02-08	2014-02-08 05:38:25.855991	2014-02-08 05:38:25.855991
36	5	2014-02-08 11:09:00	\N	2014-02-08	2014-02-08 05:39:44.1996	2014-02-08 05:39:44.1996
7	3	2014-02-04 18:17:00	2014-02-08 11:48:00	2014-02-04	2014-02-04 12:47:08.537125	2014-02-08 06:18:29.117542
38	1	2014-02-08 12:31:00	\N	2014-02-08	2014-02-08 07:01:43.407565	2014-02-08 07:01:43.407565
13	1	2014-02-05 11:44:00	2014-02-08 13:07:00	2014-02-05	2014-02-05 06:14:57.472291	2014-02-08 07:37:01.124487
39	3	2014-02-08 16:33:00	\N	2014-02-08	2014-02-08 11:03:17.16656	2014-02-08 11:03:17.16656
40	1	2014-02-08 18:21:00	\N	2014-02-08	2014-02-08 12:51:40.136728	2014-02-08 12:51:40.136728
41	2	2014-02-08 18:38:00	\N	2014-02-08	2014-02-08 13:08:25.402155	2014-02-08 13:08:25.402155
22	2	2014-02-06 17:39:00	2014-02-08 18:38:00	2014-02-06	2014-02-06 12:09:15.164441	2014-02-08 13:08:35.578481
42	4	2014-02-09 09:38:00	\N	2014-02-09	2014-02-09 04:08:05.590159	2014-02-09 04:08:05.590159
43	5	2014-02-09 11:53:00	\N	2014-02-09	2014-02-09 06:23:28.767144	2014-02-09 06:23:28.767144
11	5	2014-02-05 11:39:00	2014-02-09 11:59:00	2014-02-05	2014-02-05 06:09:31.80537	2014-02-09 06:29:59.313166
44	2	2014-02-09 12:00:00	\N	2014-02-09	2014-02-09 06:30:22.925438	2014-02-09 06:30:22.925438
8	2	2014-02-04 18:17:00	2014-02-09 12:00:00	2014-02-04	2014-02-04 12:47:40.799442	2014-02-09 06:30:27.690051
45	1	2014-02-09 12:00:00	\N	2014-02-09	2014-02-09 06:30:41.392287	2014-02-09 06:30:41.392287
46	3	2014-02-09 12:00:00	\N	2014-02-09	2014-02-09 06:30:42.907365	2014-02-09 06:30:42.907365
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
\.


--
-- Name: attendences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attendences_id_seq', 95, true);


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
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 4, true);


--
-- Data for Name: business_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_verifications (id, user_id, customer_id, business_id, tab_id, created_at, updated_at) FROM stdin;
1	1	\N	2	2	2014-02-05 17:08:17.640523	2014-02-05 17:08:17.651782
3	5	\N	3	3	2014-02-08 05:49:15.538802	2014-02-08 05:49:15.567693
4	1	\N	4	1	2014-02-10 13:51:44.422772	2014-02-10 13:51:44.451424
5	1	\N	5	1	2014-02-13 08:00:20.657623	2014-02-13 08:00:20.680322
6	1	\N	6	1	2014-02-13 08:08:16.654378	2014-02-13 08:08:16.680284
8	1	\N	8	2	2014-02-13 09:30:02.07729	2014-02-13 09:30:02.099859
7	1	\N	7	2	2014-02-13 09:21:02.343957	2014-02-13 09:34:01.115061
10	1	\N	10	3	2014-02-13 09:59:10.550025	2014-02-13 09:59:10.574616
11	1	\N	11	3	2014-02-13 10:05:42.445372	2014-02-13 10:05:42.454699
9	1	\N	9	3	2014-02-13 09:46:37.183916	2014-02-13 10:14:08.99084
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 11, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
2	1003	Scorp Enterprises	f	1003	Chetan Tandel	BUSINESS	Kailash complex	Vikroli	INDIA	Maharashtra	\N	1	chetan-tandel	19.1046510000000005	72.9317819999999983	submitted	3	2014-02-05 17:07:38.855087	2014-02-05 17:07:38.855087	Scorp ltd	\N	\N	\N	\N	1	1	0	400086	1
3	1005	Scorp Enterprises	f	1005	Tinesh	BUSINESS	vikroli	kailash complex, vikroli	INDIA	Maharashtra	\N	163	tinesh	19.1154632000000007	72.918049400000001	submitted	5	2014-02-08 05:46:34.288101	2014-02-08 05:46:34.288101	Scorpeo	\N	\N	\N	\N	2	1	11690	400900	2
4	1006	Scorp Enterprises	f	1006	ERTYUU	BUSINESS	HGFHG	6UR546U5758HJFGJHGJHG67U56U	INDIA	Maharashtra	\N	144	ertyuu	19.7514797999999985	75.7138884000000019	verified	7	2014-02-08 07:18:23.872243	2014-02-08 07:18:23.872243	GG	\N	\N	\N	\N	1	1	539	8897987878	1
5	1010	Scorp Enterprises	t	1010	MAHESH GAJANAN SOMAVANSHI	BUSINESS		UGAM SOLUTIONS PVT LTD, UNIT A2/A3 4TH FLR, ASHAR IT PARK, WAGALE ESTATE 162 ROAD, AMBIKA NAGAR, THANE 400604\r\n	INDIA	Maharashtra	\N	113	mahesh-gajanan-somavanshi	19.1990000999999992	72.9550993999999946	submitted	12	2014-02-13 08:00:14.686626	2014-02-13 08:00:14.686626	UGAM SOLUTIONS PVT LTD	\N	\N	\N	\N	70	1	4498	4000604	3
7	1014	Scorp Enterprises	f	1014	SACHIN A GADEKAR	BUSINESS		RELIANCE CORPORATE PARK, THANE BELPAUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	Maharashtra	\N	123	sachin-a-gadekar	19.1162281999999983	73.0071350999999993	submitted	16	2014-02-13 09:20:56.467319	2014-02-13 09:20:56.467319	RELIANCE CORPORATE	\N	\N	\N	\N	113	1	14677		2
8	1015	Scorp Enterprises	t	1015	PRAVIN PAWAR	BUSINESS		HEXAWARE TECHNOLOGIES LTD, BUILDING  152, MILLENIUM BUSINESS PARK, A BLOCK, SECTOR 3, MAHAPE, NAVI MUMBAI\r\n	INDIA	Maharashtra	\N	132	pravin-pawar	19.1182936999999988	73.0275874999999957	submitted	17	2014-02-13 09:29:51.2876	2014-02-13 09:29:51.2876	HEXAWARE TECHNOLOGIES LTD	\N	\N	\N	\N	113	1	14677		2
9	1016	Scorp Enterprises	f	1016	PRASHANT RAMCHANDRA PANDEY	BUSINESS		SWAMI VIVEKANAND HIGH SCHOOL, SIHDHI SOCIETY CHEMBUR MUMBAI 77\r\n	INDIA	Maharashtra	\N	74	prashant-ramchandra-pandey	19.0493501000000016	72.8877384000000035	submitted	18	2014-02-13 09:46:26.111673	2014-02-13 09:46:26.111673	SWAMI VIVEKANAND HIGH SCHOOL	\N	\N	\N	\N	70	1	4498	400071	1
10	1019	Scorp Enterprises	f	1019	USHA MANMOHAN SHARMA 	BUSINESS		MUNICIPAL CORPORATION OF GREATER MUMBAI , PUBLIC HEALPH DEPARTMENT PAREL P/S  \r\n	INDIA	Maharashtra	\N	16	usha-manmohan-sharma	19.7514797999999985	75.7138884000000019	submitted	21	2014-02-13 09:59:02.631311	2014-02-13 09:59:02.631311	MUNICIPAL CORPORATION OF GREATER MUMBAI	\N	\N	\N	\N	34	1	1131	400013	1
6	1012	Scorp Enterprises	t	1012	KETKAR KAUSTUBH SHIRESH	BUSINESS		PURNIK BUILDERS PVT LTD, PURNIK ONE KANCHAN PUSHPA,KAVESWAR, NR SURAJ WATER PARK,THANE\r\n	INDIA	Maharashtra	\N	190	ketkar-kaustubh-shiresh	19.2542730000000013	72.9719149999999956	verified	14	2014-02-13 08:08:10.098123	2014-02-13 08:08:10.098123	PURNIK BUILDERS PVT LTD	\N	\N	\N	\N	66	1	16720		3
11	1021	Scorp Enterprises	t	1021	SHANMHGANATHAN PERUMAL NADAR	BUSINESS		 603,SHRIKANT CHAMBURS PHASE I ,ADJACEPT TO R.K. STUDIO SION TRUMBAY ROAD CHEBUR \r\n	INDIA	Maharashtra	\N	74	shanmhganathan-perumal-nadar	19.7514797999999985	75.7138884000000019	verified	23	2014-02-13 10:05:35.891535	2014-02-13 10:05:35.891535	xyz	\N	\N	\N	\N	34	1	1131	400071	1
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 11, true);


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
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 1, true);


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
\.


--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_business_documents_id_seq', 1, false);


--
-- Data for Name: co_applicant_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
1	1023	Scorp Enterprises	t	1023	SHIVKUMAR KUBADIRAM PARCHA 	BUSINESS		R.C.F. COLONY, TOWNSHIP CHEMBUR  M-74 \r\n	INDIA	mumbai	maharashtra	74	shivkumar-kubadiram-parcha	19.0759836999999983	72.8776558999999935	submitted	25	R.C.F	2014-02-13 10:10:48.138649	2014-02-13 10:10:48.138649	\N	\N	\N	\N	34	1	1131	\N	\N
\.


--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_businesses_id_seq', 1, true);


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
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 2, true);


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
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 6, true);


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

COPY co_applicants (id, applicant_name, agency_name, document_required, fh_code, landmark, country_name, country_state, country_city, slug, status, customer_id, address, latitude, longitude, application_status, created_at, updated_at, contact_number, application_ref_no, pincode_id, state, d_o_b, message, branch_id, client_id, branch_code, area_name, city_id) FROM stdin;
1	Anita Verma	Scorp Enterprises	f	1003	MIG Colony	INDIA	Maharashtra	\N	anita-verma	verified	3	kurla	19.0719889999999985	72.8840819999999923	RESIDENTIAL	2014-02-05 17:07:56.101526	2014-02-05 17:07:56.101526	\N	1003	1	\N	\N	\N	1	1	0	400070	1
4	AKSHADA DHUME	Scorp Enterprises	t	1009		INDIA	Maharashtra	\N	akshada-dhume	submitted	11	C2-104, KHAMAJ CHS, KAVYADHARA COMPLEX, DHOKALI KOLSHET RD, KAVYADHARA COMPLEX, THANE 400607\r\n	19.2392834000000015	72.9873923999999903	RESIDENTIAL	2014-02-13 07:03:57.524474	2014-02-13 07:03:57.524474	\N	1009	\N	\N	\N	\N	70	1	4498	400607	3
5	GAJANAN VISHNU SOMAVANSHI	Scorp Enterprises	t	1010		INDIA	Maharashtra	\N	gajanan-vishnu-somavanshi	ready_for_verification	12	B/402 MARTAND APT, DAMODAR VITAVKAR MARG, VITAVA, THANE 400605\r\n	19.1943854000000016	72.99920130000001	RESIDENTIAL	2014-02-13 08:01:15.645214	2014-02-13 08:01:15.645214	\N	1010	\N	\N	\N	\N	70	1	4498	400605	3
6	RANJANA GUPTA	Scorp Enterprises	f	1011		INDIA	Maharashtra	\N	ranjana-gupta	ready_for_verification	13	FLAT NO 402, FAIRFIELD-B, LODHA LUXURIA, MAJEWADA, LODHA COMPLEX, THANE 400601\r\n	19.201050200000001	72.9785352999999901	RESIDENTIAL	2014-02-13 08:03:45.676474	2014-02-13 08:03:45.676474	\N	1011	\N	\N	\N	\N	70	1	4498	400601	3
7	MRS. NAVYA M.P.	Scorp Enterprises	t	1013		INDIA	Maharashtra	\N	mrs-navya-m-p	ready_for_verification	15	B-6001, OLIVE SHALLOTS, SEC-16A, PLOT-17, PALM BEACH ROAD, NEAR SBI SANPADA BRANCH, NAVI MUMBAI 400705\r\n	19.0637934999999992	73.0066446999999954	RESIDENTIAL	2014-02-13 08:11:50.516293	2014-02-13 08:11:50.516293	\N	1013	\N	\N	\N	\N	86	1	5141	400703	2
8	NILIMA PAWAR	Scorp Enterprises	t	1015		INDIA	Maharashtra	\N	nilima-pawar	ready_for_verification	17	GHARONDA, F-21, 104, SECTOR 9, GHANSOLI, OPP NEW CITY SCHOOL, NAVI MUMBAI 400701\r\n	19.1264800999999984	73.0110095999999942	RESIDENTIAL	2014-02-13 09:31:40.807405	2014-02-13 09:31:40.807405	\N	1015	\N	\N	\N	\N	113	1	14677	400701	2
9	PRAVIN GANPAT KARNIK 	Scorp Enterprises	t	1022		INDIA	Maharashtra	\N	pravin-ganpat-karnik	submitted	24	ROOM NO 10,  BLD NO 1,BPT COLONY , EKTA NAGAR DOCKYARD ROAD WADI , BANDAR MUMBAI 10\r\n	19.7514797999999985	75.7138884000000019	RESIDENTIAL	2014-02-13 10:08:24.684658	2014-02-13 10:08:24.684658	\N	1022	12	\N	\N	\N	34	1	1131	400010	1
10	SHIVKUMAR KUBADIRAM PARCHA 	Scorp Enterprises	t	1023		INDIA	Maharashtra	\N	shivkumar-kubadiram-parcha	submitted	25	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n	19.0493282999999991	72.8294843999999983	RESIDENTIAL	2014-02-13 10:10:02.989641	2014-02-13 10:10:02.989641	\N	1023	74	\N	\N	\N	34	1	1131	400071	1
11	SANJIVANI ARUN ALAT	Scorp Enterprises	t	1025		INDIA	Maharashtra	\N	sanjivani-arun-alat	submitted	27	ROOM NO 28,CHAWL NO 4, TRANSIT CAMP , BEHIND BLDG NO 49 & 50, SUBHASH NAGAR CHEMBUR 400071 .\r\n	19.0582606000000006	72.9054519999999968	RESIDENTIAL	2014-02-13 10:13:38.140173	2014-02-13 10:13:38.140173	\N	1025	74	\N	\N	\N	34	1	1131	400071	1
2	VASUDEO VAIKUNTH NARVEKAR	Scorp Enterprises	f	1008		INDIA	Maharashtra	\N	vasudeo-vaikunth-narvekar	verified	9	1202, BANGASHREE TOWER CO-KOP HSG SOC LTD, DAJI RAMCHANDRA ROAD, NEAR MAKHMALI TALAO, CHARAI, THANE WEST 400601\r\n	19.1985422999999997	72.9748447999999996	RESIDENTIAL	2014-02-13 06:56:41.517906	2014-02-13 06:56:41.517906	\N	1008	109	\N	\N	\N	70	1	4498	400601	1
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 11, true);


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
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 8, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
1	1	2	2	2014-02-05 06:22:48.485559	2014-02-05 06:22:48.508745	\N	\N	\N
2	1	3	1	2014-02-05 17:06:52.948079	2014-02-05 17:06:52.965255	\N	\N	\N
4	1	4	2	2014-02-07 13:34:31.203756	2014-02-07 13:34:31.215269	\N	\N	\N
5	5	5	2	2014-02-08 05:45:36.682847	2014-02-08 05:49:05.168636	\N	\N	\N
8	1	9	1	2014-02-13 06:55:07.551239	2014-02-13 06:55:07.573613	\N	\N	\N
10	1	11	1	2014-02-13 07:03:28.394601	2014-02-13 07:03:28.417287	\N	\N	\N
11	1	12	1	2014-02-13 07:59:11.715081	2014-02-13 07:59:11.736953	\N	\N	\N
12	1	13	1	2014-02-13 08:03:00.234591	2014-02-13 08:03:00.254004	\N	\N	\N
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
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 23, true);


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
11	1009	Scorp Enterprises	1009	CHAITANYA DHUME	C2-104, KHAMAJ CHS, KAVYADHARA COMPLEX, DHOKALI KOLSHET RD, KAVYADHARA COMPLEX, THANE 400607\r\n		\N	117	2014-02-13 07:03:25.22818	2014-02-13 07:03:25.22818	chaitanya-dhume	19.2392834000000015	72.9873923999999903	\N	9930843474	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400607	3	f
18	1016	Scorp Enterprises	1016	PRASHANT RAMCHANDRA PANDEY	no resi		\N	155	2014-02-13 09:45:47.441467	2014-02-13 09:45:47.441467	prashant-ramchandra-pandey	19.1358792000000015	73.0081429999999898	\N	9823444366	ready_for_verification	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	f	\N	70	1	4498	401402	1	t
19	1017	Scorp Enterprises	1017	RADHIKARANT SENGUPTA	C-61, SUNDER APPTS SION TROMBAY RD CHEMBUR OPP DIAMOND GARDEN MUMBAI-71\r\n		\N	74	2014-02-13 09:53:49.234108	2014-02-13 09:53:49.234108	radhikarant-sengupta	19.7514797999999985	75.7138884000000019	\N	9820719692	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	5	1	4276	400071	1	f
22	1020	Scorp Enterprises	1020	JEGAN SHANMUGANATHAN NADAR	R NO 414, B NO 02, JAY BHARAT SOLIETY, MAHADA COLONY , VASHINAKA, CHEMBUR\r\n		\N	74	2014-02-13 10:01:50.727011	2014-02-13 10:01:50.727011	jegan-shanmuganathan-nadar	19.0327996000000006	72.8963567999999924	\N	9952789709	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
23	1021	Scorp Enterprises	1021	SHANMHGANATHAN PERUMAL NADAR	R NO 414, B NO 02, JAY BHARAT SOLIETY, MHADA COLONY , VASHINAKA, CHEMBUR\r\n		\N	77	2014-02-13 10:03:55.813175	2014-02-13 10:03:55.813175	shanmhganathan-perumal-nadar	19.0327996000000006	72.8963567999999924	\N	9930273869	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400073	1	f
24	1022	Scorp Enterprises	1022	NEHA PRAVIN KARNIK 	ROOM NO 10,  BLD NO 1, BPT COLONY , EKTA NAGAR, DOCKYARD ROAD WADI  BANDAR MUMBAI 10\r\n		\N	12	2014-02-13 10:07:42.653673	2014-02-13 10:07:42.653673	neha-pravin-karnik	19.7514797999999985	75.7138884000000019	\N	8655389213	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400010	1	f
25	1023	Scorp Enterprises	1023	ANUJ SHIVKUMAR  PARCHA 	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n		\N	74	2014-02-13 10:09:27.813435	2014-02-13 10:09:27.813435	anuj-shivkumar-parcha	19.0493282999999991	72.8294843999999983	\N	8652535081	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
26	1024	Scorp Enterprises	1024	MUNESH SHIVKUMAR PARCHA 	R.C.F. COLONY, TYPE II, BLDG NO . 19/428, CHEMBUR M-74 \r\n		\N	74	2014-02-13 10:11:59.458532	2014-02-13 10:11:59.458532	munesh-shivkumar-parcha	19.0493282999999991	72.8294843999999983	\N	9967450201	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
27	1025	Scorp Enterprises	1025	RASIKA ARUN ALAT	ROOM NO 28, CHAWL NO 4, TRANSIT CAMP , BEHIND BLDG NO 49 & 50, SUBHASH NAGAR, CHEMBUR 400071 .\r\n		\N	74	2014-02-13 10:13:01.14599	2014-02-13 10:13:01.14599	rasika-arun-alat	19.0582606000000006	72.9054519999999968	\N	8767880515	submitted	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	34	1	1131	400071	1	f
9	1008	Scorp Enterprises	1008	SAURABH VASUDEO NARVEKAR	1202, BANGASHREE TOWER CO-KOP HSG SOC LTD, DAJI RAMCHANDRA ROAD, NEAR MAKHMALI TALAO, CHARAI, THANE WEST 400601\r\n		\N	116	2014-02-13 06:54:49.20008	2014-02-13 06:54:49.20008	saurabh-vasudeo-narvekar	19.1985422999999997	72.9748447999999996	\N	022-25442522/9819021789	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400606	3	f
13	1011	Scorp Enterprises	1011	BRIJENDRA KUMAR GUPLTA	FLAT NO 402, FAIRFIELD-B, LODHA LUXURIA, MAJEWADA, LODHA COMPLEX, THANE 400601\r\n		\N	109	2014-02-13 08:02:55.70757	2014-02-13 08:02:55.70757	brijendra-kumar-guplta	19.201050200000001	72.9785352999999901	\N	022-65166313\t9819730421/9702014760	verified	\N	MAHARASHTRA	\N	INDIA	\N	RESIDENTIAL	t	\N	70	1	4498	400601	3	f
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 27, true);


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
-- Data for Name: pincodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pincodes (id, name, pin_number, created_at, updated_at, city, city_id) FROM stdin;
144	Vasai	401205	2014-02-04 09:03:01.395647	2014-02-04 09:03:01.395647	Thane	3
145	Ganeshpuri (Khopoli)	401206	2014-02-04 09:03:01.403976	2014-02-04 09:03:01.403976	Thane	3
146	Papdi	401207	2014-02-04 09:03:01.412219	2014-02-04 09:03:01.412219	Thane	3
147	Vasai E I/E	401208	2014-02-04 09:03:01.420524	2014-02-04 09:03:01.420524	Thane	3
148	Nalasopara (E)	401209	2014-02-04 09:03:01.428942	2014-02-04 09:03:01.428942	Thane	3
149	Vasai Road E	401210	2014-02-04 09:03:01.437281	2014-02-04 09:03:01.437281	Thane	3
150	Agashi	401301	2014-02-04 09:03:01.445541	2014-02-04 09:03:01.445541	Thane	3
151	Arnala	401302	2014-02-04 09:03:01.45388	2014-02-04 09:03:01.45388	Thane	3
152	Virar	401303	2014-02-04 09:03:01.462174	2014-02-04 09:03:01.462174	Thane	3
153	Nirmal	401304	2014-02-04 09:03:01.47057	2014-02-04 09:03:01.47057	Thane	3
154	Kelwa	401401	2014-02-04 09:03:01.478844	2014-02-04 09:03:01.478844	Thane	3
155	Kelwa Mahim	401402	2014-02-04 09:03:01.487121	2014-02-04 09:03:01.487121	Thane	3
156	Manor	401403	2014-02-04 09:03:01.495416	2014-02-04 09:03:01.495416	Thane	3
157	Palghar H O	401404	2014-02-04 09:03:01.503713	2014-02-04 09:03:01.503713	Thane	3
158	Satpati	401405	2014-02-04 09:03:01.511927	2014-02-04 09:03:01.511927	Thane	3
159	Boisar	401501	2014-02-04 09:03:01.520351	2014-02-04 09:03:01.520351	Thane	3
160	Tarapur	401502	2014-02-04 09:03:01.528692	2014-02-04 09:03:01.528692	Thane	3
161	Chinchani	401503	2014-02-04 09:03:01.537055	2014-02-04 09:03:01.537055	Thane	3
162	Tarapur App	401504	2014-02-04 09:03:01.545416	2014-02-04 09:03:01.545416	Thane	3
163	Tarapur J/A	401506	2014-02-04 09:03:01.553843	2014-02-04 09:03:01.553843	Thane	3
164	Dahanu	401601	2014-02-04 09:03:01.562067	2014-02-04 09:03:01.562067	Thane	3
165	Dahanu Road	401602	2014-02-04 09:03:01.570492	2014-02-04 09:03:01.570492	Thane	3
166	Jawhar	401603	2014-02-04 09:03:01.578826	2014-02-04 09:03:01.578826	Thane	3
167	Mokhada	401604	2014-02-04 09:03:01.587125	2014-02-04 09:03:01.587125	Thane	3
168	Vikramgad	401605	2014-02-04 09:03:01.595379	2014-02-04 09:03:01.595379	Thane	3
169	Talasari	401606	2014-02-04 09:03:01.603617	2014-02-04 09:03:01.603617	Thane	3
170	Kasa	401607	2014-02-04 09:03:01.611983	2014-02-04 09:03:01.611983	Thane	3
171	Suryanagar	401609	2014-02-04 09:03:01.620203	2014-02-04 09:03:01.620203	Thane	3
172	Dapcheri	401610	2014-02-04 09:03:01.628603	2014-02-04 09:03:01.628603	Thane	3
173	Bordi	401701	2014-02-04 09:03:01.636972	2014-02-04 09:03:01.636972	Thane	3
174	Gholvad	401702	2014-02-04 09:03:01.645471	2014-02-04 09:03:01.645471	Thane	3
175	Kosbad Hill	401703	2014-02-04 09:03:01.653574	2014-02-04 09:03:01.653574	Thane	3
181	Ulhasnagar	421001	2014-02-04 09:03:01.707031	2014-02-04 09:03:01.707031	Thane	3
182	Dombivali (E)	421201	2014-02-04 09:03:01.73436	2014-02-04 09:03:01.73436	Thane	3
183	Dombivali (W)	421202	2014-02-04 09:03:01.745184	2014-02-04 09:03:01.745184	Thane	3
184	Kalyan	421301	2014-02-04 09:03:01.753485	2014-02-04 09:03:01.753485	Thane	3
185	Bhiwandi	421302	2014-02-04 09:03:01.761859	2014-02-04 09:03:01.761859	Thane	3
186	Ambernath	421501	2014-02-04 09:03:01.777349	2014-02-04 09:03:01.777349	Thane	3
187	Titwala	421503	2014-02-04 09:03:01.786646	2014-02-04 09:03:01.786646	Thane	3
188	Murbad	421504	2014-02-04 09:03:01.794981	2014-02-04 09:03:01.794981	Thane	3
189	Badlapur	421506	2014-02-04 09:03:01.806887	2014-02-04 09:03:01.806887	Thane	3
190	THANE	401303	2014-02-04 09:03:01.830393	2014-02-04 09:03:01.830393	Thane	3
109	Thane (H Q)	400601	2014-02-04 09:03:01.07887	2014-02-04 09:03:01.07887	Thane	3
110	Naupada	400602	2014-02-04 09:03:01.087205	2014-02-04 09:03:01.087205	Thane	3
111	Kopri Colony Thane (W)	400603	2014-02-04 09:03:01.095434	2014-02-04 09:03:01.095434	Thane	3
112	Thane (E)	400603	2014-02-04 09:03:01.103762	2014-02-04 09:03:01.103762	Thane	3
113	Wagle Industrial Estate Thane (W)	400604	2014-02-04 09:03:01.112115	2014-02-04 09:03:01.112115	Thane	3
114	Kalwa	400605	2014-02-04 09:03:01.120382	2014-02-04 09:03:01.120382	Thane	3
115	Jakegram  Thane (W)	400606	2014-02-04 09:03:01.128715	2014-02-04 09:03:01.128715	Thane	3
116	Thane (W)	400606	2014-02-04 09:03:01.137246	2014-02-04 09:03:01.137246	Thane	3
117	Sandoz Baug Thane (E)	400607	2014-02-04 09:03:01.145556	2014-02-04 09:03:01.145556	Thane	3
118	Balcum  Thane (W)	400608	2014-02-04 09:03:01.157498	2014-02-04 09:03:01.157498	Thane	3
133	Bhayandar	401101	2014-02-04 09:03:01.303651	2014-02-04 09:03:01.303651	Thane	3
134	Umbarpada (Bhayandar)	401102	2014-02-04 09:03:01.31196	2014-02-04 09:03:01.31196	Thane	3
121	Turbhe	400613	2014-02-04 09:03:01.187066	2014-02-04 09:03:01.187066	Navi Mumbai	2
122	Konkan Bhawan Belapur	400614	2014-02-04 09:03:01.195377	2014-02-04 09:03:01.195377	Navi Mumbai	2
123	Ghansoli	400701	2014-02-04 09:03:01.203681	2014-02-04 09:03:01.203681	Navi Mumbai	2
124	Uran	400702	2014-02-04 09:03:01.215561	2014-02-04 09:03:01.215561	Navi Mumbai	2
125	Vashi	400703	2014-02-04 09:03:01.228849	2014-02-04 09:03:01.228849	Navi Mumbai	2
126	N A D Karanja (New Panvel)	400704	2014-02-04 09:03:01.237163	2014-02-04 09:03:01.237163	Navi Mumbai	2
127	Airoli	400705	2014-02-04 09:03:01.245295	2014-02-04 09:03:01.245295	Navi Mumbai	2
128	Krishi Utpanna Bazar( A P M C BAZAR )	400705	2014-02-04 09:03:01.253636	2014-02-04 09:03:01.253636	Navi Mumbai	2
129	Nerul Mode	400706	2014-02-04 09:03:01.2655	2014-02-04 09:03:01.2655	Navi Mumbai	2
130	JNPT Town Ship	400707	2014-02-04 09:03:01.278852	2014-02-04 09:03:01.278852	Navi Mumbai	2
131	Airoli Mode	400708	2014-02-04 09:03:01.287119	2014-02-04 09:03:01.287119	Navi Mumbai	2
132	Koparkhairne	400709	2014-02-04 09:03:01.295318	2014-02-04 09:03:01.295318	Navi Mumbai	2
135	Vangam (Mira road)	401103	2014-02-04 09:03:01.320247	2014-02-04 09:03:01.320247	Thane	3
136	Mira road	401104	2014-02-04 09:03:01.328545	2014-02-04 09:03:01.328545	Thane	3
137	Bhayandar (E)	401105	2014-02-04 09:03:01.336856	2014-02-04 09:03:01.336856	Thane	3
138	Uttan	401106	2014-02-04 09:03:01.345208	2014-02-04 09:03:01.345208	Thane	3
139	Mira Road (E)	401107	2014-02-04 09:03:01.35349	2014-02-04 09:03:01.35349	Thane	3
140	Bassien	401201	2014-02-04 09:03:01.362271	2014-02-04 09:03:01.362271	Thane	3
141	Bassien Road	401202	2014-02-04 09:03:01.370386	2014-02-04 09:03:01.370386	Thane	3
142	Sopara	401203	2014-02-04 09:03:01.378915	2014-02-04 09:03:01.378915	Thane	3
143	Vajreshwari	401204	2014-02-04 09:03:01.387231	2014-02-04 09:03:01.387231	Thane	3
191	PALGHAR	401504	2014-02-04 09:03:01.936794	2014-02-04 09:03:01.936794	Thane	3
192	KHOPOLI	410203	2014-02-04 09:03:02.053309	2014-02-04 09:03:02.053309	Thane	3
193	Shahad	421001	2014-02-04 09:03:02.06521	2014-02-04 09:03:02.06521	Thane	3
194	Thakurli	421202	2014-02-04 09:03:02.07823	2014-02-04 09:03:02.07823	Thane	3
176	Panvel	410206	2014-02-04 09:03:01.661888	2014-02-04 09:03:01.661888	Navi Mumbai	2
177	Kamotha	410209	2014-02-04 09:03:01.670219	2014-02-04 09:03:01.670219	Navi Mumbai	2
178	Kharghar	410210	2014-02-04 09:03:01.678518	2014-02-04 09:03:01.678518	Navi Mumbai	2
179	New Panvel	410216	2014-02-04 09:03:01.686882	2014-02-04 09:03:01.686882	Navi Mumbai	2
180	Kalamboli	410218	2014-02-04 09:03:01.695033	2014-02-04 09:03:01.695033	Navi Mumbai	2
119	Belapur	400611	2014-02-04 09:03:01.170414	2014-02-04 09:03:01.170414	Navi Mumbai	2
120	Mumbra	400612	2014-02-04 09:03:01.178911	2014-02-04 09:03:01.178911	Thane	3
1	Mumbai G P O	400001	2014-02-04 09:02:59.723748	2014-02-04 09:02:59.723748	Mumbai	1
2	Kalbadevi	400002	2014-02-04 09:02:59.738348	2014-02-04 09:02:59.738348	Mumbai	1
3	Mandvi	400003	2014-02-04 09:02:59.746072	2014-02-04 09:02:59.746072	Mumbai	1
4	Masjid Bunder	400003	2014-02-04 09:02:59.754302	2014-02-04 09:02:59.754302	Mumbai	1
5	Girgaon	400004	2014-02-04 09:02:59.762954	2014-02-04 09:02:59.762954	Mumbai	1
6	Colaba	400005	2014-02-04 09:02:59.771615	2014-02-04 09:02:59.771615	Mumbai	1
7	Malabar Hill	400006	2014-02-04 09:02:59.780108	2014-02-04 09:02:59.780108	Mumbai	1
8	Grant Road	400007	2014-02-04 09:02:59.788291	2014-02-04 09:02:59.788291	Mumbai	1
9	Byculla	400008	2014-02-04 09:02:59.796689	2014-02-04 09:02:59.796689	Mumbai	1
10	Mumbai Central	400008	2014-02-04 09:02:59.81335	2014-02-04 09:02:59.81335	Mumbai	1
11	Chinch Bunder	400009	2014-02-04 09:02:59.821725	2014-02-04 09:02:59.821725	Mumbai	1
12	Mazgaon	400010	2014-02-04 09:02:59.871182	2014-02-04 09:02:59.871182	Mumbai	1
13	Jacob Circle	400011	2014-02-04 09:02:59.879297	2014-02-04 09:02:59.879297	Mumbai	1
14	Mahalaxmi	400011	2014-02-04 09:02:59.888185	2014-02-04 09:02:59.888185	Mumbai	1
15	Currey Road	400012	2014-02-04 09:02:59.896505	2014-02-04 09:02:59.896505	Mumbai	1
16	Parel	400012	2014-02-04 09:02:59.904866	2014-02-04 09:02:59.904866	Mumbai	1
17	Delisle Road	400013	2014-02-04 09:02:59.913235	2014-02-04 09:02:59.913235	Mumbai	1
18	Lower Parel	400013	2014-02-04 09:02:59.921669	2014-02-04 09:02:59.921669	Mumbai	1
19	Dadar (W)	400014	2014-02-04 09:02:59.929985	2014-02-04 09:02:59.929985	Mumbai	1
20	Sewree	400015	2014-02-04 09:02:59.938301	2014-02-04 09:02:59.938301	Mumbai	1
21	Mahim	400016	2014-02-04 09:02:59.946538	2014-02-04 09:02:59.946538	Mumbai	1
22	Dharavi	400017	2014-02-04 09:02:59.954751	2014-02-04 09:02:59.954751	Mumbai	1
23	Worli	400018	2014-02-04 09:02:59.963112	2014-02-04 09:02:59.963112	Mumbai	1
24	Matunga	400019	2014-02-04 09:02:59.971469	2014-02-04 09:02:59.971469	Mumbai	1
25	Marine Lines	400020	2014-02-04 09:02:59.97992	2014-02-04 09:02:59.97992	Mumbai	1
26	Nariman Point	400021	2014-02-04 09:02:59.988238	2014-02-04 09:02:59.988238	Mumbai	1
27	Chunabhatti	400022	2014-02-04 09:02:59.996491	2014-02-04 09:02:59.996491	Mumbai	1
28	Kurla (E)	400022	2014-02-04 09:03:00.00482	2014-02-04 09:03:00.00482	Mumbai	1
29	Sion	400022	2014-02-04 09:03:00.013109	2014-02-04 09:03:00.013109	Mumbai	1
30	Hutatma Chowk	400023	2014-02-04 09:03:00.021427	2014-02-04 09:03:00.021427	Mumbai	1
31	Nehru Nagar Kurla (E)	400024	2014-02-04 09:03:00.029781	2014-02-04 09:03:00.029781	Mumbai	1
32	Prabhadevi	400025	2014-02-04 09:03:00.038088	2014-02-04 09:03:00.038088	Mumbai	1
33	Cumballa Hill	400026	2014-02-04 09:03:00.046422	2014-02-04 09:03:00.046422	Mumbai	1
34	Byculla (E)	400027	2014-02-04 09:03:00.054738	2014-02-04 09:03:00.054738	Mumbai	1
35	Bhavani Shankar Road Dadar (E)	400028	2014-02-04 09:03:00.063022	2014-02-04 09:03:00.063022	Mumbai	1
36	Dadar (E)	400028	2014-02-04 09:03:00.071362	2014-02-04 09:03:00.071362	Mumbai	1
37	Kalina / Santacruz P&T Colony	400029	2014-02-04 09:03:00.079687	2014-02-04 09:03:00.079687	Mumbai	1
38	Wadala	400031	2014-02-04 09:03:00.088126	2014-02-04 09:03:00.088126	Mumbai	1
39	Mantralaya	400032	2014-02-04 09:03:00.096414	2014-02-04 09:03:00.096414	Mumbai	1
40	Cotton Green	400033	2014-02-04 09:03:00.104893	2014-02-04 09:03:00.104893	Mumbai	1
41	Tank Road	400033	2014-02-04 09:03:00.113159	2014-02-04 09:03:00.113159	Mumbai	1
42	Haji Ali	400034	2014-02-04 09:03:00.121394	2014-02-04 09:03:00.121394	Mumbai	1
43	Tardeo	400034	2014-02-04 09:03:00.133484	2014-02-04 09:03:00.133484	Mumbai	1
44	Walkeshwar	400035	2014-02-04 09:03:00.146408	2014-02-04 09:03:00.146408	Mumbai	1
45	Antop Hill	400037	2014-02-04 09:03:00.158191	2014-02-04 09:03:00.158191	Mumbai	1
46	Ballard Estate	400038	2014-02-04 09:03:00.17155	2014-02-04 09:03:00.17155	Mumbai	1
47	Cuffe Parade	400039	2014-02-04 09:03:00.179678	2014-02-04 09:03:00.179678	Mumbai	1
48	Poonam Ngr Jogeshwari (E)	400041	2014-02-04 09:03:00.188106	2014-02-04 09:03:00.188106	Mumbai	1
49	Bhandup (E)	400042	2014-02-04 09:03:00.196429	2014-02-04 09:03:00.196429	Mumbai	1
50	Shivaji Nagar Govandi (W)	400043	2014-02-04 09:03:00.204918	2014-02-04 09:03:00.204918	Mumbai	1
51	Juhu	400049	2014-02-04 09:03:00.240402	2014-02-04 09:03:00.240402	Mumbai	1
52	Santacruz (W)	400049	2014-02-04 09:03:00.271426	2014-02-04 09:03:00.271426	Mumbai	1
53	Bandra (W)	400050	2014-02-04 09:03:00.279837	2014-02-04 09:03:00.279837	Mumbai	1
54	Bandra (E)	400051	2014-02-04 09:03:00.288103	2014-02-04 09:03:00.288103	Mumbai	1
55	Khar (W)	400052	2014-02-04 09:03:00.29637	2014-02-04 09:03:00.29637	Mumbai	1
56	Andheri (W)	400053	2014-02-04 09:03:00.304651	2014-02-04 09:03:00.304651	Mumbai	1
57	Santacruz (West)	400054	2014-02-04 09:03:00.313109	2014-02-04 09:03:00.313109	Mumbai	1
58	Santacruz (E)	400055	2014-02-04 09:03:00.321294	2014-02-04 09:03:00.321294	Mumbai	1
59	Vile Parle (W)	400056	2014-02-04 09:03:00.329611	2014-02-04 09:03:00.329611	Mumbai	1
60	Vile Parle (E)	400057	2014-02-04 09:03:00.337915	2014-02-04 09:03:00.337915	Mumbai	1
61	Andheri (West)	400058	2014-02-04 09:03:00.346369	2014-02-04 09:03:00.346369	Mumbai	1
62	Andheri (E) J B Nagar	400059	2014-02-04 09:03:00.354559	2014-02-04 09:03:00.354559	Mumbai	1
63	Jogeshwari (East)	400060	2014-02-04 09:03:00.362872	2014-02-04 09:03:00.362872	Mumbai	1
64	Goregaon (E)	400061	2014-02-04 09:03:00.371191	2014-02-04 09:03:00.371191	Mumbai	1
65	Vesava (Versova)	400061	2014-02-04 09:03:00.379569	2014-02-04 09:03:00.379569	Mumbai	1
66	Goregaon (West)	400062	2014-02-04 09:03:00.387745	2014-02-04 09:03:00.387745	Mumbai	1
67	Malad (W)	400064	2014-02-04 09:03:00.399825	2014-02-04 09:03:00.399825	Mumbai	1
68	Aarey Milk Colony	400065	2014-02-04 09:03:00.412857	2014-02-04 09:03:00.412857	Mumbai	1
69	Borivali (E)	400066	2014-02-04 09:03:00.421338	2014-02-04 09:03:00.421338	Mumbai	1
70	Kandivali (W)	400067	2014-02-04 09:03:00.429557	2014-02-04 09:03:00.429557	Mumbai	1
71	Dahisar	400068	2014-02-04 09:03:00.437952	2014-02-04 09:03:00.437952	Mumbai	1
72	Andheri (E)	400069	2014-02-04 09:03:00.446179	2014-02-04 09:03:00.446179	Mumbai	1
73	Kurla	400070	2014-02-04 09:03:00.454561	2014-02-04 09:03:00.454561	Mumbai	1
74	Chembur	400071	2014-02-04 09:03:00.462867	2014-02-04 09:03:00.462867	Mumbai	1
75	Saki Naka Andheri (E)	400072	2014-02-04 09:03:00.471178	2014-02-04 09:03:00.471178	Mumbai	1
76	Kurla (W)	400072	2014-02-04 09:03:00.592885	2014-02-04 09:03:00.592885	Mumbai	1
77	Chembur Vashi Naka	400073	2014-02-04 09:03:00.704507	2014-02-04 09:03:00.704507	Mumbai	1
78	Pant Nagar Ghatkopar (E)	400075	2014-02-04 09:03:00.716138	2014-02-04 09:03:00.716138	Mumbai	1
79	I I T Mumbai	400076	2014-02-04 09:03:00.729265	2014-02-04 09:03:00.729265	Mumbai	1
80	Powai	400076	2014-02-04 09:03:00.737552	2014-02-04 09:03:00.737552	Mumbai	1
81	Rajawadi Ghatkopar (E)	400077	2014-02-04 09:03:00.745898	2014-02-04 09:03:00.745898	Mumbai	1
82	Ghatkopar (W)	400077	2014-02-04 09:03:00.754235	2014-02-04 09:03:00.754235	Mumbai	1
83	Bhandup	400078	2014-02-04 09:03:00.762344	2014-02-04 09:03:00.762344	Mumbai	1
84	Vikhroli	400079	2014-02-04 09:03:00.770705	2014-02-04 09:03:00.770705	Mumbai	1
85	Mulund (W)	400080	2014-02-04 09:03:00.779235	2014-02-04 09:03:00.779235	Mumbai	1
86	Mulund (E)	400081	2014-02-04 09:03:00.787495	2014-02-04 09:03:00.787495	Mumbai	1
87	Mulund Colony	400082	2014-02-04 09:03:00.79584	2014-02-04 09:03:00.79584	Mumbai	1
88	Tagore Nagar Vikroli (E)	400083	2014-02-04 09:03:00.804188	2014-02-04 09:03:00.804188	Mumbai	1
89	Barve Nagar Ghatkopar (W)	400084	2014-02-04 09:03:00.816084	2014-02-04 09:03:00.816084	Mumbai	1
90	B A R C (Trombay)	400085	2014-02-04 09:03:00.832523	2014-02-04 09:03:00.832523	Mumbai	1
91	Ghatkopar (West)	400086	2014-02-04 09:03:00.845611	2014-02-04 09:03:00.845611	Mumbai	1
92	N I T I E Vikhroli (W)	400087	2014-02-04 09:03:00.853927	2014-02-04 09:03:00.853927	Mumbai	1
93	Telecom Factory Deonar	400088	2014-02-04 09:03:00.862326	2014-02-04 09:03:00.862326	Mumbai	1
94	Deonar (E)	400088	2014-02-04 09:03:00.909722	2014-02-04 09:03:00.909722	Mumbai	1
95	Tilak Nagar Chembur (w)	400089	2014-02-04 09:03:00.920243	2014-02-04 09:03:00.920243	Mumbai	1
96	Tilak Nagar	400089	2014-02-04 09:03:00.930996	2014-02-04 09:03:00.930996	Mumbai	1
97	GOREGAON (W)	400090	2014-02-04 09:03:00.94572	2014-02-04 09:03:00.94572	Mumbai	1
98	Borivali (W)	400092	2014-02-04 09:03:00.957563	2014-02-04 09:03:00.957563	Mumbai	1
99	Chakala MIDC	400093	2014-02-04 09:03:00.97073	2014-02-04 09:03:00.97073	Mumbai	1
100	Anu Shakti Nagar	400094	2014-02-04 09:03:00.982528	2014-02-04 09:03:00.982528	Mumbai	1
101	Seepz	400096	2014-02-04 09:03:00.999218	2014-02-04 09:03:00.999218	Mumbai	1
102	Malad (East)	400097	2014-02-04 09:03:01.012318	2014-02-04 09:03:01.012318	Mumbai	1
103	Vidyanagari	400098	2014-02-04 09:03:01.020605	2014-02-04 09:03:01.020605	Mumbai	1
104	Sahar Andheri (E) 	400099	2014-02-04 09:03:01.028975	2014-02-04 09:03:01.028975	Mumbai	1
105	Kandivali (E)	400101	2014-02-04 09:03:01.040657	2014-02-04 09:03:01.040657	Mumbai	1
106	Jogeshwari (W)	400102	2014-02-04 09:03:01.053774	2014-02-04 09:03:01.053774	Mumbai	1
107	Mandpeshwar Borivali (W)	400103	2014-02-04 09:03:01.062154	2014-02-04 09:03:01.062154	Mumbai	1
108	Motilal Nagar Goregaon (E)	400104	2014-02-04 09:03:01.070657	2014-02-04 09:03:01.070657	Mumbai	1
\.


--
-- Name: pincodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pincodes_id_seq', 194, true);


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
\.


--
-- Data for Name: serveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY serveys (id, customer_id, tab_id, address_confirmed, name_and_stay_confirm, date_of_visit, time_of_visit, person_contacted, relation_with_applicant, years_lived_at_current_address, residence_status, educational_qualification, marital_status, no_of_family_members, working_member, children, spouse_working, spouse_working_detail, name_plate_seen, credit_card, card_no, card_limit, issuing_bank, expiry_date, customer_beaviour, neighbour_ref, name_varified_from, type_of_residence, locality_of_residence, ease_of_location, construction_of_residence, comments_of_exteriors, carpet_area_in_sq_feet, interior_condition, asset_seen_at_residence, potrait_on_wall, applicant_residing_detail, application_availibility_time, no_of_family_member_in_the_house, verifiers_remark, accept_or_decline, refer_to_bank, created_at, updated_at, date_of_birth, pancard_number, passport_number, driving_licence_number, electricity_acc_number) FROM stdin;
1	2	2	t	t	2014-02-05	11:53:16	Sudhir Vishwakarma	self	3	\N	proffessional	Unmarried	3	3	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill	\N	Accept	2014-02-05 06:24:09.444411	2014-02-05 06:24:09.444411	1969-02-05	ASDDSF23424D	\N	dsrhdseh	543y4eyheyh
3	3	1	t	t	2014-02-06	17:42:20	chetan	self	10	\N	proffessional	Self Owned	4	2	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- society-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card	\N	Accept	2014-02-06 12:14:09.476318	2014-02-06 12:14:09.476318	1980-02-06		\N		
4	5	2	t	t	2014-02-08	11:24:54	yogesh bhasin	brother	20	\N	proffessional	Unmarried	5	3	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill,\r\nTelephone Bill,\r\nBank Statement card,\r\nDriving licence,\r\nPassport	\N	Accept	2014-02-08 05:58:09.843803	2014-02-08 05:58:09.843803	1971-02-08	hakaowo	\N	hjsksksb	19238394921
6	9	1	t	t	2014-02-13	14:16:42	durgaparsad	security	4	\N	others	Self Owned	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- watchman\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Thaird party conframation	\N	Accept	2014-02-13 08:48:29.646017	2014-02-13 08:48:29.646017	2014-02-13		\N		
7	13	1	t	t	2014-02-13	15:17:17	ranjana	wife	1	\N	others	Married	3	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--45lac	\N	Accept	2014-02-13 09:50:06.618717	2014-02-13 09:50:06.618717	1970-07-13	ajrpg5022c	\N		
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 7, true);


--
-- Data for Name: tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tabs (id, name, tab_code, created_at, updated_at, pin_code, mac_address, pincode_id) FROM stdin;
1	TAB-ANDHERI	T0102030	2014-02-04 09:03:08.068171	2014-02-04 09:03:08.068171	\N	\N	\N
2	TAB-VIKROLI	T0102031	2014-02-04 09:03:08.081366	2014-02-04 09:03:08.081366	\N	\N	\N
3	TAB-SION	T0102032	2014-02-04 09:03:08.089773	2014-02-04 09:03:08.089773	\N	\N	\N
\.


--
-- Name: tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tabs_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, tab_id) FROM stdin;
5	ithelpdesk@scorpeo.in	$2a$10$HqPrM6cOQG9w2oDJubh.1OEtuddu2sfFR9jMnPAuY.MvxCLMlW5GK	\N	\N	\N	53	2014-02-13 07:23:41.99068	2014-02-12 12:10:55.23757	59.184.41.225	123.63.97.187	2013-10-28 09:08:06.486517	2014-02-13 07:23:41.991531	super_user	IT Helpdesk	1
2	scorpeo.tab1@gmail.com	$2a$10$cyFp7iE88/ikiAOt2hQ3JO9uuXcHWN7lO9x3paAToAPkg/2vaFzm2	\N	\N	\N	91	2014-02-13 12:38:38.590209	2014-02-13 07:30:52.445083	101.59.219.41	115.246.162.99	2013-09-21 12:48:30.353638	2014-02-13 12:38:38.590992	tab_user	scorpeo.tab1	1
3	scorpeo.tab2@gmail.com	$2a$10$TNkFFLfsyn3V6u6t/nXJwu.hKqKcDr1ZDlg5c/K.67lMJqLEVcTrm	\N	\N	\N	41	2014-02-13 17:02:58.606691	2014-02-13 12:39:09.806096	101.57.65.50	101.59.219.41	2013-09-21 12:51:03.387013	2014-02-13 17:02:58.607466	tab_user	scorpeo.tab2	2
4	scorpeo.tab3@gmail.com	$2a$10$jIn4qaFmKkZhjlNqe/B17eUzLoylK/Z3Ib8x7oAopgDrOJHiPYtUq	\N	\N	\N	42	2014-02-13 17:03:44.280041	2014-02-13 12:40:00.396238	101.57.65.50	101.59.219.41	2013-09-23 08:55:49.271805	2014-02-13 17:03:44.280827	tab_user	scorpeo.tab3	3
1	avcv@scorpeo.in	$2a$10$bwzp8.ePaE48C4sJ6wMmWOj9yCzTgR2GBfJan8eWDAVBHNa/mFjpC	\N	\N	\N	319	2014-02-13 17:36:27.169877	2014-02-13 10:04:43.15214	182.237.175.150	61.16.181.41	2013-09-21 12:47:19.137738	2014-02-13 17:36:27.170735	super_user	data entry	1
6	srikumar@scorpeo.in	$2a$10$W9vIqe7zI3osu3ysLGllPuxdbx.IyT3pbezEDdGAN7nZ2Xzcnpv32	\N	\N	\N	2	2014-02-06 12:35:30.142465	2013-10-28 09:12:21.407536	59.184.28.164	59.184.31.105	2013-10-28 09:12:21.387733	2014-02-06 12:35:30.143238	super_user	N Srikumar	1
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

COPY work_serveys (id, business_id, office_address, latitude, longitude, name_and_employee_confirm, applicant_designation, date_of_visit, time_of_visit, person_met, designation_of_person_met, telephone_number, ext_number, mobile_number, number_of_years_in_present_employment, visiting_card_obtained, name_of_the_company, type_of_business, nature_of_business, nob_in_detail, office_ownership, no_of_employees, no_of_branches, average_monthly_turn_over, no_of_customer_per_date, type_of_job, working_as, job_transferable, salary_drawn, no_of_years_worked, board_seen, name_verified_from, type_of_office, locality_of_office, construction_of_office, exterior, interior, office_area, ease_of_location, activity_level, no_of_employees_sighted, no_of_customer_seen, political_party, no_of_item_seen, verifier_remark, positive, refer_to_bank, user_id, verifier_signature, created_at, updated_at, pincode_id, customer_id, status, tab_id, company_name_new, department_id) FROM stdin;
2	4	6UR546U5758HJFGJHGJHG67U56U	\N	\N	t	N/A	2014-02-11	12:00:14	ggh	vbn				\N	t	GG	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	t	\N	\N	t	---\n- colleage\n- receptionist\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip,\r\nMobile Bill,\r\nPan Card	\N	positive	\N	\N	2014-02-11 06:31:14.347145	2014-02-11 06:31:14.379793	\N	\N	ready_for_verification	1		1
3	6	PURNIK BUILDERS PVT LTD, PURNIK ONE KANCHAN PUSHPA,KAVESWAR, NR SURAJ WATER PARK,THANE\r\n	\N	\N	\N	senior excutive 	2014-02-13	14:27:58	self				9920724060	2	f	PURNIK BUILDERS PVT LTD	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--6522\r\nDob--19/05/88\r\nTol--car\r\nAmt--6.5lac	\N	positive	\N	\N	2014-02-13 09:03:00.239376	2014-02-13 09:03:00.257316	\N	\N	ready_for_verification	1	marketing	1
4	11	 603,SHRIKANT CHAMBURS PHASE I ,ADJACEPT TO R.K. STUDIO SION TRUMBAY ROAD CHEBUR \r\n	\N	\N	\N	N/A	2014-02-13	16:09:01						\N	\N	xyz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-02-13 10:39:12.820199	2014-02-13 10:39:12.850307	\N	\N	ready_for_verification	3		1
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 4, true);


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

