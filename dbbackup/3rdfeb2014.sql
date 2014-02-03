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
    area_name character varying(255)
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
    area_name character varying(255)
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
    area_name character varying(255)
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
    area_name character varying(255)
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
    city character varying(255)
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
-- Data for Name: attendences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY attendences (id, user_id, login_time, logout_time, login_date, created_at, updated_at) FROM stdin;
59	3	2013-11-23 17:13:00	2014-01-30 11:19:00	2013-11-23	2013-11-23 11:43:20.889515	2014-01-30 05:49:07.885666
5	2	2013-11-18 11:29:00	2014-01-30 11:07:00	2013-11-18	2013-11-18 05:59:59.50595	2014-01-30 05:37:16.238454
53	5	2013-11-23 13:09:00	2014-01-29 17:01:00	2013-11-23	2013-11-23 07:39:16.144145	2014-01-29 11:31:34.449263
56	4	2013-11-23 13:10:00	2014-01-29 16:05:00	2013-11-23	2013-11-23 07:40:41.781714	2014-01-29 10:35:26.941968
89	2	2013-11-27 12:58:00	\N	2013-11-27	2013-11-27 07:28:14.26736	2013-11-27 07:28:14.26736
87	2	2013-11-27 12:51:00	2013-11-27 13:01:00	2013-11-27	2013-11-27 07:21:20.315301	2013-11-27 07:31:22.216268
30	2	2013-11-20 18:57:00	\N	2013-11-20	2013-11-20 13:27:13.551808	2013-11-20 13:27:13.551808
8	2	2013-11-18 11:42:00	2013-11-20 18:59:00	2013-11-18	2013-11-18 06:12:00.984251	2013-11-20 13:29:00.274712
32	2	2013-11-21 13:09:00	\N	2013-11-21	2013-11-21 07:39:08.168644	2013-11-21 07:39:08.168644
33	1	2013-11-22 11:02:00	\N	2013-11-22	2013-11-22 05:32:43.995618	2013-11-22 05:32:43.995618
1	1	2013-11-17 21:23:00	2013-11-22 11:03:00	2013-11-17	2013-11-17 15:53:49.190222	2013-11-22 05:33:00.930638
34	2	2013-11-22 11:03:00	\N	2013-11-22	2013-11-22 05:33:11.919178	2013-11-22 05:33:11.919178
3	2	2013-11-18 10:31:00	2013-11-22 11:08:00	2013-11-18	2013-11-18 05:01:53.426589	2013-11-22 05:38:36.409146
10	2	2013-11-18 15:44:00	2013-11-22 11:08:00	2013-11-18	2013-11-18 10:14:48.403686	2013-11-22 05:38:36.625971
35	1	2013-11-22 11:08:00	\N	2013-11-22	2013-11-22 05:38:47.993135	2013-11-22 05:38:47.993135
36	1	2013-11-22 12:43:00	\N	2013-11-22	2013-11-22 07:13:36.487734	2013-11-22 07:13:36.487734
17	1	2013-11-19 14:00:00	2013-11-22 12:43:00	2013-11-19	2013-11-19 08:30:32.222813	2013-11-22 07:13:44.287112
37	2	2013-11-22 16:32:00	\N	2013-11-22	2013-11-22 11:02:52.579305	2013-11-22 11:02:52.579305
38	1	2013-11-22 17:03:00	\N	2013-11-22	2013-11-22 11:33:56.177205	2013-11-22 11:33:56.177205
7	1	2013-11-18 11:35:00	2013-11-22 17:03:00	2013-11-18	2013-11-18 06:05:30.709223	2013-11-22 11:33:59.976113
100	1	2013-11-28 13:55:00	2013-12-06 10:53:00	2013-11-28	2013-11-28 08:25:36.650046	2013-12-06 05:23:03.708641
65	2	2013-11-25 09:26:00	\N	2013-11-25	2013-11-25 03:56:31.584471	2013-11-25 03:56:31.584471
41	1	2013-11-22 17:42:00	\N	2013-11-22	2013-11-22 12:12:42.990097	2013-11-22 12:12:42.990097
18	1	2013-11-20 08:12:00	2013-11-22 17:47:00	2013-11-20	2013-11-20 02:42:20.854779	2013-11-22 12:17:12.422457
2	1	2013-11-18 10:29:00	2013-11-22 17:47:00	2013-11-18	2013-11-18 04:59:44.986515	2013-11-22 12:17:12.485956
42	1	2013-11-22 17:47:00	\N	2013-11-22	2013-11-22 12:17:20.436503	2013-11-22 12:17:20.436503
19	1	2013-11-20 13:38:00	2013-11-22 18:27:00	2013-11-20	2013-11-20 08:08:39.325174	2013-11-22 12:57:56.769697
9	1	2013-11-18 11:43:00	2013-11-22 18:27:00	2013-11-18	2013-11-18 06:13:37.334708	2013-11-22 12:57:56.849745
43	1	2013-11-23 09:04:00	\N	2013-11-23	2013-11-23 03:34:29.486807	2013-11-23 03:34:29.486807
44	1	2013-11-23 12:30:00	\N	2013-11-23	2013-11-23 07:00:08.682156	2013-11-23 07:00:08.682156
47	1	2013-11-23 13:02:00	\N	2013-11-23	2013-11-23 07:32:45.330049	2013-11-23 07:32:45.330049
21	1	2013-11-20 13:53:00	2013-11-23 13:05:00	2013-11-20	2013-11-20 08:23:02.568569	2013-11-23 07:35:26.989513
48	2	2013-11-23 13:05:00	\N	2013-11-23	2013-11-23 07:35:35.726827	2013-11-23 07:35:35.726827
49	2	2013-11-23 13:05:00	\N	2013-11-23	2013-11-23 07:35:45.992503	2013-11-23 07:35:45.992503
15	2	2013-11-19 12:39:00	2013-11-23 13:05:00	2013-11-19	2013-11-19 07:09:27.723199	2013-11-23 07:35:59.926809
50	2	2013-11-23 13:06:00	\N	2013-11-23	2013-11-23 07:36:15.248183	2013-11-23 07:36:15.248183
23	1	2013-11-20 15:12:00	2013-11-23 13:07:00	2013-11-20	2013-11-20 09:42:47.515124	2013-11-23 07:37:58.771279
52	1	2013-11-23 13:08:00	\N	2013-11-23	2013-11-23 07:38:19.06685	2013-11-23 07:38:19.06685
4	1	2013-11-18 11:22:00	2013-11-23 13:08:00	2013-11-18	2013-11-18 05:52:43.399049	2013-11-23 07:38:33.368464
54	2	2013-11-23 13:09:00	\N	2013-11-23	2013-11-23 07:39:20.408712	2013-11-23 07:39:20.408712
55	5	2013-11-23 13:10:00	\N	2013-11-23	2013-11-23 07:40:21.778466	2013-11-23 07:40:21.778466
6	2	2013-11-18 11:35:00	2013-11-23 13:13:00	2013-11-18	2013-11-18 06:05:07.40614	2013-11-23 07:43:09.472136
57	1	2013-11-23 13:13:00	\N	2013-11-23	2013-11-23 07:43:21.178286	2013-11-23 07:43:21.178286
22	5	2013-11-20 15:09:00	2013-11-23 14:02:00	2013-11-20	2013-11-20 09:39:10.706629	2013-11-23 08:32:09.649824
58	2	2013-11-23 17:07:00	\N	2013-11-23	2013-11-23 11:37:17.250324	2013-11-23 11:37:17.250324
25	1	2013-11-20 16:30:00	2013-11-23 17:12:00	2013-11-20	2013-11-20 11:00:33.866106	2013-11-23 11:42:27.203843
29	3	2013-11-20 16:33:00	2013-11-23 17:14:00	2013-11-20	2013-11-20 11:03:19.00198	2013-11-23 11:44:47.959142
83	1	2013-11-27 08:09:00	2013-11-27 13:15:00	2013-11-27	2013-11-27 02:39:02.923197	2013-11-27 07:45:14.065648
61	1	2013-11-23 17:31:00	\N	2013-11-23	2013-11-23 12:01:39.754082	2013-11-23 12:01:39.754082
12	1	2013-11-18 19:53:00	2013-11-23 17:36:00	2013-11-18	2013-11-18 14:23:44.939573	2013-11-23 12:06:26.082628
66	1	2013-11-25 11:13:00	\N	2013-11-25	2013-11-25 05:43:51.399329	2013-11-25 05:43:51.399329
67	1	2013-11-25 12:30:00	\N	2013-11-25	2013-11-25 07:00:02.569216	2013-11-25 07:00:02.569216
63	1	2013-11-24 15:26:00	2013-11-25 12:42:00	2013-11-24	2013-11-24 09:56:21.963234	2013-11-25 07:12:13.716744
85	1	2013-11-27 12:47:00	2013-12-06 12:46:00	2013-11-27	2013-11-27 07:17:01.093175	2013-12-06 07:16:45.1101
69	1	2013-11-25 12:43:00	\N	2013-11-25	2013-11-25 07:13:02.521058	2013-11-25 07:13:02.521058
64	1	2013-11-24 21:54:00	2013-11-25 12:43:00	2013-11-24	2013-11-24 16:24:17.638258	2013-11-25 07:13:55.539334
70	3	2013-11-25 12:44:00	\N	2013-11-25	2013-11-25 07:14:04.796202	2013-11-25 07:14:04.796202
27	3	2013-11-20 16:31:00	2013-11-25 12:44:00	2013-11-20	2013-11-20 11:01:36.122929	2013-11-25 07:14:17.765347
24	2	2013-11-20 15:15:00	2014-01-21 19:56:00	2013-11-20	2013-11-20 09:45:02.787989	2014-01-21 14:26:12.460506
72	2	2013-11-25 12:44:00	\N	2013-11-25	2013-11-25 07:14:54.781792	2013-11-25 07:14:54.781792
16	2	2013-11-19 12:47:00	2013-11-25 12:46:00	2013-11-19	2013-11-19 07:17:41.595955	2013-11-25 07:16:13.906406
73	1	2013-11-25 13:04:00	\N	2013-11-25	2013-11-25 07:34:45.074443	2013-11-25 07:34:45.074443
13	1	2013-11-19 08:07:00	2013-11-25 13:54:00	2013-11-19	2013-11-19 02:37:48.666125	2013-11-25 08:24:39.016067
74	4	2013-11-25 13:54:00	\N	2013-11-25	2013-11-25 08:24:59.462057	2013-11-25 08:24:59.462057
60	4	2013-11-23 17:14:00	2013-11-25 13:55:00	2013-11-23	2013-11-23 11:44:58.490028	2013-11-25 08:25:24.369557
40	4	2013-11-22 17:04:00	2013-11-25 13:55:00	2013-11-22	2013-11-22 11:34:48.610032	2013-11-25 08:25:24.418616
75	3	2013-11-25 13:55:00	\N	2013-11-25	2013-11-25 08:25:35.127382	2013-11-25 08:25:35.127382
26	3	2013-11-20 16:30:00	2013-11-25 13:55:00	2013-11-20	2013-11-20 11:00:55.369798	2013-11-25 08:25:44.857069
76	1	2013-11-25 13:56:00	\N	2013-11-25	2013-11-25 08:26:01.577428	2013-11-25 08:26:01.577428
31	1	2013-11-21 12:15:00	2013-11-25 18:17:00	2013-11-21	2013-11-21 06:45:46.761844	2013-11-25 12:47:54.32502
77	1	2013-11-26 12:18:00	\N	2013-11-26	2013-11-26 06:48:06.596145	2013-11-26 06:48:06.596145
78	1	2013-11-26 12:37:00	\N	2013-11-26	2013-11-26 07:07:29.741324	2013-11-26 07:07:29.741324
79	5	2013-11-26 14:55:00	\N	2013-11-26	2013-11-26 09:25:26.215329	2013-11-26 09:25:26.215329
91	2	2013-11-27 13:15:00	\N	2013-11-27	2013-11-27 07:45:24.189186	2013-11-27 07:45:24.189186
81	2	2013-11-26 17:41:00	2013-11-27 13:15:00	2013-11-26	2013-11-26 12:11:14.867371	2013-11-27 07:45:41.603019
92	1	2013-11-27 13:15:00	\N	2013-11-27	2013-11-27 07:45:52.171616	2013-11-27 07:45:52.171616
93	2	2013-11-27 15:23:00	\N	2013-11-27	2013-11-27 09:53:58.989732	2013-11-27 09:53:58.989732
94	1	2013-11-28 09:38:00	\N	2013-11-28	2013-11-28 04:08:21.337211	2013-11-28 04:08:21.337211
95	2	2013-11-28 10:19:00	\N	2013-11-28	2013-11-28 04:49:33.992063	2013-11-28 04:49:33.992063
96	1	2013-11-28 11:00:00	\N	2013-11-28	2013-11-28 05:30:22.591667	2013-11-28 05:30:22.591667
97	1	2013-11-28 11:22:00	\N	2013-11-28	2013-11-28 05:52:35.888456	2013-11-28 05:52:35.888456
102	3	2013-11-28 13:59:00	\N	2013-11-28	2013-11-28 08:29:47.154998	2013-11-28 08:29:47.154998
101	3	2013-11-28 13:59:00	2013-11-28 14:01:00	2013-11-28	2013-11-28 08:29:22.881369	2013-11-28 08:31:47.49281
103	3	2013-11-28 14:02:00	\N	2013-11-28	2013-11-28 08:32:05.219928	2013-11-28 08:32:05.219928
39	3	2013-11-22 17:04:00	2013-11-28 14:02:00	2013-11-22	2013-11-22 11:34:17.065858	2013-11-28 08:32:10.149568
104	2	2013-11-28 14:02:00	\N	2013-11-28	2013-11-28 08:32:22.860634	2013-11-28 08:32:22.860634
105	2	2013-11-28 14:10:00	\N	2013-11-28	2013-11-28 08:40:52.333677	2013-11-28 08:40:52.333677
80	1	2013-11-26 16:16:00	2013-11-28 17:13:00	2013-11-26	2013-11-26 10:46:57.904726	2013-11-28 11:43:29.227266
106	2	2013-11-28 20:27:00	\N	2013-11-28	2013-11-28 14:57:14.435976	2013-11-28 14:57:14.435976
107	2	2013-11-29 11:03:00	\N	2013-11-29	2013-11-29 05:33:08.717668	2013-11-29 05:33:08.717668
108	2	2013-11-29 11:03:00	\N	2013-11-29	2013-11-29 05:33:56.185264	2013-11-29 05:33:56.185264
109	2	2013-11-29 11:26:00	\N	2013-11-29	2013-11-29 05:56:36.473266	2013-11-29 05:56:36.473266
110	2	2013-11-29 16:18:00	\N	2013-11-29	2013-11-29 10:48:56.6296	2013-11-29 10:48:56.6296
111	1	2013-12-01 08:37:00	\N	2013-12-01	2013-12-01 03:07:53.77311	2013-12-01 03:07:53.77311
113	1	2013-12-03 11:36:00	\N	2013-12-03	2013-12-03 06:06:53.179366	2013-12-03 06:06:53.179366
114	5	2013-12-03 11:54:00	\N	2013-12-03	2013-12-03 06:24:07.27109	2013-12-03 06:24:07.27109
84	5	2013-11-27 11:17:00	2013-12-03 12:16:00	2013-11-27	2013-11-27 05:47:32.226341	2013-12-03 06:46:20.924579
115	1	2013-12-03 19:23:00	\N	2013-12-03	2013-12-03 13:53:44.183563	2013-12-03 13:53:44.183563
112	1	2013-12-01 19:17:00	2013-12-03 19:25:00	2013-12-01	2013-12-01 13:47:23.519176	2013-12-03 13:55:26.093525
116	1	2013-12-04 14:57:00	\N	2013-12-04	2013-12-04 09:27:43.254069	2013-12-04 09:27:43.254069
117	1	2013-12-04 15:45:00	\N	2013-12-04	2013-12-04 10:15:24.914134	2013-12-04 10:15:24.914134
118	1	2013-12-04 15:45:00	\N	2013-12-04	2013-12-04 10:15:33.828217	2013-12-04 10:15:33.828217
119	1	2013-12-04 15:45:00	\N	2013-12-04	2013-12-04 10:15:37.260701	2013-12-04 10:15:37.260701
98	2	2013-11-28 11:52:00	2013-12-05 12:14:00	2013-11-28	2013-11-28 06:22:37.123566	2013-12-05 06:44:15.125147
62	4	2013-11-23 17:36:00	2013-12-05 18:22:00	2013-11-23	2013-11-23 12:06:39.441037	2013-12-05 12:52:27.153173
14	1	2013-11-19 12:24:00	2013-12-06 10:23:00	2013-11-19	2013-11-19 06:54:23.19881	2013-12-06 04:53:41.57691
99	2	2013-11-28 11:52:00	2013-12-06 10:53:00	2013-11-28	2013-11-28 06:22:46.802341	2013-12-06 05:23:28.600234
68	4	2013-11-25 12:42:00	2013-12-06 10:55:00	2013-11-25	2013-11-25 07:12:21.978844	2013-12-06 05:25:37.461968
20	2	2013-11-20 13:51:00	2013-12-09 18:23:00	2013-11-20	2013-11-20 08:21:51.68533	2013-12-09 12:53:25.802844
46	5	2013-11-23 12:57:00	2013-12-14 21:02:00	2013-11-23	2013-11-23 07:27:09.153538	2013-12-14 15:32:36.930871
71	4	2013-11-25 12:44:00	2013-12-18 23:43:00	2013-11-25	2013-11-25 07:14:29.78959	2013-12-18 18:13:56.923396
28	3	2013-11-20 16:33:00	2014-01-20 12:05:00	2013-11-20	2013-11-20 11:03:06.821553	2014-01-20 06:35:20.246474
51	5	2013-11-23 13:07:00	2014-01-24 13:27:00	2013-11-23	2013-11-23 07:37:56.592334	2014-01-24 07:57:00.294964
88	1	2013-11-27 12:51:00	2014-01-25 12:43:00	2013-11-27	2013-11-27 07:21:47.348407	2014-01-25 07:13:23.710203
120	1	2013-12-04 15:46:00	\N	2013-12-04	2013-12-04 10:16:37.514458	2013-12-04 10:16:37.514458
121	1	2013-12-04 16:31:00	\N	2013-12-04	2013-12-04 11:01:10.106354	2013-12-04 11:01:10.106354
122	1	2013-12-04 17:08:00	\N	2013-12-04	2013-12-04 11:38:44.8048	2013-12-04 11:38:44.8048
123	5	2013-12-04 18:03:00	\N	2013-12-04	2013-12-04 12:33:26.308477	2013-12-04 12:33:26.308477
11	5	2013-11-18 15:55:00	2013-12-04 18:15:00	2013-11-18	2013-11-18 10:25:26.506581	2013-12-04 12:45:03.986364
124	1	2013-12-05 08:16:00	\N	2013-12-05	2013-12-05 02:46:02.068021	2013-12-05 02:46:02.068021
125	1	2013-12-05 10:41:00	\N	2013-12-05	2013-12-05 05:11:36.289923	2013-12-05 05:11:36.289923
126	2	2013-12-05 12:13:00	\N	2013-12-05	2013-12-05 06:43:55.154445	2013-12-05 06:43:55.154445
127	1	2013-12-05 12:14:00	\N	2013-12-05	2013-12-05 06:44:34.814468	2013-12-05 06:44:34.814468
86	1	2013-11-27 12:48:00	2013-12-05 12:18:00	2013-11-27	2013-11-27 07:18:57.618834	2013-12-05 06:48:18.848298
128	2	2013-12-05 12:18:00	\N	2013-12-05	2013-12-05 06:48:28.020806	2013-12-05 06:48:28.020806
129	1	2013-12-05 12:20:00	\N	2013-12-05	2013-12-05 06:50:15.252708	2013-12-05 06:50:15.252708
130	2	2013-12-05 13:07:00	\N	2013-12-05	2013-12-05 07:37:30.156969	2013-12-05 07:37:30.156969
131	1	2013-12-05 13:08:00	\N	2013-12-05	2013-12-05 07:38:56.691652	2013-12-05 07:38:56.691652
132	1	2013-12-05 13:09:00	\N	2013-12-05	2013-12-05 07:39:03.115723	2013-12-05 07:39:03.115723
133	1	2013-12-05 13:09:00	\N	2013-12-05	2013-12-05 07:39:07.245926	2013-12-05 07:39:07.245926
134	1	2013-12-05 13:09:00	\N	2013-12-05	2013-12-05 07:39:17.773831	2013-12-05 07:39:17.773831
135	1	2013-12-05 13:09:00	\N	2013-12-05	2013-12-05 07:39:29.434001	2013-12-05 07:39:29.434001
136	1	2013-12-05 13:14:00	\N	2013-12-05	2013-12-05 07:44:12.710108	2013-12-05 07:44:12.710108
137	1	2013-12-05 13:14:00	\N	2013-12-05	2013-12-05 07:44:22.382341	2013-12-05 07:44:22.382341
138	1	2013-12-05 13:32:00	\N	2013-12-05	2013-12-05 08:02:10.816681	2013-12-05 08:02:10.816681
139	1	2013-12-05 15:07:00	\N	2013-12-05	2013-12-05 09:37:06.930727	2013-12-05 09:37:06.930727
140	2	2013-12-05 15:41:00	\N	2013-12-05	2013-12-05 10:11:32.924086	2013-12-05 10:11:32.924086
141	1	2013-12-05 15:58:00	\N	2013-12-05	2013-12-05 10:28:15.567009	2013-12-05 10:28:15.567009
142	1	2013-12-05 15:58:00	\N	2013-12-05	2013-12-05 10:28:19.574993	2013-12-05 10:28:19.574993
143	1	2013-12-05 15:58:00	\N	2013-12-05	2013-12-05 10:28:50.7608	2013-12-05 10:28:50.7608
144	1	2013-12-05 16:15:00	\N	2013-12-05	2013-12-05 10:45:04.144236	2013-12-05 10:45:04.144236
145	1	2013-12-05 16:15:00	\N	2013-12-05	2013-12-05 10:45:12.516266	2013-12-05 10:45:12.516266
146	1	2013-12-05 16:26:00	\N	2013-12-05	2013-12-05 10:56:36.363504	2013-12-05 10:56:36.363504
147	1	2013-12-05 16:29:00	\N	2013-12-05	2013-12-05 10:59:41.480439	2013-12-05 10:59:41.480439
148	1	2013-12-05 16:29:00	\N	2013-12-05	2013-12-05 10:59:52.399272	2013-12-05 10:59:52.399272
149	1	2013-12-05 16:29:00	\N	2013-12-05	2013-12-05 10:59:59.648524	2013-12-05 10:59:59.648524
150	1	2013-12-05 16:30:00	\N	2013-12-05	2013-12-05 11:00:20.887277	2013-12-05 11:00:20.887277
151	1	2013-12-05 16:58:00	\N	2013-12-05	2013-12-05 11:28:30.69375	2013-12-05 11:28:30.69375
152	1	2013-12-05 17:43:00	\N	2013-12-05	2013-12-05 12:13:18.705812	2013-12-05 12:13:18.705812
153	1	2013-12-05 17:43:00	\N	2013-12-05	2013-12-05 12:13:30.823098	2013-12-05 12:13:30.823098
154	4	2013-12-05 18:00:00	\N	2013-12-05	2013-12-05 12:30:56.112592	2013-12-05 12:30:56.112592
155	4	2013-12-05 18:00:00	\N	2013-12-05	2013-12-05 12:30:56.895598	2013-12-05 12:30:56.895598
156	1	2013-12-05 18:01:00	\N	2013-12-05	2013-12-05 12:31:14.82541	2013-12-05 12:31:14.82541
157	1	2013-12-05 18:05:00	\N	2013-12-05	2013-12-05 12:35:00.698847	2013-12-05 12:35:00.698847
158	1	2013-12-05 18:05:00	\N	2013-12-05	2013-12-05 12:35:10.92182	2013-12-05 12:35:10.92182
159	1	2013-12-05 18:05:00	\N	2013-12-05	2013-12-05 12:35:19.208044	2013-12-05 12:35:19.208044
160	1	2013-12-05 18:05:00	\N	2013-12-05	2013-12-05 12:35:26.291305	2013-12-05 12:35:26.291305
161	1	2013-12-05 18:05:00	\N	2013-12-05	2013-12-05 12:35:30.380953	2013-12-05 12:35:30.380953
162	1	2013-12-05 18:10:00	\N	2013-12-05	2013-12-05 12:40:56.803653	2013-12-05 12:40:56.803653
163	4	2013-12-05 18:11:00	\N	2013-12-05	2013-12-05 12:41:28.063739	2013-12-05 12:41:28.063739
164	1	2013-12-05 18:12:00	\N	2013-12-05	2013-12-05 12:42:50.716078	2013-12-05 12:42:50.716078
165	1	2013-12-05 18:12:00	\N	2013-12-05	2013-12-05 12:42:56.92136	2013-12-05 12:42:56.92136
166	1	2013-12-05 18:15:00	\N	2013-12-05	2013-12-05 12:45:32.749638	2013-12-05 12:45:32.749638
167	1	2013-12-05 18:22:00	\N	2013-12-05	2013-12-05 12:52:15.747269	2013-12-05 12:52:15.747269
168	4	2013-12-05 18:22:00	\N	2013-12-05	2013-12-05 12:52:38.284115	2013-12-05 12:52:38.284115
169	1	2013-12-05 18:26:00	\N	2013-12-05	2013-12-05 12:56:10.439422	2013-12-05 12:56:10.439422
170	1	2013-12-05 18:31:00	\N	2013-12-05	2013-12-05 13:01:19.110144	2013-12-05 13:01:19.110144
171	1	2013-12-05 18:49:00	\N	2013-12-05	2013-12-05 13:19:03.560299	2013-12-05 13:19:03.560299
172	1	2013-12-05 18:49:00	\N	2013-12-05	2013-12-05 13:19:15.772294	2013-12-05 13:19:15.772294
173	1	2013-12-05 18:49:00	\N	2013-12-05	2013-12-05 13:19:30.911063	2013-12-05 13:19:30.911063
174	1	2013-12-06 10:22:00	\N	2013-12-06	2013-12-06 04:52:44.01431	2013-12-06 04:52:44.01431
175	4	2013-12-06 10:23:00	\N	2013-12-06	2013-12-06 04:53:54.423136	2013-12-06 04:53:54.423136
176	3	2013-12-06 10:24:00	\N	2013-12-06	2013-12-06 04:54:48.048475	2013-12-06 04:54:48.048475
177	4	2013-12-06 10:27:00	\N	2013-12-06	2013-12-06 04:57:46.148076	2013-12-06 04:57:46.148076
178	3	2013-12-06 10:28:00	\N	2013-12-06	2013-12-06 04:58:50.51993	2013-12-06 04:58:50.51993
179	1	2013-12-06 10:29:00	\N	2013-12-06	2013-12-06 04:59:44.385669	2013-12-06 04:59:44.385669
180	3	2013-12-06 10:31:00	\N	2013-12-06	2013-12-06 05:01:29.332808	2013-12-06 05:01:29.332808
181	2	2013-12-06 10:53:00	\N	2013-12-06	2013-12-06 05:23:17.136368	2013-12-06 05:23:17.136368
182	4	2013-12-06 10:53:00	\N	2013-12-06	2013-12-06 05:23:37.817027	2013-12-06 05:23:37.817027
183	1	2013-12-06 10:55:00	\N	2013-12-06	2013-12-06 05:25:51.232823	2013-12-06 05:25:51.232823
184	2	2013-12-06 11:06:00	\N	2013-12-06	2013-12-06 05:36:04.953599	2013-12-06 05:36:04.953599
185	2	2013-12-06 11:55:00	\N	2013-12-06	2013-12-06 06:25:15.823081	2013-12-06 06:25:15.823081
186	4	2013-12-06 12:46:00	\N	2013-12-06	2013-12-06 07:16:58.597927	2013-12-06 07:16:58.597927
187	1	2013-12-06 12:48:00	\N	2013-12-06	2013-12-06 07:18:31.531297	2013-12-06 07:18:31.531297
188	2	2013-12-06 15:09:00	\N	2013-12-06	2013-12-06 09:39:56.113687	2013-12-06 09:39:56.113687
189	2	2013-12-06 15:57:00	\N	2013-12-06	2013-12-06 10:27:06.68594	2013-12-06 10:27:06.68594
190	3	2013-12-06 16:08:00	\N	2013-12-06	2013-12-06 10:38:18.24873	2013-12-06 10:38:18.24873
191	3	2013-12-06 16:54:00	\N	2013-12-06	2013-12-06 11:24:06.821391	2013-12-06 11:24:06.821391
192	1	2013-12-06 18:06:00	\N	2013-12-06	2013-12-06 12:36:46.973447	2013-12-06 12:36:46.973447
193	1	2013-12-07 10:31:00	\N	2013-12-07	2013-12-07 05:01:04.320461	2013-12-07 05:01:04.320461
194	2	2013-12-07 13:16:00	\N	2013-12-07	2013-12-07 07:46:59.389487	2013-12-07 07:46:59.389487
195	1	2013-12-08 08:44:00	\N	2013-12-08	2013-12-08 03:14:52.24657	2013-12-08 03:14:52.24657
196	1	2013-12-08 18:27:00	\N	2013-12-08	2013-12-08 12:57:32.254229	2013-12-08 12:57:32.254229
197	3	2013-12-09 10:06:00	\N	2013-12-09	2013-12-09 04:36:07.153748	2013-12-09 04:36:07.153748
198	2	2013-12-09 15:04:00	\N	2013-12-09	2013-12-09 09:34:10.86317	2013-12-09 09:34:10.86317
199	2	2013-12-09 15:04:00	\N	2013-12-09	2013-12-09 09:34:41.393837	2013-12-09 09:34:41.393837
200	1	2013-12-09 16:54:00	\N	2013-12-09	2013-12-09 11:24:55.034906	2013-12-09 11:24:55.034906
201	1	2013-12-09 17:30:00	\N	2013-12-09	2013-12-09 12:00:43.532941	2013-12-09 12:00:43.532941
202	1	2013-12-09 17:31:00	\N	2013-12-09	2013-12-09 12:01:09.855255	2013-12-09 12:01:09.855255
203	1	2013-12-09 17:40:00	\N	2013-12-09	2013-12-09 12:10:32.527081	2013-12-09 12:10:32.527081
204	2	2013-12-09 18:22:00	\N	2013-12-09	2013-12-09 12:52:54.840578	2013-12-09 12:52:54.840578
205	4	2013-12-09 18:23:00	\N	2013-12-09	2013-12-09 12:53:38.940898	2013-12-09 12:53:38.940898
45	4	2013-11-23 12:55:00	2013-12-09 18:24:00	2013-11-23	2013-11-23 07:25:55.510368	2013-12-09 12:54:14.20708
206	1	2013-12-09 18:24:00	\N	2013-12-09	2013-12-09 12:54:29.901187	2013-12-09 12:54:29.901187
207	1	2013-12-09 22:17:00	\N	2013-12-09	2013-12-09 16:47:11.666545	2013-12-09 16:47:11.666545
208	3	2013-12-10 08:01:00	\N	2013-12-10	2013-12-10 02:31:50.359505	2013-12-10 02:31:50.359505
209	3	2013-12-10 08:01:00	\N	2013-12-10	2013-12-10 02:31:50.761148	2013-12-10 02:31:50.761148
210	2	2013-12-10 08:02:00	\N	2013-12-10	2013-12-10 02:32:08.798833	2013-12-10 02:32:08.798833
211	2	2013-12-10 09:09:00	\N	2013-12-10	2013-12-10 03:39:09.315453	2013-12-10 03:39:09.315453
212	2	2013-12-10 09:17:00	\N	2013-12-10	2013-12-10 03:47:40.137262	2013-12-10 03:47:40.137262
213	1	2013-12-10 11:20:00	\N	2013-12-10	2013-12-10 05:50:49.982332	2013-12-10 05:50:49.982332
214	1	2013-12-10 11:24:00	\N	2013-12-10	2013-12-10 05:54:14.256086	2013-12-10 05:54:14.256086
215	1	2013-12-10 11:52:00	\N	2013-12-10	2013-12-10 06:22:14.977219	2013-12-10 06:22:14.977219
216	1	2013-12-10 11:54:00	\N	2013-12-10	2013-12-10 06:24:32.180142	2013-12-10 06:24:32.180142
217	1	2013-12-10 18:46:00	\N	2013-12-10	2013-12-10 13:16:43.883989	2013-12-10 13:16:43.883989
218	2	2013-12-11 09:10:00	\N	2013-12-11	2013-12-11 03:40:01.465503	2013-12-11 03:40:01.465503
219	2	2013-12-11 09:13:00	\N	2013-12-11	2013-12-11 03:43:14.614854	2013-12-11 03:43:14.614854
220	2	2013-12-11 09:18:00	\N	2013-12-11	2013-12-11 03:48:26.353866	2013-12-11 03:48:26.353866
221	1	2013-12-11 10:23:00	\N	2013-12-11	2013-12-11 04:53:43.386902	2013-12-11 04:53:43.386902
222	3	2013-12-11 11:40:00	\N	2013-12-11	2013-12-11 06:10:29.308059	2013-12-11 06:10:29.308059
223	2	2013-12-11 16:31:00	\N	2013-12-11	2013-12-11 11:01:33.818066	2013-12-11 11:01:33.818066
224	1	2013-12-11 16:53:00	\N	2013-12-11	2013-12-11 11:23:55.830466	2013-12-11 11:23:55.830466
225	2	2013-12-11 17:07:00	\N	2013-12-11	2013-12-11 11:37:23.717578	2013-12-11 11:37:23.717578
226	2	2013-12-11 17:10:00	\N	2013-12-11	2013-12-11 11:40:21.421851	2013-12-11 11:40:21.421851
227	2	2013-12-11 17:10:00	\N	2013-12-11	2013-12-11 11:40:28.393508	2013-12-11 11:40:28.393508
228	2	2013-12-11 17:11:00	\N	2013-12-11	2013-12-11 11:41:03.215179	2013-12-11 11:41:03.215179
229	3	2013-12-11 22:00:00	\N	2013-12-11	2013-12-11 16:30:12.487478	2013-12-11 16:30:12.487478
230	3	2013-12-11 22:00:00	\N	2013-12-11	2013-12-11 16:30:23.824814	2013-12-11 16:30:23.824814
231	3	2013-12-11 22:01:00	\N	2013-12-11	2013-12-11 16:31:55.340481	2013-12-11 16:31:55.340481
232	3	2013-12-11 22:31:00	\N	2013-12-11	2013-12-11 17:01:14.38398	2013-12-11 17:01:14.38398
233	3	2013-12-12 10:09:00	\N	2013-12-12	2013-12-12 04:39:37.486679	2013-12-12 04:39:37.486679
234	3	2013-12-12 10:55:00	\N	2013-12-12	2013-12-12 05:25:17.252076	2013-12-12 05:25:17.252076
235	3	2013-12-12 10:55:00	\N	2013-12-12	2013-12-12 05:25:19.287059	2013-12-12 05:25:19.287059
236	1	2013-12-12 12:16:00	\N	2013-12-12	2013-12-12 06:46:51.108831	2013-12-12 06:46:51.108831
237	5	2013-12-12 12:34:00	\N	2013-12-12	2013-12-12 07:04:09.098475	2013-12-12 07:04:09.098475
238	3	2013-12-12 14:57:00	\N	2013-12-12	2013-12-12 09:27:24.245037	2013-12-12 09:27:24.245037
239	2	2013-12-12 16:00:00	\N	2013-12-12	2013-12-12 10:30:51.226833	2013-12-12 10:30:51.226833
240	1	2013-12-12 17:54:00	\N	2013-12-12	2013-12-12 12:24:36.613511	2013-12-12 12:24:36.613511
241	1	2013-12-12 17:57:00	\N	2013-12-12	2013-12-12 12:27:43.7004	2013-12-12 12:27:43.7004
242	1	2013-12-13 12:01:00	\N	2013-12-13	2013-12-13 06:31:58.204153	2013-12-13 06:31:58.204153
243	1	2013-12-14 17:45:00	\N	2013-12-14	2013-12-14 12:15:53.015562	2013-12-14 12:15:53.015562
244	5	2013-12-14 17:46:00	\N	2013-12-14	2013-12-14 12:16:07.998523	2013-12-14 12:16:07.998523
245	1	2013-12-14 18:31:00	\N	2013-12-14	2013-12-14 13:01:12.779296	2013-12-14 13:01:12.779296
246	1	2013-12-14 18:59:00	\N	2013-12-14	2013-12-14 13:29:18.806318	2013-12-14 13:29:18.806318
247	5	2013-12-14 19:41:00	\N	2013-12-14	2013-12-14 14:11:15.097003	2013-12-14 14:11:15.097003
248	5	2013-12-14 19:41:00	\N	2013-12-14	2013-12-14 14:11:42.986201	2013-12-14 14:11:42.986201
249	5	2013-12-14 20:07:00	\N	2013-12-14	2013-12-14 14:37:33.499048	2013-12-14 14:37:33.499048
250	5	2013-12-14 20:39:00	\N	2013-12-14	2013-12-14 15:09:08.202743	2013-12-14 15:09:08.202743
251	4	2013-12-14 20:58:00	\N	2013-12-14	2013-12-14 15:28:31.763055	2013-12-14 15:28:31.763055
252	5	2013-12-14 21:01:00	\N	2013-12-14	2013-12-14 15:31:25.174513	2013-12-14 15:31:25.174513
253	4	2013-12-14 21:02:00	\N	2013-12-14	2013-12-14 15:32:56.097085	2013-12-14 15:32:56.097085
254	1	2013-12-15 08:55:00	\N	2013-12-15	2013-12-15 03:25:48.686712	2013-12-15 03:25:48.686712
255	5	2013-12-15 13:28:00	\N	2013-12-15	2013-12-15 07:58:58.143537	2013-12-15 07:58:58.143537
256	1	2013-12-16 16:20:00	\N	2013-12-16	2013-12-16 10:50:19.930707	2013-12-16 10:50:19.930707
257	1	2013-12-17 12:58:00	\N	2013-12-17	2013-12-17 07:28:10.53874	2013-12-17 07:28:10.53874
258	1	2013-12-18 10:12:00	\N	2013-12-18	2013-12-18 04:42:44.312064	2013-12-18 04:42:44.312064
259	2	2013-12-18 10:18:00	\N	2013-12-18	2013-12-18 04:48:01.394584	2013-12-18 04:48:01.394584
260	2	2013-12-18 23:44:00	\N	2013-12-18	2013-12-18 18:14:05.716978	2013-12-18 18:14:05.716978
261	2	2013-12-18 23:44:00	\N	2013-12-18	2013-12-18 18:14:06.818003	2013-12-18 18:14:06.818003
262	2	2013-12-19 11:11:00	\N	2013-12-19	2013-12-19 05:41:15.459021	2013-12-19 05:41:15.459021
263	1	2013-12-19 11:51:00	\N	2013-12-19	2013-12-19 06:21:52.103613	2013-12-19 06:21:52.103613
264	1	2013-12-19 15:11:00	\N	2013-12-19	2013-12-19 09:41:50.029348	2013-12-19 09:41:50.029348
265	1	2013-12-20 18:26:00	\N	2013-12-20	2013-12-20 12:56:56.100797	2013-12-20 12:56:56.100797
266	5	2013-12-23 17:02:00	\N	2013-12-23	2013-12-23 11:32:37.500788	2013-12-23 11:32:37.500788
267	4	2013-12-23 17:21:00	\N	2013-12-23	2013-12-23 11:51:42.636312	2013-12-23 11:51:42.636312
268	1	2013-12-23 17:29:00	\N	2013-12-23	2013-12-23 11:59:47.753452	2013-12-23 11:59:47.753452
269	5	2013-12-23 22:27:00	\N	2013-12-23	2013-12-23 16:57:39.394843	2013-12-23 16:57:39.394843
270	1	2014-01-06 13:37:00	\N	2014-01-06	2014-01-06 08:07:19.075178	2014-01-06 08:07:19.075178
271	1	2014-01-07 18:39:00	\N	2014-01-07	2014-01-07 13:09:48.103449	2014-01-07 13:09:48.103449
272	1	2014-01-07 18:40:00	\N	2014-01-07	2014-01-07 13:10:12.072931	2014-01-07 13:10:12.072931
273	1	2014-01-07 18:42:00	\N	2014-01-07	2014-01-07 13:12:47.133085	2014-01-07 13:12:47.133085
274	1	2014-01-08 16:02:00	\N	2014-01-08	2014-01-08 10:32:14.160698	2014-01-08 10:32:14.160698
275	2	2014-01-09 18:29:00	\N	2014-01-09	2014-01-09 12:59:51.563868	2014-01-09 12:59:51.563868
276	2	2014-01-09 19:12:00	\N	2014-01-09	2014-01-09 13:42:11.75877	2014-01-09 13:42:11.75877
277	2	2014-01-09 20:10:00	\N	2014-01-09	2014-01-09 14:40:05.676335	2014-01-09 14:40:05.676335
278	2	2014-01-09 21:49:00	\N	2014-01-09	2014-01-09 16:19:22.845515	2014-01-09 16:19:22.845515
279	2	2014-01-09 21:50:00	\N	2014-01-09	2014-01-09 16:20:03.791494	2014-01-09 16:20:03.791494
280	2	2014-01-09 21:52:00	\N	2014-01-09	2014-01-09 16:22:12.330998	2014-01-09 16:22:12.330998
281	1	2014-01-11 17:37:00	\N	2014-01-11	2014-01-11 12:07:15.853796	2014-01-11 12:07:15.853796
282	1	2014-01-11 17:38:00	\N	2014-01-11	2014-01-11 12:08:53.379494	2014-01-11 12:08:53.379494
283	1	2014-01-12 10:52:00	\N	2014-01-12	2014-01-12 05:22:08.22429	2014-01-12 05:22:08.22429
284	1	2014-01-13 10:57:00	\N	2014-01-13	2014-01-13 05:27:56.535022	2014-01-13 05:27:56.535022
285	2	2014-01-13 13:05:00	\N	2014-01-13	2014-01-13 07:35:32.536075	2014-01-13 07:35:32.536075
286	5	2014-01-13 13:36:00	\N	2014-01-13	2014-01-13 08:06:57.010351	2014-01-13 08:06:57.010351
287	1	2014-01-16 17:21:00	\N	2014-01-16	2014-01-16 11:51:27.470145	2014-01-16 11:51:27.470145
288	1	2014-01-16 17:53:00	\N	2014-01-16	2014-01-16 12:23:17.810591	2014-01-16 12:23:17.810591
289	1	2014-01-17 12:35:00	\N	2014-01-17	2014-01-17 07:05:39.38184	2014-01-17 07:05:39.38184
290	5	2014-01-17 16:09:00	\N	2014-01-17	2014-01-17 10:39:49.114028	2014-01-17 10:39:49.114028
291	1	2014-01-20 12:03:00	\N	2014-01-20	2014-01-20 06:33:58.594443	2014-01-20 06:33:58.594443
292	2	2014-01-20 12:04:00	\N	2014-01-20	2014-01-20 06:34:34.780366	2014-01-20 06:34:34.780366
293	3	2014-01-20 12:04:00	\N	2014-01-20	2014-01-20 06:34:58.192314	2014-01-20 06:34:58.192314
294	4	2014-01-20 12:05:00	\N	2014-01-20	2014-01-20 06:35:29.820134	2014-01-20 06:35:29.820134
295	1	2014-01-20 12:11:00	\N	2014-01-20	2014-01-20 06:41:58.979953	2014-01-20 06:41:58.979953
296	1	2014-01-21 17:55:00	\N	2014-01-21	2014-01-21 12:25:08.08586	2014-01-21 12:25:08.08586
297	2	2014-01-21 19:37:00	\N	2014-01-21	2014-01-21 14:07:22.088183	2014-01-21 14:07:22.088183
298	4	2014-01-22 15:32:00	\N	2014-01-22	2014-01-22 10:02:14.248696	2014-01-22 10:02:14.248696
299	1	2014-01-22 15:32:00	\N	2014-01-22	2014-01-22 10:02:18.62829	2014-01-22 10:02:18.62829
300	5	2014-01-24 12:49:00	\N	2014-01-24	2014-01-24 07:19:23.874207	2014-01-24 07:19:23.874207
301	1	2014-01-24 12:54:00	\N	2014-01-24	2014-01-24 07:24:09.170535	2014-01-24 07:24:09.170535
302	4	2014-01-24 13:11:00	\N	2014-01-24	2014-01-24 07:41:45.689685	2014-01-24 07:41:45.689685
303	2	2014-01-24 13:11:00	\N	2014-01-24	2014-01-24 07:41:55.889237	2014-01-24 07:41:55.889237
304	3	2014-01-24 13:12:00	\N	2014-01-24	2014-01-24 07:42:05.572724	2014-01-24 07:42:05.572724
305	1	2014-01-24 13:12:00	\N	2014-01-24	2014-01-24 07:42:14.59768	2014-01-24 07:42:14.59768
306	2	2014-01-24 13:19:00	\N	2014-01-24	2014-01-24 07:49:08.151873	2014-01-24 07:49:08.151873
307	2	2014-01-24 13:19:00	\N	2014-01-24	2014-01-24 07:49:58.115387	2014-01-24 07:49:58.115387
308	5	2014-01-24 14:09:00	\N	2014-01-24	2014-01-24 08:39:28.498768	2014-01-24 08:39:28.498768
309	1	2014-01-24 14:32:00	\N	2014-01-24	2014-01-24 09:02:16.222587	2014-01-24 09:02:16.222587
310	2	2014-01-24 18:02:00	\N	2014-01-24	2014-01-24 12:32:12.498099	2014-01-24 12:32:12.498099
311	2	2014-01-24 19:52:00	\N	2014-01-24	2014-01-24 14:22:00.031578	2014-01-24 14:22:00.031578
312	1	2014-01-25 11:53:00	\N	2014-01-25	2014-01-25 06:23:34.470208	2014-01-25 06:23:34.470208
313	2	2014-01-25 12:46:00	\N	2014-01-25	2014-01-25 07:16:38.368695	2014-01-25 07:16:38.368695
314	2	2014-01-25 12:52:00	\N	2014-01-25	2014-01-25 07:22:19.23803	2014-01-25 07:22:19.23803
315	1	2014-01-25 13:04:00	\N	2014-01-25	2014-01-25 07:34:51.916568	2014-01-25 07:34:51.916568
316	1	2014-01-25 13:33:00	\N	2014-01-25	2014-01-25 08:03:19.009617	2014-01-25 08:03:19.009617
317	1	2014-01-25 13:37:00	\N	2014-01-25	2014-01-25 08:07:25.257763	2014-01-25 08:07:25.257763
82	1	2013-11-26 19:35:00	2014-01-25 13:37:00	2013-11-26	2013-11-26 14:05:16.850285	2014-01-25 08:07:31.181725
318	2	2014-01-25 17:34:00	\N	2014-01-25	2014-01-25 12:04:14.83389	2014-01-25 12:04:14.83389
319	5	2014-01-25 17:44:00	\N	2014-01-25	2014-01-25 12:14:34.028587	2014-01-25 12:14:34.028587
320	2	2014-01-25 17:45:00	\N	2014-01-25	2014-01-25 12:15:26.225482	2014-01-25 12:15:26.225482
321	5	2014-01-27 11:43:00	\N	2014-01-27	2014-01-27 06:13:14.254476	2014-01-27 06:13:14.254476
322	5	2014-01-27 11:43:00	\N	2014-01-27	2014-01-27 06:13:52.946488	2014-01-27 06:13:52.946488
323	2	2014-01-27 12:15:00	\N	2014-01-27	2014-01-27 06:45:54.70871	2014-01-27 06:45:54.70871
324	4	2014-01-27 12:17:00	\N	2014-01-27	2014-01-27 06:47:05.346049	2014-01-27 06:47:05.346049
325	2	2014-01-27 12:17:00	\N	2014-01-27	2014-01-27 06:47:38.041326	2014-01-27 06:47:38.041326
326	1	2014-01-27 12:35:00	\N	2014-01-27	2014-01-27 07:05:05.361188	2014-01-27 07:05:05.361188
327	4	2014-01-27 13:04:00	\N	2014-01-27	2014-01-27 07:34:24.254319	2014-01-27 07:34:24.254319
328	4	2014-01-27 13:27:00	\N	2014-01-27	2014-01-27 07:57:59.268302	2014-01-27 07:57:59.268302
329	4	2014-01-27 13:30:00	\N	2014-01-27	2014-01-27 08:00:29.077434	2014-01-27 08:00:29.077434
330	2	2014-01-27 13:43:00	\N	2014-01-27	2014-01-27 08:13:05.97291	2014-01-27 08:13:05.97291
331	4	2014-01-27 14:12:00	\N	2014-01-27	2014-01-27 08:42:33.397542	2014-01-27 08:42:33.397542
332	2	2014-01-27 15:03:00	\N	2014-01-27	2014-01-27 09:33:39.078303	2014-01-27 09:33:39.078303
333	4	2014-01-27 16:31:00	\N	2014-01-27	2014-01-27 11:01:26.036922	2014-01-27 11:01:26.036922
334	5	2014-01-27 18:05:00	\N	2014-01-27	2014-01-27 12:35:55.924313	2014-01-27 12:35:55.924313
335	4	2014-01-27 18:12:00	\N	2014-01-27	2014-01-27 12:42:04.709392	2014-01-27 12:42:04.709392
336	4	2014-01-27 18:12:00	\N	2014-01-27	2014-01-27 12:42:57.030079	2014-01-27 12:42:57.030079
337	1	2014-01-27 19:37:00	\N	2014-01-27	2014-01-27 14:07:06.570786	2014-01-27 14:07:06.570786
338	4	2014-01-27 20:07:00	\N	2014-01-27	2014-01-27 14:37:49.726183	2014-01-27 14:37:49.726183
339	2	2014-01-28 08:25:00	\N	2014-01-28	2014-01-28 02:55:02.742322	2014-01-28 02:55:02.742322
340	4	2014-01-28 10:24:00	\N	2014-01-28	2014-01-28 04:54:14.5332	2014-01-28 04:54:14.5332
341	2	2014-01-28 11:08:00	\N	2014-01-28	2014-01-28 05:38:38.709127	2014-01-28 05:38:38.709127
342	2	2014-01-28 11:10:00	\N	2014-01-28	2014-01-28 05:40:18.558742	2014-01-28 05:40:18.558742
343	2	2014-01-28 11:10:00	\N	2014-01-28	2014-01-28 05:40:24.860354	2014-01-28 05:40:24.860354
344	2	2014-01-28 11:14:00	\N	2014-01-28	2014-01-28 05:44:06.555641	2014-01-28 05:44:06.555641
345	4	2014-01-28 11:39:00	\N	2014-01-28	2014-01-28 06:09:43.924936	2014-01-28 06:09:43.924936
346	4	2014-01-28 11:40:00	\N	2014-01-28	2014-01-28 06:10:10.375577	2014-01-28 06:10:10.375577
347	2	2014-01-28 11:41:00	\N	2014-01-28	2014-01-28 06:11:40.151402	2014-01-28 06:11:40.151402
348	2	2014-01-28 11:42:00	\N	2014-01-28	2014-01-28 06:12:17.048165	2014-01-28 06:12:17.048165
349	1	2014-01-28 12:10:00	\N	2014-01-28	2014-01-28 06:40:30.831647	2014-01-28 06:40:30.831647
350	1	2014-01-28 12:47:00	\N	2014-01-28	2014-01-28 07:17:39.257654	2014-01-28 07:17:39.257654
351	4	2014-01-28 14:18:00	\N	2014-01-28	2014-01-28 08:48:28.722198	2014-01-28 08:48:28.722198
352	2	2014-01-28 14:51:00	\N	2014-01-28	2014-01-28 09:21:29.872564	2014-01-28 09:21:29.872564
353	2	2014-01-28 15:22:00	\N	2014-01-28	2014-01-28 09:52:25.52292	2014-01-28 09:52:25.52292
354	2	2014-01-28 15:23:00	\N	2014-01-28	2014-01-28 09:53:14.970134	2014-01-28 09:53:14.970134
355	1	2014-01-28 15:23:00	\N	2014-01-28	2014-01-28 09:53:22.416695	2014-01-28 09:53:22.416695
356	2	2014-01-28 16:02:00	\N	2014-01-28	2014-01-28 10:32:05.889361	2014-01-28 10:32:05.889361
357	2	2014-01-28 16:29:00	\N	2014-01-28	2014-01-28 10:59:43.168824	2014-01-28 10:59:43.168824
358	4	2014-01-28 16:57:00	\N	2014-01-28	2014-01-28 11:27:11.259829	2014-01-28 11:27:11.259829
359	4	2014-01-28 17:12:00	\N	2014-01-28	2014-01-28 11:42:41.723189	2014-01-28 11:42:41.723189
360	4	2014-01-28 17:19:00	\N	2014-01-28	2014-01-28 11:49:32.309676	2014-01-28 11:49:32.309676
361	2	2014-01-28 17:38:00	\N	2014-01-28	2014-01-28 12:08:33.502629	2014-01-28 12:08:33.502629
362	5	2014-01-28 18:06:00	\N	2014-01-28	2014-01-28 12:36:16.506925	2014-01-28 12:36:16.506925
363	4	2014-01-28 18:34:00	\N	2014-01-28	2014-01-28 13:04:04.602918	2014-01-28 13:04:04.602918
364	1	2014-01-28 18:36:00	\N	2014-01-28	2014-01-28 13:06:38.761589	2014-01-28 13:06:38.761589
365	1	2014-01-28 18:36:00	\N	2014-01-28	2014-01-28 13:06:57.402267	2014-01-28 13:06:57.402267
366	1	2014-01-28 18:40:00	\N	2014-01-28	2014-01-28 13:10:21.6788	2014-01-28 13:10:21.6788
367	4	2014-01-28 18:53:00	\N	2014-01-28	2014-01-28 13:23:09.971238	2014-01-28 13:23:09.971238
368	5	2014-01-28 20:18:00	\N	2014-01-28	2014-01-28 14:48:42.593899	2014-01-28 14:48:42.593899
369	2	2014-01-29 10:00:00	\N	2014-01-29	2014-01-29 04:30:21.841147	2014-01-29 04:30:21.841147
370	2	2014-01-29 10:00:00	\N	2014-01-29	2014-01-29 04:30:27.638988	2014-01-29 04:30:27.638988
371	2	2014-01-29 10:25:00	\N	2014-01-29	2014-01-29 04:55:54.80394	2014-01-29 04:55:54.80394
372	1	2014-01-29 11:41:00	\N	2014-01-29	2014-01-29 06:11:51.685564	2014-01-29 06:11:51.685564
373	5	2014-01-29 12:43:00	\N	2014-01-29	2014-01-29 07:13:10.943009	2014-01-29 07:13:10.943009
374	4	2014-01-29 13:31:00	\N	2014-01-29	2014-01-29 08:01:28.736983	2014-01-29 08:01:28.736983
375	2	2014-01-29 14:52:00	\N	2014-01-29	2014-01-29 09:22:50.0653	2014-01-29 09:22:50.0653
376	5	2014-01-29 15:01:00	\N	2014-01-29	2014-01-29 09:31:59.722764	2014-01-29 09:31:59.722764
377	2	2014-01-29 15:33:00	\N	2014-01-29	2014-01-29 10:03:23.802674	2014-01-29 10:03:23.802674
378	2	2014-01-29 15:36:00	\N	2014-01-29	2014-01-29 10:06:39.367449	2014-01-29 10:06:39.367449
379	2	2014-01-29 15:38:00	\N	2014-01-29	2014-01-29 10:08:07.039534	2014-01-29 10:08:07.039534
380	4	2014-01-29 16:04:00	\N	2014-01-29	2014-01-29 10:34:28.528064	2014-01-29 10:34:28.528064
381	3	2014-01-29 16:05:00	\N	2014-01-29	2014-01-29 10:35:56.318912	2014-01-29 10:35:56.318912
382	5	2014-01-29 16:37:00	\N	2014-01-29	2014-01-29 11:07:24.686776	2014-01-29 11:07:24.686776
383	3	2014-01-29 16:41:00	\N	2014-01-29	2014-01-29 11:11:38.538995	2014-01-29 11:11:38.538995
384	5	2014-01-29 16:52:00	\N	2014-01-29	2014-01-29 11:22:15.446549	2014-01-29 11:22:15.446549
385	2	2014-01-29 17:10:00	\N	2014-01-29	2014-01-29 11:40:26.657513	2014-01-29 11:40:26.657513
386	4	2014-01-29 18:33:00	\N	2014-01-29	2014-01-29 13:03:36.924258	2014-01-29 13:03:36.924258
387	1	2014-01-29 19:59:00	\N	2014-01-29	2014-01-29 14:29:28.145836	2014-01-29 14:29:28.145836
388	2	2014-01-30 09:01:00	\N	2014-01-30	2014-01-30 03:31:13.374655	2014-01-30 03:31:13.374655
389	3	2014-01-30 09:46:00	\N	2014-01-30	2014-01-30 04:16:11.932141	2014-01-30 04:16:11.932141
390	1	2014-01-30 09:48:00	\N	2014-01-30	2014-01-30 04:18:36.645129	2014-01-30 04:18:36.645129
391	2	2014-01-30 10:00:00	\N	2014-01-30	2014-01-30 04:30:00.688169	2014-01-30 04:30:00.688169
392	2	2014-01-30 10:01:00	\N	2014-01-30	2014-01-30 04:31:10.859415	2014-01-30 04:31:10.859415
393	1	2014-01-30 10:06:00	\N	2014-01-30	2014-01-30 04:36:50.497194	2014-01-30 04:36:50.497194
394	2	2014-01-30 10:10:00	\N	2014-01-30	2014-01-30 04:40:48.658931	2014-01-30 04:40:48.658931
395	2	2014-01-30 10:30:00	\N	2014-01-30	2014-01-30 05:00:15.77772	2014-01-30 05:00:15.77772
396	2	2014-01-30 10:33:00	\N	2014-01-30	2014-01-30 05:03:02.11067	2014-01-30 05:03:02.11067
397	2	2014-01-30 10:37:00	\N	2014-01-30	2014-01-30 05:07:21.007559	2014-01-30 05:07:21.007559
398	1	2014-01-30 11:07:00	\N	2014-01-30	2014-01-30 05:37:40.12696	2014-01-30 05:37:40.12696
399	2	2014-01-30 11:21:00	\N	2014-01-30	2014-01-30 05:51:21.156595	2014-01-30 05:51:21.156595
400	4	2014-01-30 12:34:00	\N	2014-01-30	2014-01-30 07:04:51.785302	2014-01-30 07:04:51.785302
401	4	2014-01-30 12:54:00	\N	2014-01-30	2014-01-30 07:24:49.858308	2014-01-30 07:24:49.858308
402	4	2014-01-30 13:17:00	\N	2014-01-30	2014-01-30 07:47:19.537707	2014-01-30 07:47:19.537707
403	4	2014-01-30 19:20:00	\N	2014-01-30	2014-01-30 13:50:30.069937	2014-01-30 13:50:30.069937
404	4	2014-01-30 20:13:00	\N	2014-01-30	2014-01-30 14:43:29.511283	2014-01-30 14:43:29.511283
405	4	2014-01-30 21:41:00	\N	2014-01-30	2014-01-30 16:11:39.802823	2014-01-30 16:11:39.802823
406	4	2014-01-31 11:37:00	\N	2014-01-31	2014-01-31 06:07:41.175878	2014-01-31 06:07:41.175878
407	4	2014-01-31 12:35:00	\N	2014-01-31	2014-01-31 07:05:19.012606	2014-01-31 07:05:19.012606
408	1	2014-02-01 10:06:00	\N	2014-02-01	2014-02-01 04:36:19.420793	2014-02-01 04:36:19.420793
409	1	2014-02-01 12:08:00	\N	2014-02-01	2014-02-01 06:38:32.777577	2014-02-01 06:38:32.777577
410	1	2014-02-01 12:14:00	\N	2014-02-01	2014-02-01 06:44:34.528844	2014-02-01 06:44:34.528844
411	2	2014-02-01 14:41:00	\N	2014-02-01	2014-02-01 09:11:05.168268	2014-02-01 09:11:05.168268
90	1	2013-11-27 13:01:00	2014-02-01 16:25:00	2013-11-27	2013-11-27 07:31:34.852253	2014-02-01 10:55:58.64219
412	1	2014-02-01 17:09:00	\N	2014-02-01	2014-02-01 11:39:47.493033	2014-02-01 11:39:47.493033
413	1	2014-02-01 17:26:00	\N	2014-02-01	2014-02-01 11:56:55.727173	2014-02-01 11:56:55.727173
414	4	2014-02-01 20:55:00	\N	2014-02-01	2014-02-01 15:25:12.534306	2014-02-01 15:25:12.534306
415	4	2014-02-02 12:02:00	\N	2014-02-02	2014-02-02 06:32:23.885674	2014-02-02 06:32:23.885674
416	4	2014-02-03 10:32:00	\N	2014-02-03	2014-02-03 05:02:19.852504	2014-02-03 05:02:19.852504
417	2	2014-02-03 11:53:00	\N	2014-02-03	2014-02-03 06:23:33.731641	2014-02-03 06:23:33.731641
418	2	2014-02-03 11:54:00	\N	2014-02-03	2014-02-03 06:24:23.525383	2014-02-03 06:24:23.525383
419	4	2014-02-03 11:55:00	\N	2014-02-03	2014-02-03 06:25:26.219221	2014-02-03 06:25:26.219221
\.


--
-- Name: attendences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('attendences_id_seq', 419, true);


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
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY branches (id, name, branch_code, contact_person, created_at, updated_at, client_id) FROM stdin;
1	ANDHERI E	00539	\N	2014-02-01 11:56:24.944046	2014-02-01 11:56:24.944046	1
2	ANDHERI E SEEPZ	11690	\N	2014-02-01 11:56:24.970696	2014-02-01 11:56:24.970696	1
3	ANDHERI SAHAR RD	05937	\N	2014-02-01 11:56:24.978311	2014-02-01 11:56:24.978311	1
4	ANDHERI W	13204	\N	2014-02-01 11:56:24.986531	2014-02-01 11:56:24.986531	1
5	ANDHERI W LOKHNDWALA	04276	\N	2014-02-01 11:56:24.994937	2014-02-01 11:56:24.994937	1
6	ANDHERI WEST	04650	\N	2014-02-01 11:56:25.002952	2014-02-01 11:56:25.002952	1
7	AUNDH PUNE	08784	\N	2014-02-01 11:56:25.011775	2014-02-01 11:56:25.011775	1
8	BADLAPUR INDUSTRIAL ESTATE	07452	\N	2014-02-01 11:56:25.019904	2014-02-01 11:56:25.019904	1
9	BANDRA W	00548	\N	2014-02-01 11:56:25.028158	2014-02-01 11:56:25.028158	1
10	BHANDUP LBS	00562	\N	2014-02-01 11:56:25.036518	2014-02-01 11:56:25.036518	1
11	BHAYANDER	05318	\N	2014-02-01 11:56:25.044878	2014-02-01 11:56:25.044878	1
12	BHIWANDI 	00331	\N	2014-02-01 11:56:25.053205	2014-02-01 11:56:25.053205	1
13	BHULABHAI RD	05340	\N	2014-02-01 11:56:25.061499	2014-02-01 11:56:25.061499	1
14	BKC	04380	\N	2014-02-01 11:56:25.069871	2014-02-01 11:56:25.069871	1
15	BORIVLI WEST	00551	\N	2014-02-01 11:56:25.078202	2014-02-01 11:56:25.078202	1
16	BYCULLA	00343	\N	2014-02-01 11:56:25.086548	2014-02-01 11:56:25.086548	1
17	CAMP-4 ULHASNAGAR	12702	\N	2014-02-01 11:56:25.094823	2014-02-01 11:56:25.094823	1
18	CBD BELAPUR	13551	\N	2014-02-01 11:56:25.103158	2014-02-01 11:56:25.103158	1
19	CHEMBUR MAHUL RD	00564	\N	2014-02-01 11:56:25.111451	2014-02-01 11:56:25.111451	1
20	CHEMBUR NRI 	16228	\N	2014-02-01 11:56:25.119809	2014-02-01 11:56:25.119809	1
21	COLABA	10716	\N	2014-02-01 11:56:25.128107	2014-02-01 11:56:25.128107	1
22	CUFFE PARADE	05345	\N	2014-02-01 11:56:25.136451	2014-02-01 11:56:25.136451	1
23	DADAR	00353	\N	2014-02-01 11:56:25.144705	2014-02-01 11:56:25.144705	1
24	DEONAR	03109	\N	2014-02-01 11:56:25.153045	2014-02-01 11:56:25.153045	1
25	DIAMOND GARDEN	13340	\N	2014-02-01 11:56:25.161405	2014-02-01 11:56:25.161405	1
26	DOMBIVALI E PHASE I	01595	\N	2014-02-01 11:56:25.175808	2014-02-01 11:56:25.175808	1
27	DOMBIVALI EAST	07124	\N	2014-02-01 11:56:25.186508	2014-02-01 11:56:25.186508	1
28	DOMBIVALI INDUSTRIAL ESTATE BR	01595	\N	2014-02-01 11:56:25.194818	2014-02-01 11:56:25.194818	1
29	DOMBIVLI WEST BRANCH 	05165	\N	2014-02-01 11:56:25.203113	2014-02-01 11:56:25.203113	1
30	FINANCE VASHI BR	11706	\N	2014-02-01 11:56:25.211403	2014-02-01 11:56:25.211403	1
31	GHANSOLI	13033	\N	2014-02-01 11:56:25.219726	2014-02-01 11:56:25.219726	1
32	GHANSOLI	12965	\N	2014-02-01 11:56:25.228052	2014-02-01 11:56:25.228052	1
33	GHATKOPAR E	00516	\N	2014-02-01 11:56:25.236426	2014-02-01 11:56:25.236426	1
34	GHATKOPAR M G RD	60203	\N	2014-02-01 11:56:25.244838	2014-02-01 11:56:25.244838	1
35	GHATKOPAR PANTNAGAR	11711	\N	2014-02-01 11:56:25.253087	2014-02-01 11:56:25.253087	1
36	GHATKOPAR W GRD	01131	\N	2014-02-01 11:56:25.261381	2014-02-01 11:56:25.261381	1
37	GHATKOPAR W1	01131	\N	2014-02-01 11:56:25.269652	2014-02-01 11:56:25.269652	1
38	GOREGAON W	01266	\N	2014-02-01 11:56:25.278075	2014-02-01 11:56:25.278075	1
39	HIRANANDANI	11708	\N	2014-02-01 11:56:25.286389	2014-02-01 11:56:25.286389	1
40	HOUSING FINANCE BR.VASHI	11706	\N	2014-02-01 11:56:25.294733	2014-02-01 11:56:25.294733	1
41	IGATPURI 	00386	\N	2014-02-01 11:56:25.302981	2014-02-01 11:56:25.302981	1
42	JUINAGAR	11786	\N	2014-02-01 11:56:25.311364	2014-02-01 11:56:25.311364	1
43	KALMBOLI	12701	\N	2014-02-01 11:56:25.319674	2014-02-01 11:56:25.319674	1
44	KALYAN BAZARPETH ROAD	12925	\N	2014-02-01 11:56:25.328021	2014-02-01 11:56:25.328021	1
45	KALYAN E	15250	\N	2014-02-01 11:56:25.336327	2014-02-01 11:56:25.336327	1
46	KALYAN KHADAKPADDA	11159	\N	2014-02-01 11:56:25.344669	2014-02-01 11:56:25.344669	1
47	KALYAN W 	00399	\N	2014-02-01 11:56:25.352971	2014-02-01 11:56:25.352971	1
48	KANDIVALI E SAHAKARGRAM	30281	\N	2014-02-01 11:56:25.361318	2014-02-01 11:56:25.361318	1
49	KANJURMARG E	06249	\N	2014-02-01 11:56:25.369576	2014-02-01 11:56:25.369576	1
50	KEMS CORNER	06994	\N	2014-02-01 11:56:25.378001	2014-02-01 11:56:25.378001	1
51	KERALA	08589	\N	2014-02-01 11:56:25.38632	2014-02-01 11:56:25.38632	1
52	KHARGHAR BRANCH SEC.21 	11673	\N	2014-02-01 11:56:25.394611	2014-02-01 11:56:25.394611	1
53	KHARGHAR BRANCH SEC.35 	15972	\N	2014-02-01 11:56:25.402884	2014-02-01 11:56:25.402884	1
54	KHOPOLI	05551	\N	2014-02-01 11:56:25.411152	2014-02-01 11:56:25.411152	1
55	KOKAN BHAVAN	06240	\N	2014-02-01 11:56:25.419577	2014-02-01 11:56:25.419577	1
56	KOPARKHAIRANE	10331	\N	2014-02-01 11:56:25.427868	2014-02-01 11:56:25.427868	1
57	KURLA	01886	\N	2014-02-01 11:56:25.436229	2014-02-01 11:56:25.436229	1
58	KURLA LBS	12703	\N	2014-02-01 11:56:25.444525	2014-02-01 11:56:25.444525	1
59	LALBAUG	01850	\N	2014-02-01 11:56:25.452879	2014-02-01 11:56:25.452879	1
60	LOWER PAREL BRANCH  (N.M.JOSHI)	3428	\N	2014-02-01 11:56:25.461239	2014-02-01 11:56:25.461239	1
61	MAJIWADE(THANE)	13377	\N	2014-02-01 11:56:25.469598	2014-02-01 11:56:25.469598	1
62	MALAD E	03110	\N	2014-02-01 11:56:25.477952	2014-02-01 11:56:25.477952	1
63	MALAD MARVE	03280	\N	2014-02-01 11:56:25.486255	2014-02-01 11:56:25.486255	1
64	MARAL BR (OUT OF MAHARASHTRA)	16325	\N	2014-02-01 11:56:25.494522	2014-02-01 11:56:25.494522	1
65	MATUNGA	05350	\N	2014-02-01 11:56:25.502772	2014-02-01 11:56:25.502772	1
66	MULUND EAST	04210	\N	2014-02-01 11:56:25.511115	2014-02-01 11:56:25.511115	1
67	MULUND GAVANPADA	13034	\N	2014-02-01 11:56:25.519436	2014-02-01 11:56:25.519436	1
68	MULUND HARI OM NAGAR	16878	\N	2014-02-01 11:56:25.527748	2014-02-01 11:56:25.527748	1
69	MULUND LBS RD	11672	\N	2014-02-01 11:56:25.536089	2014-02-01 11:56:25.536089	1
70	MULUND W DEVIDAYAL RD	16720	\N	2014-02-01 11:56:25.544458	2014-02-01 11:56:25.544458	1
71	MULUND WEST	03225	\N	2014-02-01 11:56:25.552726	2014-02-01 11:56:25.552726	1
72	MUMBAI CENTRAL	00547	\N	2014-02-01 11:56:25.561048	2014-02-01 11:56:25.561048	1
73	NALASOPARA W	10414	\N	2014-02-01 11:56:25.56937	2014-02-01 11:56:25.56937	1
74	NAUPADA 	04498	\N	2014-02-01 11:56:25.577686	2014-02-01 11:56:25.577686	1
75	NEHRU NGR KURLA E	12924	\N	2014-02-01 11:56:25.586045	2014-02-01 11:56:25.586045	1
76	NERUL WEST	05087	\N	2014-02-01 11:56:25.594394	2014-02-01 11:56:25.594394	1
77	NERUL(EAST)	11785	\N	2014-02-01 11:56:25.602689	2014-02-01 11:56:25.602689	1
78	NEW PANVEL	60383	\N	2014-02-01 11:56:25.611	2014-02-01 11:56:25.611	1
79	NEW PANVEL	11758	\N	2014-02-01 11:56:25.619326	2014-02-01 11:56:25.619326	1
80	NEW PANVEL WEST (SECTOR-6)	15664	\N	2014-02-01 11:56:25.627633	2014-02-01 11:56:25.627633	1
81	OLD PANVEL	00448	\N	2014-02-01 11:56:25.635975	2014-02-01 11:56:25.635975	1
82	PALGHAR	00444	\N	2014-02-01 11:56:25.644196	2014-02-01 11:56:25.644196	1
83	PALGHAR SAPHALE	13822	\N	2014-02-01 11:56:25.652632	2014-02-01 11:56:25.652632	1
84	PAREL BRANCH	01884	\N	2014-02-01 11:56:25.660949	2014-02-01 11:56:25.660949	1
85	PEDDER ROAD	00510	\N	2014-02-01 11:56:25.669296	2014-02-01 11:56:25.669296	1
86	POWAI	01109	\N	2014-02-01 11:56:25.677606	2014-02-01 11:56:25.677606	1
87	RABALE	03375	\N	2014-02-01 11:56:25.685967	2014-02-01 11:56:25.685967	1
88	RASAYANI	2172	\N	2014-02-01 11:56:25.694276	2014-02-01 11:56:25.694276	1
89	S.I.B GHATKOPAR(W)	04832	\N	2014-02-01 11:56:25.702595	2014-02-01 11:56:25.702595	1
90	SALTLAKE	04204	\N	2014-02-01 11:56:25.71079	2014-02-01 11:56:25.71079	1
91	SANPADA BRANCH	05141	\N	2014-02-01 11:56:25.719228	2014-02-01 11:56:25.719228	1
92	SANTACRUZ E	13265	\N	2014-02-01 11:56:25.727555	2014-02-01 11:56:25.727555	1
93	SBI BAPMC BRANCH 	09961	\N	2014-02-01 11:56:25.852695	2014-02-01 11:56:25.852695	1
94	SBI NRI BRANCH SHEWOOD	16215	\N	2014-02-01 11:56:25.869114	2014-02-01 11:56:25.869114	1
95	SBI WASHI TURBHE BRANCH	03736	\N	2014-02-01 11:56:25.969009	2014-02-01 11:56:25.969009	1
96	SBI, KHANDESHWAR BR	16374	\N	2014-02-01 11:56:25.977339	2014-02-01 11:56:25.977339	1
97	SECTOR 20 KOPERKHAIRANE BR	15284	\N	2014-02-01 11:56:25.985695	2014-02-01 11:56:25.985695	1
98	SECTOR-10 VASHI	30419	\N	2014-02-01 11:56:26.002459	2014-02-01 11:56:26.002459	1
99	SENAPATI BAPAT MARG BRANCH	13757	\N	2014-02-01 11:56:26.010711	2014-02-01 11:56:26.010711	1
100	SHIVAJI PARK DADAR BR	01429	\N	2014-02-01 11:56:26.019009	2014-02-01 11:56:26.019009	1
101	SHIVAJI TALAV BHANDUP	15474	\N	2014-02-01 11:56:26.027332	2014-02-01 11:56:26.027332	1
102	SHRIWARDHAN	01049	\N	2014-02-01 11:56:26.035651	2014-02-01 11:56:26.035651	1
103	SION	04296	\N	2014-02-01 11:56:26.043993	2014-02-01 11:56:26.043993	1
104	SWASTIK PARK 	07192	\N	2014-02-01 11:56:26.05231	2014-02-01 11:56:26.05231	1
105	THANE EAST	07232	\N	2014-02-01 11:56:26.060638	2014-02-01 11:56:26.060638	1
106	THANE GHODBUNDER RD	10786	\N	2014-02-01 11:56:26.068959	2014-02-01 11:56:26.068959	1
107	THANE J K MARG	09056	\N	2014-02-01 11:56:26.077295	2014-02-01 11:56:26.077295	1
108	THANE MAIN 	00489	\N	2014-02-01 11:56:26.085603	2014-02-01 11:56:26.085603	1
109	THANE PANCHPAKHADI	11674	\N	2014-02-01 11:56:26.093981	2014-02-01 11:56:26.093981	1
110	THANE SAKET RD	16417	\N	2014-02-01 11:56:26.102287	2014-02-01 11:56:26.102287	1
111	THANE VASANT VIHAR	04314	\N	2014-02-01 11:56:26.110607	2014-02-01 11:56:26.110607	1
112	THANE W E	01053	\N	2014-02-01 11:56:26.118911	2014-02-01 11:56:26.118911	1
113	TITWALA	16389	\N	2014-02-01 11:56:26.12724	2014-02-01 11:56:26.12724	1
114	ULHASNAGAR NO 3	01202	\N	2014-02-01 11:56:26.135569	2014-02-01 11:56:26.135569	1
115	VAISHALI NGR MULUND	15149	\N	2014-02-01 11:56:26.143881	2014-02-01 11:56:26.143881	1
116	VAKOLA BRANCH	01467	\N	2014-02-01 11:56:26.152208	2014-02-01 11:56:26.152208	1
117	VASAI	00326	\N	2014-02-01 11:56:26.160505	2014-02-01 11:56:26.160505	1
118	VASHI BRANCH	14677	\N	2014-02-01 11:56:26.168882	2014-02-01 11:56:26.168882	1
119	VASHI NAVI MUMBAI	10330	\N	2014-02-01 11:56:26.177074	2014-02-01 11:56:26.177074	1
120	VASHI SEC 14	15285	\N	2014-02-01 11:56:26.185501	2014-02-01 11:56:26.185501	1
121	VASHI SECTOR-19 ,VASHI	60347	\N	2014-02-01 11:56:26.193856	2014-02-01 11:56:26.193856	1
122	VERSOVA	03117	\N	2014-02-01 11:56:26.202188	2014-02-01 11:56:26.202188	1
123	VIDYAVIHAR	11710	\N	2014-02-01 11:56:26.210401	2014-02-01 11:56:26.210401	1
124	VIKHROLI E	07212	\N	2014-02-01 11:56:26.218683	2014-02-01 11:56:26.218683	1
125	VIKHROLI W	01406	\N	2014-02-01 11:56:26.22713	2014-02-01 11:56:26.22713	1
126	VILE PARLE E	01174	\N	2014-02-01 11:56:26.235457	2014-02-01 11:56:26.235457	1
127	VILE PARLE W IRLA	15713	\N	2014-02-01 11:56:26.243774	2014-02-01 11:56:26.243774	1
128	WODEHOUSE ROAD COLABA	00572	\N	2014-02-01 11:56:26.252124	2014-02-01 11:56:26.252124	1
\.


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branches_id_seq', 128, true);


--
-- Data for Name: business_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_documents (id, business_id, work_servey_id, created_at, updated_at, photo_file_name, photo_content_type, photo_file_size) FROM stdin;
176	209	176	2014-01-27 11:56:53.840883	2014-01-27 11:56:53.840883	\N	\N	\N
177	215	177	2014-01-28 04:56:49.164104	2014-01-28 04:56:49.164104	\N	\N	\N
178	215	178	2014-01-28 05:03:55.835258	2014-01-28 05:03:55.835258	\N	\N	\N
179	223	179	2014-01-29 04:37:43.307383	2014-01-29 04:37:43.307383	\N	\N	\N
180	224	180	2014-01-29 04:50:12.450953	2014-01-29 04:50:12.450953	\N	\N	\N
6	29	6	2013-10-21 14:10:21.942096	2013-10-21 14:10:21.942096	\N	\N	\N
181	221	181	2014-01-29 05:02:56.323993	2014-01-29 05:02:56.323993	\N	\N	\N
8	27	8	2013-10-21 14:24:24.537417	2013-10-21 14:24:24.537417	\N	\N	\N
9	27	9	2013-10-21 14:24:53.133352	2013-10-21 14:24:53.133352	\N	\N	\N
10	27	10	2013-10-21 14:28:15.56896	2013-10-21 14:28:15.56896	\N	\N	\N
11	27	11	2013-10-21 14:28:43.413775	2013-10-21 14:28:43.413775	\N	\N	\N
182	220	182	2014-01-29 05:07:05.412904	2014-01-29 05:07:05.412904	\N	\N	\N
183	219	183	2014-01-29 05:10:50.419087	2014-01-29 05:10:50.419087	\N	\N	\N
16	25	16	2013-10-21 14:44:14.20023	2013-10-21 14:44:14.20023	\N	\N	\N
17	25	17	2013-10-21 14:44:28.71168	2013-10-21 14:44:28.71168	\N	\N	\N
18	40	18	2013-10-29 04:55:48.062321	2013-10-29 04:55:48.062321	\N	\N	\N
19	41	19	2013-10-29 04:59:09.297227	2013-10-29 04:59:09.297227	\N	\N	\N
20	33	20	2013-10-29 05:02:25.582731	2013-10-29 05:02:25.582731	\N	\N	\N
22	34	22	2013-10-29 05:09:46.995825	2013-10-29 05:09:46.995825	\N	\N	\N
23	35	23	2013-10-29 05:16:06.245164	2013-10-29 05:16:06.245164	\N	\N	\N
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
43	63	43	2013-11-07 10:50:45.435428	2013-11-07 10:50:45.435428	\N	\N	\N
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
56	87	56	2013-11-18 05:33:06.261967	2013-11-18 05:33:06.261967	\N	\N	\N
57	80	57	2013-11-18 05:35:58.186192	2013-11-18 05:35:58.186192	\N	\N	\N
58	73	58	2013-11-18 05:39:21.656201	2013-11-18 05:39:21.656201	\N	\N	\N
59	83	59	2013-11-18 05:41:51.774251	2013-11-18 05:41:51.774251	\N	\N	\N
60	84	60	2013-11-18 05:49:50.265605	2013-11-18 05:49:50.265605	\N	\N	\N
61	86	61	2013-11-18 05:52:09.999964	2013-11-18 05:52:09.999964	\N	\N	\N
62	88	62	2013-11-18 06:03:26.568127	2013-11-18 06:03:26.568127	\N	\N	\N
63	90	63	2013-11-18 10:30:03.148658	2013-11-18 10:30:03.148658	\N	\N	\N
64	94	64	2013-11-19 07:37:07.282719	2013-11-19 07:37:07.282719	\N	\N	\N
65	91	65	2013-11-19 11:04:25.796847	2013-11-19 11:04:25.796847	\N	\N	\N
67	98	67	2013-11-19 11:09:49.126399	2013-11-19 11:09:49.126399	\N	\N	\N
68	92	68	2013-11-19 11:15:44.216818	2013-11-19 11:15:44.216818	\N	\N	\N
69	95	69	2013-11-19 11:18:32.241286	2013-11-19 11:18:32.241286	\N	\N	\N
70	97	70	2013-11-19 11:21:30.295847	2013-11-19 11:21:30.295847	\N	\N	\N
72	100	72	2013-11-20 09:50:49.775739	2013-11-20 09:50:49.775739	\N	\N	\N
74	93	74	2013-11-20 09:55:44.786158	2013-11-20 09:55:44.786158	\N	\N	\N
77	103	77	2013-11-21 09:22:10.399651	2013-11-21 09:22:10.399651	\N	\N	\N
86	113	86	2013-11-23 12:18:32.189159	2013-11-23 12:18:32.189159	\N	\N	\N
127	129	127	2013-11-27 06:27:42.430534	2013-11-27 06:27:42.430534	\N	\N	\N
134	137	134	2013-11-29 05:36:46.86185	2013-11-29 05:36:46.86185	\N	\N	\N
142	145	142	2013-11-29 05:57:00.427217	2013-11-29 05:57:00.427217	\N	\N	\N
143	144	143	2013-11-29 06:10:43.734189	2013-11-29 06:10:43.734189	\N	\N	\N
145	151	145	2013-12-05 05:03:32.27822	2013-12-05 05:03:32.27822	\N	\N	\N
146	152	146	2013-12-05 05:24:25.164429	2013-12-05 05:24:25.164429	\N	\N	\N
148	156	148	2013-12-06 05:18:58.142795	2013-12-06 05:18:58.142795	\N	\N	\N
151	153	151	2013-12-06 09:48:08.470774	2013-12-06 09:48:08.470774	\N	\N	\N
160	174	160	2013-12-11 04:00:45.065206	2013-12-11 04:00:45.065206	\N	\N	\N
174	168	174	2013-12-12 14:48:55.234014	2013-12-12 14:48:55.234014	\N	\N	\N
175	169	175	2013-12-12 14:52:13.766211	2013-12-12 14:52:13.766211	\N	\N	\N
\.


--
-- Name: business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_documents_id_seq', 183, true);


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
183	1	\N	201	3	2014-01-17 07:58:43.301133	2014-01-17 07:58:43.31576
184	1	\N	202	3	2014-01-17 08:01:48.937746	2014-01-17 08:01:48.958489
185	1	\N	203	3	2014-01-21 12:43:46.951027	2014-01-21 12:43:47.01311
40	1	\N	40	1	2013-10-28 06:02:19.696851	2013-10-28 06:02:19.717266
41	1	\N	41	1	2013-10-28 06:03:56.683013	2013-10-28 06:03:56.700104
42	1	\N	52	1	2013-10-28 07:19:58.902289	2013-10-28 07:19:58.928562
43	1	\N	53	1	2013-10-28 07:21:19.252718	2013-10-28 07:21:19.277197
44	1	\N	54	1	2013-10-28 07:22:19.646423	2013-10-28 07:22:19.670292
45	1	\N	55	1	2013-10-28 07:23:53.843803	2013-10-28 07:23:53.865159
200	1	\N	218	3	2014-01-27 07:58:00.495732	2014-01-27 07:58:00.507056
77	1	\N	90	1	2013-11-18 05:56:04.951026	2013-11-18 05:56:04.967488
78	1	\N	91	1	2013-11-18 05:59:24.978163	2013-11-18 05:59:24.995122
187	1	\N	205	3	2014-01-21 12:48:58.344316	2014-01-21 12:48:58.369795
50	1	\N	61	1	2013-10-29 08:15:05.062486	2013-10-29 08:15:05.08354
51	1	\N	63	1	2013-10-29 08:18:42.09873	2013-10-29 08:18:42.128656
25	1	\N	25	1	2013-10-21 09:34:12.144446	2013-10-21 09:34:12.160926
79	1	\N	92	1	2013-11-19 06:57:20.776117	2013-11-19 06:57:20.797119
27	1	\N	27	1	2013-10-21 09:40:45.653683	2013-10-21 09:40:45.680689
80	1	\N	93	1	2013-11-19 06:59:04.784211	2013-11-19 06:59:04.79831
53	1	\N	65	1	2013-10-29 08:21:07.4096	2013-10-29 08:21:07.424535
81	1	\N	94	1	2013-11-19 07:00:16.312184	2013-11-19 07:00:16.339136
55	1	\N	67	1	2013-10-30 08:05:01.896741	2013-10-30 08:05:01.91398
82	1	\N	95	1	2013-11-19 07:01:39.282274	2013-11-19 07:01:39.294446
188	1	\N	206	3	2014-01-21 12:50:32.320921	2014-01-21 12:50:32.348047
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
189	1	\N	207	3	2014-01-21 12:56:55.713337	2014-01-21 12:56:55.736651
73	1	\N	86	1	2013-11-13 09:29:55.432003	2013-11-13 09:29:55.451754
84	1	\N	97	1	2013-11-19 07:06:31.339672	2013-11-19 07:06:31.36898
85	1	\N	98	1	2013-11-19 07:08:02.688124	2013-11-19 07:08:02.700185
87	1	\N	100	1	2013-11-20 08:16:04.75239	2013-11-20 08:16:04.770299
201	1	\N	219	1	2014-01-28 10:09:35.246877	2014-01-28 10:09:35.27383
90	1	\N	103	1	2013-11-21 06:47:42.420112	2013-11-21 06:47:42.43639
202	1	\N	220	1	2014-01-28 10:13:56.309616	2014-01-28 10:13:56.327556
203	1	\N	221	1	2014-01-28 10:17:31.174491	2014-01-28 10:17:31.200098
186	1	\N	204	1	2014-01-21 12:46:03.278532	2014-01-25 13:08:12.246276
204	1	\N	222	1	2014-01-28 10:21:10.971599	2014-01-28 10:21:11.001254
205	1	\N	223	1	2014-01-28 10:22:26.597656	2014-01-28 10:22:26.621488
100	1	\N	113	1	2013-11-23 07:24:42.960737	2013-11-23 07:24:42.982486
138	1	\N	151	3	2013-12-04 09:36:42.696504	2013-12-04 09:36:42.737535
192	1	\N	210	1	2014-01-27 07:23:20.800119	2014-01-27 07:23:20.826053
206	1	\N	224	1	2014-01-28 10:24:53.405042	2014-01-28 10:24:53.424971
207	1	\N	225	1	2014-01-28 10:27:01.058299	2014-01-28 10:27:01.079678
208	1	\N	231	3	2014-02-01 06:52:31.388546	2014-02-01 06:52:31.414875
139	1	\N	152	3	2013-12-04 09:40:58.462005	2013-12-04 09:40:58.504277
209	1	\N	232	3	2014-02-01 06:54:19.23174	2014-02-01 06:54:19.254158
194	1	\N	212	1	2014-01-27 07:28:53.687892	2014-01-27 07:28:53.721145
140	1	\N	153	1	2013-12-05 07:15:25.428505	2013-12-05 07:15:25.452648
210	1	\N	233	3	2014-02-01 06:55:29.201303	2014-02-01 06:55:29.221396
116	1	\N	129	3	2013-11-26 07:44:34.117877	2013-11-26 07:44:34.133425
190	1	\N	208	3	2014-01-27 07:20:23.15442	2014-01-27 07:35:11.162542
191	1	\N	209	3	2014-01-27 07:21:50.724745	2014-01-27 07:35:50.10706
193	1	\N	211	3	2014-01-27 07:25:42.005749	2014-01-27 07:40:11.079499
195	1	\N	213	3	2014-01-27 07:32:40.932039	2014-01-27 07:41:10.548295
196	1	\N	214	3	2014-01-27 07:43:32.64237	2014-01-27 07:43:32.675562
197	1	\N	215	3	2014-01-27 07:45:12.170063	2014-01-27 07:45:12.19034
198	1	\N	216	3	2014-01-27 07:47:03.347954	2014-01-27 07:47:03.360509
124	1	\N	137	1	2013-11-27 07:46:57.445922	2013-11-27 07:46:57.45884
199	1	\N	217	3	2014-01-27 07:56:36.207602	2014-01-27 07:56:36.228544
153	1	\N	168	3	2013-12-09 11:32:29.003833	2013-12-09 11:32:29.026126
211	1	\N	234	3	2014-02-01 06:56:59.216476	2014-02-01 06:56:59.236804
154	1	\N	169	3	2013-12-09 11:35:05.719533	2013-12-09 11:35:05.745082
212	1	\N	235	3	2014-02-01 07:00:27.737051	2014-02-01 07:00:27.756949
213	1	\N	236	3	2014-02-01 07:01:51.413814	2014-02-01 07:01:51.436512
214	1	\N	237	3	2014-02-01 07:08:25.105959	2014-02-01 07:08:25.132352
131	1	\N	144	1	2013-11-28 07:04:20.703455	2013-11-28 07:04:20.727138
132	1	\N	145	1	2013-11-28 07:06:38.075121	2013-11-28 07:06:38.106401
215	1	\N	238	3	2014-02-01 07:18:43.208702	2014-02-01 07:18:43.224153
216	1	\N	239	3	2014-02-01 07:19:48.777521	2014-02-01 07:19:48.795629
217	1	\N	240	3	2014-02-01 07:20:57.915858	2014-02-01 07:20:57.938534
143	1	\N	156	3	2013-12-05 07:19:55.487621	2013-12-05 07:19:55.515705
159	1	\N	174	3	2013-12-10 06:41:41.970831	2013-12-10 06:41:42.814336
\.


--
-- Name: business_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_verifications_id_seq', 217, true);


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country_name, country_state, country_city, pincode_id, slug, latitude, longitude, status, customer_id, created_at, updated_at, company_name, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name) FROM stdin;
201	1259	Scorp Enterprises	f	1259	LAXMAN CHANDRABHAN TAYADE	BUSINESS		NAUPADA POLICE STN, NAUPADA, RAM MARUTI RD, THANE\r\n	INDIA	MAHARASHTRA	THANE	75	laxman-chandrabhan-tayade	19.1911887000000014	72.9723927000000003	submitted	343	2014-01-17 07:57:48.140107	2014-01-17 07:57:48.140107	NAUPADA POLICE STN	\N	\N	1	\N	\N	\N	\N	\N
41	1026	Scorp Enterprises	f	1026	Mr.RUCHIR BHATNAGAR	BUSINESS	9920096860	COLGATE PALMOLINE INDIA LTD.COLGATE RESEARCH CENTRE,MAIN STREET,HIRANANDANI GARDENS ,DEPTCUSTOMER DEVELOPMENT,MUMBAI-400076.\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-ruchir-bhatnagar	19.1253004000000004	72.9076668999999953	verified	81	2013-10-28 06:03:47.560023	2013-10-28 06:03:47.560023	COLGATE PALMOLINE INDIA LTD.	\N	\N	1	\N	\N	\N	\N	\N
33	1018	Scorp Enterprises	f	1018	Mr.SIDDHARTH AJITSINGH JANGHU.	BUSINESS	61260165 / 8879952307	J.P.MORGAN SERVICES INDIA P LTD.GATE-5,L & T BUSINESS PARK,SAKIVIHAR ROAD,POWAI,MUMBAI-400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	mr-siddharth-ajitsingh-janghu	19.1063666999999988	72.8899466000000018	verified	73	2013-10-26 07:06:43.777144	2013-10-26 07:06:43.777144	J.P.MORGAN SERVICES INDIA P LTD	\N	\N	1	\N	\N	\N	\N	\N
34	1019	Scorp Enterprises	f	1019	MR ARUN ACHUTHAN	BUSINESS	022-61783000/ 9920055567	COLGATE GLOBAL BUSINESS SERVICES PVT LTD, 10TH FLOOR, TOWER B, L & T POWAI GATE NO-5, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-arun-achuthan	19.1610316999999988	72.8395173999999912	verified	74	2013-10-26 07:08:23.630354	2013-10-26 07:08:23.630354	COLGATE GLOBAL BUSINESS SERVICES PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
35	1020	Scorp Enterprises	f	1020	Mrs. MADHAVI PRAMOD NIMGALE	BUSINESS	2261268642/ 9820847817	J P  MORGAN SERVICES INDIA, WSS TECHNOLOGY, 3RD FLOOR, VENTURA, POWAI, MUMBAI- 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mrs-madhavi-pramod-nimgale	19.1253004000000004	72.9076668999999953	verified	75	2013-10-26 07:09:45.146598	2013-10-26 07:09:45.146598	J P  MORGAN SERVICES INDIA	\N	\N	1	\N	\N	\N	\N	\N
202	1260	Scorp Enterprises	f	1260	SUPRIYA SUNIL BHOSALE	BUSINESS		ACC LTD, FICO BLDG, ACC COMPUND, TEEN HATH NAKA, THANE\r\n	INDIA	MAHARASHTRA	THANE	75	supriya-sunil-bhosale	19.2183306999999992	72.9780896999999982	submitted	344	2014-01-17 08:01:41.738477	2014-01-17 08:01:41.738477	ACC LTD	\N	\N	1	\N	\N	\N	\N	\N
32	1017	Scorp Enterprises	f	1017	DEEPAK GATUM JADHAV	BUSINESS	9890772032	YASHWANT CHANDJI SAWANT VIDYAMANDIR , UTKARSH NAGAR, JM RD, NR SHIV TEMPLE, BHANDUP\r\n	INDIA	MAHARASHTRA	mumbai	57	deepak-gatum-jadhav	19.1499009999999998	72.9311340000000001	verified	72	2013-10-26 07:04:30.074171	2013-10-26 07:04:30.074171	YASHWANT CHANDJI SAWANT VIDYAMANDIR	\N	\N	1	\N	\N	\N	\N	\N
31	1013	Scorp Enterprises	f	1013	MR.ASHEESH SARASWAT	BUSINESS	25728060/9920722869/ 9969543909	KENDRIYA VIDYALAYA SANGTHAN,REGIONAL OFFICE,IIT CAMPUS,POWAI,MUMBAI - 400076 \r\n	INDIA	MAHARASHTRA	mumbai	57	mr-asheesh-saraswat	19.1253004000000004	72.9076668999999953	verified	68	2013-10-26 06:59:23.239248	2013-10-26 06:59:23.239248	KENDRIYA VIDYALAYA SANGTHAN	\N	\N	1	\N	\N	\N	\N	\N
36	1021	Scorp Enterprises	f	1021	Mrs. LEKHA MANOJ NAMBIAR	BUSINESS	9830917337/ 7738140012 	IOT INFRASTRUCTURE & ENERGY SERVICES LTD., PLOT NO Y2, CEAT TYRE ROAD, NEAR RAHUL RAILWAY STATION, BHANDUP WEST, MUMBAI - 400 078\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mrs-lekha-manoj-nambiar	19.0759836999999983	72.8776558999999935	verified	76	2013-10-26 07:11:50.09911	2013-10-26 07:11:50.09911	IOT INFRASTRUCTURE & ENERGY SERVICES LTD.	\N	\N	1	\N	\N	\N	\N	\N
203	1265	Scorp Enterprises	f	1265	OMPRAKASH M SHARMA	BUSINESS		CETTM MTNL,5TH FR,HIRANADANI GARDENS TECHNO STREET, PAWAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	omprakash-m-sharma	19.1253004000000004	72.9076668999999953	submitted	349	2014-01-21 12:43:38.052218	2014-01-21 12:43:38.052218	CETTM MTNL	\N	\N	\N	\N	\N	\N	\N	\N
29	1011	Scorp Enterprises	f	1011	MR AMIT M SHARMA	BUSINESS	022-66860500/ 9967986959/ 9326486078	CAPGEMINI INDIA PVT LTD, PLANT 2,  BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, CBS MARG, VIKHROLI, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-amit-m-sharma	19.0852663999999983	72.9401508999999919	verified	66	2013-10-21 09:43:41.162139	2013-10-21 09:43:41.162139	CAPGEMINI INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
27	1009	Scorp Enterprises	f	1009	CHETAN NARAYAN BHATT	BUSINESS	022-710447061/9820726235/9820942417	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	INDIA	MAHARASHTRA	MUMBAI	59	chetan-narayan-bhatt	19.111419999999999	72.9431038000000029	verified	64	2013-10-21 09:40:35.003419	2013-10-21 09:40:35.003419	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
25	1006	Scorp Enterprises	f	1006	SUVARNLATA VITTAL TOKE	BUSINESS	022-40443422/ 9967049941	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	INDIA	MAHARASHTRA	MUMBAI	56	suvarnlata-vittal-toke	19.0759836999999983	72.8776558999999935	verified	61	2013-10-21 09:34:00.829659	2013-10-21 09:34:00.829659	ACCENTURE CONSULTANCY SERVICES PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
78	1077	Scorp Enterprises	f	1077	SHAILESH KANHAIYALAL PANDEY	BUSINESS	022-45765999 / 9867782906	OM CLEARING AGENCY ,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	INDIA	MAHARASHTRA	MUMBAI	60	shailesh-kanhaiyalal-pandey	19.1746738999999984	72.9431038000000029	verified	133	2013-11-09 07:40:36.44703	2013-11-09 07:40:36.44703	OM CLEARING AGENCY	\N	\N	1	\N	\N	\N	\N	\N
79	1078	Scorp Enterprises	f	1078	RATNA SHAILESH PANDEY	BUSINESS	022-45765999 / 9867782906	OM CLEARING AGENCY,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	INDIA	MAHARASHTRA	MUMBAI	58	ratna-shailesh-pandey	19.1746738999999984	72.9431038000000029	verified	134	2013-11-09 07:41:53.510237	2013-11-09 07:41:53.510237	OM CLEARING AGENCY	\N	\N	1	\N	\N	\N	\N	\N
74	1073	Scorp Enterprises	f	1073	AKHIL AGGARWAL	BUSINESS	022-404721000 / 9920899321	CRISIL LTD, SECOND FLOOR, KENSIGTON SEZ, WING -A, HIRANANDANI BUSINESS PARK, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	akhil-aggarwal	19.0759836999999983	72.8776558999999935	verified	129	2013-11-09 07:33:01.276727	2013-11-09 07:33:01.276727	CRISIL LTD	\N	\N	1	\N	\N	\N	\N	\N
75	1074	Scorp Enterprises	f	1074	KEVIN D'SOUZA	BUSINESS	022-25700358 / 9702048820/9833857002	POWAI AUTO WORKS, 19, ADISHANKARARCHARYA MARG, OPP PANCH KUTIR BUS STOP, POWAI, OPP SUVARNA TEMPLE, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	kevin-d-souza	19.0759836999999983	72.8776558999999935	verified	130	2013-11-09 07:35:35.868004	2013-11-09 07:35:35.868004	POWAI AUTO WORKS	\N	\N	1	\N	\N	\N	\N	\N
76	1075	Scorp Enterprises	f	1075	MR NAGRAJ DESHPANDE	BUSINESS	66059500 / 9325274930/ 9768133293	WEATHER FORD SYSTEMS SUPPORT, GODREJ IT PARK, P2 BLOCK-B, 4TH FLOOR, PIROJSHANAGAR, VIKHROLI, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-nagraj-deshpande	19.0852663999999983	72.9401508999999919	verified	131	2013-11-09 07:36:59.938258	2013-11-09 07:36:59.938258	WEATHER FORD SYSTEMS SUPPORT	\N	\N	1	\N	\N	\N	\N	\N
77	1076	Scorp Enterprises	f	1076	. Mr. ABHIJIT YASHWANT AMBRE 	BUSINESS	9819227567	MAERSK GLOBAL SERVICES PVT.LTD., 4TH AND 5T FLOOR, PRUDENTIAL BUILDING, CENTRAL AVENUE ROAD, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI- 400076. \r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-abhijit-yashwant-ambre	19.1253004000000004	72.9076668999999953	verified	132	2013-11-09 07:38:02.675367	2013-11-09 07:38:02.675367	MAERSK GLOBAL SERVICES PVT.LTD.	\N	\N	1	\N	\N	\N	\N	\N
82	1084	Scorp Enterprises	f	1084	MR KIRAN VHANTALE	BUSINESS	9619868969	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, LBS MARG, VIKHROLI WEST 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-kiran-vhantale	19.102046399999999	72.9225682999999947	verified	140	2013-11-12 07:06:49.714031	2013-11-12 07:06:49.714031	CAPGEMINI INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
73	1072	Scorp Enterprises	f	1072	SHRI SANTOSH SHIVAJI GAIKWAD	BUSINESS	022-61289700 / 	M/S SUPREME INFRASTRUCTURE INDIA LTD, 94/C PRATAPGAD, OPP IIT MAIN GATE, POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	shri-santosh-shivaji-gaikwad	19.1196772999999993	72.9050809000000015	verified	128	2013-11-09 07:31:29.420125	2013-11-09 07:31:29.420125	M/S SUPREME INFRASTRUCTURE INDIA LTD	\N	\N	1	\N	\N	\N	\N	\N
83	1085	Scorp Enterprises	f	1085	Mr. MANOJKUMAR R KOLLY	BUSINESS	61536027 / 9920062665	CITIUS IT SOLUTIONS PVT LTD., H1/2, SAKI VIHAR ROAD, MUMBAI - 400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	mr-manojkumar-r-kolly	19.1063666999999988	72.8899466000000018	verified	141	2013-11-13 09:15:46.202035	2013-11-13 09:15:46.202035	Mr. MANOJKUMAR R KOLLY	\N	\N	1	\N	\N	\N	\N	\N
63	1055	Scorp Enterprises	f	1055	MR DILESWERA RAO D ADATALA	BUSINESS	25725000 / 9892882489/ 9892591660	HIRANANDANI LIVING PVT LTD, SIGMA BUILDING, 6TH FLOOR, HIRANANDANI GARDENS, POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-dileswera-rao-d-adatala	19.0759836999999983	72.8776558999999935	verified	110	2013-10-29 08:18:29.60026	2013-10-29 08:18:29.60026	HIRANANDANI LIVING PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
204	1266	Scorp Enterprises	f	1266	SHRI VIJAYBAHADUR L PAL	BUSINESS		O/S S. M. (ADMN) 4TH FLR, CETTM MTNL ,5TH FR,HIRANADANI GARDENS TEEHNO STREET, PAWAI 400076 \r\n	INDIA	MAHARASHTRA	MUMBAI	57	shri-vijaybahadur-l-pal	19.1253004000000004	72.9076668999999953	submitted	350	2014-01-21 12:45:50.567975	2014-01-21 12:45:50.567975	CETTM MTNL	\N	\N	\N	\N	\N	\N	\N	\N
84	1086	Scorp Enterprises	f	1086	SUPRATIK CHAKRABORTY (975)	BUSINESS	022-25767721 / 9820103723	DEPT OF COMPUTER SC. & ENGG. IIT BOMBAY, IIT BOMBAY, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	supratik-chakraborty-975	19.1253004000000004	72.9076668999999953	verified	142	2013-11-13 09:17:27.290501	2013-11-13 09:17:27.290501	IIT BOMBAY	\N	\N	1	\N	\N	\N	\N	\N
52	1033	Scorp Enterprises	f	1033	MRS RUPALI THORAT	BUSINESS	8082050230	TEVAPHARM INDIA PVT LTD,402, OMEGA, HIRANANDANI BUSINESS PARK, NEAR TO BAYER HOUSE, POWAI MUMBAI – 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mrs-rupali-thorat	19.0759836999999983	72.8776558999999935	verified	88	2013-10-28 07:19:47.539004	2013-10-28 07:19:47.539004	TEVAPHARM INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
53	1034	Scorp Enterprises	f	1034	HIMANSHU D JAIN	BUSINESS	022-67324926 / 9920845617/9920753708	TATA CONSULTANCY SERVICES, KENSINGTON TOWER B WING, 12 FLOOR, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	himanshu-d-jain	19.1253004000000004	72.9076668999999953	verified	89	2013-10-28 07:21:11.441856	2013-10-28 07:21:11.441856	TATA CONSULTANCY SERVICES	\N	\N	1	\N	\N	\N	\N	\N
54	1032	Scorp Enterprises	f	1032	PRIYANKA BAJAJ	BUSINESS	022-61137000 / 9819824265/9930014265	DELOITTE CONSULTING INDIA PVT LTD, FAIRMONT LEVEL 2, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	priyanka-bajaj	19.1253004000000004	72.9076668999999953	verified	87	2013-10-28 07:22:11.569496	2013-10-28 07:22:11.569496	DELOITTE CONSULTING INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
40	1025	Scorp Enterprises	f	1025	ANITA PANDA	BUSINESS	9029028549/9773454230/	OFF NM:_____, 1001, A WING, JARDI NE LLOUD THOMPSON PVT LTD, SUPREME BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	anita-panda	19.1253004000000004	72.9076668999999953	verified	80	2013-10-28 06:02:10.491093	2013-10-28 06:02:10.491093	COMPANY NO NAME	\N	\N	1	\N	\N	\N	\N	\N
153	1207	Scorp Enterprises	f	1207	GIRISH CHANDRAKANT DESAI	BUSINESS	9757031336/ 9892702112	B.E.S.T.,MULUND DEVI DAYAL ROAD,FIRE BRIGADE.MULUND WEST MUMBAI \r\n	INDIA	maharashtra	mumbai	59	girish-chandrakant-desai	19.1751603000000017	72.9425500999999912	verified	268	2013-12-05 07:15:12.486551	2013-12-05 07:15:12.486551	B.E.S.T.	\N	\N	1	\N	\N	\N	\N	\N
81	1083	Scorp Enterprises	f	1083	MR SACHIN BODE	BUSINESS	022-40231221 / 9867010154	JAIET AIRCON PVT LTD, GC-1, KARMA STAMBH, LBS MARG, VIKHROLI WEST, MUMBAI 400083\r\n	INDIA	MAHARASHTRA	MUMBAI	59	mr-sachin-bode	19.111419999999999	72.9431038000000029	verified	139	2013-11-12 07:05:31.143714	2013-11-12 07:05:31.143714	JAIET AIRCON PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
94	1102	Scorp Enterprises	f	1102	SADASHIV MAHADEV SADHU	BUSINESS	9833419167	INDIAN NAVY, FH 25, CWH, MO-MB , GHATKOPAR\r\n	INDIA	MAHARASHTRA	MUMBAI	57	sadashiv-mahadev-sadhu	19.0908063000000006	72.9076668999999953	verified	158	2013-11-19 07:00:07.74408	2013-11-19 07:00:07.74408	INDIAN NAVY	\N	\N	1	\N	\N	\N	\N	\N
92	1100	Scorp Enterprises	f	1100	IRFAN MAHAMMADALI GARBI	BUSINESS	9819335545	GODREJ AND BOYCE MFG CO LTD, LBS ROAD, FIROSHA NGR, VIKHROLI WEST, 79\r\n	INDIA	MAHARASHTRA	MUMBAI	58	irfan-mahammadali-garbi	19.0759836999999983	72.8776558999999935	verified	156	2013-11-19 06:57:08.961883	2013-11-19 06:57:08.961883	GODREJ AND BOYCE MFG CO LTD	\N	\N	1	\N	\N	\N	\N	\N
93	1101	Scorp Enterprises	f	1101	MR SHREE GANSESH VERNEKAR	BUSINESS	022-40000000 / 9482001554	TRANSOCEAN, TRANSOCEAN HOUSE, LAKE BOULEVARD ROAD, HIRANANDANI BUSIESS PARK,POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-shree-gansesh-vernekar	19.0759836999999983	72.8776558999999935	verified	157	2013-11-19 06:58:57.028189	2013-11-19 06:58:57.028189	TRANSOCEAN	\N	\N	1	\N	\N	\N	\N	\N
61	1052	Scorp Enterprises	f	1052	MR KUSHAGRA CHITRANSHI 	BUSINESS	022-61268416 / 9167091404/9415527338	J P MORGAN INIDA PVT LTD, 2ND FLOOR, VENTURA BUSINESS TOWER HIRA NANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	mumbai	57	mr-kushagra-chitranshi	19.1253004000000004	72.9076668999999953	verified	107	2013-10-29 08:14:57.489201	2013-10-29 08:14:57.489201	J P MORGAN INIDA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
65	1057	Scorp Enterprises	f	1057	KRUNAL CHANDRASHEKHER JANI 	BUSINESS	33461570 9821061781	WIPRO TECHNOLOGIES SEZ UNIT 701 7TH FLOOR KENSINGTON A WING HIRANANDANI POWAI  \r\n	INDIA	MAHARASHTRA	MUMBAi	57	krunal-chandrashekher-jani	19.1153797999999995	72.9091435999999931	verified	112	2013-10-29 08:20:59.191449	2013-10-29 08:20:59.191449	WIPRO TECHNOLOGIES SEZ UNIT	\N	\N	1	\N	\N	\N	\N	\N
55	1035	Scorp Enterprises	f	1035	MR PANKAJ SUTAR	BUSINESS	9594409888	THERMO FISHER SCIENTIRIC INDIA LTD, POWAI HIRANANDANI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-pankaj-sutar	19.1253004000000004	72.9076668999999953	verified	90	2013-10-28 07:23:43.845996	2013-10-28 07:23:43.845996	THERMO FISHER SCIENTIRIC INDIA LTD	\N	\N	1	\N	\N	\N	\N	\N
87	1092	Scorp Enterprises	f	1092	TRUPTI JAIDEEP MAINKAR	BUSINESS	9821539543/9167200067	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD, TRANSOCEAN HOUSE ,LAKE BOULEVARD RD, HIRANANDANI BUSSINESS PARK POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	trupti-jaideep-mainkar	19.1196772999999993	72.9050809000000015	verified	148	2013-11-13 09:35:18.827369	2013-11-13 09:35:18.827369	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD	\N	\N	1	\N	\N	\N	\N	\N
80	1082	Scorp Enterprises	f	1082	AMARKUMAR PRABHAKAR PANDA	BUSINESS	022-42198800 8879531537/8898552349	SUTLEJ TEXTILE & INDUSTRIES LTD, SOLARIES BLDG NO 1, B-242, 2ND FLR, SOLARIES, SAKI VIHAR RD, POWAI , MUMBAI 72\r\n	INDIA	MAHARASHTRA	MUMBAI	55	amarkumar-prabhakar-panda	19.0759836999999983	72.8776558999999935	verified	138	2013-11-12 07:03:14.872471	2013-11-12 07:03:14.872471	SUTLEJ TEXTILE & INDUSTRIES LTD	\N	\N	1	\N	\N	\N	\N	\N
86	1088	Scorp Enterprises	f	1088	MR YASHAVANT BAVISKAR	BUSINESS	66620566 / 9820286256/ 9833122485	EMERSON PROCESS MANAGEMENT, DELPHI, B WING, 601-603 HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-yashavant-baviskar	19.1253004000000004	72.9076668999999953	verified	144	2013-11-13 09:29:39.377986	2013-11-13 09:29:39.377986	EMERSON PROCESS MANAGEMENT	\N	\N	1	\N	\N	\N	\N	\N
88	1093	Scorp Enterprises	f	1093	JAYASHRI MAHESH DABHOLKAR	BUSINESS	9820868260	PETROFAC ENGINEERING INDIA P LTD, 7TH FLR, VENTURA CENTRAL AVENUE, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	jayashri-mahesh-dabholkar	19.0759836999999983	72.8776558999999935	verified	149	2013-11-13 09:37:14.551697	2013-11-13 09:37:14.551697	PETROFAC ENGINEERING INDIA P LTD	\N	\N	1	\N	\N	\N	\N	\N
67	1059	Scorp Enterprises	f	1059	LAKSHMI KARTHIK	BUSINESS	33423265 / 9892078887	CRISIL LTD, RATINGS 4TH FLOOR, CRISIL HOUSE, HIRANDANI B PARK, POWAI, BAYER HOUSE, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	lakshmi-karthik	19.1253004000000004	72.9076668999999953	verified	114	2013-10-30 08:04:05.940941	2013-10-30 08:04:05.940941	CRISIL LTD	\N	\N	1	\N	\N	\N	\N	\N
71	1067	Scorp Enterprises	f	1067	MR SEJAL GUNVATRAI DESAI	BUSINESS	9925038391/9925032391	GODREJ CONSUMER PRODUCTS LTD, PIROJSHAYAGAR, EASTERN EXPRESS HIGHWAY, VIKHROLI E, MUMBAI 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-sejal-gunvatrai-desai	19.0852663999999983	72.9401508999999919	verified	122	2013-10-30 08:18:15.542985	2013-10-30 08:18:15.542985	GODREJ CONSUMER PRODUCTS LTD	\N	\N	1	\N	\N	\N	\N	\N
72	1068	Scorp Enterprises	f	1068	SHRI DIGAT DILIPBHAI TRIVEDI	BUSINESS	022-30519400 / 9820608212	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	INDIA	MAHARASHTRA	MUMBAI	55	shri-digat-dilipbhai-trivedi	19.1063666999999988	72.8899466000000018	verified	123	2013-10-30 08:19:24.169603	2013-10-30 08:19:24.169603	INDIAN REGISTER OF SHIPPING	\N	\N	1	\N	\N	\N	\N	\N
205	1268	Scorp Enterprises	f	1268	PRADEEP S SINGH	BUSINESS		WILLLS PROCESSING SERVICS INDIA PVT LTD, PLAT NO 6, GODREJ & BOYCE CO COMPOUND, PIRIJSHANAGAR LBS MARG, VIKHROLI WEST 400079\r\n	INDIA	MAHARASHTRA	MUMBAI	58	pradeep-s-singh	19.106494399999999	72.9228830999999929	submitted	352	2014-01-21 12:48:51.525898	2014-01-21 12:48:51.525898	WILLLS PROCESSING SERVICS INDIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
206	1269	Scorp Enterprises	f	1269	CHETAN AMBADAS KAPSE	BUSINESS		TOYO ENGINEERING INDIA LTD, TOYO TECHNOLOGY CENTRE, 71, KANJUR VILLAGE ROAD, KANJURMARG E, MUMBAI 42\r\n	INDIA	MAHARASHTRA	MUMBAI	39	chetan-ambadas-kapse	19.0759836999999983	72.8776558999999935	submitted	353	2014-01-21 12:50:24.453009	2014-01-21 12:50:24.453009	TOYO ENGINEERING INDIA LTD	\N	\N	\N	\N	\N	\N	\N	\N
90	1095	Scorp Enterprises	f	1095	MRS SEEMA NAIR	BUSINESS	9004023243/ 9967971480	PAWAR PUBLIC SCHOOL, LBS ROAD, NEAR DREAMS MALL, BANDUP WEST, MUMBAI\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mrs-seema-nair	19.0176169000000002	72.8561287999999934	verified	151	2013-11-18 05:55:56.846399	2013-11-18 05:55:56.846399	PAWAR PUBLIC SCHOOL	\N	\N	1	\N	\N	\N	\N	\N
207	1272	Scorp Enterprises	f	1272	JYOTI GOPICHAND KAMBLE	BUSINESS		EXCHANGING SOLUTION LTD, 303/A WING, 3RD FLOOR, ASHAR IT PARK, RD 16,WAGLE ESTATE\r\n	INDIA	MAHARASHTRA	MUMBAI	69	jyoti-gopichand-kamble	19.0759836999999983	72.8776558999999935	submitted	356	2014-01-21 12:56:49.125088	2014-01-21 12:56:49.125088	EXCHANGING SOLUTION LTD	\N	\N	\N	\N	\N	\N	\N	\N
168	1232	Scorp Enterprises	f	1232	JAYSHEREE SUNIL SAHODA	BUSINESS	9821163247	MANKHURD POLICE STATION MANKHURD \r\n	INDIA	maharashtra	mumbai	60	jaysheree-sunil-sahoda	19.0523428999999993	72.9331076999999937	verified	294	2013-12-09 11:32:20.074339	2013-12-09 11:32:20.074339	MANKHURD POLICE STATION	\N	\N	1	\N	\N	\N	\N	\N
231	1302	Scorp Enterprises	f	1302	RAGUL SELVAM NADAR	BUSINESS		QUALITY KIOSK TECHNOLOGIES PVT LTD, 201-205, BLDG NO 2, SECTOR 3, MILLENIUM BUSINESS PARK, MAHAPE, NAVI MUMBAI 400709\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	77	ragul-selvam-nadar	19.0997616999999984	73.0021533999999974	submitted	386	2014-02-01 06:52:20.396122	2014-02-01 06:52:20.396122	QUALITY KIOSK TECHNOLOGIES PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
232	1303	Scorp Enterprises	f	1303	AMIT ARUN PARAB	BUSINESS		BAKER HUGHES, 203-B WING 2ND FLR, RELIABLE TECH PARK, TTC IND AREA AIROLI, NAVI MUMBAI 708\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	76	amit-arun-parab	19.0330487999999995	73.0296625000000006	submitted	387	2014-02-01 06:54:12.802087	2014-02-01 06:54:12.802087	BAKER HUGHES	\N	\N	\N	\N	\N	\N	\N	\N
233	1304	Scorp Enterprises	f	1304	RAMRAJ GAJRAJ GUPTA 	BUSINESS		FINO PAY TECH LTD, FDR BUILDING, PLOT NO A/239, MIDC MAHAPE, TTC INDUSTRIAL AREA, NAVI MUMBAI 400701 PH NO 41143058\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	72	ramraj-gajraj-gupta	19.0330487999999995	73.0296625000000006	submitted	388	2014-02-01 06:55:22.764986	2014-02-01 06:55:22.764986	FINO PAY TECH LTD	\N	\N	\N	\N	\N	\N	\N	\N
234	1305	Scorp Enterprises	f	1305	SANDEEP BAPUSO BHILAWADE	BUSINESS		IGATE GLOBAL SOLUTIONS LTD, IT-1, IT-2, TTC INDUSTRIAL AREA, THANE BELAPUR ROAD, AIROLI, NAVI MUMBAI 400708\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	8	sandeep-bapuso-bhilawade	19.1598725999999999	72.99920130000001	submitted	389	2014-02-01 06:56:52.673887	2014-02-01 06:56:52.673887	IGATE GLOBAL SOLUTIONS LTD	\N	\N	\N	\N	\N	\N	\N	\N
235	1306	Scorp Enterprises	f	1306	VIJAY VILAS CHAVAN	BUSINESS		IGATE, UNIT NO 301 & 401, GIGAPLEX, PLOT IT-5, MIDC, AIROLI, NAVI MUMBAI\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	73	vijay-vilas-chavan	19.0330487999999995	73.0296625000000006	submitted	390	2014-02-01 07:00:21.676287	2014-02-01 07:00:21.676287	IGATE	\N	\N	\N	\N	\N	\N	\N	\N
236	1307	Scorp Enterprises	f	1307	ARUN KUMAR PANDEY	BUSINESS		SIEMENS LIMITED, SIEMENS REAL ESTATE, KALWA WORKS, THANE BELAPUR ROAD, AIROLI, OPP AIROLI RAILWAY STATION, NAVI MUMBAI 400708\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	76	arun-kumar-pandey	19.1598725999999999	72.99920130000001	submitted	391	2014-02-01 07:01:43.55757	2014-02-01 07:01:43.55757	SIEMENS LIMITED	\N	\N	\N	\N	\N	\N	\N	\N
91	1099	Scorp Enterprises	f	1099	SUJATA SUDHAKAR MALUSARE (993)	BUSINESS	022-25165894 / 9819204202	THE NEW INDIA ASSURANCE CO LTD, GHATKOPAR JYOTI CHEMBERS KHOT LANE, GHATKOPER WEST MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	57	sujata-sudhakar-malusare-993	19.0176169000000002	72.8561287999999934	verified	155	2013-11-18 05:59:17.368902	2013-11-18 05:59:17.368902	THE NEW INDIA ASSURANCE CO LTD	\N	\N	1	\N	\N	\N	\N	\N
98	1108	Scorp Enterprises	f	1108	RAJENDRAKUMAR JASWANTSINGH THAKUR 	BUSINESS	9820724436	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, LBS MARG, VIKHROLI(W),MUMBAI-79\r\n	INDIA	MAHARASHTRA	MUMBAI	58	rajendrakumar-jaswantsingh-thakur	19.0759836999999983	72.8776558999999935	verified	165	2013-11-19 07:07:42.984446	2013-11-19 07:07:42.984446	CAPGEMINI INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
95	1103	Scorp Enterprises	f	1103	Mrs. SUMEDHA SUNEET KODNANI.	BUSINESS	61260128 / 9833066077	J.P.MORGAN SERVICES INDIA PVT LTD. L &T BUSINESS PARK,8 TH FLR,GATE-5,SAKI VIHAR ROAD,POWAI,MUMBAI-400072.\r\n	INDIA	MAHARASHTRA	MUMBAI	55	mrs-sumedha-suneet-kodnani	19.1063666999999988	72.8899466000000018	verified	159	2013-11-19 07:01:30.937531	2013-11-19 07:01:30.937531	J.P.MORGAN SERVICES INDIA PVT LTD.	\N	\N	1	\N	\N	\N	\N	\N
97	1107	Scorp Enterprises	f	1107	DEVESH ARVIND ACHARYA ( 997)	BUSINESS	022-40430430 / 9820724448	GENERAL MILLS INDIA PVT LTD, I.T 9TH FLOOR, HIRANANDANI GARDEN POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	59	devesh-arvind-acharya-997	19.1153797999999995	72.9091435999999931	verified	164	2013-11-19 07:06:20.302664	2013-11-19 07:06:20.302664	GENERAL MILLS INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
237	1310	Scorp Enterprises	f	1310	ANJAN KUMAR MUKHOPADHYAY	BUSINESS		RELIANCE TECHNOLOGY GROUP, RELIANCE CORPORATE PARK, 7B, GROUND FLOOR, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	72	anjan-kumar-mukhopadhyay	19.1264800999999984	73.0110095999999942	submitted	394	2014-02-01 07:08:19.592664	2014-02-01 07:08:19.592664	RELIANCE TECHNOLOGY GROUP	\N	\N	\N	\N	\N	\N	\N	\N
238	1311	Scorp Enterprises	f	1311	VIJAYANAND NILKANTHRAO GAJBHIYE	BUSINESS		ACCENTURE, BLDG 14, 3RD FLOOR, MINDSPACE IT PARK, THANE BELAPUR ROAD, AIROLI, NAVI MUMBAI\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	72	vijayanand-nilkanthrao-gajbhiye	19.0330487999999995	73.0296625000000006	submitted	395	2014-02-01 07:18:36.843235	2014-02-01 07:18:36.843235	ACCENTURE	\N	\N	\N	\N	\N	\N	\N	\N
239	1312	Scorp Enterprises	f	1312	SWETA PRAHRAJ	BUSINESS		SIEMENS LTD, 8TH FLR, KALWA WORKS , R&D BLDG, THANE BELAPUR ROAD, THANE\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	74	sweta-prahraj	19.1934180000000012	72.9880539999999911	submitted	396	2014-02-01 07:19:43.056531	2014-02-01 07:19:43.056531	SIEMENS LTD	\N	\N	\N	\N	\N	\N	\N	\N
240	1313	Scorp Enterprises	f	1313	MR VINOD MENON	BUSINESS		"L & T INFOTECH LTD PLOT NO-EL 200, TTC ELECTRONIC ZONE, SHIL MAHAPE ROAD, NAVI MUMBAI-400710\r\n"\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	77	mr-vinod-menon	19.0330487999999995	73.0296625000000006	submitted	397	2014-02-01 07:20:52.156109	2014-02-01 07:20:52.156109	L & T INFOTECH LTD	\N	\N	\N	\N	\N	\N	\N	\N
100	1110	Scorp Enterprises	f	1110	MAHADEVAN VISHWANATHAN	BUSINESS	022-67557000 / 9819804045 	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND LBS MARG, MUMBAI 79\r\n	INDIA			1	mahadevan-vishwanathan	\N	\N	verified	167	2013-11-20 08:15:34.38436	2013-11-20 08:15:34.38436	CAPGEMINI INDIA PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
103	1114	Scorp Enterprises	f	1114	ASHOK VITTAL KUNDER	BUSINESS	9833361263	WNS GLOBAL SERVICES P LTD, GATE NO 4, GODREJ & BOYCE COMPLEX, PHIROJ SHAH NAGAR, VIKHROLI W, MUMBAI 79\r\n	INDIA	MAHARASHTRA	MUMBAI	58	ashok-vittal-kunder	19.0759836999999983	72.8776558999999935	verified	172	2013-11-21 06:47:20.554861	2013-11-21 06:47:20.554861	WNS GLOBAL SERVICES P LTD	\N	\N	1	\N	\N	\N	\N	\N
208	1278	Scorp Enterprises	f	1278	MR VARADHARAJAN CHELLAPPA	BUSINESS		LANDMAR SYSREMS & SOLUTIONS PVT LTD, 405 ARENJA CHAMBERS ,II SECTOR 15, CBD BELAPUR, OPP MCDONALDS, NAVI MUMBAI \r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	69	mr-varadharajan-chellappa	19.0330487999999995	73.0296625000000006	submitted	362	2014-01-27 07:20:17.998171	2014-01-27 07:20:17.998171	LANDMAR SYSREMS & SOLUTIONS PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
210	1280	Scorp Enterprises	f	1280	MRS MONIKA SACHIN GHARAT	BUSINESS		APPJAY SCHOOL, SEC 15, NERUL EAST 400706\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	75	mrs-monika-sachin-gharat	19.0354212999999994	73.0208889999999968	submitted	364	2014-01-27 07:23:14.485921	2014-01-27 07:23:14.485921	APPJAY SCHOOL	\N	\N	\N	\N	\N	\N	\N	\N
151	1199	Scorp Enterprises	f	1199	DEEPAK MULJI SHETHIA (1086)	BUSINESS	9324025588	BALRAJESHWAR REAL ESTATE, 17 GOLDEN VASANT WILLOWS, VASANT GARDEN, MULUND W, MUMBAI 400080\r\n	INDIA	maharashtra	mumbai	59	deepak-mulji-shethia-1086	19.1694850000000017	72.9490093999999942	verified	260	2013-12-04 09:36:29.278716	2013-12-04 09:36:29.278716	BALRAJESHWAR REAL ESTATE	\N	\N	1	\N	\N	\N	\N	\N
152	1200	Scorp Enterprises	f	1200	RAJNIKANTH MULJI SHETHIA (1086)	BUSINESS	9324025566	BALRAJESHWAR REAL ESTATE PVT LTD, 17 GOLDEN WILLOWS, VASANT GARDEN MULUND W, MUMBAI 400080\r\n	INDIA	maharashtra	mumbai	59	rajnikanth-mulji-shethia-1086	19.1694850000000017	72.9490093999999942	verified	261	2013-12-04 09:40:47.296936	2013-12-04 09:40:47.296936	BALRAJESHWAR REAL ESTATE PVT LTD	\N	\N	1	\N	\N	\N	\N	\N
211	1281	Scorp Enterprises	f	1281	BALKRISHNA KASHINATH PATEL	BUSINESS		SIEMENS LTD, D-41, TTC INDUSTRIAL AREA, MIDC TURBHE, OPP TURBHE TELEPHONE EXCHANGE, NAVI MUMBAI 400705\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	75	balkrishna-kashinath-patel	19.0574665000000003	73.0110095999999942	submitted	365	2014-01-27 07:25:36.230651	2014-01-27 07:25:36.230651	SIEMENS LTD	\N	\N	\N	\N	\N	\N	\N	\N
212	1282	Scorp Enterprises	f	1282	MR. AJAY SALUJA	BUSINESS		YES BANK LTD, GANESH TOWERS, SEC 7, VASHI 400701\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	72	mr-ajay-saluja	19.1264800999999984	73.0110095999999942	submitted	366	2014-01-27 07:28:48.767781	2014-01-27 07:28:48.767781	YES BANK LTD	\N	\N	\N	\N	\N	\N	\N	\N
213	1283	Scorp Enterprises	f	1283	MR. SIMRANJIT SINGH	BUSINESS		PARKER HANNIFIN INDIA PVT LTD, PLOT NO EL 26, TTC INDUSTRIAL AREA, MIDC, MAHAPE, NAVI MUMBAI 400709\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	77	mr-simranjit-singh	19.0997616999999984	73.0021533999999974	submitted	367	2014-01-27 07:32:35.835734	2014-01-27 07:32:35.835734	PARKER HANNIFIN INDIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
214	1285	Scorp Enterprises	f	1285	THAILAMBAL NANDAKUMAR PUSHPAGIRI	BUSINESS		FOCALWORK SOLUTIONS PVT LTD, 501, PLATINUM TECHNO PARK, PLOT NO 17 & 18, SECTOR 30A, VASHI, NAVI MUMBAI 400705\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	75	thailambal-nandakumar-pushpagiri	19.0574665000000003	73.0110095999999942	submitted	369	2014-01-27 07:43:26.377942	2014-01-27 07:43:26.377942	FOCALWORK SOLUTIONS PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
156	1210	Scorp Enterprises	f	1210	SHWETA PRAMOD LAD	BUSINESS	022-4130330 / 9870385820/9870386012	K E M HOSPITAL NURSES HOME, S S RAO ROAD, SURGERY WARD, MUMBAI 400012\r\n	INDIA	maharashtra	mumbai	12	shweta-pramod-lad	18.9978593999999994	72.8367775999999907	verified	271	2013-12-05 07:19:46.567814	2013-12-05 07:19:46.567814	K E M HOSPITAL NURSES HOME	\N	\N	1	\N	\N	\N	\N	\N
216	1287	Scorp Enterprises	f	1287	AJAY RAJARAM SHINDE	BUSINESS		SAMSUNG INDIA ELECTRONICS PVT LTD, THANE BELAPUR ROAD, GHANSOLI, NAVI MUMBAI 400701\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	72	ajay-rajaram-shinde	19.1264800999999984	73.0110095999999942	submitted	371	2014-01-27 07:46:56.350627	2014-01-27 07:46:56.350627	SAMSUNG INDIA ELECTRONICS PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
174	1242	Scorp Enterprises	f	1242	CHANDRAKANT RAJARAM KAKADE (1103)	BUSINESS	022-25994229 / 9969728364/9225600894	A2 NUB NPCIL, ANUSHAKTI NAGAR, BARC, MUMBAI 400094\r\n	INDIA	maharashtra	mumbai	62	chandrakant-rajaram-kakade-1103	19.0266589999999987	72.9283391000000023	verified	304	2013-12-10 06:41:30.196154	2013-12-10 06:41:30.196154	A2 NUB NPCIL	\N	\N	1	\N	\N	\N	\N	\N
217	1288	Scorp Enterprises	f	1288	SHIV PRAKASH L. MISHRA	BUSINESS		"TRANSRAIL LOGISTICS LTD. IST FLOOR, PLOT NO.27, SECTOR, 11 ,CBD BELAPUR, ELLORA BUILDING , NAVI MUMBAI 400614\r\n"\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	71	shiv-prakash-l-mishra	19.0330487999999995	73.0296625000000006	submitted	372	2014-01-27 07:56:29.570589	2014-01-27 07:56:29.570589	TRANSRAIL LOGISTICS LTD	\N	\N	\N	\N	\N	\N	\N	\N
218	1289	Scorp Enterprises	f	1289	MR HARIVIJAY SADANAND RAUT	BUSINESS		DAMCO IDNIA PVT LTD, UNIT NO 802, 8TH FLR, RELIABLE TECH PARK, GUT-31, AIROLI, NAVI MUMBAI 708\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	76	mr-harivijay-sadanand-raut	19.0330487999999995	73.0296625000000006	submitted	373	2014-01-27 07:57:45.329525	2014-01-27 07:57:45.329525	DAMCO IDNIA PVT LTD	\N	\N	\N	\N	\N	\N	\N	\N
209	1279	Scorp Enterprises	f	1279	SMT. PRAJAKTA PRADEEP PEDNEKAR	BUSINESS		SECURITY GUARD BOARD FOR BRIHAN MUMBAI, D-301/ E-301, SANPADA RAILWAY COMPLEX, NAVI MUMBAI 400703.\r\n	INDIA	MAHARASHTRA	NAVI MUMBAI	74	smt-prajakta-pradeep-pednekar	19.0793546999999997	72.99920130000001	verified	363	2014-01-27 07:21:45.122966	2014-01-27 07:21:45.122966	SECURITY GUARD BOARD FOR BRIHAN MUMBAI	\N	\N	\N	\N	\N	\N	\N	\N
113	1137	Scorp Enterprises	f	1137	MEHUL SHANKARLAL THAKKAR (1025)	BUSINESS	022-67324759 / 9004711197	TATA CONSULTANCY SERVICES, 10 FLOOR, KENSINGTON B, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	57	mehul-shankarlal-thakkar-1025	19.1196772999999993	72.9050809000000015	verified	195	2013-11-23 07:24:30.554243	2013-11-23 07:24:30.554243	TATA CONSULTANCY SERVICES	\N	\N	1	\N	\N	\N	\N	\N
215	1286	Scorp Enterprises	f	1286	PRASHANT ANNAPPA SHETTIGAR	BUSINESS		RELAINCE DAIRY FOODS LTD, COMMERCIAL DEPT, RELAINCE CORPORATE PARK, PHASE 4,11TH FLLOR,  A BLOCK, WS 174,  NAVI MUMBAI\r\n	INDIA		NAVI MUMBAI	75	prashant-annappa-shettigar	19.0330487999999995	73.0296625000000006	verified	370	2014-01-27 07:45:05.565258	2014-01-27 07:45:05.565258	RELAINCE DAIRY FOODS LTD	\N	\N	\N	\N	\N	\N	\N	\N
169	1234	Scorp Enterprises	f	1234	MR.SURESH KUMAR BIND 	BUSINESS	67175902 / 9220300221	TATA POWER,TROMBAY THERMAL POWER STATION,MAHUL ROAD,CHEMBUR,MUMBAI - 400074 \r\n	INDIA	maharashtra	mumbai	56	mr-suresh-kumar-bind	19.0258949000000008	72.8899466000000018	verified	296	2013-12-09 11:34:57.073201	2013-12-09 11:34:57.073201	TATA POWER	\N	\N	1	\N	\N	\N	\N	\N
222	1295	Scorp Enterprises	f	1295	HEMANT PRABHAKAR JOSHI	BUSINESS		ESIS HOSPITAL, OFFICE OF ASSISTANT DIRECTOR, HEALTH SERVICES,  COMPOUND, NURSES HOSTEL, MULUND\r\n	INDIA	MAHARASHTRA	MUMBAI	60	hemant-prabhakar-joshi	19.1746738999999984	72.9431038000000029	submitted	379	2014-01-28 10:21:05.788272	2014-01-28 10:21:05.788272	ESIS HOSPITAL	\N	\N	\N	\N	\N	\N	\N	\N
137	1179	Scorp Enterprises	f	1179	Mr. RISHI JAIN	BUSINESS	41272687 / 9833192687	DELOITTE CONSULTING INDIA PVT LTD.FAIRMONT LEVEL-2,HIRANANDANI BUSINESS PARK,POWAI-400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-rishi-jain	19.1253004000000004	72.9076668999999953	verified	239	2013-11-27 07:46:50.318075	2013-11-27 07:46:50.318075	DELOITTE CONSULTING INDIA PVT LTD.	\N	\N	1	\N	\N	\N	\N	\N
225	1299	Scorp Enterprises	f	1299	JOSEPH F FERNANDES	BUSINESS		LARSEN & TOUBRO LTD, NORTH WING, ESP MFG POWAI CAMPUS, GATE 7, SAKI VIHAR ROAD, POWAI, MUMBAI 72\r\n	INDIA	MAHARASHTRA	MUMBAI	57	joseph-f-fernandes	19.0759836999999983	72.8776558999999935	submitted	383	2014-01-28 10:26:52.462648	2014-01-28 10:26:52.462648	LARSEN & TOUBRO LTD	\N	\N	\N	\N	\N	\N	\N	\N
129	1166	Scorp Enterprises	f	1166	SUDAM LAXMAN SHELKE	BUSINESS	9867710087	RABIDI POLICE STATION, SREERANG SOC RD, NR BRINDAVAN SOC, THANE\r\n	INDIA	MAHARASHTRA	thane	72	sudam-laxman-shelke	19.2183306999999992	72.9780896999999982	verified	225	2013-11-26 07:44:25.224156	2013-11-26 07:44:25.224156	RABIDI POLICE STATION	\N	\N	1	\N	\N	\N	\N	\N
145	1188	Scorp Enterprises	f	1188	SWATI HEMANT BEDRE	BUSINESS	9987008310	DEAN ALUMNI CORPORATION RELATIONS, IIT BOMBAY, POWAI\r\n	INDIA	MAHARASHTRA	MUMBAI	57	swati-hemant-bedre	19.1308389000000005	72.9167997999999926	verified	249	2013-11-28 07:05:51.590317	2013-11-28 07:05:51.590317	DEAN ALUMNI CORPORATION RELATIONS	\N	\N	1	\N	\N	\N	\N	\N
144	1187	Scorp Enterprises	f	1187	SHANIDEO NAMDEO JADHAV (1057)	BUSINESS	9769058082	MECHANICAL ENGG. DEPT. IIT BOMBAY, IIT POWAI, MUMBAI 400076\r\n	INDIA	MAHARASHTRA	MUMBAI	57	shanideo-namdeo-jadhav-1057	19.1333650999999989	72.9167211000000037	verified	248	2013-11-28 07:03:36.828955	2013-11-28 07:03:36.828955	MECHANICAL ENGG. IIT BOMBAY	\N	\N	1	\N	\N	\N	\N	\N
224	1298	Scorp Enterprises	f	1298	MR. KACHRU GANPAT KUSHER	BUSINESS		I.I.T. BOMBAY, MAIN BLDG., ACCOUNT SECTION, 2ND FLR., POWAI, MUMBAI 400076.\r\n	INDIA	MAHARASHTRA	MUMBAI	57	mr-kachru-ganpat-kusher	19.1253004000000004	72.9076668999999953	verified	382	2014-01-28 10:24:47.568222	2014-01-28 10:24:47.568222	I.I.T. BOMBAY	\N	\N	\N	\N	\N	\N	\N	\N
223	1296	Scorp Enterprises	f	1296	MR. ANIRBAN SENGUPTA	BUSINESS		GODREJ & BOYCE MFG. LTD., INTERIO DIVISION, PLANT 13 A, VIKHROLI EAST, MUMBAI 400079.\r\n	INDIA	MAHARASHTRA	MUMBAI	58	mr-anirban-sengupta	19.0852663999999983	72.9401508999999919	verified	380	2014-01-28 10:22:20.906388	2014-01-28 10:22:20.906388	GODREJ & BOYCE MFG. LTD	\N	\N	\N	\N	\N	\N	\N	\N
221	1294	Scorp Enterprises	f	1294	RAVINDRA KAUR GUPTA	BUSINESS		CREDIT SUISSE, CITY PARK, CENTRAL AVENUE 5TH FLR, HIRANANDANI BUSINESS PARK, POWAI, MUMBIA 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	ravindra-kaur-gupta	19.0759836999999983	72.8776558999999935	verified	378	2014-01-28 10:17:25.167014	2014-01-28 10:17:25.167014	CREDIT SUISSE	\N	\N	\N	\N	\N	\N	\N	\N
220	1293	Scorp Enterprises	f	1293	VAIBHAV GUPTA	BUSINESS		NOMURA ,9TH FLR FID, HIRANANDANI BUSINESS PLARK, POWAI, MUMBAI 76\r\n	INDIA	MAHARASHTRA	MUMBAI	57	vaibhav-gupta	19.0759836999999983	72.8776558999999935	verified	377	2014-01-28 10:13:48.876585	2014-01-28 10:13:48.876585	NOMURA 	\N	\N	\N	\N	\N	\N	\N	\N
219	1290	Scorp Enterprises	f	1290	PADMANABAN PERUMAL	BUSINESS		CROMPTON CREAVES, TRANSFARMER DEPTT. KANJURMARG EAST, MUMBAI \r\n	INDIA	MAHARASHTRA	MUMBAI	58	padmanaban-perumal	19.0176169000000002	72.8561287999999934	verified	374	2014-01-28 10:09:29.904179	2014-01-28 10:09:29.904179	CROMPTON CREAVES	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('businesses_id_seq', 240, true);


--
-- Data for Name: client_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY client_verifications (id, co_applicant_business_id, tab_id, user_id, customer_id, created_at, updated_at) FROM stdin;
2	2	2	1	\N	2013-11-23 07:19:42.091639	2013-11-23 07:19:42.14107
3	3	1	1	\N	2013-11-23 07:27:02.447216	2013-11-23 07:27:02.467416
4	4	3	1	\N	2013-12-04 09:38:30.289343	2013-12-04 09:38:30.335421
5	5	3	1	\N	2013-12-04 09:42:58.121302	2013-12-04 09:42:58.141332
6	6	1	1	\N	2013-12-05 07:14:14.24256	2013-12-05 07:14:14.26133
7	7	3	1	\N	2013-12-05 07:28:51.464824	2013-12-05 07:28:51.477266
8	8	3	1	\N	2013-12-10 06:40:20.136713	2013-12-10 06:40:22.104102
9	9	1	1	\N	2013-12-13 07:03:16.810851	2013-12-13 07:03:16.865331
10	10	3	1	\N	2014-01-17 07:59:56.476415	2014-01-17 07:59:56.497445
11	11	3	1	\N	2014-02-01 07:04:18.774394	2014-02-01 07:04:18.831809
\.


--
-- Name: client_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_verifications_id_seq', 11, true);


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clients (id, name, created_at, updated_at) FROM stdin;
1	SBI	2014-02-01 11:56:26.310545	2014-02-01 11:56:26.310545
\.


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clients_id_seq', 1, true);


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
10	3	10	\N	\N	\N	2013-11-23 12:15:40.445557	2013-11-23 12:15:40.445557
11	5	11	\N	\N	\N	2013-12-05 05:26:28.448664	2013-12-05 05:26:28.448664
12	5	12	\N	\N	\N	2013-12-05 05:26:29.164689	2013-12-05 05:26:29.164689
13	5	13	\N	\N	\N	2013-12-05 05:26:29.871427	2013-12-05 05:26:29.871427
14	5	14	\N	\N	\N	2013-12-05 05:26:35.9484	2013-12-05 05:26:35.9484
15	5	15	\N	\N	\N	2013-12-05 05:28:56.837525	2013-12-05 05:28:56.837525
16	6	16	\N	\N	\N	2013-12-06 06:32:59.905169	2013-12-06 06:32:59.905169
17	7	17	\N	\N	\N	2013-12-07 07:34:55.999196	2013-12-07 07:34:55.999196
18	8	18	\N	\N	\N	2013-12-12 14:54:39.151684	2013-12-12 14:54:39.151684
\.


--
-- Name: co_applicant_business_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_business_documents_id_seq', 18, true);


--
-- Data for Name: co_applicant_businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_businesses (id, application_ref_no, agency_name, document_required, fh_code, applicant_name, application_status, landmark, address, country, city, state, pincode_id, slug, latitude, longitude, status, customer_id, company_name, created_at, updated_at, pan_number, emp_code, department_id, message, branch_id, client_id, branch_code, area_name) FROM stdin;
7	1212	Scorp Enterprises	f	1212	PRATIBHA BISWAS	BUSINESS	022-61244509 / 9820727624 / 976924911	KITRI M DOONGURS EE COLLEGE,VEER SAVARKAR MARG,DADAR WEST MUMBAI 400022\r\n	INDIA	MUMBAI	MAHARASHTRA	22	pratibha-biswas	19.0408924000000006	72.8663172999999915	verified	273	KITRI M DOONGURS EE COLLEGE	2013-12-05 07:28:42.903103	2013-12-05 07:28:42.903103	\N	\N	\N	\N	\N	\N	\N	\N
8	1241	Scorp Enterprises	f	1241	MANISHA TRIPATHI (1104)	BUSINESS	022-25993967 / 9969541863	NPCIL, NUB, ANUSHAKTI NAGAR, BARC, MUMBAI \r\n	INDIA	MUMBAI	MAHARASHTRA	61	manisha-tripathi-1104	19.0176169000000002	72.8561287999999934	verified	303	NPCIL	2013-12-10 06:40:00.560615	2013-12-10 06:40:00.560615	\N	\N	\N	\N	\N	\N	\N	\N
3	1137	Scorp Enterprises	f	1137	MEGHA GUPTA (1025)	BUSINESS	9004097929	DELOITTE LEVEL 2, HIRANANDANI BUSINES PARK, POWAI, MUMBAI 76\r\n	INDIA	mumbai	maharashtra	57	megha-gupta-1025	19.0759836999999983	72.8776558999999935	verified	195	DELOITTE LEVEL 2	2013-11-23 07:26:40.797609	2013-11-23 07:26:40.797609	\N	\N	\N	\N	\N	\N	\N	\N
10	1259	Scorp Enterprises	f	1259	REKHA LAXMAN TAYADE	BUSINESS		COMMISINOR OFFICE, EOW DEPT, KHAKAR ALI RD, COURT NAKA, THANE\r\n	INDIA	THANA	maharashtra	75	rekha-laxman-tayade	19.2183306999999992	72.9780896999999982	submitted	343	COMMISINOR OFFICE	2014-01-17 07:59:45.351665	2014-01-17 07:59:45.351665	\N	\N	\N	\N	\N	\N	\N	\N
5	1200	Scorp Enterprises	f	1200	PRAKASH SHETHIA (1086)	BUSINESS	9324025577	BALRAJESHWAR REAL ESTATE, 17, GOLDEN WILLOWS, VASANT GARDEN, MULUND W, MUMBAI 400080\r\n	INDIA	MUMBAI	MAHARASHTRA	59	prakash-shethia-1086	19.1694850000000017	72.9490093999999942	verified	261	BALRAJESHWAR REAL ESTATE	2013-12-04 09:42:44.837427	2013-12-04 09:42:44.837427	\N	\N	\N	\N	\N	\N	\N	\N
11	1308	Scorp Enterprises	f	1308	SONAL SUHANE	BUSINESS		STOCK HOLDINGS CAP. OF INDIA LTD, 301, COACHI POINT DR BABASAHEB AMBEDKAR RD, PAEL/OR PLOT NO 5, MIDC MAHAPE, NEW MUMBAI 400710\r\n	INDIA	NAVI MUMBAI	maharashtra	77	sonal-suhane	19.1045893999999983	73.0228172999999998	submitted	392	STOCK HOLDINGS CAP. OF INDIA LTD	2014-02-01 07:04:07.096756	2014-02-01 07:04:07.096756	\N	\N	\N	\N	\N	\N	\N	\N
6	1206	Scorp Enterprises	f	1206	DATTATRAY LAXMAN DEWALE	BUSINESS	9920801186	GODREJ & BOYCE VIKHROLI MUMBAI 400079\r\n	INDIA	MUMBAI	MAHARASHTRA	58	dattatray-laxman-dewale	19.1118957999999992	72.9282467999999966	verified	267	GODREJ & BOYCE	2013-12-05 07:14:05.019782	2013-12-05 07:14:05.019782	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: co_applicant_businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_businesses_id_seq', 11, true);


--
-- Data for Name: co_applicant_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_documents (id, co_applicant_id, photo_file_name, photo_content_type, photo_file_size, created_at, updated_at, co_applicant_servey_id) FROM stdin;
1	\N	2013-12-14_20.59.31.jpg	image/jpeg	394681	2013-12-14 15:30:32.355911	2013-12-14 15:30:32.355911	59
\.


--
-- Name: co_applicant_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_documents_id_seq', 1, true);


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
20	22	1	t	t	2013-11-18	10:52:45	BINDU VARMA	WIFE	3	Married	others	Married	3	1	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	1.50	\N	QUALIFICATION M.B.A.,\r\nDOC VERFIED GAS BILL NO 644226,\r\nAADHAR CARD NO 4343 1140 5220,\r\nTYPE OF LOAN HOME AMNT 1 CR.	\N	Accept	2013-11-18 05:25:51.662707	2013-11-18 05:25:51.662707	\N	1971-05-21		\N		
21	22	1	t	t	2013-11-18	10:55:54	BINDU VARMA	WIFE	3	Married	others	Married	3	1	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	1.50	\N		\N	Accept	2013-11-18 05:26:16.352081	2013-11-18 05:26:16.352081	\N	1971-05-21		\N		
22	19	1	t	t	2013-11-18	10:56:22	SELF		60	\N	others	Married	5	1	2	f	NO	t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	1.30 PM	\N	Electricity Bill 000092290166\r\nTYPE OF LOAN EDUCATION LOAN AMNT 4 LAC	\N	Accept	2013-11-18 05:29:58.388095	2013-11-18 05:29:58.388095	\N	1967-11-18	AYGPM0589C	\N		000092290166
23	23	1	t	t	2013-11-22	11:09:52	bhanu singh	security	16	\N	Graduate	Married	3	3	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	pakka	---\n- ''\n	\N	\N		\N	\N	1:10pm	\N		\N	Accept	2013-11-20 09:59:57.448777	2013-11-22 05:39:58.284438	\N	1965-07-02		\N		
24	25	1	t	t	2013-11-22	16:44:26	self	self	6	Company Accomodation	others	Married	1	0	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:00pm	\N	Tol--home\r\nAmt--42lac	\N	Accept	2013-11-22 11:16:26.24592	2013-11-22 11:16:26.24592	\N	1987-08-15	apwpj9718b	\N		
25	26	3	t	t	2013-11-22	17:07:23	BHASKAR BELOTE	fATHER	24	Owned By Parents	others	Unmarried	5	2	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	3.00 PM	\N	QULFCATION H.S.C PASS ,\r\nTYPE OF LOAN HOME LOAN AMNT 12 LAC	\N	Accept	2013-11-22 11:40:21.008041	2013-11-22 11:40:21.008041	\N	1989-07-02		\N		
26	26	3	t	t	2013-11-22	17:21:09	BHASKAR BELOTE	FATHER	24	Owned By Parents	others	Unmarried	5	2	0	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	QULFCATION IT ENGINEER ,TYPE OF LOAN HOME LOAN AMNT 12 LAC	\N	Accept	2013-11-22 12:12:09.320781	2013-11-22 12:12:09.320781	\N	1989-07-02		\N		
27	24	1	t	t	2013-11-23	17:07:41	self	self	25	\N	others	Married	5	1	3	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- society-board\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:30pm	\N	Tol--education \r\nAmt--3.94lac	\N	Accept	2013-11-23 11:40:54.367665	2013-11-23 11:40:54.367665	\N	1983-06-01	avqps4739p	\N		000057294507
28	31	1	t	t	2013-11-23	17:18:27	self	self	9	Rented	Graduate	Married	2	2	0	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- society-board\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	5:00pm	\N	Tol--home\r\nAmt--40lac\r\nRent exiprd date--jan-2015	\N	Accept	2013-11-23 11:50:57.063132	2013-11-23 11:50:57.063132	\N	1982-03-08	ahfpg7970f	\N		
29	26	3	t	t	2013-11-23	17:22:35	BHASKAR BELOTE	fATHER	24	Owned By Parents	others	Married	5	2	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	3.00 PM	\N	QULFCATION IT ENGINEER ,\r\nTYPE OF LOAN HOME LOAN AMNT 12 LAC	\N	Accept	2013-11-23 11:55:37.562628	2013-11-23 11:55:37.562628	\N	1989-07-02		\N		
30	30	1	t	t	2013-11-23	17:25:56	anirudda thorat 	son	1	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:00pm	\N	Tol--home\r\nAmt--8lac	\N	Accept	2013-11-23 11:57:55.102121	2013-11-23 11:57:55.102121	\N	2013-06-01	abbpt1469n	\N		
31	26	3	\N	\N	2013-11-23	17:36:59			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	Accept	2013-11-23 12:07:07.842924	2013-11-23 12:07:07.842924	\N	2013-11-23		\N		
32	26	3	t	t	2013-11-23	17:37:12	SELF	self	15	\N	others	Married	5	2	0	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N		\N	Accept	2013-11-23 12:08:13.516871	2013-11-23 12:08:13.516871	\N	2013-11-23		\N		
33	26	3	t	t	2013-11-25	12:12:32			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Ration Card,\r\nElectricity Bill,\r\nPassport	\N	Accept	2013-11-25 06:43:43.73708	2013-11-25 06:43:43.73708	\N	2013-11-25		\N		
34	32	3	t	t	2013-11-26	11:27:17	self 		10	Owned By Parents	others	Married	7	4	4	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	3.00 pm	\N	Type of loan -education loan\r\nLoan amt-25 lac	\N	Accept	2013-11-26 06:02:09.954221	2013-11-26 06:02:09.954221	\N	1960-09-04	aaapl7397m	\N		2038848
35	33	3	t	t	2013-11-26	11:36:04	suresh jadhav	father 	36	Owned By Parents	others	Married	6	2	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- neighbour\n- ''\n	Sitting Chawl	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Type of loan -home loan\r\nLoan amt-14 lac	\N	Accept	2013-11-26 06:08:34.437642	2013-11-26 06:08:34.437642	\N	1977-11-12		\N		
36	32	3	\N	\N	2013-11-26	18:54:54	self 		\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	\N	2013-11-26 13:26:23.206552	2013-11-26 13:26:23.206552	\N	1960-09-04		\N		
38	33	3	t	t	2013-11-27	11:59:15	suresh jadhav	father 	36	Owned By Parents	others	Married	6	2	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- neighbour\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Type of loan-home loan\r\nloan amt-14 lac	\N	Accept	2013-11-27 06:32:09.001319	2013-11-27 06:32:09.001319	\N	1977-11-12		\N		
39	33	3	t	t	2013-11-27	12:03:05	suresh jadhav	father 	36	Owned By Parents	others	Married	6	2	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Type of loan-home loan\r\nLoan amt.-14 lac 	\N	Accept	2013-11-27 06:34:48.520377	2013-11-27 06:34:48.520377	\N	1977-11-12		\N		
40	34	3	t	t	2013-11-27	12:05:55	self 		4	Owned By Parents	Post Graduate	Married	6	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Type of loan-home loan\r\nloan amt-25 lac 	\N	Accept	2013-11-27 06:39:19.149228	2013-11-27 06:39:19.149228	\N	1985-02-14	brlps0919r	\N		36003456
37	34	3	t	t	2013-11-27	12:56:35	self 		4	Owned By Parents	others	Married	6	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	other	Easy	pakka	---\n- others\n- ''\n	11	sofa		\N	\N		\N		\N	Accept	2013-11-26 18:14:37.436431	2013-11-27 07:27:24.952783	\N	1985-02-14	brlps0919r	\N		36003456
41	38	1	t	t	2013-11-29	11:31:43	swati bedre	wife	4	\N	\N	Married	5	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- company-board\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:10pm	\N	Tol--home\r\nAmt--19lac	\N	Accept	2013-11-29 06:03:58.472645	2013-11-29 06:03:58.472645	\N	1977-12-20	apipb5665f	\N		
42	39	3	\N	\N	2013-12-05	10:13:23		self	12	\N	others	Unmarried	4	1	2	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- neighbour\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	Type of loan-home loan\r\nloan amt-36.50 lac 	\N	Accept	2013-12-05 04:45:46.135823	2013-12-05 04:45:46.135823	\N	1969-11-23		\N		000055184321
43	41	3	t	t	2013-12-05	10:47:31	mulji sethia	father 	4	Rented	others	Married	11	4	4	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- neighbour\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	Aggriment expire on -2015 	\N	Accept	2013-12-05 05:19:28.281723	2013-12-05 05:19:28.281723	\N	1980-10-03		\N		
44	46	3	t	t	2013-12-06	10:16:57	self 		7	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	Type of loan-home loan\r\nLoan amt-50 lac 	\N	Accept	2013-12-06 04:49:02.824314	2013-12-06 04:49:02.824314	\N	1970-05-11		\N		
46	45	3	t	t	2013-12-06	10:32:18	self 	self	25	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	3.00 pm	\N	Type of loan-home loan\r\nLoan amt-1 cr	\N	Accept	2013-12-06 05:07:22.979947	2013-12-06 05:07:22.979947	\N	1966-08-06		\N		
47	46	3	t	t	2013-12-06	10:39:05	self 	self	7	\N	Graduate	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	1.00pm	\N	Type of loan-hom loan\r\nloan amt-50 lac 	\N	Accept	2013-12-06 05:11:04.484642	2013-12-06 05:11:04.484642	\N	1970-05-11		\N		
48	46	3	t	t	2013-12-06	10:41:17	self 	self	7	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	Multitanent House	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	1.00pm	\N	Type of loan-home loan\r\nloan amt-50 lac 	\N	Accept	2013-12-06 05:13:02.836185	2013-12-06 05:13:02.836185	\N	1970-05-11		\N		
49	44	1	t	t	2013-12-06	11:57:44	sarita dewale	wife	14	Company Accomodation	\N	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	1:00pm	\N	Tol--edu\r\nAmt--7.5lac\r\nAdhaar id---645446885333	\N	Accept	2013-12-06 06:29:49.185178	2013-12-06 06:29:49.185178	\N	1960-06-30		\N		
50	43	1	t	t	2013-12-06	12:14:25	rekha lamge	aunty	2	\N	others	Married	4	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	12:30pm	\N		\N	Accept	2013-12-06 06:46:20.587481	2013-12-06 06:46:20.587481	\N	1978-04-15		\N		7107407874
45	45	3	t	t	2013-12-06	12:50:03	self 	self	25	\N	others	Married	4	2	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	other	Easy	pakka	---\n- ''\n	\N	sofa		\N	\N		\N		\N	Accept	2013-12-06 04:55:18.503338	2013-12-06 07:20:50.385997	\N	1966-08-06		\N		
51	46	3	t	t	2013-12-07	13:05:15	joydeep	hasband	7	\N	others	Married	4	2	2	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N	Type of loan-home loan\r\nloan amt-50 lac 	\N	Accept	2013-12-07 07:37:09.908633	2013-12-07 07:37:09.908633	\N	1970-05-11		\N		
52	51	3	t	t	2013-12-11	09:25:38	renuka	neighbour	10	Company Accomodation	others	Married	2	2	1	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N		\N		\N	Accept	2013-12-11 03:56:45.331103	2013-12-11 03:56:45.331103	\N	2013-12-11		\N		
53	49	1	t	t	2013-12-11	09:26:28	self	self	12	Company Accomodation	others	Married	3	2	1	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- company-board\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	2:40pm	\N	Tol--home\r\nAmt--12lac	\N	Accept	2013-12-11 03:58:38.176866	2013-12-11 03:58:38.176866	\N	1960-08-21	acnpr9338k	\N		
54	53	1	t	t	2013-12-11	16:45:27	mina thakkar	mother&law	8	\N	others	Married	5	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- society-board\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	4:30pm	\N	Tol--home\r\nAmt--30la	\N	Accept	2013-12-11 11:18:01.066033	2013-12-11 11:18:01.066033	\N	1982-12-28	atrpk3309a	\N		000050150097
55	52	1	t	t	2013-12-11	16:51:28	chandrashkhar	husband	5	\N	others	Married	4	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	12:00pm	\N	Tol--home\r\nAmt..35lac	\N	Accept	2013-12-11 11:24:11.457386	2013-12-11 11:24:11.457386	\N	1978-03-19	aixpk2335h	\N		100903588388
56	52	1	t	t	2013-12-11	16:51:28	chandrashkhar	husband	5	\N	others	Married	4	1	2	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N	12:00pm	\N	Tol--home\r\nAmt..35lac	\N	Accept	2013-12-11 11:24:22.218507	2013-12-11 11:24:22.218507	\N	1978-03-19	aixpk2335h	\N		100903588388
57	51	3	t	t	2013-12-12	20:15:18	renuka	neighbour	10	Company Accomodation	others	Married	2	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	3.00 pm	\N		\N	\N	2013-12-12 14:46:49.926453	2013-12-12 14:46:49.926453	\N	1981-05-04		\N		
58	51	3	t	t	2013-12-12	20:25:02	renuka	neighbour	10	Company Accomodation	others	Married	2	2	1	f		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	clean	\N	\N	\N	3.00 pm	\N		\N	Accept	2013-12-12 14:56:22.143128	2013-12-12 14:56:22.143128	\N	1982-07-04		\N		
59	26	3	\N	\N	2013-12-14	20:58:43			\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N		\N	Accept	2013-12-14 15:30:32.349063	2013-12-14 15:30:32.349063	\N	2013-12-14		\N		
60	53	1	f	\N	2014-01-09	21:50:34	self		\N	\N	\N	\N	\N	\N	\N	f		f	\N	\N	\N	\N	\N	Polite	Positive	---\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Ration Card	\N	\N	2014-01-09 16:22:05.24574	2014-01-09 16:22:05.24574	\N	2014-01-09	yterui	\N		
61	58	1	t	t	2014-01-28	16:19:08	taramati	mother in law	25	\N	\N	Self Owned	\N	\N	\N	t		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Remark--third partybis comfrmation	\N	Accept	2014-01-28 10:50:44.779721	2014-01-28 10:50:44.779721	\N	2014-01-28		\N		
62	58	1	t	t	2014-01-28	16:19:08	taramati	mother in law	25	\N	\N	Self Owned	\N	\N	\N	t		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Remark--third partybis comfrmation	\N	Accept	2014-01-28 10:50:56.330352	2014-01-28 10:50:56.330352	\N	2014-01-28		\N		
63	58	1	t	t	2014-01-28	16:19:08	taramati	mother in law	25	\N	\N	Self Owned	\N	\N	\N	t		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	\N	\N	\N	\N		\N	Remark--third partybis comfrmation	\N	Accept	2014-01-28 10:51:33.62847	2014-01-28 10:51:33.62847	\N	2014-01-28		\N		
64	58	1	t	t	2014-01-30	10:01:55	Taramati	Mother	25	\N	others	Married	4	1	\N	t		t	\N	\N	\N	\N	\N	Polite	Positive	---\n- name-plate\n- ''\n	\N	\N	Easy	\N	\N	\N	sofa	\N	\N	\N	2.00 PM	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-30 04:35:36.60853	2014-01-30 04:35:36.60853	\N	2014-08-28	CDGPS9547F	\N		
\.


--
-- Name: co_applicant_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_serveys_id_seq', 64, true);


--
-- Data for Name: co_applicant_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicant_verifications (id, co_applicant_id, user_id, customer_id, tab_id, created_at, updated_at) FROM stdin;
48	55	1	\N	3	2014-01-17 07:54:54.513171	2014-01-17 07:54:54.538432
49	56	1	\N	3	2014-01-17 07:59:10.065072	2014-01-17 07:59:10.090554
51	42	1	\N	3	2014-01-21 13:40:10.646453	2014-01-21 13:40:10.671041
50	57	1	\N	1	2014-01-21 12:55:29.231426	2014-01-25 12:32:14.12114
52	58	1	\N	1	2014-01-28 10:11:07.184853	2014-01-28 10:11:07.203785
53	59	1	\N	3	2014-02-01 07:03:18.794303	2014-02-01 07:03:18.813425
54	60	1	\N	3	2014-02-01 07:06:11.559648	2014-02-01 07:06:11.582897
\.


--
-- Name: co_applicant_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_verifications_id_seq', 54, true);


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
10	3	N/A	\N	\N	t	senior asst	2013-11-23	17:42:57	self				9004097929	\N	f	DELOITTE LEVEL 2	Private LTD.	\N	\N	\N	\N	\N	\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	Security	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--40lac\r\nEmoly id--344307\r\nPan--ahfpg7970f(8/3/82)\r\nYe of work--5ye\r\nSal--89,000 pm	\N	\N	\N	\N	2013-11-23 12:15:40.418569	2013-11-23 12:15:40.418569	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	si	1
11	5	N/A	\N	\N	t	director 	2013-12-05	10:54:47	self 					7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	Owned	\N	\N	\N	\N	\N	Others	f	\N	\N	f	Others	\N	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-05 05:26:28.422655	2013-12-05 05:26:28.422655	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
12	5	N/A	\N	\N	t	director 	2013-12-05	10:54:47	self 					7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	Owned	\N	\N	\N	\N	\N	Others	f	\N	\N	f	Others	\N	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-05 05:26:29.160409	2013-12-05 05:26:29.160409	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
13	5	N/A	\N	\N	t	director 	2013-12-05	10:54:47	self 					7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	Owned	\N	\N	\N	\N	\N	Others	f	\N	\N	f	Others	\N	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-05 05:26:29.867142	2013-12-05 05:26:29.867142	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
14	5	N/A	\N	\N	t	director 	2013-12-05	10:54:47	self 					7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	Owned	\N	\N	\N	\N	\N	Others	f	\N	\N	f	Others	\N	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-05 05:26:35.945935	2013-12-05 05:26:35.945935	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
15	5	N/A	\N	\N	t	director 	2013-12-05	10:57:47	self 	director 				7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	Owned	\N	\N	\N	\N	\N	Others	f	\N	\N	f	Others	\N	Shop	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Topup loan 	\N	\N	\N	\N	2013-12-05 05:28:56.83341	2013-12-05 05:28:56.83341	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
16	6	N/A	\N	\N	t	worker	2013-12-06	12:00:00	self				9920801186	\N	f	GODREJ & BOYCE	Private LTD.	\N	\N	\N	\N	\N	\N	\N	Permanent	Others	f	\N	\N	t	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAm--7.5lac\r\nEmoly id---90637\r\nAdhaar--645446885333\r\nYe of wr---33ye\r\nSal--32,000pm	\N	\N	\N	\N	2013-12-06 06:32:59.900898	2013-12-06 06:32:59.900898	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	saff assambel	1
17	7	N/A	\N	\N	t	professor	2013-12-07	13:03:38	nitin	peoon				\N	f	KITRI M DOONGURS EE COLLEGE	Others	\N	\N	\N	\N	\N	\N	\N	Permanent	Others	f	\N	\N	f	Others	\N	Others	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Dep-education department 	\N	\N	\N	\N	2013-12-07 07:34:55.993951	2013-12-07 07:34:55.993951	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
18	8	N/A	\N	\N	t	senior exicutive engineer	2013-12-12	20:23:49						\N	\N	NPCIL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-12 14:54:39.126209	2013-12-12 14:54:39.126209	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		3
\.


--
-- Name: co_applicant_work_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicant_work_details_id_seq', 18, true);


--
-- Data for Name: co_applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_applicants (id, applicant_name, agency_name, document_required, fh_code, landmark, country_name, country_state, country_city, slug, status, customer_id, address, latitude, longitude, application_status, created_at, updated_at, contact_number, application_ref_no, pincode_id, state, d_o_b, message, branch_id, client_id, branch_code, area_name) FROM stdin;
55	SMITA KISHOR DAUD	Scorp Enterprises	f	1257		INDIA	MAHARASHTRA	THANE	smita-kishor-daud	submitted	341	A/102 KISHOR PARK, PARSIK NGR, OLD PUNE HIGHWAY, KALWA WEST\r\n	19.2018701000000007	72.9868195999999898	RESIDENTIAL	2014-01-17 07:54:46.238727	2014-01-17 07:54:46.238727	\N	1257	75	\N	\N	\N	\N	\N	\N	\N
56	REKHA LAXMAN TAYADE	Scorp Enterprises	f	1259		INDIA	MAHARASHTRA	THANE	rekha-laxman-tayade	submitted	343	AADITYA BLDG, RNO 1003, 10TH FLOOR,KHAKAR ALI RD THANE\r\n	19.1880544999999998	72.9745618999999976	RESIDENTIAL	2014-01-17 07:58:34.964864	2014-01-17 07:58:34.964864	\N	1259	75	\N	\N	\N	\N	\N	\N	\N
27	ARATI ANIL POPHALE (1028)	Scorp Enterprises	f	1133	9870318150	INDIA	maharashtra	MUMBAI	arati-anil-pophale-1028	ready_for_verification	27	B-602, HILL RESIDENCY, GURU GOVIND SINGH ROAD, AMAR NAGAR, OPP HIGHLAND PARK, MULUND COLONY, MULUND W 82\r\n	\N	\N	RESIDENTIAL	2013-11-23 07:08:39.330108	2013-11-23 07:09:22.355823	\N	1133	59	\N	\N	\N	\N	\N	\N	\N
21	BINDHULAKSHMI PATTADATH (975)	Scorp Enterprises	f	1086	022-25768721 / 9969460084	INDIA	maharashtra	MUMBAI	bindhulakshmi-pattadath-975	ready_for_verification	21	B-52, BUILDING NO 13, LAKE SIDE AREA, IIT POWAI, MUMBAI 400076\r\n	19.1196376000000008	72.9029560000000032	RESIDENTIAL	2013-11-13 09:18:24.801465	2013-11-13 09:21:07.369981	\N	1086	57	\N	\N	\N	\N	\N	\N	\N
57	UTTAM DINAR BANSODE	Scorp Enterprises	f	1271		INDIA	MAHARASHTRA	mumbai	uttam-dinar-bansode	submitted	355	D/2/18,BEST QTRS, ANIL UBHARE MARG, PANT NAGAR, GHATKOPARW\r\n	19.0759836999999983	72.8776558999999935	RESIDENTIAL	2014-01-21 12:55:22.910557	2014-01-21 12:55:22.910557	\N	1271	59	\N	\N	\N	\N	\N	\N	\N
42	PRAKASH SHETHIA (1086)	Scorp Enterprises	f	1200	9324025577	INDIA	maharashtra	mumbai	prakash-shethia-1086	submitted	261	E-103, TEAKWOOD CHS LTD, VASANT GARDEN, MULUND W, MUMBAI 400080\r\n	19.1694850000000017	72.9490093999999942	RESIDENTIAL	2013-12-04 09:42:01.003742	2013-12-04 09:42:01.003742	\N	1200	59	\N	\N	\N	\N	\N	\N	\N
47	POONAM V KHATRY	Scorp Enterprises	f	1216	022-28577126 / 9892648540	INDIA	maharashtra	mumbai	poonam-v-khatry	ready_for_verification	47	A-903, 904, PHASE-2, LAKE PLEASANT OFF AS ROAD, POWAI, NEAR GOPALSHARMA SCHOOL, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	RESIDENTIAL	2013-12-06 07:11:20.732422	2013-12-06 07:12:04.117279	\N	1216	57	\N	\N	\N	\N	\N	\N	\N
59	SONAL SUHANE	Scorp Enterprises	f	1308		INDIA	MAHARASHTRA	NAVI MUMBAI	sonal-suhane	submitted	392	B-503/504, CLASSICS SKYLARK CHS, SECOR-15, PLOT NO 21, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-02-01 07:03:11.419787	2014-02-01 07:03:11.419787	\N	1308	77	\N	\N	\N	\N	\N	\N	\N
60	SADHANA RAM BHAGAT	Scorp Enterprises	f	1309		INDIA	MAHARASHTRA	NAVI MUMBAI	sadhana-ram-bhagat	submitted	393	FLAT NO 102, KOKAN CHSL, PLOT NO 33, SECTOR 15, KOPARKHAIRANE, NEAR GULAB SONS DAIRY, NAVI MUMBAI 400709\r\n	19.0997616999999984	73.0021533999999974	RESIDENTIAL	2014-02-01 07:06:05.113438	2014-02-01 07:06:05.113438	\N	1309	77	\N	\N	\N	\N	\N	\N	\N
58	RESHMA HEMCHANDRA HINGNE	Scorp Enterprises	f	1291		INDIA	MAHARASHTRA	mumbai	reshma-hemchandra-hingne	awaiting_to_get_verified	375	23/9, KAUSTABH CHAM SOC, GAO DEVI RD, SANGHANI ESTATE,GHATKOPAR W\r\n	19.0908063000000006	72.9076668999999953	RESIDENTIAL	2014-01-28 10:11:00.778818	2014-01-28 10:11:00.778818	\N	1291	57	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: co_applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_applicants_id_seq', 60, true);


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
44	147	\N	\N	2013-11-18 05:05:35.744442	2013-11-18 05:05:35.744442	44
45	146	\N	\N	2013-11-18 05:08:35.314934	2013-11-18 05:08:35.314934	45
46	145	\N	\N	2013-11-18 05:12:09.044189	2013-11-18 05:12:09.044189	46
47	142	\N	\N	2013-11-18 05:14:52.463292	2013-11-18 05:14:52.463292	47
48	141	\N	\N	2013-11-18 05:17:47.745413	2013-11-18 05:17:47.745413	48
49	127	\N	\N	2013-11-18 05:19:49.152129	2013-11-18 05:19:49.152129	49
50	125	\N	\N	2013-11-18 05:22:42.192457	2013-11-18 05:22:42.192457	50
51	152	\N	\N	2013-11-18 10:17:44.958631	2013-11-18 10:17:44.958631	51
52	153	\N	\N	2013-11-18 10:20:18.464684	2013-11-18 10:20:18.464684	52
53	154	\N	\N	2013-11-18 10:26:33.272634	2013-11-18 10:26:33.272634	53
54	156	\N	\N	2013-11-19 11:13:06.322887	2013-11-19 11:13:06.322887	54
55	168	\N	\N	2013-11-20 09:57:31.216261	2013-11-20 09:57:31.216261	55
56	167	\N	\N	2013-11-20 10:01:46.422022	2013-11-20 10:01:46.422022	56
57	172	\N	\N	2013-11-21 09:25:06.350103	2013-11-21 09:25:06.350103	57
58	180	\N	\N	2013-11-22 11:18:07.411748	2013-11-22 11:18:07.411748	58
59	173	\N	\N	2013-11-22 11:20:42.080811	2013-11-22 11:20:42.080811	59
60	178	\N	\N	2013-11-22 11:23:32.890551	2013-11-22 11:23:32.890551	60
61	177	\N	\N	2013-11-22 11:24:51.932273	2013-11-22 11:24:51.932273	61
62	188	\N	\N	2013-11-22 11:37:09.381512	2013-11-22 11:37:09.381512	62
63	179	\N	\N	2013-11-23 11:44:37.824141	2013-11-23 11:44:37.824141	63
64	205	\N	\N	2013-11-23 11:47:10.422263	2013-11-23 11:47:10.422263	64
65	195	\N	\N	2013-11-23 11:48:09.576065	2013-11-23 11:48:09.576065	65
66	204	\N	\N	2013-11-23 11:49:31.20061	2013-11-23 11:49:31.20061	66
67	203	\N	\N	2013-11-23 11:52:27.992409	2013-11-23 11:52:27.992409	67
68	191	\N	\N	2013-11-23 11:53:47.850529	2013-11-23 11:53:47.850529	68
69	194	\N	\N	2013-11-23 11:55:46.147769	2013-11-23 11:55:46.147769	69
70	193	\N	\N	2013-11-23 12:00:41.788972	2013-11-23 12:00:41.788972	70
71	192	\N	\N	2013-11-23 12:02:52.603642	2013-11-23 12:02:52.603642	71
72	189	\N	\N	2013-11-23 12:06:44.897862	2013-11-23 12:06:44.897862	72
73	210	\N	\N	2013-11-25 08:20:48.996907	2013-11-25 08:20:48.996907	73
74	211	\N	\N	2013-11-26 05:35:03.958683	2013-11-26 05:35:03.958683	74
75	206	\N	\N	2013-11-26 05:56:51.124432	2013-11-26 05:56:51.124432	75
76	208	\N	\N	2013-11-26 06:05:53.160469	2013-11-26 06:05:53.160469	76
77	217	\N	\N	2013-11-26 12:23:05.651901	2013-11-26 12:23:05.651901	77
78	226	\N	\N	2013-11-26 13:37:53.363983	2013-11-26 13:37:53.363983	78
79	224	\N	\N	2013-11-26 17:59:32.631199	2013-11-26 17:59:32.631199	79
80	224	\N	\N	2013-11-26 18:25:59.58446	2013-11-26 18:25:59.58446	80
81	225	\N	\N	2013-11-27 06:18:52.205398	2013-11-27 06:18:52.205398	81
82	230	\N	\N	2013-11-27 10:06:20.888143	2013-11-27 10:06:20.888143	82
83	239	\N	\N	2013-11-27 10:08:14.576107	2013-11-27 10:08:14.576107	83
84	228	\N	\N	2013-11-27 10:09:11.455621	2013-11-27 10:09:11.455621	84
85	241	\N	\N	2013-11-28 09:03:27.927407	2013-11-28 09:03:27.927407	85
86	241	\N	\N	2013-11-28 09:03:31.548876	2013-11-28 09:03:31.548876	86
88	249	\N	\N	2013-11-29 06:01:31.901902	2013-11-29 06:01:31.901902	88
89	248	\N	\N	2013-11-29 06:06:50.178129	2013-11-29 06:06:50.178129	89
90	258	\N	\N	2013-12-05 05:09:10.015358	2013-12-05 05:09:10.015358	90
91	258	\N	\N	2013-12-05 05:09:11.165166	2013-12-05 05:09:11.165166	91
92	258	\N	\N	2013-12-05 05:10:55.226371	2013-12-05 05:10:55.226371	92
93	261	\N	\N	2013-12-05 05:16:49.846131	2013-12-05 05:16:49.846131	93
94	260	\N	\N	2013-12-05 05:22:14.240756	2013-12-05 05:22:14.240756	94
95	273	\N	\N	2013-12-06 04:46:38.387171	2013-12-06 04:46:38.387171	95
96	271	\N	\N	2013-12-06 04:52:49.30406	2013-12-06 04:52:49.30406	96
97	272	\N	\N	2013-12-06 04:58:18.596014	2013-12-06 04:58:18.596014	97
98	267	\N	\N	2013-12-06 06:27:09.331959	2013-12-06 06:27:09.331959	98
99	264	\N	\N	2013-12-06 06:41:33.311888	2013-12-06 06:41:33.311888	99
100	263	\N	\N	2013-12-06 06:44:02.011767	2013-12-06 06:44:02.011767	100
101	265	\N	\N	2013-12-06 06:48:35.165877	2013-12-06 06:48:35.165877	101
102	266	\N	\N	2013-12-06 09:42:42.199888	2013-12-06 09:42:42.199888	102
103	268	\N	\N	2013-12-06 09:45:08.06048	2013-12-06 09:45:08.06048	103
104	276	\N	\N	2013-12-06 10:28:57.786284	2013-12-06 10:28:57.786284	104
105	279	\N	\N	2013-12-07 07:31:34.514459	2013-12-07 07:31:34.514459	105
106	278	\N	\N	2013-12-07 09:57:27.324339	2013-12-07 09:57:27.324339	106
107	278	\N	\N	2013-12-07 09:57:30.504936	2013-12-07 09:57:30.504936	107
108	278	\N	\N	2013-12-07 09:57:40.205537	2013-12-07 09:57:40.205537	108
109	289	\N	\N	2013-12-09 04:41:49.990319	2013-12-09 04:41:49.990319	109
110	287	\N	\N	2013-12-09 04:45:26.623923	2013-12-09 04:45:26.623923	110
111	286	\N	\N	2013-12-09 04:48:09.830869	2013-12-09 04:48:09.830869	111
112	285	\N	\N	2013-12-09 04:50:48.43081	2013-12-09 04:50:48.43081	112
113	283	\N	\N	2013-12-10 03:44:57.781339	2013-12-10 03:44:57.781339	113
114	283	\N	\N	2013-12-10 03:47:25.49601	2013-12-10 03:47:25.49601	114
115	302	\N	\N	2013-12-11 03:53:24.336911	2013-12-11 03:53:24.336911	115
116	303	\N	\N	2013-12-11 03:55:23.536442	2013-12-11 03:55:23.536442	116
117	298	\N	\N	2013-12-11 04:01:34.498415	2013-12-11 04:01:34.498415	117
118	296	\N	\N	2013-12-11 04:04:27.991269	2013-12-11 04:04:27.991269	118
119	308	\N	\N	2013-12-11 11:15:11.336244	2013-12-11 11:15:11.336244	119
120	307	\N	\N	2013-12-11 11:20:49.077957	2013-12-11 11:20:49.077957	120
121	309	\N	\N	2013-12-11 11:27:33.00878	2013-12-11 11:27:33.00878	121
123	304	\N	\N	2013-12-12 14:38:21.188459	2013-12-12 14:38:21.188459	123
124	288	\N	\N	2013-12-12 14:40:53.03328	2013-12-12 14:40:53.03328	124
125	315	\N	\N	2013-12-12 14:45:05.057524	2013-12-12 14:45:05.057524	125
126	294	\N	\N	2013-12-12 14:58:25.687835	2013-12-12 14:58:25.687835	126
127	295	\N	\N	2013-12-12 14:59:35.754916	2013-12-12 14:59:35.754916	127
128	295	\N	\N	2013-12-12 15:01:56.021366	2013-12-12 15:01:56.021366	128
129	295	\N	\N	2013-12-12 15:02:04.952879	2013-12-12 15:02:04.952879	129
130	346	\N	\N	2014-01-21 14:10:14.648202	2014-01-21 14:10:14.648202	130
131	346	\N	\N	2014-01-21 14:10:15.514814	2014-01-21 14:10:15.514814	131
132	346	\N	\N	2014-01-21 14:10:31.454323	2014-01-21 14:10:31.454323	132
133	346	\N	\N	2014-01-21 14:11:03.43282	2014-01-21 14:11:03.43282	133
134	346	\N	\N	2014-01-21 14:11:26.145011	2014-01-21 14:11:26.145011	134
135	346	\N	\N	2014-01-21 14:12:00.700369	2014-01-21 14:12:00.700369	135
136	359	\N	\N	2014-01-27 08:15:09.481402	2014-01-27 08:15:09.481402	136
137	366	\N	\N	2014-01-27 11:51:44.809542	2014-01-27 11:51:44.809542	137
138	360	\N	\N	2014-01-28 05:52:00.752427	2014-01-28 05:52:00.752427	138
139	361	\N	\N	2014-01-28 05:54:51.643782	2014-01-28 05:54:51.643782	139
140	375	\N	\N	2014-01-28 10:48:55.665191	2014-01-28 10:48:55.665191	140
141	376	\N	\N	2014-01-28 11:02:24.203109	2014-01-28 11:02:24.203109	141
142	380	\N	\N	2014-01-29 04:33:19.16179	2014-01-29 04:33:19.16179	142
143	382	\N	\N	2014-01-29 04:45:29.454745	2014-01-29 04:45:29.454745	143
144	165	2014-01-29_16.45.45.jpg	\N	2014-01-29 11:20:13.595716	2014-01-29 11:20:13.595716	144
\.


--
-- Name: customer_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_documents_id_seq', 144, true);


--
-- Data for Name: customer_verifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer_verifications (id, user_id, customer_id, tab_id, created_at, updated_at, verify_co_applicant_address_1, verify_co_applicant_address_2, work_servey_id) FROM stdin;
108	1	109	2	2013-10-29 08:16:27.106576	2013-10-29 08:16:27.130414	\N	\N	\N
140	1	140	2	2013-11-12 07:06:14.016336	2013-11-12 07:06:14.042743	\N	\N	\N
56	1	57	1	2013-10-21 09:28:10.590337	2013-10-21 09:28:10.601232	\N	\N	\N
335	1	338	3	2014-01-17 07:45:42.176044	2014-01-17 07:45:42.192071	\N	\N	\N
58	1	59	1	2013-10-21 09:30:34.777364	2013-10-21 09:30:34.798653	\N	\N	\N
141	1	141	1	2013-11-13 09:15:09.515669	2013-11-13 09:15:09.536909	\N	\N	\N
60	1	61	1	2013-10-21 09:33:13.499189	2013-10-21 09:33:13.515465	\N	\N	\N
336	1	340	3	2014-01-17 07:51:26.114432	2014-01-17 07:51:26.134523	\N	\N	\N
109	1	110	2	2013-10-29 08:17:39.184527	2013-10-29 08:17:39.196022	\N	\N	\N
63	1	64	2	2013-10-21 09:39:29.993873	2013-10-21 09:39:30.010421	\N	\N	\N
64	1	66	2	2013-10-21 09:43:02.507305	2013-10-21 09:43:02.526359	\N	\N	\N
337	1	341	3	2014-01-17 07:52:50.598733	2014-01-17 07:52:50.629757	\N	\N	\N
142	1	142	1	2013-11-13 09:16:42.545755	2013-11-13 09:16:42.557781	\N	\N	\N
67	1	68	1	2013-10-26 06:58:36.505321	2013-10-26 06:58:36.52448	\N	\N	\N
68	1	69	1	2013-10-26 07:00:09.69147	2013-10-26 07:00:09.711498	\N	\N	\N
69	1	70	1	2013-10-26 07:00:57.858872	2013-10-26 07:00:57.874251	\N	\N	\N
338	1	342	3	2014-01-17 07:56:05.416852	2014-01-17 07:56:05.439308	\N	\N	\N
71	1	72	1	2013-10-26 07:04:34.012738	2013-10-26 07:04:34.028796	\N	\N	\N
72	1	73	1	2013-10-26 07:06:00.891876	2013-10-26 07:06:00.913444	\N	\N	\N
73	1	74	1	2013-10-26 07:07:31.223828	2013-10-26 07:07:31.236708	\N	\N	\N
74	1	75	1	2013-10-26 07:09:04.198849	2013-10-26 07:09:04.215616	\N	\N	\N
75	1	76	1	2013-10-26 07:11:17.049148	2013-10-26 07:11:17.06519	\N	\N	\N
339	1	343	3	2014-01-17 07:57:11.08273	2014-01-17 07:57:11.110583	\N	\N	\N
164	1	165	2	2013-11-19 07:07:08.260014	2013-11-19 07:07:08.284389	\N	\N	\N
340	1	344	3	2014-01-17 08:01:06.803473	2014-01-17 08:01:06.822295	\N	\N	\N
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
341	1	345	3	2014-01-17 08:02:30.556055	2014-01-17 08:02:30.569359	\N	\N	\N
260	1	263	1	2013-12-05 07:08:42.645166	2013-12-05 07:08:42.664827	\N	\N	\N
144	1	144	2	2013-11-13 09:28:50.499038	2013-11-13 09:28:50.520893	\N	\N	\N
261	1	264	1	2013-12-05 07:09:32.170278	2013-12-05 07:09:32.185001	\N	\N	\N
145	1	145	1	2013-11-13 09:30:59.415328	2013-11-13 09:30:59.441354	\N	\N	\N
262	1	265	1	2013-12-05 07:10:48.586977	2013-12-05 07:10:48.612705	\N	\N	\N
146	1	146	1	2013-11-13 09:31:43.965084	2013-11-13 09:31:43.982627	\N	\N	\N
96	1	97	3	2013-10-28 07:33:37.967282	2013-10-28 07:33:37.989158	\N	\N	\N
98	1	99	3	2013-10-28 07:37:02.036021	2013-10-28 07:37:02.056444	\N	\N	\N
99	1	100	3	2013-10-28 07:39:47.129779	2013-10-28 07:39:47.150571	\N	\N	\N
263	1	266	1	2013-12-05 07:11:35.99866	2013-12-05 07:11:36.01828	\N	\N	\N
147	1	147	1	2013-11-13 09:33:50.45648	2013-11-13 09:33:50.489206	\N	\N	\N
343	1	347	3	2014-01-21 12:38:26.900966	2014-01-21 12:38:26.957148	\N	\N	\N
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
344	1	348	3	2014-01-21 12:40:06.575602	2014-01-21 12:40:06.60427	\N	\N	\N
148	1	148	2	2013-11-13 09:34:41.372313	2013-11-13 09:34:41.398767	\N	\N	\N
121	1	122	2	2013-10-30 08:17:41.087127	2013-10-30 08:17:41.106367	\N	\N	\N
122	1	123	2	2013-10-30 08:18:53.228847	2013-10-30 08:18:53.263261	\N	\N	\N
123	1	124	1	2013-11-09 07:26:29.182512	2013-11-09 07:26:29.204187	\N	\N	\N
124	1	125	1	2013-11-09 07:27:38.116523	2013-11-09 07:27:38.13891	\N	\N	\N
345	1	349	3	2014-01-21 12:42:51.617143	2014-01-21 12:42:51.64853	\N	\N	\N
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
151	1	151	2	2013-11-18 05:55:09.247373	2013-11-18 05:55:09.269904	\N	\N	\N
152	1	152	1	2013-11-18 05:56:46.391667	2013-11-18 05:56:46.428373	\N	\N	\N
153	1	153	1	2013-11-18 05:57:19.885161	2013-11-18 05:57:19.904847	\N	\N	\N
154	1	154	1	2013-11-18 05:57:52.979631	2013-11-18 05:57:53.006969	\N	\N	\N
155	1	155	2	2013-11-18 05:58:43.624507	2013-11-18 05:58:43.650818	\N	\N	\N
156	1	156	1	2013-11-19 06:56:37.729088	2013-11-19 06:56:37.754311	\N	\N	\N
157	1	157	2	2013-11-19 06:58:21.041614	2013-11-19 06:58:21.06467	\N	\N	\N
158	1	158	2	2013-11-19 06:59:42.133752	2013-11-19 06:59:42.154707	\N	\N	\N
159	1	159	2	2013-11-19 07:00:47.609357	2013-11-19 07:00:47.63475	\N	\N	\N
346	1	350	3	2014-01-21 12:44:55.017174	2014-01-21 12:44:55.049148	\N	\N	\N
347	1	351	3	2014-01-21 12:47:11.573242	2014-01-21 12:47:11.603722	\N	\N	\N
348	1	352	3	2014-01-21 12:48:06.079616	2014-01-21 12:48:06.110647	\N	\N	\N
163	1	164	2	2013-11-19 07:05:44.641164	2013-11-19 07:05:44.663117	\N	\N	\N
166	1	167	1	2013-11-20 08:15:02.849892	2013-11-20 08:15:02.878674	\N	\N	\N
167	1	168	1	2013-11-20 08:16:50.114415	2013-11-20 08:16:50.135346	\N	\N	\N
170	1	172	1	2013-11-21 06:46:40.378206	2013-11-21 06:46:40.403122	\N	\N	\N
171	1	173	1	2013-11-21 06:50:17.844922	2013-11-21 06:50:17.864713	\N	\N	\N
349	1	353	3	2014-01-21 12:49:44.183523	2014-01-21 12:49:44.209839	\N	\N	\N
350	1	354	3	2014-01-21 12:51:45.579977	2014-01-21 12:51:45.603953	\N	\N	\N
175	1	177	1	2013-11-22 06:53:41.004697	2013-11-22 06:53:41.018918	\N	\N	\N
176	1	178	1	2013-11-22 06:54:26.505168	2013-11-22 06:54:26.526426	\N	\N	\N
177	1	179	1	2013-11-22 06:55:10.321329	2013-11-22 06:55:10.343245	\N	\N	\N
178	1	180	1	2013-11-22 06:56:57.23846	2013-11-22 06:56:57.251237	\N	\N	\N
351	1	355	3	2014-01-21 12:54:46.129306	2014-01-21 12:54:46.150409	\N	\N	\N
186	1	188	3	2013-11-22 07:09:08.324067	2013-11-22 07:09:08.337828	\N	\N	\N
187	1	189	1	2013-11-23 07:04:18.128162	2013-11-23 07:04:18.145941	\N	\N	\N
189	1	191	1	2013-11-23 07:07:10.905352	2013-11-23 07:07:10.924066	\N	\N	\N
190	1	192	1	2013-11-23 07:10:36.189966	2013-11-23 07:10:36.205566	\N	\N	\N
191	1	193	1	2013-11-23 07:20:54.252615	2013-11-23 07:20:54.281503	\N	\N	\N
192	1	194	1	2013-11-23 07:22:24.913464	2013-11-23 07:22:24.928644	\N	\N	\N
193	1	195	1	2013-11-23 07:23:58.14178	2013-11-23 07:23:58.165648	\N	\N	\N
342	5	346	1	2014-01-17 10:41:57.93791	2014-01-17 10:41:57.965441	\N	\N	\N
294	1	296	3	2013-12-09 11:34:28.317954	2013-12-09 11:34:28.338674	\N	\N	\N
352	1	356	3	2014-01-21 12:56:10.65611	2014-01-21 12:56:10.679	\N	\N	\N
353	1	357	3	2014-01-21 12:57:42.178625	2014-01-21 12:57:42.20979	\N	\N	\N
201	1	203	3	2013-11-23 07:49:02.75319	2013-11-23 07:49:02.77508	\N	\N	\N
202	1	204	3	2013-11-23 07:49:34.214433	2013-11-23 07:49:34.245396	\N	\N	\N
203	1	205	3	2013-11-23 07:50:15.30999	2013-11-23 07:50:15.339782	\N	\N	\N
204	1	206	3	2013-11-25 07:00:48.092928	2013-11-25 07:00:48.113333	\N	\N	\N
354	5	358	1	2014-01-25 12:16:57.909636	2014-01-25 12:16:57.933459	\N	\N	\N
206	1	208	3	2013-11-25 07:02:52.643804	2013-11-25 07:02:52.662243	\N	\N	\N
355	1	359	1	2014-01-27 07:14:49.28013	2014-01-27 07:14:49.300182	\N	\N	\N
208	1	210	3	2013-11-25 07:04:58.881225	2013-11-25 07:04:58.901418	\N	\N	\N
209	1	211	3	2013-11-25 07:05:38.941249	2013-11-25 07:05:38.963792	\N	\N	\N
255	1	258	3	2013-12-04 09:31:50.488974	2013-12-04 09:31:50.520459	\N	\N	\N
356	1	360	1	2014-01-27 07:16:25.746673	2014-01-27 07:16:25.767557	\N	\N	\N
357	1	361	1	2014-01-27 07:17:50.409107	2014-01-27 07:17:50.429284	\N	\N	\N
381	1	385	3	2014-02-01 06:50:52.46169	2014-02-01 06:50:52.488096	\N	\N	\N
215	1	217	1	2013-11-26 07:31:28.333448	2013-11-26 07:31:28.348645	\N	\N	\N
257	1	260	3	2013-12-04 09:36:33.451513	2013-12-04 09:36:33.478864	\N	\N	\N
258	1	261	3	2013-12-04 09:40:08.338017	2013-12-04 09:40:08.359681	\N	\N	\N
264	1	267	1	2013-12-05 07:13:05.577956	2013-12-05 07:13:05.600377	\N	\N	\N
265	1	268	1	2013-12-05 07:14:45.659739	2013-12-05 07:14:45.672973	\N	\N	\N
382	1	386	3	2014-02-01 06:51:53.804661	2014-02-01 06:51:53.813109	\N	\N	\N
221	1	224	3	2013-11-26 07:42:21.508569	2013-11-26 07:42:21.533463	\N	\N	\N
222	1	225	3	2013-11-26 07:43:54.667645	2013-11-26 07:43:54.695739	\N	\N	\N
223	1	226	3	2013-11-26 07:45:20.733789	2013-11-26 07:45:20.756859	\N	\N	\N
225	1	228	1	2013-11-27 07:32:20.606779	2013-11-27 07:32:20.667312	\N	\N	\N
383	1	387	3	2014-02-01 06:53:33.651513	2014-02-01 06:53:33.663986	\N	\N	\N
296	1	298	1	2013-12-10 06:30:24.116972	2013-12-10 06:30:24.321469	\N	\N	\N
227	1	230	1	2013-11-27 07:34:39.339277	2013-11-27 07:34:39.361304	\N	\N	\N
364	1	368	3	2014-01-27 07:33:57.19478	2014-01-27 07:33:57.226516	\N	\N	\N
358	1	362	3	2014-01-27 07:19:07.697882	2014-01-27 07:38:36.569774	\N	\N	\N
360	1	364	3	2014-01-27 07:22:24.313152	2014-01-27 07:39:27.519107	\N	\N	\N
361	1	365	3	2014-01-27 07:24:42.950664	2014-01-27 07:39:53.894933	\N	\N	\N
362	1	366	3	2014-01-27 07:28:07.156801	2014-01-27 07:40:37.323973	\N	\N	\N
363	1	367	3	2014-01-27 07:31:54.611501	2014-01-27 07:41:01.469528	\N	\N	\N
359	1	363	3	2014-01-27 07:21:03.2587	2014-01-27 07:41:27.676868	\N	\N	\N
365	1	369	3	2014-01-27 07:42:24.242706	2014-01-27 07:42:24.264973	\N	\N	\N
366	1	370	3	2014-01-27 07:44:28.994384	2014-01-27 07:44:29.014284	\N	\N	\N
367	1	371	3	2014-01-27 07:46:23.853428	2014-01-27 07:46:23.881071	\N	\N	\N
236	1	239	1	2013-11-27 07:46:21.267015	2013-11-27 07:46:21.284475	\N	\N	\N
238	1	241	3	2013-11-27 07:48:37.337442	2013-11-27 07:48:37.364841	\N	\N	\N
368	1	372	3	2014-01-27 07:55:38.183137	2014-01-27 07:55:38.222296	\N	\N	\N
369	1	373	3	2014-01-27 07:57:10.032128	2014-01-27 07:57:10.054951	\N	\N	\N
370	1	374	1	2014-01-28 10:08:51.245914	2014-01-28 10:08:51.272735	\N	\N	\N
371	1	375	1	2014-01-28 10:10:30.711309	2014-01-28 10:10:30.729317	\N	\N	\N
372	1	376	1	2014-01-28 10:12:21.667277	2014-01-28 10:12:21.691739	\N	\N	\N
373	1	377	1	2014-01-28 10:13:16.559279	2014-01-28 10:13:16.58167	\N	\N	\N
245	1	248	1	2013-11-28 07:03:05.151434	2013-11-28 07:03:05.189929	\N	\N	\N
246	1	249	1	2013-11-28 07:05:21.016797	2013-11-28 07:05:21.045516	\N	\N	\N
374	1	378	1	2014-01-28 10:16:41.95456	2014-01-28 10:16:41.979723	\N	\N	\N
375	1	379	1	2014-01-28 10:20:17.198931	2014-01-28 10:20:17.218585	\N	\N	\N
268	1	271	3	2013-12-05 07:19:06.442365	2013-12-05 07:19:06.460514	\N	\N	\N
269	1	272	3	2013-12-05 07:20:47.113247	2013-12-05 07:20:47.133914	\N	\N	\N
270	1	272	3	2013-12-05 07:21:41.663907	2013-12-05 07:21:41.674103	\N	\N	\N
271	1	273	3	2013-12-05 07:26:39.046029	2013-12-05 07:26:39.068767	\N	\N	\N
376	1	380	1	2014-01-28 10:21:45.923667	2014-01-28 10:21:45.943296	\N	\N	\N
377	1	381	1	2014-01-28 10:23:18.993403	2014-01-28 10:23:19.022533	\N	\N	\N
274	1	276	1	2013-12-06 07:10:10.408682	2013-12-06 07:10:10.436314	\N	\N	\N
300	1	302	3	2013-12-10 06:37:08.829441	2013-12-10 06:37:09.200419	\N	\N	\N
276	1	278	1	2013-12-06 07:13:40.678808	2013-12-06 07:13:40.704128	\N	\N	\N
277	1	279	3	2013-12-06 07:23:38.260122	2013-12-06 07:23:38.282008	\N	\N	\N
378	1	382	1	2014-01-28 10:23:57.826249	2014-01-28 10:23:57.852496	\N	\N	\N
379	1	383	1	2014-01-28 10:26:07.924041	2014-01-28 10:26:07.946356	\N	\N	\N
380	1	384	1	2014-01-28 10:28:09.180082	2014-01-28 10:28:09.208796	\N	\N	\N
384	1	388	3	2014-02-01 06:54:50.278948	2014-02-01 06:54:50.291583	\N	\N	\N
281	1	283	1	2013-12-07 06:59:36.203131	2013-12-07 06:59:36.223126	\N	\N	\N
385	1	389	3	2014-02-01 06:56:22.788316	2014-02-01 06:56:22.804364	\N	\N	\N
283	1	285	3	2013-12-07 07:09:41.063635	2013-12-07 07:09:41.077837	\N	\N	\N
284	1	286	3	2013-12-07 07:10:11.53747	2013-12-07 07:10:11.565691	\N	\N	\N
285	1	287	3	2013-12-07 07:10:49.941625	2013-12-07 07:10:49.971242	\N	\N	\N
286	1	288	3	2013-12-07 07:11:23.911203	2013-12-07 07:11:23.939177	\N	\N	\N
287	1	289	3	2013-12-07 07:11:57.015224	2013-12-07 07:11:57.041304	\N	\N	\N
386	1	390	3	2014-02-01 06:59:50.51354	2014-02-01 06:59:50.533773	\N	\N	\N
387	1	391	3	2014-02-01 07:01:07.797545	2014-02-01 07:01:07.810853	\N	\N	\N
388	1	392	3	2014-02-01 07:02:39.827479	2014-02-01 07:02:39.849493	\N	\N	\N
389	1	393	3	2014-02-01 07:05:24.97182	2014-02-01 07:05:24.993598	\N	\N	\N
292	1	294	3	2013-12-09 11:31:50.617705	2013-12-09 11:31:50.637396	\N	\N	\N
293	1	295	3	2013-12-09 11:33:05.637589	2013-12-09 11:33:05.658967	\N	\N	\N
301	1	303	3	2013-12-10 06:37:42.69579	2013-12-10 06:37:43.046795	\N	\N	\N
302	1	304	3	2013-12-10 06:41:02.072506	2013-12-10 06:41:02.306788	\N	\N	\N
390	1	394	3	2014-02-01 07:07:52.148978	2014-02-01 07:07:52.179974	\N	\N	\N
391	1	395	3	2014-02-01 07:18:04.84814	2014-02-01 07:18:04.868453	\N	\N	\N
305	1	307	1	2013-12-11 06:47:09.87887	2013-12-11 06:47:09.896089	\N	\N	\N
306	1	308	1	2013-12-11 06:48:39.809353	2013-12-11 06:48:39.828012	\N	\N	\N
307	1	309	1	2013-12-11 06:49:46.217008	2013-12-11 06:49:46.23202	\N	\N	\N
392	1	396	3	2014-02-01 07:19:13.822377	2014-02-01 07:19:13.836946	\N	\N	\N
393	1	397	3	2014-02-01 07:20:19.501258	2014-02-01 07:20:19.516629	\N	\N	\N
313	1	315	3	2013-12-11 06:59:05.526857	2013-12-11 06:59:05.547931	\N	\N	\N
\.


--
-- Name: customer_verifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_verifications_id_seq', 393, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customers (id, application_ref_no, agency_name, fh_code, applicant_name, address, landmark, d_o_b, pincode_id, created_at, updated_at, slug, latitude, longitude, gmaps, contact_number, status, pin, country_state, country_city, country_name, snapshot, application_status, photo_required, message, branch_id, client_id, branch_code, area_name) FROM stdin;
279	1217	Scorp Enterprises	1217	SWATI DATTATRAY WAVHAL	EMGEE GREENS A WING FLAT NO 1204, MTVP ROAD, OFF SHAIKH MEISRY ROAD, WADALA, NEAR DOSTI ACRES, MUMBAI 400037\r\n		\N	35	2013-12-06 07:23:31.873023	2013-12-06 07:23:31.873023	swati-dattatray-wavhal	19.0244400999999996	72.8670558000000028	\N	9867708906/9867997462/9867998924	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
342	1258	Scorp Enterprises	1258	sanjay nikam	reheja garden, a-1304, savoy, lbs road, teen hath naka, thane\r\n		\N	75	2014-01-17 07:56:01.0572	2014-01-17 07:56:01.0572	sanjay-nikam	19.2183306999999992	72.9780896999999982	\N	9820239466	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
72	1017	Scorp Enterprises	1017	DEEPAK GATUM JADHAV	12	1	\N	1	2013-10-26 07:03:43.26649	2013-10-26 07:03:43.26649	deepak-gatum-jadhav	19.0890483000000017	73.0028914999999898	\N	9890772032	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
105	1050	Scorp Enterprises	1050	SUDHIR NAGESH BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:12:51.697836	2013-10-29 08:12:51.697836	sudhir-nagesh-bailur	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
104	1049	Scorp Enterprises	1049	ADITYA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:12:21.056654	2013-10-29 08:12:21.056654	aditya-sudhir-bailur--2	19.1602277000000001	72.972630499999994	\N	9552519160/9920889688	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
70	1015	Scorp Enterprises	1015	HEMANT SHIRKE	"B703 NAMDEV APARTMENT\r\nMITHAGHAR ROAD MULUND EAST\r\nNEAR VPM HIGH SCHOOL\r\nMUMBAI-400081\r\n"\r\n		\N	59	2013-10-26 07:00:53.248497	2013-10-26 07:00:53.248497	hemant-shirke	19.0759836999999983	72.8776558999999935	\N	9930461626	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
278	1216	Scorp Enterprises	1216	VISHAL D KHATRY	A-903, 904, PHASE-2, LAKE PLEASANT OFF AS ROAD, POWAI, NEAR GOPALSHARMA SCHOOL, MUMBAI 400076\r\n		\N	57	2013-12-06 07:13:37.077496	2013-12-06 07:13:37.077496	vishal-d-khatry	19.1253004000000004	72.9076668999999953	\N	022-28577126 / 9821233603	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
76	1021	Scorp Enterprises	1021	Mrs. LEKHA MANOJ NAMBIAR	123333		\N	6	2013-10-26 07:11:12.998798	2013-10-26 07:11:12.998798	mrs-lekha-manoj-nambiar	19.3504648999999986	72.9168230000000079	\N	61524938/ 9830917337/ 7738140012 	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
69	1014	Scorp Enterprises	1014	SHRI SUJITH KHOCHARE 	"A-801 , PATIDAR COMPLEX, KANNAMWAR NAGAR-02\r\nVIKHROLI EAST , MUMBAI -400083\r\n"\r\n		\N	59	2013-10-26 07:00:06.753182	2013-10-26 07:00:06.753182	shri-sujith-khochare	19.0759836999999983	72.8776558999999935	\N	9769976889	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
68	1013	Scorp Enterprises	1013	MR.ASHEESH SARASWAT	23/24,4TH FLOOR,JAMUNA BLDG,KVS COMPLEX,NCH COLONY, KANJUR MARG (WEST),MUMBAI - 400078 \r\n		\N	58	2013-10-26 06:58:33.460754	2013-10-26 06:58:33.460754	mr-asheesh-saraswat	19.1520170999999984	72.9165265999999974	\N	9920722869/ 9969543909	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
343	1259	Scorp Enterprises	1259	LAXMAN CHANDRABHAN TAYADE	AADITYA BLDG, RNO 1003, 10TH FLOOR,KHAKAR ALI RD THANE\r\n		\N	75	2014-01-17 07:57:06.230095	2014-01-17 07:57:06.230095	laxman-chandrabhan-tayade	19.1880544999999998	72.9745618999999976	\N	9594993028	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
344	1260	Scorp Enterprises	1260	SUPRIYA SUNIL BHOSALE	NO VERIFICATION IN RESIDENCE\r\n		\N	75	2014-01-17 08:01:02.250158	2014-01-17 08:01:02.250158	supriya-sunil-bhosale	19.2183306999999992	72.9780896999999982	\N	9820667244	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
83	1028	Scorp Enterprises	1028	Mr.ANURANJAN KUMAR	FLAT-L-66, POWAI JALVAYU VIHAR,HIRANANDANI POWAI,TYPE-C-400076\r\n		\N	57	2013-10-28 06:41:12.476453	2013-10-28 06:41:12.476453	mr-anuranjan-kumar--2	19.1253004000000004	72.9076668999999953	\N	9833921883	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
276	1215	Scorp Enterprises	1215	HEMANT YASHWANT SHIRKE (1087)	B-703, NAMDEV APARTMENT, MITHAGHAR ROAD, MULUND EAST, NEAR VPM HIGH SCHOOL, MUMBAI 400081\r\n		\N	59	2013-12-06 07:10:06.988464	2013-12-06 07:10:06.988464	hemant-yashwant-shirke-1087	19.1602277000000001	72.972630499999994	\N	022-25631689 / 9930461626	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
100	1045	Scorp Enterprises	1045	MR BHUSHAN P TARADE	A2 SAI AMEYA CHS, PLOT NO 28, SECTOR NO 12, OPP TULSI GAGAN CHS, KHARGHAR 410210\r\n		\N	92	2013-10-28 07:39:40.766018	2013-10-28 07:39:40.766018	mr-bhushan-p-tarade	19.0258734999999994	73.0591591000000022	\N	9870022377/ 9892648404	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
308	1246	Scorp Enterprises	1246	HITESH BHUPENDRA THAKKAR	A-901, MAYURESH RESIDENCY, LBS ROAD, BHANDUP WEST, MUMBAI 400078\r\n		\N	58	2013-12-11 06:48:36.240924	2013-12-11 06:48:36.240924	hitesh-bhupendra-thakkar	19.1590632999999997	72.9358828000000017	\N	9920695716	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
99	1044	Scorp Enterprises	1044	MR HARERAM SHARMA	FLAT NO 302, RAMESHWAR SADAN, PLOT NO 29, SECTOR 18, KAMOTHE, NAVI MUMBAI 410209\r\n		\N	92	2013-10-28 07:36:19.802421	2013-10-28 07:36:19.802421	mr-hareram-sharma	19.0330487999999995	73.0296625000000006	\N	9820875076/ 9833883968	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
376	1292	Scorp Enterprises	1292	YOGESH VISHNU KAMBLE	10, 1/1, SUBHASH NAGAR NAHUR VILLAGE ROAD, OPPOSITE VASANT STORES, BHANDUP W MUMBAI 78\r\n		\N	57	2014-01-28 10:12:18.931601	2014-01-28 10:12:18.931601	yogesh-vishnu-kamble	19.0759836999999983	72.8776558999999935	\N	9867945409	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
97	1042	Scorp Enterprises	1042	MR ARUN ACHUTHAN	FLAT NO A-301, SAI SHASTRA, SECTOR 11, PLOT NO 27, KHARGHAR, NAVI MUMBAI\r\n		\N	94	2013-10-28 07:33:33.576278	2013-10-28 07:33:33.576278	mr-arun-achuthan--3	19.0330487999999995	73.0296625000000006	\N	9920055567/ 27743952	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
309	1247	Scorp Enterprises	1247	AURORA JAGJEET SINGH	31, 286 RAMABAI AMBEDKAR NAGAR, E HIGHWAY ROAD, GHATKOPAR EAST, NEAR PMC BANK, MUMBAI 400075\r\n		\N	56	2013-12-11 06:49:43.410001	2013-12-11 06:49:43.410001	aurora-jagjeet-singh	19.0788532999999987	72.9180032000000011	\N	022-25254257 / 9867018636	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
377	1293	Scorp Enterprises	1293	VAIBHAV GUPTA	NO RESI		\N	57	2014-01-28 10:13:13.778883	2014-01-28 10:13:13.778883	vaibhav-gupta	19.1746996000000003	72.8797453999999902	\N	022-64235470\t/9820234078/9022956996	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
378	1294	Scorp Enterprises	1294	RAVINDRA KAUR GUPTA	NO RESI		\N	1	2014-01-28 10:16:38.69613	2014-01-28 10:16:38.69613	ravindra-kaur-gupta	19.1746996000000003	72.8797453999999902	\N	022-66073913/\t9320022722/9892598912	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
379	1295	Scorp Enterprises	1295	HEMANT PRABHAKAR JOSHI	NO RESI		\N	1	2014-01-28 10:20:14.44739	2014-01-28 10:20:14.44739	hemant-prabhakar-joshi	\N	\N	\N	25916252\t9920300806	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
380	1296	Scorp Enterprises	1296	MR. ANIRBAN SENGUPTA	C 19/13, GODREJ HILL SIDE COLONY, VIKHROLI WEST, MUMBAI 400079.\r\n		\N	58	2014-01-28 10:21:43.018535	2014-01-28 10:21:43.018535	mr-anirban-sengupta	19.1068670000000012	72.9208110000000005	\N	9920601678	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
75	1020	Scorp Enterprises	1020	Mrs. MADHAVI PRAMOD NIMGALE	11233		\N	2	2013-10-26 07:09:01.568799	2013-10-26 07:09:01.568799	mrs-madhavi-pramod-nimgale	19.3504648999999986	72.9168230000000079	\N	2261268642	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
74	1019	Scorp Enterprises	1019	MR ARUN ACHUTHAN	1233		\N	5	2013-10-26 07:07:28.548324	2013-10-26 07:07:28.548324	mr-arun-achuthan	19.3504648999999986	72.9168230000000079	\N	022-61783000	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
73	1018	Scorp Enterprises	1018	Mr.SIDDHARTH AJITSINGH JANGHU.	122		\N	4	2013-10-26 07:05:55.540306	2013-10-26 07:05:55.540306	mr-siddharth-ajitsingh-janghu	19.3504648999999986	72.9168230000000079	\N	61260165	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
85	1030	Scorp Enterprises	1030	ADITYA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-28 07:14:21.845266	2013-10-28 07:14:21.845266	aditya-sudhir-bailur	19.1602277000000001	72.972630499999994	\N	9552519160/9920889688	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
88	1033	Scorp Enterprises	1033	MRS RUPALI THORAT	1111		\N	1	2013-10-28 07:19:16.999945	2013-10-28 07:19:16.999945	mrs-rupali-thorat	19.3504648999999986	72.9168230000000079	\N	8082050230	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
283	1221	Scorp Enterprises	1221	KANTI SWAROOP MALLELA	BULD NO. 11, FLAT NO. 102, KAMDHENU BULD, KALPATARU, HARI OM NAGAR, MULUND EAST, MUMBAI 400081\r\n		\N	59	2013-12-07 06:59:31.798331	2013-12-07 06:59:31.798331	kanti-swaroop-mallela	19.1602277000000001	72.972630499999994	\N	9892552902	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
138	1082	Scorp Enterprises	1082	AMARKUMAR PRABHAKAR PANDA	no verification res		\N	2	2013-11-12 07:02:15.01735	2013-11-12 07:02:15.01735	amarkumar-prabhakar-panda	19.0759836999999983	72.8776558999999935	\N	022-42198800	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
57	1002	Scorp Enterprises	1002	MR BIJAYKUMAR SRIDHARDAS KAPALI	B-1/3, P AND T COLONY, P K ROAD, NEAR TELEPHONE EXCHANGE, MULUND WEST, MUMBAI 400080\r\n		\N	59	2013-10-21 09:28:06.43482	2013-10-21 09:28:06.43482	mr-bijaykumar-sridhardas-kapali	19.1694850000000017	72.9490093999999942	\N	9967996073/ 8082098877/25913691	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
86	1031	Scorp Enterprises	1031	SUCHETA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-28 07:16:29.851414	2013-10-28 07:16:29.851414	sucheta-sudhir-bailur	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
64	1009	Scorp Enterprises	1009	CHETAN NARAYAN BHATT	1	1	\N	1	2013-10-21 09:39:22.310059	2013-10-21 09:39:22.310059	chetan-narayan-bhatt	19.1865108999999983	72.9541766999999908	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
66	1011	Scorp Enterprises	1011	MR AMIT M SHARMA	22	1	\N	1	2013-10-21 09:42:54.406363	2013-10-21 09:42:54.406363	mr-amit-m-sharma	17.6568837999999992	73.3136664000000025	\N	1	submitted	\N	MAHARASHTRA		INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
80	1025	Scorp Enterprises	1025	ANITA PANDA	123	1	\N	1	2013-10-28 06:00:56.758091	2013-10-28 06:00:56.758091	anita-panda	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
61	1006	Scorp Enterprises	1006	SUVARNLATA VITTAL TOKE	A 204, BLDG 2, KESHAV SRISHTI HSG SOC LTD, LBS MARG ,MURLIMAL COMP, BHANDUP WEST, NR WAMAN HARI PETE JEWELLERS\r\n		\N	55	2013-10-21 09:33:10.463979	2013-10-21 09:33:10.463979	suvarnlata-vittal-toke	19.0759836999999983	72.8776558999999935	\N	9967049941	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
59	1004	Scorp Enterprises	1004	SANTOSH SHRIKRISHNA MANJREKAR	R-16, WAGHESHWAR NIWAS, KOKAN NAGAR, J M ROAD, BHANDUP WEST, MUMBAI 400078\r\n		\N	58	2013-10-21 09:30:31.08409	2013-10-21 09:30:31.08409	santosh-shrikrishna-manjrekar	19.1520170999999984	72.9165265999999974	\N	9987268684	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
81	1026	Scorp Enterprises	1026	Mr.RUCHIR BHATNAGAR	1234	1	\N	1	2013-10-28 06:03:08.809754	2013-10-28 06:03:08.809754	mr-ruchir-bhatnagar	15.8387861999999995	73.7681340999999975	\N	1	submitted	\N	MAHARASHTRA	123	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
82	1027	Scorp Enterprises	1027	Mr.SIDDHARTH AJITSINGH JANGHU.	12345	1	\N	2	2013-10-28 06:04:21.432191	2013-10-28 06:04:21.432191	mr-siddharth-ajitsingh-janghu--2	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
84	1029	Scorp Enterprises	1029	MR ARUN ACHUTHAN	111	1	\N	2	2013-10-28 07:01:55.136037	2013-10-28 07:01:55.136037	mr-arun-achuthan--2	19.2060974999999985	72.9825237000000016	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
106	1051	Scorp Enterprises	1051	SUCHETA SUDHIR BAILUR	SWATI SADAN CO-OP HSG SOC, B -WING, FLAT NO 6, FIRST FLOOR, INDRAPRASTH PARK, 90 FEET, RD, MULUND E, NEAR SHIV SENA OFFICE, MUMBAI 400081\r\n		\N	59	2013-10-29 08:13:22.17412	2013-10-29 08:13:22.17412	sucheta-sudhir-bailur--2	19.1602277000000001	72.972630499999994	\N	9833759325	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
107	1052	Scorp Enterprises	1052	MR KUSHAGRA CHITRANSHI 	WING 3 A, FLAT 803, N G ROYAL PARK SOCIETY, OPP NITCO TILES, KANJURMARG E, MUMBAI 400042\r\n		\N	39	2013-10-29 08:13:56.86978	2013-10-29 08:13:56.86978	mr-kushagra-chitranshi	19.1323864999999991	72.951962199999997	\N	9167091404/9415527338	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
89	1034	Scorp Enterprises	1034	HIMANSHU D JAIN	1122		\N	2	2013-10-28 07:20:28.837671	2013-10-28 07:20:28.837671	himanshu-d-jain	19.3504648999999986	72.9168230000000079	\N	022-67324926	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
90	1035	Scorp Enterprises	1035	MR PANKAJ SUTAR	1111	1	\N	1	2013-10-28 07:23:10.859616	2013-10-28 07:23:10.859616	mr-pankaj-sutar	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
87	1032	Scorp Enterprises	1032	PRIYANKA BAJAJ	A-307, SHRI VIJAY VIHAR, IIT EMPLOYEE, MUMBAI C H S NR POWAI VIHAR, POWAI, MUMBAI 400076\r\n		\N	57	2013-10-28 07:17:10.57764	2013-10-28 07:17:10.57764	priyanka-bajaj	19.1253004000000004	72.9076668999999953	\N	022-61137000 /9819824265/9930014265	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
103	1048	Scorp Enterprises	1048	Mrs. LEKHA MANOJ NAMBIAR	122	1	\N	1	2013-10-29 07:40:48.663411	2013-10-29 07:40:48.663411	mrs-lekha-manoj-nambiar--2	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
108	1053	Scorp Enterprises	1053	MR R K CHITRANSHI	WING 3 A, FLAT 803, N G ROYAL PARK SOCIETY, OPP NITCO TILES, KANJURMARG E, MUMBAI 400042\r\n		\N	39	2013-10-29 08:15:42.508074	2013-10-29 08:15:42.508074	mr-r-k-chitranshi	19.1323864999999991	72.951962199999997	\N	9167091404/9415527338	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
109	1054	Scorp Enterprises	1054	MR PANKAJ SUTAR	1222		\N	3	2013-10-29 08:16:18.518348	2013-10-29 08:16:18.518348	mr-pankaj-sutar--2	19.3504648999999986	72.9168230000000079	\N	9594409888	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
110	1055	Scorp Enterprises	1055	MR DILESWERA RAO D ADATALA	1111	11	\N	1	2013-10-29 08:17:34.735181	2013-10-29 08:17:34.735181	mr-dileswera-rao-d-adatala	19.3504648999999986	72.9168230000000079	\N	1	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
139	1083	Scorp Enterprises	1083	MR SACHIN BODE	no verification res		\N	2	2013-11-12 07:04:44.913307	2013-11-12 07:04:44.913307	mr-sachin-bode	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
112	1057	Scorp Enterprises	1057	KRUNAL CHANDRASHEKHER JANI 	11111	11	\N	2	2013-10-29 08:20:08.977593	2013-10-29 08:20:08.977593	krunal-chandrashekher-jani	19.3504648999999986	72.9168230000000079	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
140	1084	Scorp Enterprises	1084	MR KIRAN VHANTALE	no verification res\r\n		\N	1	2013-11-12 07:06:09.985964	2013-11-12 07:06:09.985964	mr-kiran-vhantale	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
115	1060	Scorp Enterprises	1060	Mrs. LEKHA MANOJ NAMBIAR	111	11	\N	3	2013-10-30 08:05:37.893554	2013-10-30 08:05:37.893554	mrs-lekha-manoj-nambiar--3	19.2060974999999985	72.9825237000000016	\N	11	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
141	1085	Scorp Enterprises	1085	Mr. MANOJKUMAR R KOLLY	B-202, POWAI JALTARANG, CHSL, RAMBAUG, POWAI , MUMBAI - 400076.\r\n		\N	57	2013-11-13 09:15:04.049507	2013-11-13 09:15:04.049507	mr-manojkumar-r-kolly	19.1253004000000004	72.9076668999999953	\N	9920062665	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
142	1086	Scorp Enterprises	1086	SUPRATIK CHAKRABORTY (975)	B-52, BUILDING NO 13, LAKE SIDE AREA, IIT POWAI, MUMBAI 400076\r\n		\N	57	2013-11-13 09:16:37.54797	2013-11-13 09:16:37.54797	supratik-chakraborty-975	19.1193936999999998	72.8977101999999917	\N	022-25768721 / 9820103723	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
144	1088	Scorp Enterprises	1088	MR YASHAVANT BAVISKAR	no verification res\r\n		\N	2	2013-11-13 09:28:43.318079	2013-11-13 09:28:43.318079	mr-yashavant-baviskar	19.0759836999999983	72.8776558999999935	\N	66620566	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
345	1261	Scorp Enterprises	1261	KISHORKUMAR RAGHUBHAI SHETTY	1601/D1/MAPLE NEELKANTH GREENS, GB RD, MANPADA, NR TIKUJI WADI,THANE\r\n		\N	75	2014-01-17 08:02:26.2696	2014-01-17 08:02:26.2696	kishorkumar-raghubhai-shetty	19.2183306999999992	72.9780896999999982	\N	9920983828	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
285	1223	Scorp Enterprises	1223	KASHIRAM NETAM	RCF COLONY 8/172, TYPE I CHEMBUR MAHUL RD\r\n		\N	56	2013-12-07 07:09:36.579311	2013-12-07 07:09:36.579311	kashiram-netam	19.0461990000000014	72.8933438999999908	\N	8108327245	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
289	1227	Scorp Enterprises	1227	Ms. Arati Srivastava	"Flat no. 337, Bldg No. 37,\r\nBPCL Staff Colony \r\nAziz Baug, Chembur,\r\nMumbai-400074 \r\n"\r\n		\N	56	2013-12-07 07:11:52.34988	2013-12-07 07:11:52.34988	ms-arati-srivastava	19.0759836999999983	72.8776558999999935	\N	8767842929	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
122	1067	Scorp Enterprises	1067	MR SEJAL GUNVATRAI DESAI	11111	111	\N	1	2013-10-30 08:17:32.81718	2013-10-30 08:17:32.81718	mr-sejal-gunvatrai-desai	18.9503115000000015	72.8215079999999944	\N	11	submitted	\N	MAHARASHTRA		INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
123	1068	Scorp Enterprises	1068	SHRI DIGAT DILIPBHAI TRIVEDI	111111	111	\N	2	2013-10-30 08:18:48.315202	2013-10-30 08:18:48.315202	shri-digat-dilipbhai-trivedi	19.3504648999999986	72.9168230000000079	\N	111	submitted	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
128	1072	Scorp Enterprises	1072	SHRI SANTOSH SHIVAJI GAIKWAD	1111		\N	4	2013-11-09 07:30:32.955858	2013-11-09 07:30:32.955858	shri-santosh-shivaji-gaikwad	18.9503115000000015	72.8215079999999944	\N	022-61289700	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
116	1061	Scorp Enterprises	1061	MUSHAIDA SAYED	B1, 103, LOK GAURAV, LBS MARG, GANDHI NAGAR, VIKHROLI WEST, MUMBAI 400083\r\n		\N	59	2013-10-30 08:11:31.25969	2013-10-30 08:11:31.25969	mushaida-sayed	19.1231192000000014	72.9263546999999903	\N	9920205455	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
119	1064	Scorp Enterprises	1064	LONAPPAN ANTHONY (895)	ROOM NO 8, LAKE JEWEL CO-OP HSG SOC, NR PUNCHKUTIR BUS STOP, POWAI, MUMBAI 400076\r\n		\N	57	2013-10-30 08:14:10.08327	2013-10-30 08:14:10.08327	lonappan-anthony-895	19.1253004000000004	72.9076668999999953	\N	9987028038/8108717526	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
118	1063	Scorp Enterprises	1063	RIYAD PALIA	LANTANA 1701, 17TH FLOOR, NAHAR AMRIT SHAKTI CHANDIVALI POWAI, MUMBAI 400072\r\n		\N	55	2013-10-30 08:13:26.293649	2013-10-30 08:13:26.293649	riyad-palia	19.1057445000000001	72.8994529999999941	\N	9820755886	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
114	1059	Scorp Enterprises	1059	LAKSHMI KARTHIK	B-101, NEELSAGAR SAHAKARI MHADA COLONY, NAUGHAR ROAD, MULUND EAST, HDFC BANK, MUMBAI 400081\r\n		\N	59	2013-10-30 08:03:19.932054	2013-10-30 08:03:19.932054	lakshmi-karthik	19.1602277000000001	72.972630499999994	\N	25634473 / 9892078887	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
129	1073	Scorp Enterprises	1073	AKHIL AGGARWAL	1111		\N	1	2013-11-09 07:32:18.086736	2013-11-09 07:32:18.086736	akhil-aggarwal	18.9503115000000015	72.8215079999999944	\N	022-404721000	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
117	1062	Scorp Enterprises	1062	PONGURI VYDEHI	FLAT NO. 13/14, BLOCK - H, HOECHST QTRS, DARGA ROAD, AMAR NAGAR, MULUND EAST, MUMBAI 400082\r\n		\N	59	2013-10-30 08:12:08.055	2013-10-30 08:12:08.055	ponguri-vydehi	19.1741115999999998	72.9371979999999951	\N	8885282660	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
135	1079	Scorp Enterprises	1079	    Apurva Avinash Mahadalkar 	ROOM NO2, VISHNU VAITY CHAWL, L.T. ROAD, MULUND (EAST) MUMBAI-400081\r\n		\N	59	2013-11-11 07:42:31.172448	2013-11-11 07:42:31.172448	apurva-avinash-mahadalkar	19.1602277000000001	72.972630499999994	\N	8693866877	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
130	1074	Scorp Enterprises	1074	KEVIN D'SOUZA	111		\N	2	2013-11-09 07:34:38.652947	2013-11-09 07:34:38.652947	kevin-d-souza	19.0776362000000006	72.8646533000000005	\N	022-25700358	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
131	1075	Scorp Enterprises	1075	MR NAGRAJ DESHPANDE	111		\N	2	2013-11-09 07:36:17.618033	2013-11-09 07:36:17.618033	mr-nagraj-deshpande	\N	\N	\N	66059500	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
132	1076	Scorp Enterprises	1076	. Mr. ABHIJIT YASHWANT AMBRE 	111		\N	1	2013-11-09 07:37:31.149255	2013-11-09 07:37:31.149255	mr-abhijit-yashwant-ambre	19.0776362000000006	72.8646533000000005	\N	9819227567	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
133	1077	Scorp Enterprises	1077	SHAILESH KANHAIYALAL PANDEY	111		\N	3	2013-11-09 07:39:26.739157	2013-11-09 07:39:26.739157	shailesh-kanhaiyalal-pandey	19.0776362000000006	72.8646533000000005	\N	022-45765999	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
134	1078	Scorp Enterprises	1078	RATNA SHAILESH PANDEY	11111		\N	3	2013-11-09 07:41:08.10773	2013-11-09 07:41:08.10773	ratna-shailesh-pandey	18.9503115000000015	72.8215079999999944	\N	022-45765999	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
124	1069	Scorp Enterprises	1069	SANTOSH LAWOO RANE	9/1, RAILWAY POLICE QTRS, PANTNAGAR, EASTER EXPRESS HIGWAY, GHATKOPAR E\r\n		\N	57	2013-11-09 07:26:16.229891	2013-11-09 07:26:16.229891	santosh-lawoo-rane	19.1159472999999984	72.9351429999999965	\N	9773185307	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
287	1225	Scorp Enterprises	1225	AJAY KUMAR	133/4907, ANTOPHILL, C 4S SECTOR 7, MUMBAI \r\n		\N	57	2013-12-07 07:10:43.152856	2013-12-07 07:10:43.152856	ajay-kumar	19.0176169000000002	72.8561287999999934	\N	8689853511	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
127	1071	Scorp Enterprises	1071	AMEY MANGESH CHOUGULE	1ST FLOOR,ABEB EAST BLOCK, L& T LTD, GATE NO 7,SAKI VIHAR ,POWAI MUMBAI 72\r\n		\N	55	2013-11-09 07:29:57.353374	2013-11-09 07:29:57.353374	amey-mangesh-chougule	19.0759836999999983	72.8776558999999935	\N	022-67053659/ 9987063705	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
125	1070	Scorp Enterprises	1070	Chirantan Ghosh	G-703, Mayuresh Shristi ComplexLBS Marg, Bhandup WestOpp. Asian Paints, Mumbai – 400078\r\n		\N	58	2013-11-09 07:27:34.839753	2013-11-09 07:27:34.839753	chirantan-ghosh	19.1520170999999984	72.9165265999999974	\N	8097005943/ 9163211678	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
137	1081	Scorp Enterprises	1081	PRAMOD KUMAR SINGH ( 968)	A402, JALVAYU VIHAR SECTOR A, ADI SHANKARACHARYA RD, POWAI ( NXT TO SM SHETTY SCHOOL) POWAI\r\n		\N	57	2013-11-11 07:44:28.749322	2013-11-11 07:44:28.749322	pramod-kumar-singh-968	19.1196772999999993	72.9050809000000015	\N	9167339906	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
136	1080	Scorp Enterprises	1080	    Rashmi Anthony salve 	3A/101 LAKE VIEW APTR.,RAMBAUG , MHADA COMPLEX, POWAI, MUMBAI -400076\r\n		\N	57	2013-11-11 07:43:54.361447	2013-11-11 07:43:54.361447	rashmi-anthony-salve	19.1196772999999993	72.9050809000000015	\N		verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
381	1297	Scorp Enterprises	1297	MR. ANTONY C. PULICKAL	B - 1202, NEPTUNE SUNCITY HSG. SOC. LTD., ADI SHANKARACHARYA MARG, NR. GANDHI NAGAR BRIDGE, POWAI, MUMBAI 400076.\r\n		\N	57	2014-01-28 10:23:15.731626	2014-01-28 10:23:15.731626	mr-antony-c-pulickal	19.1253004000000004	72.9076668999999953	\N	9167057227 /8652075969 	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
315	1253	Scorp Enterprises	1253	VAIBHAV RUPRAO DESHMUKH (1116)	H-3/504, MHADA COLONY, PRATIKSHA NAGAR, MUMBAI 400022\r\n		\N	22	2013-12-11 06:58:59.612155	2013-12-11 06:58:59.612155	vaibhav-ruprao-deshmukh-1116	19.1476840000000017	72.8322160000000025	\N	8097488978	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
286	1224	Scorp Enterprises	1224	H P MISHRA	TYPE 1/26/65, RCF COLONY, CHEMBUR 74\r\n		\N	56	2013-12-07 07:10:07.654178	2013-12-07 07:10:07.654178	h-p-mishra	19.0759836999999983	72.8776558999999935	\N	9004773459	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
383	1299	Scorp Enterprises	1299	JOSEPH F FERNANDES	NO RESI		\N	1	2014-01-28 10:26:05.421594	2014-01-28 10:26:05.421594	joseph-f-fernandes	19.1746996000000003	72.8797453999999902	\N	022-67052662\t/9833037953	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
288	1226	Scorp Enterprises	1226	RAJBIR SINGH 	TYPE 1/24/602, 3RD FLOOR, RCF COLONY , CHEMBUR 74\r\n		\N	56	2013-12-07 07:11:19.598134	2013-12-07 07:11:19.598134	rajbir-singh	19.0759836999999983	72.8776558999999935	\N	9920121108	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
145	1089	Scorp Enterprises	1089	DEVRE SACHIN JAYRAM (977)	MHATRE CHAWL ROOM NO 4, BABU WADI, NANEPADA MITHAGAR ROAD, PALKHI BLDG, MULUND E, 400081\r\n		\N	59	2013-11-13 09:30:52.695094	2013-11-13 09:30:52.695094	devre-sachin-jayram-977	19.1602277000000001	72.972630499999994	\N	9892719145	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
148	1092	Scorp Enterprises	1092	TRUPTI JAIDEEP MAINKAR	no verification res\r\n		\N	1	2013-11-13 09:34:35.38593	2013-11-13 09:34:35.38593	trupti-jaideep-mainkar	19.0759836999999983	72.8776558999999935	\N	022-40000000	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
149	1093	Scorp Enterprises	1093	JAYASHRI MAHESH DABHOLKAR	no verification res\r\n		\N	3	2013-11-13 09:36:18.582795	2013-11-13 09:36:18.582795	jayashri-mahesh-dabholkar	19.0759836999999983	72.8776558999999935	\N	022-30513100	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
156	1100	Scorp Enterprises	1100	IRFAN MAHAMMADALI GARBI	D/39/6, GODREJ HILL SIDE COLONY, LBS ROAD, FRONT OF GODREJ PETROL PUMP, MUMBAI 74\r\n		\N	56	2013-11-19 06:56:32.667893	2013-11-19 06:56:32.667893	irfan-mahammadali-garbi	19.0759836999999983	72.8776558999999935	\N	9819335545	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
347	1263	Scorp Enterprises	1263	GURMUKH SINGH	1502,A-WING,SHIV OM TOWERS,NAHAR AMRIT SHAKTI ROAD,CHADIVALI,POWAI,MUMBAI-400072\r\n		\N	54	2014-01-21 12:38:18.2827	2014-01-21 12:38:18.2827	gurmukh-singh	19.1063666999999988	72.8899466000000018	\N	8879996101	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
151	1095	Scorp Enterprises	1095	MRS SEEMA NAIR	NO VERIFICATION RES\r\n		\N	1	2013-11-18 05:55:02.438439	2013-11-18 05:55:02.438439	mrs-seema-nair	19.0759836999999983	72.8776558999999935	\N	9004023243/ 9967971480	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
348	1264	Scorp Enterprises	1264	MR VARUN SINGH  	"141,1-B KALPATARU AURA,LBS MARG  GHATKOPAR WEST MUMBAI 400086\r\n"\r\n		\N	60	2014-01-21 12:40:01.049834	2014-01-21 12:40:01.049834	mr-varun-singh	19.0977625000000018	72.9168265999999932	\N	9619867221	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
163	1106	Scorp Enterprises	1106	DEVESH ARVIND ACHARYA ( 997)	NO VERIFICATION RES\r\n		\N	1	2013-11-19 07:05:14.380777	2013-11-19 07:05:14.380777	devesh-arvind-acharya-997	\N	\N	\N		ready_for_verification	\N			INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
155	1099	Scorp Enterprises	1099	SUJATA SUDHAKAR MALUSARE (993)	NO VERIFICATION RES\r\n		\N	1	2013-11-18 05:58:38.917602	2013-11-18 05:58:38.917602	sujata-sudhakar-malusare-993	19.0759836999999983	72.8776558999999935	\N	022-25165894	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
147	1091	Scorp Enterprises	1091	SANDEEP CHHABRA (973)	D-1901, PHASE-2, LAKE HOMES, POWAI, MUMBAI 76\r\n		\N	57	2013-11-13 09:33:46.038794	2013-11-13 09:33:46.038794	sandeep-chhabra-973	19.114344899999999	72.8996836999999971	\N	022-28470204 / 9167213725/9868240621	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
146	1090	Scorp Enterprises	1090	BINDU RAJESH  (972)	303, PANCH SMRUTI PACH SRISHTI COMPLEX, CHANDIVALI POWAI, NEAR S M SHETTY SCHOOL, MUMBAI 72\r\n		\N	55	2013-11-13 09:31:40.074423	2013-11-13 09:31:40.074423	bindu-rajesh-972	19.0759836999999983	72.8776558999999935	\N	022-28579010 / 9769424453	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
152	1096	Scorp Enterprises	1096	MATHU MAMATU GAJARE	ROOM NO.02, GURUDATT CHAWL, ASALPHA VILLAGE, GANDHI NAGAR, N.S.S. ROAD, BHAJI MARKET, GANESH MANDIR, GHATKOPAR WEST 400084\r\n		\N	59	2013-11-18 05:56:43.111753	2013-11-18 05:56:43.111753	mathu-mamatu-gajare	19.0975710999999997	72.9032369999999901	\N	9702173586/9892915472	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
153	1097	Scorp Enterprises	1097	SANDHYA MATHU GAJARE	ROOM NO.02, GURUDATT CHAWL, ASALPHA VILLAGE, GANDHI NAGAR, N.S.S. ROAD, BHAJI MARKET, GANESH MANDIR, GHATKOPAR WEST 400084\r\n		\N	59	2013-11-18 05:57:17.288449	2013-11-18 05:57:17.288449	sandhya-mathu-gajare	19.0975710999999997	72.9032369999999901	\N	9892915472/9702173586	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
154	1098	Scorp Enterprises	1098	K V S MANI (996)	H NO 240/6242 MAHAVIR PREM PANT NAGAR, NAIDU COLONY, PANT NAGAR, GHATKOPAR E, MUMBAI\r\n		\N	57	2013-11-18 05:57:49.930386	2013-11-18 05:57:49.930386	k-v-s-mani-996	19.0176169000000002	72.8561287999999934	\N	9819433223	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
157	1101	Scorp Enterprises	1101	MR SHREE GANSESH VERNEKAR	NO VERIFICATION RES\r\n		\N	1	2013-11-19 06:58:17.073294	2013-11-19 06:58:17.073294	mr-shree-gansesh-vernekar	19.0759836999999983	72.8776558999999935	\N	022-40000000	submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
158	1102	Scorp Enterprises	1102	SADASHIV MAHADEV SADHU	NO VERIFICATION RES\r\n		\N	2	2013-11-19 06:59:36.062873	2013-11-19 06:59:36.062873	sadashiv-mahadev-sadhu	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
159	1103	Scorp Enterprises	1103	Mrs. SUMEDHA SUNEET KODNANI.	NO VERIFICATION RES\r\n		\N	2	2013-11-19 07:00:43.680496	2013-11-19 07:00:43.680496	mrs-sumedha-suneet-kodnani	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
164	1107	Scorp Enterprises	1107	DEVESH ARVIND ACHARYA ( 997)	NO VERIFICATION RES\r\n		\N	1	2013-11-19 07:05:40.650335	2013-11-19 07:05:40.650335	devesh-arvind-acharya-997--2	19.0759836999999983	72.8776558999999935	\N		submitted	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
375	1291	Scorp Enterprises	1291	HEMACHANDRA HARISHCHANDRA HINGNE	23/9, KAUSTABH CHAM SOC, GAO DEVI RD, SANGHANI ESTATE,GHATKOPAR W\r\n		\N	57	2014-01-28 10:10:21.722065	2014-01-28 10:10:21.722065	hemachandra-harishchandra-hingne	19.0908063000000006	72.9076668999999953	\N	022-25002959\t/9967576470	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
167	1110	Scorp Enterprises	1110	MAHADEVAN VISHWANATHAN	A-606, EVENING GLORY RAHEJA VIHAR, CHANDIVALI POWAI, CHANDIVALI STUDIO, MUMBAI 72\r\n		\N	55	2013-11-20 08:14:57.250445	2013-11-20 08:14:57.250445	mahadevan-vishwanathan	19.0759836999999983	72.8776558999999935	\N	9819804045	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
349	1265	Scorp Enterprises	1265	OMPRAKASH M SHARMA	NO VERIFICATION IN RESIDENCE\r\n		\N	1	2014-01-21 12:42:44.26328	2014-01-21 12:42:44.26328	omprakash-m-sharma	18.9541445999999993	72.8202124999999967	\N	022 25714612 	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
346	1262	Scorp Enterprises	1262	test	e115 	vikroli	\N	58	2014-01-17 10:41:24.043393	2014-01-17 10:41:24.043393	test	18.9503115000000015	72.8215079999999944	\N	134567890	awaiting_to_get_verified	\N	Mh	mumbai	INDIA	\N	RESIDENTIAL	t	\N	\N	\N	\N	\N
172	1114	Scorp Enterprises	1114	ASHOK VITTAL KUNDER	FLAT NO 302, A WING, TULIP CHS, HIRANANDANI GARDEN, MUMBAI 76\r\n		\N	57	2013-11-21 06:46:37.78532	2013-11-21 06:46:37.78532	ashok-vittal-kunder	19.0759836999999983	72.8776558999999935	\N	022-25703626 / 9833361263	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
173	1115	Scorp Enterprises	1115	RAHUL TARASINGH RATHOD	1D/502, MHADA( HIG) TRIVENI CHS LTD, LAXMI NAGAR, NR CANARA ENGG,GHATKOPAR E\r\n		\N	57	2013-11-21 06:50:15.104891	2013-11-21 06:50:15.104891	rahul-tarasingh-rathod	19.0790700000000015	72.9079759999999908	\N	022-25003597 / 9987246597	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
168	1111	Scorp Enterprises	1111	NIKHIL UTTAM DHAIGUDE	604, TWILIGHT, RAHEJA VIHAR, OPP CHANDIVALI STUDIO, POWAI, ANDHERI E,MUMBAI 72\r\n		\N	55	2013-11-20 08:16:44.734375	2013-11-20 08:16:44.734375	nikhil-uttam-dhaigude	19.1184517000000014	72.8935230000000018	\N	9819543409/8007833322	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
350	1266	Scorp Enterprises	1266	SHRI VIJAYBAHADUR L PAL	NO VERIFICATION IN RESIDENCE\r\n		\N	1	2014-01-21 12:44:50.489297	2014-01-21 12:44:50.489297	shri-vijaybahadur-l-pal	18.9541445999999993	72.8202124999999967	\N	022 25714612	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
384	1300	Scorp Enterprises	1300	MR VARADHARAJAN CHELLAPPAa	NO RESI		\N	1	2014-01-28 10:28:06.356416	2014-01-28 13:27:41.655318	mr-varadharajan-chellappaa	19.1746996000000003	72.8797453999999902	\N	2241738300/8080885543	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
165	1108	Scorp Enterprises	1108	RAJENDRAKUMAR JASWANTSINGH THAKUR 	NO VERIFICATION RES\r\n		\N	2	2013-11-19 07:07:04.592711	2013-11-19 07:07:04.592711	rajendrakumar-jaswantsingh-thakur	19.0759836999999983	72.8776558999999935	\N		awaiting_to_get_verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
178	1120	Scorp Enterprises	1120	AMIT RAMESH KOCHAREKAR (1009)	BHAGYAWAN RECIDENCY PLOT NO 3, B NO 201, SHANKAR MANDIR MARG, DATAR COLONY, BHANDUP EAST, MUMBAI \r\n		\N	57	2013-11-22 06:54:24.313271	2013-11-22 06:54:24.313271	amit-ramesh-kocharekar-1009	19.0176169000000002	72.8561287999999934	\N	2566670 / 9833291625	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
193	1135	Scorp Enterprises	1135	AZAD KASAM MODI (1029)	213/8412, KANNAMWAR NAGAR-1, VIKHROLI E, GAJANAN MAHARJ CHOWK, MUMBAI 83\r\n		\N	59	2013-11-23 07:20:45.659082	2013-11-23 07:20:45.659082	azad-kasam-modi-1029	19.0759836999999983	72.8776558999999935	\N	022-25773560 / 9821501340	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
177	1119	Scorp Enterprises	1119	DEEPAK MUKHIJA (1012)	1302, HEMA PARKTOWER, VEER SAVARKAR MARG, BHANDULP EAST, MUMBAI 42\r\n		\N	39	2013-11-22 06:53:38.384617	2013-11-22 06:53:38.384617	deepak-mukhija-1012	19.0759836999999983	72.8776558999999935	\N	9930070184	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
351	1267	Scorp Enterprises	1267	SHRI. VISHNU ARJUNAN SUBASH	B - 70, BLDG NO.17, CENTRAL AREA, IIT BOMBAY CAMPUS, NR. HOSTEL NO.10, POWAI, MUMBAI 400076.\r\n		\N	57	2014-01-21 12:47:04.700461	2014-01-21 12:47:04.700461	shri-vishnu-arjunan-subash	19.1253004000000004	72.9076668999999953	\N	022-25728577 /9833507532/9820108577	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
352	1268	Scorp Enterprises	1268	PRADEEP S SINGH	AT-604, SWASTIK RESIDENCY, BEHIND MUCHALLA, POLYTECHNIC KAVESAR GHODBUNDER ROAD, BESIDES SARASWATI ENGLISH SCHOOL, THANE W 4006015\r\n		\N	71	2014-01-21 12:48:00.085612	2014-01-21 12:48:00.085612	pradeep-s-singh	19.2183306999999992	72.9780896999999982	\N	9004456315	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
353	1269	Scorp Enterprises	1269	CHETAN AMBADAS KAPSE	NO VERIFICATION IN RESIDENCE\r\n		\N	1	2014-01-21 12:49:39.732222	2014-01-21 12:49:39.732222	chetan-ambadas-kapse	18.9541445999999993	72.8202124999999967	\N	022-25736573\t/9820578018	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
294	1232	Scorp Enterprises	1232	JAYSHEREE SUNIL SAHODA	NO VERIFICATION IN RESIDENCE\r\n		\N	1	2013-12-09 11:31:46.974623	2013-12-09 11:31:46.974623	jaysheree-sunil-sahoda	18.9541445999999993	72.8202124999999967	\N		verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
354	1270	Scorp Enterprises	1270	BORHADE VINOD POPAT	UTKARSH SOC ,NR MEHUL GENRAL STORE, SHRI GANESH NGR, PUNCHKUTIR,IIT POWAI\r\n		\N	57	2014-01-21 12:51:40.30938	2014-01-21 12:51:40.30938	borhade-vinod-popat	19.1322951000000003	72.9116915999999975	\N	9757052983/9029006670	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
355	1271	Scorp Enterprises	1271	VAIBHAV UTTAM BANSODE	D/2/18,BEST QTRS, ANIL UBHARE MARG, PANT NAGAR, GHATKOPARW\r\n		\N	59	2014-01-21 12:54:39.838878	2014-01-21 12:54:39.838878	vaibhav-uttam-bansode	19.0759836999999983	72.8776558999999935	\N	9699303426	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
356	1272	Scorp Enterprises	1272	JYOTI GOPICHAND KAMBLE	NO VERIFICATION IN RESIDENCE\r\n		\N	1	2014-01-21 12:56:05.193019	2014-01-21 12:56:05.193019	jyoti-gopichand-kamble	18.9541445999999993	72.8202124999999967	\N	022-61283072/\t9967442469	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
188	1130	Scorp Enterprises	1130	MR BHASKAR BELOTE	ROOM NO 6, SHINDE CHAWL NO 2, MAHATMA PHULE NAGAR, MANKHURD WEST, MUMBAI 400088\r\n		\N	61	2013-11-22 07:09:04.173167	2013-11-22 07:09:04.173167	mr-bhaskar-belote	19.047058100000001	72.9312920999999932	\N	9819353987	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
204	1146	Scorp Enterprises	1146	ANANDPRAKASH BANWARILAL SHARMA	FLAT-A-503,5 TH FLR,VAIKUNTDAM APPT.PLOT-73,74,75,KAMOTE SECTOR-1-,KHANDESHWAR,NAVI MUMBAI-410209\r\n		\N	92	2013-11-23 07:49:28.866591	2013-11-23 07:49:28.866591	anandprakash-banwarilal-sharma	19.0330487999999995	73.0296625000000006	\N	07298019567/09742608229	verified	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
180	1122	Scorp Enterprises	1122	AGIN GEORGE CHACKACHERRY (1016)	ROOM NO 1005, HOSTEL 15C, WING IIT BOMBAY, POWAI, MUMBAI 80\r\n		\N	59	2013-11-22 06:56:55.127842	2013-11-22 06:56:55.127842	agin-george-chackacherry-1016	19.1379686000000007	72.9164112999999929	\N	7506112245	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
189	1131	Scorp Enterprises	1131	MR SUNIL SURESH SAMEL	101/3046, SETU CHS, PANTNAGAR, SANT DYNANESHWAR MARG, NEAR DOMNIC SCHOOL, GHATKOPAR EAST, MUMBAI 75\r\n		\N	56	2013-11-23 07:04:14.248921	2013-11-23 07:04:14.248921	mr-sunil-suresh-samel	19.0759836999999983	72.8776558999999935	\N	9870548025/9870548029	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
357	1273	Scorp Enterprises	1273	RAHUL PRABHAKAR KOLTE	7/43 KAMDHENU COMPLEX, HARI OM NAGAR, MULUND (E) MUMBAI 400081\r\n		\N	59	2014-01-21 12:57:38.206533	2014-01-21 12:57:38.206533	rahul-prabhakar-kolte	19.1742115999999996	72.9722613999999936	\N	9820533202	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
191	1133	Scorp Enterprises	1133	ANIL VISHNU POPHALE (1028)	B-602, HILL RESIDENCY, GURU GOVIND SINGH ROAD, AMAR NAGAR, OPP HIGHLAND PARK, MULUND COLONY, MULUND W 82\r\n		\N	59	2013-11-23 07:05:54.308159	2013-11-23 07:07:07.265483	anil-vishnu-pophale-1028	\N	\N	\N	9821500800	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
192	1134	Scorp Enterprises	1134	MADINA AZAD MODI (1029)	213/8412, KANNAMWAR NAGAR-1, VIKHROLI E, GAJANAN MAHARJ CHOWK, MUMBAI 83\r\n		\N	59	2013-11-23 07:10:33.156323	2013-11-23 07:10:33.156323	madina-azad-modi-1029	19.0759836999999983	72.8776558999999935	\N	022-25773560 / 9867080259	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
194	1136	Scorp Enterprises	1136	MRS LALITA TANAJI THORAT 	"\r\nRohini Niwas Bldg No.15, Room No.203, 2nd Floor, , ""B"" Wing, Tagore Nagar, Vikhroli (East) , Mumbai -400083\r\n"\r\n		\N	59	2013-11-23 07:22:21.082229	2013-11-23 07:22:21.082229	mrs-lalita-tanaji-thorat	19.0759836999999983	72.8776558999999935	\N		verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
195	1137	Scorp Enterprises	1137	MEHUL SHANKARLAL THAKKAR (1025)	B 8, CHITRA, NUTAN PRASHANT CHS LTD, TAMBE NAGAR, S N ROAD, MULUND W, MUMBAI 80\r\n		\N	59	2013-11-23 07:23:55.109919	2013-11-23 07:23:55.109919	mehul-shankarlal-thakkar-1025	19.0759836999999983	72.8776558999999935	\N	022-25686485 / 9004711197	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
382	1298	Scorp Enterprises	1298	MR. KACHRU GANPAT KUSHER	2 B, BLDG.NO.18, R.NO.103, LAKE SIDE, IIT BOMBAY, POWAI, MUMBAI 400076\r\n		\N	57	2014-01-28 10:23:54.81703	2014-01-28 10:23:54.81703	mr-kachru-ganpat-kusher	19.1244340999999984	72.9118218999999925	\N	9699528486	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
203	1145	Scorp Enterprises	1145	YASHWANT PRABHAKARRAO KANOLE	K-441, RAGHUNATH VIHAR,SECTOR-14,KHARGHAR-410210\r\n		\N	92	2013-11-23 07:48:56.5248	2013-11-23 07:48:56.5248	yashwant-prabhakarrao-kanole	19.0457196000000017	73.0733622999999994	\N	9320059864/07738072169	verified	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
179	1121	Scorp Enterprises	1121	PANKAJ MADHUKAR SHINDE (1007)	ROOM NO 5, KASHIBAI CHAWL, TANAJI WADI, TEMBAPADA, BHANDUP W, MUMBAI 78\r\n		\N	58	2013-11-22 06:55:05.843487	2013-11-22 06:55:05.843487	pankaj-madhukar-shinde-1007	19.0759836999999983	72.8776558999999935	\N	022-69988543 / 9987438376/9967730953	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
225	1166	Scorp Enterprises	1166	SUDAM LAXMAN SHELKE	DATTA PRASAD CO-OP HSG SOC, KALWA BELAPUR RD, B/H SWAGAT HOTEL\r\n		\N	72	2013-11-26 07:43:49.851678	2013-11-26 07:43:49.851678	sudam-laxman-shelke	19.2183306999999992	72.9780896999999982	\N	9867710087	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
205	1147	Scorp Enterprises	1147	MR VIJAYANAND NAMDEO PATIL	FLAT NO 9, 3RD FLOOR, PEARL CASTLE CHS LTD, NEAR 52 BANGLOWS, SAINAGAR, PANVEL 410206\r\n		\N	92	2013-11-23 07:50:09.878586	2013-11-23 07:50:09.878586	mr-vijayanand-namdeo-patil	18.9894007000000009	73.1175161999999972	\N	022-27457444/ 9820156063	verified	\N	MAHARASHTRA	navi mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
295	1233	Scorp Enterprises	1233	RAJENDRA GANPAT GANDHE	FLAT NO 701, 7TH FLR, BLDG NO 20, AVISHKAR, NEHA CHS NEHUR NAGAR, KURLA EAST, NEAR ICICI BANK, MUMBAI 400024\r\n		\N	24	2013-12-09 11:33:01.519925	2013-12-09 11:33:01.519925	rajendra-ganpat-gandhe	19.059257800000001	72.878132199999996	\N	022-25282971 / 9821933992	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
296	1234	Scorp Enterprises	1234	MR.SURESH KUMAR BIND 	TYPE 1A/4B,TATA HOUSING COLONY, AZIZ BAUG,TROMBAY,CHEMBUR,MUMBAI - 400074 \r\n		\N	56	2013-12-09 11:34:22.798727	2013-12-09 11:34:22.798727	mr-suresh-kumar-bind	19.0258949000000008	72.8899466000000018	\N	9220300221	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
228	1169	Scorp Enterprises	1169	GARIMA AGGARWAL	E-1304,SAI RADHA CHS.LBS MARG,BHANDUP-W-MUMBAI-78\r\n		\N	58	2013-11-27 07:32:17.301113	2013-11-27 07:32:17.301113	garima-aggarwal	19.1574631000000011	72.9384962999999971	\N		verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
358	1274	Scorp Enterprises	1274	test25	E115, kailash complex vikroli hiranandani road\r\nVikroli west	vikroli	\N	58	2014-01-25 12:16:44.010742	2014-01-25 12:16:44.010742	test25	19.1201329999999992	72.9161168999999916	\N	9819288158	submitted	\N	Maharashtra	Mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
359	1275	Scorp Enterprises	1275	SWETHA S GADIYAR	BLOCK NO 7, MULUND SRIRAM VAAS CHS, HIRAJ NAVGHAR AOD MULUND E, OPP OLD LAXMIBAI ENGLISH MEDIUM SCHOOL, \r\n		\N	59	2014-01-27 07:14:10.650434	2014-01-27 07:14:10.650434	swetha-s-gadiyar	19.0759836999999983	72.8776558999999935	\N	022-21639871/\t9833738412	verified	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
360	1276	Scorp Enterprises	1276	SHRI RAMIESH RAJARAM JADHAV	404,SHASHIKALA SADAN,KISAN NAGAR 1 , WAGHALE ESTATE , THANE  400604 \r\n		\N	68	2014-01-27 07:16:20.541649	2014-01-27 07:16:20.541649	shri-ramiesh-rajaram-jadhav	19.1930514000000016	72.9549148999999915	\N	9421165692	verified	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
361	1277	Scorp Enterprises	1277	VASANT KISAN MINGE	C2-506 , ASHAR ESTATE,SHRINAGAR ,NEAR BI LABONG SCHOOL ,THANE 400604\r\n		\N	68	2014-01-27 07:17:47.801163	2014-01-27 07:17:47.801163	vasant-kisan-minge	19.1930514000000016	72.9549148999999915	\N	2225821102/9967289674	verified	\N		THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
217	1159	Scorp Enterprises	1159	SUNIL BHIKU SHIRKE (1033)	01 GRD DILIP COTTAGE BAGWE COMPOUND, JANGAL MANGAL ROAD, BHANDUP WEST, DATTA MANDIR, MUMBAI \r\n		\N	59	2013-11-26 07:31:24.846823	2013-11-26 07:31:24.846823	sunil-bhiku-shirke-1033--2	19.0176169000000002	72.8561287999999934	\N	25942157 / 9892877533	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
210	1152	Scorp Enterprises	1152	MR SAMEER MAJETHIA 	"BLDG NO.802,AKSHATA,TILAK NAGAR, OPPOSIT SAHKAR CINEMA,MUMBAI 400089\r\n"\r\n		\N	61	2013-11-25 07:04:53.779811	2013-11-25 07:04:53.779811	mr-sameer-majethia	19.0759836999999983	72.8776558999999935	\N	9920060303	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
362	1278	Scorp Enterprises	1278	MR VARADHARAJAN CHELLAPPA	NO RESI		\N	1	2014-01-27 07:19:04.928763	2014-01-27 07:19:04.928763	mr-varadharajan-chellappa	19.1746996000000003	72.8797453999999902	\N	2241738300/8080885543	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
226	1167	Scorp Enterprises	1167	SONALI AMOL GHODEKAR	AMRUTANAN PHASE 2, BLDG B,FLAT NO 802, PARSIK NAGAR, B/H SUBHASH TOWER, KALWA\r\n		\N	72	2013-11-26 07:45:17.093805	2013-11-26 07:45:17.093805	sonali-amol-ghodekar	19.1943854000000016	72.99920130000001	\N	9930966312	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
363	1279	Scorp Enterprises	1279	SMT. PRAJAKTA PRADEEP PEDNEKAR	NO RESI		\N	1	2014-01-27 07:21:00.349333	2014-01-27 07:21:00.349333	smt-prajakta-pradeep-pednekar	19.1746996000000003	72.8797453999999902	\N	022-27731385\t/9869401801	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
364	1280	Scorp Enterprises	1280	MRS MONIKA SACHIN GHARAT	NO RESI		\N	1	2014-01-27 07:22:20.858325	2014-01-27 07:22:20.858325	mrs-monika-sachin-gharat	19.1746996000000003	72.8797453999999902	\N	9664271226	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
365	1281	Scorp Enterprises	1281	BALKRISHNA KASHINATH PATEL	NO RESI		\N	68	2014-01-27 07:24:39.941423	2014-01-27 07:24:39.941423	balkrishna-kashinath-patel	19.1358792000000015	73.0081429999999898	\N	9820330830/9222192330	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
366	1282	Scorp Enterprises	1282	MR. AJAY SALUJA	C 501 BHOOMIRAJ RETREAT, SEC 14 OFF PALM BEACH ROAD, MORAJ CHS, SANPADA 400705\r\n		\N	75	2014-01-27 07:27:23.005618	2014-01-27 07:27:23.005618	mr-ajay-saluja	19.0606201999999989	73.0139616000000018	\N	9920740838	verified	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
239	1179	Scorp Enterprises	1179	Mr. RISHI JAIN	E-1304,SAI RADHA CHS.LBS MARG,BHANDUP-W-MUMBAI-78\r\n		\N	58	2013-11-27 07:46:18.591027	2013-11-27 07:46:18.591027	mr-rishi-jain	19.1574631000000011	72.9384962999999971	\N	9833192687	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
367	1283	Scorp Enterprises	1283	MR. SIMRANJIT SINGH	NO RESI		\N	77	2014-01-27 07:31:52.126839	2014-01-27 07:31:52.126839	mr-simranjit-singh	19.1358792000000015	73.0081429999999898	\N	022-41242500\t/9167348085	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
368	1284	Scorp Enterprises	1284	MALOOK SINGH	NO RESI		\N	1	2014-01-27 07:33:53.792628	2014-01-27 07:33:53.792628	malook-singh	19.1746996000000003	72.8797453999999902	\N	022-65168890\t/9869665251	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
208	1150	Scorp Enterprises	1150	SANJAY SURESH JADHAV	14, TOPIWALA CHAWL, JAWAHAR NAGAR, KHAR EAST, AADARSH LANE, MUMBAI 51\r\n		\N	44	2013-11-25 07:02:47.159133	2013-11-25 07:02:47.159133	sanjay-suresh-jadhav	19.0759836999999983	72.8776558999999935	\N	14, TOPIWALA CHAWL, JAWAHAR NAGAR, KHAR EAST, AADARSH LANE, MUMBAI 51	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
211	1153	Scorp Enterprises	1153	SUNIL SHIVAJI JADHAV	94/6, DONGAR CHAWL, NAGOBA CHOWK, SWADESHI MILL ROAD, SION CHUNABHATTI, MUMBAI 22\r\n		\N	22	2013-11-25 07:05:33.613633	2013-11-25 07:05:33.613633	sunil-shivaji-jadhav	19.0759836999999983	72.8776558999999935	\N	9920019657/9892733739	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
206	1148	Scorp Enterprises	1148	ASHWIN LOUIS LOBO	102 AASHNA, 8 ST MARTINS ROAD, BANDRA WEST, MUMBAI 400050\r\n		\N	43	2013-11-25 07:00:42.993025	2013-11-25 07:00:42.993025	ashwin-louis-lobo	19.0588493999999997	72.8347004000000027	\N	9819111342/9004546523	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
224	1165	Scorp Enterprises	1165	AJAY TUKARAM AGALE	D-504,ATLAS, LODHA PARADISE, MAJIWADA, OFF EASTERN EXPRESS HIGHWAY, THANE WEST\r\n		\N	68	2013-11-26 07:42:17.263511	2013-11-26 07:42:17.263511	ajay-tukaram-agale	19.2019015000000017	72.96619969999999	\N	9819978037	verified	\N	MAHARASHTRA	thane	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
369	1285	Scorp Enterprises	1285	THAILAMBAL NANDAKUMAR PUSHPAGIRI	NO RESI		\N	1	2014-01-27 07:42:19.726084	2014-01-27 07:42:19.726084	thailambal-nandakumar-pushpagiri	19.1746996000000003	72.8797453999999902	\N	022-27811457/\t9820784204	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
370	1286	Scorp Enterprises	1286	PRASHANT ANNAPPA SHETTIGAR	NO RESI		\N	1	2014-01-27 07:44:25.225384	2014-01-27 07:44:25.225384	prashant-annappa-shettigar	19.1746996000000003	72.8797453999999902	\N	022-44772858\t9967062742	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
230	1171	Scorp Enterprises	1171	NIKITA SANTOSH GHAG	D 2-2,NAVYUVAK CHS,SAI MANDIR ROAD,NEAR CGS COLONY,BHANDUP E\r\n		\N	57	2013-11-27 07:34:36.853751	2013-11-27 07:34:36.853751	nikita-santosh-ghag	19.1389604999999996	72.9379361999999958	\N	8286959048	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
241	1180	Scorp Enterprises	1180	SANJAY PUKHARAJ MUTHA	42 CRIS APEL VAKOLA BRIDGE, SHIVAJI NAGAR, OPP SONA HOSPITAL SANTA CRUZ EAST, MUMBAI 55\r\n		\N	45	2013-11-27 07:48:32.604652	2013-11-27 07:48:32.604652	sanjay-pukharaj-mutha	19.0759836999999983	72.8776558999999935	\N	022-6683515 / 9322365479/9967065479	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
263	1202	Scorp Enterprises	1202	KUNALKUMAR R. PATEL	B-1502, SHIMMERING HEIGHTS, POWAI VIHAR COMPLEX, POWAI, MUMBAI 400076\r\n		\N	57	2013-12-05 07:08:40.252831	2013-12-05 07:08:40.252831	kunalkumar-r-patel--2	19.1179631000000008	72.9015988000000021	\N	9920045765	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
265	1204	Scorp Enterprises	1204	VIREN RAVILAL THAKKAR 	A-1 502 ZENITA APT P.K.ROAD NEAR KALIDAS HALL MULUND WEST MUMBAI 400080\r\n		\N	59	2013-12-05 07:10:45.903914	2013-12-05 07:10:45.903914	viren-ravilal-thakkar	19.1694850000000017	72.9490093999999942	\N	9967593123	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
268	1207	Scorp Enterprises	1207	GIRISH CHANDRAKANT DESAI	204/ B,SHIVSHRUSTI APP.,NARDAS NAGAR,T.P.ROAD,BHANDUP W MUMBAI 400078\r\n		\N	58	2013-12-05 07:14:42.686262	2013-12-05 07:14:42.686262	girish-chandrakant-desai	19.1520170999999984	72.9165265999999974	\N	9757031336/ 9892702112	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
371	1287	Scorp Enterprises	1287	AJAY RAJARAM SHINDE	NO RESI		\N	1	2014-01-27 07:46:20.280244	2014-01-27 07:46:20.280244	ajay-rajaram-shinde	19.1746996000000003	72.8797453999999902	\N	9370104212/8451844212	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
267	1206	Scorp Enterprises	1206	JAYENDRA DATTATRAY DEWALE	X 36/10,GODREJ CREEK SIDE COLONY, VIKHROLI EAST MUMBAI 400079\r\n		\N	58	2013-12-05 07:12:19.547459	2013-12-05 07:12:19.547459	jayendra-dattatray-dewale	19.1027099000000007	72.931917999999996	\N	9870287730	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
372	1288	Scorp Enterprises	1288	SHIV PRAKASH L. MISHRA	NO RESI		\N	1	2014-01-27 07:55:34.017334	2014-01-27 07:55:34.017334	shiv-prakash-l-mishra	19.1746996000000003	72.8797453999999902	\N	022-2581101/ 022-27581106 9320132249	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
264	1203	Scorp Enterprises	1203	VIJAY KUMAR CHIDAMBARAM (1083)	GODREJ GARDEN ENCLAV BLDG NO A-6, FLAT NO 74, VIKHROLI E\r\n		\N	57	2013-12-05 07:09:29.7298	2013-12-05 07:09:29.7298	vijay-kumar-chidambaram-1083--2	19.1045130000000007	72.9268076999999977	\N	9892022808	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
373	1289	Scorp Enterprises	1289	MR HARIVIJAY SADANAND RAUT	NO RESI		\N	1	2014-01-27 07:57:06.144465	2014-01-27 07:57:06.144465	mr-harivijay-sadanand-raut	19.1746996000000003	72.8797453999999902	\N	8898338628/9769108601	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
266	1205	Scorp Enterprises	1205	RAJNISH KUMAR KHANDELWAL	181-KALPATARU AURA-BUILDING 1-A,OPP R-CITY MALL,GHATKOPAR WEST MUMBAI 400086\r\n		\N	60	2013-12-05 07:11:33.009358	2013-12-05 07:11:33.009358	rajnish-kumar-khandelwal	19.0971164999999985	72.91357339999999	\N	25176411 / 9167252425	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
385	1301	Scorp Enterprises	1301	SATYENDRA MOHAN MOHANTY	FLAT NO B-801, SHIVADARSHAN CHS, PLOT NO 5, SECTOR 16, SANPADA, NAVI MUMBAI 400705\r\n		\N	74	2014-02-01 06:50:35.590964	2014-02-01 06:50:35.590964	satyendra-mohan-mohanty	19.0574665000000003	73.0110095999999942	\N	9930308601	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
386	1302	Scorp Enterprises	1302	RAGUL SELVAM NADAR	NO RESI		\N	1	2014-02-01 06:51:49.539552	2014-02-01 06:51:49.539552	ragul-selvam-nadar	19.1746996000000003	72.8797453999999902	\N	022-40305700\t/8898026007	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
387	1303	Scorp Enterprises	1303	AMIT ARUN PARAB	NO RESI		\N	1	2014-02-01 06:53:29.358606	2014-02-01 06:53:29.358606	amit-arun-parab	19.1746996000000003	72.8797453999999902	\N	022-61595800\t/9869107225	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
388	1304	Scorp Enterprises	1304	RAMRAJ GAJRAJ GUPTA 	NO RESI		\N	2	2014-02-01 06:54:46.75762	2014-02-01 06:54:46.75762	ramraj-gajraj-gupta	19.1746996000000003	72.8797453999999902	\N	9967621244	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
249	1188	Scorp Enterprises	1188	SWATI HEMANT BEDRE	TYPE 1, BLDG-2, ROOM NO 21,TCS AREA IITB CAMPUS, POWAI\r\n		\N	57	2013-11-28 07:05:17.066531	2013-11-28 07:05:17.066531	swati-hemant-bedre	19.1196772999999993	72.9050809000000015	\N	9987008310	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
298	1236	Scorp Enterprises	1236	RAJALAKSHMI JAYWANT RANE (1097)	22 NALANDA KVS RESIDENTIAL COMPLEX, N C H COLONY KANJURMARG W, NEAR HUMA ADLABS, MUMBAI 400078\r\n		\N	57	2013-12-10 06:30:17.875008	2013-12-10 06:30:17.875008	rajalakshmi-jaywant-rane-1097	\N	\N	\N	022-25771456 / 9768137519	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
389	1305	Scorp Enterprises	1305	SANDEEP BAPUSO BHILAWADE	FLAT NO 402, KAJAL HERITAGE, SECTOR 12-D, PLOT NO 2A, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	77	2014-02-01 06:56:18.417685	2014-02-01 06:56:18.417685	sandeep-bapuso-bhilawade	19.0997616999999984	73.0021533999999974	\N	9819330382	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
260	1199	Scorp Enterprises	1199	DEEPAK MULJI SHETHIA (1086)	501/502, GARNET NIRMAL LIFESTYLE, LBS MARG, MULUND W, 400080\r\n		\N	59	2013-12-04 09:35:43.775111	2013-12-04 09:35:43.775111	deepak-mulji-shethia-1086	19.1756604999999993	72.9425494999999984	\N	9324025588	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
390	1306	Scorp Enterprises	1306	VIJAY VILAS CHAVAN	NO RESI		\N	1	2014-02-01 06:59:46.748353	2014-02-01 06:59:46.748353	vijay-vilas-chavan	19.1746996000000003	72.8797453999999902	\N	9773914867 / 9870250913	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
258	1197	Scorp Enterprises	1197	SUNIL SHIVAJI PANSARE (1088)	K 203 USHA COMPLEX, KHANDELWAL MARG USHA NAGAR, BHANDUP W, MUMBAI 400078\r\n		\N	57	2013-12-04 09:31:46.286608	2013-12-04 09:31:46.286608	sunil-shivaji-pansare-1088	19.1520170999999984	72.9165265999999974	\N	022-25660641 / 9167193918/9537888378	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
248	1187	Scorp Enterprises	1187	SHANIDEO NAMDEO JADHAV (1057)	TYPE I, BLDG NO 01, ROOM NO 10, TCS, IIT POWAI, MUMBAI \r\n		\N	57	2013-11-28 07:03:01.784936	2013-11-28 07:03:01.784936	shanideo-namdeo-jadhav-1057	19.1196772999999993	72.9050809000000015	\N	9769058082	verified	\N	MAHARASHTRA	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
302	1240	Scorp Enterprises	1240	MR SACHIN MADHUKAR MHETRE	MMD 64 3/4, ARVIND PATIL WADI GHATLA, KHARDEONAGAR CHEMBUR, NEAR LAXMI GENERAL STORES, MUMBAI 400071\r\n		\N	55	2013-12-10 06:37:05.083768	2013-12-10 06:37:05.083768	mr-sachin-madhukar-mhetre	19.0327629999999992	72.9017602999999923	\N	9819546315/9819088150	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
261	1200	Scorp Enterprises	1200	RAJNIKANTH MULJI SHETHIA (1086)	501, GARNET NIRMAL LIFESTYLE, LBS MARG, MULUND W, 400080\r\n		\N	59	2013-12-04 09:40:02.345866	2013-12-04 09:40:02.345866	rajnikanth-mulji-shethia-1086	19.1756604999999993	72.9425494999999984	\N	9324025566	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
391	1307	Scorp Enterprises	1307	ARUN KUMAR PANDEY	NO RESI		\N	1	2014-02-01 07:01:04.054369	2014-02-01 07:01:04.054369	arun-kumar-pandey	19.1746996000000003	72.8797453999999902	\N	022-39663110\t9930766652 / 9820311203	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
392	1308	Scorp Enterprises	1308	SHISHIR SUHANE	B-503/504, CLASSICS SKYLARK CHS, SECOR-15, PLOT NO 21, KOPARKHAIRANE, NAVI MUMBAI 400709\r\n		\N	77	2014-02-01 07:02:35.842966	2014-02-01 07:02:35.842966	shishir-suhane	19.0997616999999984	73.0021533999999974	\N	9820274304	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
271	1210	Scorp Enterprises	1210	SHWETA PRAMOD LAD	B/501, SHRISHTI CO-OP HSG SOCIETY, G D AMBEKAR ROAD, NEAR SU TOWER PAREL, BHOIWADA, MUMBAI 400012\r\n		\N	12	2013-12-05 07:19:02.834719	2013-12-05 07:19:02.834719	shweta-pramod-lad	19.0039398999999989	72.8478554000000003	\N	9870385820/9870386012	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
272	1211	Scorp Enterprises	1211	K S RAMAKRISHNAN	F 95,SHRI NAGAR CHS,P L LOKHANDE MARG,NEAR SHANKARALAYAM TEMPLE,CHEMBUR MUMBAI \r\n		\N	57	2013-12-05 07:20:42.913728	2013-12-05 07:20:42.913728	k-s-ramakrishnan	19.0176169000000002	72.8561287999999934	\N	022-25254515 / 9820346258/ 9833732626	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
273	1212	Scorp Enterprises	1212	JOYDEEP BISWAS	APT 303/304,A -WING,MOUNT EVEREST,BHAKTI PARK,WADALA EAST,NEAR IMAX BIG CINEMAS\r\n		\N	13	2013-12-05 07:26:35.106624	2013-12-05 07:26:35.106624	joydeep-biswas--2	19.0759836999999983	72.8776558999999935	\N	022-24036166 / 9769249110 / 982072762	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
374	1290	Scorp Enterprises	1290	PADMANABAN PERUMAL	NO RESI		\N	58	2014-01-28 10:08:48.17107	2014-01-28 10:08:48.17107	padmanaban-perumal	19.1746996000000003	72.8797453999999902	\N	9702605519	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
393	1309	Scorp Enterprises	1309	OMKAR KISHOR MAHIMKAR	FLAT NO 102, KOKAN CHSL, PLOT NO 33, SECTOR 15, KOPARKHAIRANE, NEAR GULAB SONS DAIRY, NAVI MUMBAI 400709\r\n		\N	77	2014-02-01 07:05:21.036437	2014-02-01 07:05:21.036437	omkar-kishor-mahimkar	19.0997616999999984	73.0021533999999974	\N	9820807073	submitted	\N	MAHARASHTRA	NAVI MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
394	1310	Scorp Enterprises	1310	ANJAN KUMAR MUKHOPADHYAY	NO RESI		\N	1	2014-02-01 07:07:47.917076	2014-02-01 07:07:47.917076	anjan-kumar-mukhopadhyay	19.1746996000000003	72.8797453999999902	\N	9766542432	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
395	1311	Scorp Enterprises	1311	VIJAYANAND NILKANTHRAO GAJBHIYE	NO RESI		\N	1	2014-02-01 07:18:00.568995	2014-02-01 07:18:00.568995	vijayanand-nilkanthrao-gajbhiye	19.1746996000000003	72.8797453999999902	\N	022-61338452\t7738161766	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
303	1241	Scorp Enterprises	1241	SUBRAT TRIPATHI (1104)	112- AKASHGANGA ANUSHAKTI NAGAR, BARC COLONY, MUMBAI 400094\r\n		\N	62	2013-12-10 06:37:39.129765	2013-12-10 06:37:39.129765	subrat-tripathi-1104	19.0266589999999987	72.9283391000000023	\N	022-25561359 / 9969565355	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
396	1312	Scorp Enterprises	1312	SWETA PRAHRAJ	NO RESI		\N	1	2014-02-01 07:19:10.1889	2014-02-01 07:19:10.1889	sweta-prahraj	19.1746996000000003	72.8797453999999902	\N	9819124084	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
397	1313	Scorp Enterprises	1313	MR VINOD MENON	NO RESI		\N	1	2014-02-01 07:20:15.676065	2014-02-01 07:20:15.676065	mr-vinod-menon	19.1746996000000003	72.8797453999999902	\N	9819906069	submitted	\N	MAHARASHTRA	MUMBAI	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
307	1245	Scorp Enterprises	1245	CHANDRA SEKHAR DURVASULU	1006 KANNAN APARTMENT, AMRUT NAGAR, GHATKOPAR WEST, ABOVE MIRCHI HOTEL, MUMBAI 400086\r\n		\N	60	2013-12-11 06:47:06.629863	2013-12-11 06:47:06.629863	chandra-sekhar-durvasulu	19.0971164999999985	72.91357339999999	\N	9223265667/9821039663	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
304	1242	Scorp Enterprises	1242	CHANDRAKANT RAJARAM KAKADE (1103)	304, AASTHA- II OPP LAKME , DEONAR, NEAR ICICI BANK, MUMBAI 400088\r\n		\N	61	2013-12-10 06:40:54.358634	2013-12-10 06:40:54.358634	chandrakant-rajaram-kakade-1103	19.047058100000001	72.9312920999999932	\N	022-25994229 / 9969728364/9225600894	verified	\N	maharashtra	mumbai	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
338	1254	Scorp Enterprises	1254	NILIMA RAVINDRANATH PATIL	301/ NAVDURGA CO-OP HSG SOC LTD, KAKA SOHONI LANE, GHANTALI MANDIR RD, NR P.N. GADGIL JEWELERS, NAUPADA\r\n		\N	65	2014-01-17 07:44:58.877558	2014-01-17 07:44:58.877558	nilima-ravindranath-patil	19.1906773000000008	72.9715233000000012	\N	9594554567	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
339	1255	Scorp Enterprises	1255	PRASHANT PRAMOD CHITGOPEKAR	304/ OCHNA /A PRIDE PARK, GB RD, OPP LAWKIM, THANE\r\n		\N	1	2014-01-17 07:46:37.049699	2014-01-17 07:46:37.049699	prashant-pramod-chitgopekar	19.2183306999999992	72.9780896999999982	\N	022-25891899\t/9833401938	ready_for_verification	\N			INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
340	1256	Scorp Enterprises	1256	PRASHANT PRAMOD CHITGOPEKAR	304/ OCHNA /A PRIDE PARK, GB RD, OPP LAWKIM, THANE\r\n		\N	67	2014-01-17 07:51:19.861838	2014-01-17 07:51:19.861838	prashant-pramod-chitgopekar--2	19.2183306999999992	72.9780896999999982	\N	9833401938	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
341	1257	Scorp Enterprises	1257	KISHOR  AMBADAS DAUD	A/102 KISHOR PARK, PARSIK NGR, OLD PUNE HIGHWAY, KALWA WEST\r\n		\N	76	2014-01-17 07:52:45.828249	2014-01-17 07:52:45.828249	kishor-ambadas-daud	19.2018701000000007	72.9868195999999898	\N	9820195565	submitted	\N	MAHARASHTRA	THANE	INDIA	\N	RESIDENTIAL	f	\N	\N	\N	\N	\N
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customers_id_seq', 397, true);


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

COPY pincodes (id, name, pin_number, created_at, updated_at, city) FROM stdin;
1	Fort	400001	2013-09-21 11:44:43.475559	2013-09-21 11:44:43.475559	\N
2	Kalbadevi	400002	2013-09-21 11:44:43.501367	2013-09-21 11:44:43.501367	\N
3	Masjid(e)	400003	2013-09-21 11:44:43.509094	2013-09-21 11:44:43.509094	\N
4	Girgaum	400004	2013-09-21 11:44:43.517371	2013-09-21 11:44:43.517371	\N
5	Colaba	400005	2013-09-21 11:44:43.525672	2013-09-21 11:44:43.525672	\N
6	Malabar hill	400006	2013-09-21 11:44:43.534017	2013-09-21 11:44:43.534017	\N
7	Grant Road	400007	2013-09-21 11:44:43.543002	2013-09-21 11:44:43.543002	\N
8	Mumbai Central	400008	2013-09-21 11:44:43.551449	2013-09-21 11:44:43.551449	\N
9	Masjid(w)	400009	2013-09-21 11:44:43.559618	2013-09-21 11:44:43.559618	\N
10	Mazgaon	400010	2013-09-21 11:44:43.567927	2013-09-21 11:44:43.567927	\N
11	Jacob Circle	400011	2013-09-21 11:44:43.576346	2013-09-21 11:44:43.576346	\N
12	lalbaug	400012	2013-09-21 11:44:43.584565	2013-09-21 11:44:43.584565	\N
13	delisle road	400013	2013-09-21 11:44:43.59308	2013-09-21 11:44:43.59308	\N
14	Dadar	400014	2013-09-21 11:44:43.601205	2013-09-21 11:44:43.601205	\N
15	Sewree	400015	2013-09-21 11:44:43.609703	2013-09-21 11:44:43.609703	\N
16	Mahim	400016	2013-09-21 11:44:43.617858	2013-09-21 11:44:43.617858	\N
17	Dharavi	400017	2013-09-21 11:44:43.626172	2013-09-21 11:44:43.626172	\N
18	Worli	400018	2013-09-21 11:44:43.634514	2013-09-21 11:44:43.634514	\N
19	Matunga Central	400019	2013-09-21 11:44:43.642871	2013-09-21 11:44:43.642871	\N
20	Churchgate	400020	2013-09-21 11:44:43.651183	2013-09-21 11:44:43.651183	\N
21	Nariman Point	400021	2013-09-21 11:44:43.659681	2013-09-21 11:44:43.659681	\N
22	Sion	400022	2013-09-21 11:44:43.668054	2013-09-21 11:44:43.668054	\N
23	Dalal Street	400023	2013-09-21 11:44:43.676383	2013-09-21 11:44:43.676383	\N
24	Kurla	400024	2013-09-21 11:44:43.684556	2013-09-21 11:44:43.684556	\N
25	Prabhadevi	400025	2013-09-21 11:44:43.693	2013-09-21 11:44:43.693	\N
26	Byculla(e)	400027	2013-09-21 11:44:43.769445	2013-09-21 11:44:43.769445	\N
27	Santacruz(e)	400029	2013-09-21 11:44:43.777694	2013-09-21 11:44:43.777694	\N
28	PGMS Office	400030	2013-09-21 11:44:43.784374	2013-09-21 11:44:43.784374	\N
29	Wadala	400031	2013-09-21 11:44:43.792709	2013-09-21 11:44:43.792709	\N
30	Mantralaya	400032	2013-09-21 11:44:43.801045	2013-09-21 11:44:43.801045	\N
31	Cotton Green	400033	2013-09-21 11:44:43.80936	2013-09-21 11:44:43.80936	\N
32	Haji Ali	400034	2013-09-21 11:44:43.817715	2013-09-21 11:44:43.817715	\N
33	Raj Bhavan	400035	2013-09-21 11:44:43.825974	2013-09-21 11:44:43.825974	\N
34	Kemps corner	400036	2013-09-21 11:44:43.834543	2013-09-21 11:44:43.834543	\N
35	Antop hill	400037	2013-09-21 11:44:43.842654	2013-09-21 11:44:43.842654	\N
36	Ballard Pier	400038	2013-09-21 11:44:43.850984	2013-09-21 11:44:43.850984	\N
37	Ballard Estate	400039	2013-09-21 11:44:43.859578	2013-09-21 11:44:43.859578	\N
38	Jogeshwari(e)	400041	2013-09-21 11:44:43.867921	2013-09-21 11:44:43.867921	\N
39	Bhandup	400042	2013-09-21 11:44:43.876215	2013-09-21 11:44:43.876215	\N
40	Mankhurd	400043	2013-09-21 11:44:43.884428	2013-09-21 11:44:43.884428	\N
41	Vile Parle(e)	400047	2013-09-21 11:44:43.892693	2013-09-21 11:44:43.892693	\N
42	Andheri(w)	400048	2013-09-21 11:44:43.901016	2013-09-21 11:44:43.901016	\N
43	bandra	400050	2013-09-21 11:44:43.912575	2013-09-21 11:44:43.912575	\N
44	Khar	400051	2013-09-21 11:44:43.925959	2013-09-21 11:44:43.925959	\N
45	Santacruz(w)	400054	2013-09-21 11:44:43.941216	2013-09-21 11:44:43.941216	\N
46	Vile parle(w)	400056	2013-09-21 11:44:43.954413	2013-09-21 11:44:43.954413	\N
47	Andheri(e)	400058	2013-09-21 11:44:43.970875	2013-09-21 11:44:43.970875	\N
48	Goregaon(w)	400062	2013-09-21 11:44:43.993806	2013-09-21 11:44:43.993806	\N
49	Goregaon(e)	400063	2013-09-21 11:44:44.000913	2013-09-21 11:44:44.000913	\N
50	Malad(w)	400064	2013-09-21 11:44:44.009211	2013-09-21 11:44:44.009211	\N
51	Goregoan(e)	400065	2013-09-21 11:44:44.017743	2013-09-21 11:44:44.017743	\N
52	Borivali(e)	400066	2013-09-21 11:44:44.025894	2013-09-21 11:44:44.025894	\N
53	Kandivali(w)	400067	2013-09-21 11:44:44.03427	2013-09-21 11:44:44.03427	\N
54	Dahisar	400068	2013-09-21 11:44:44.042568	2013-09-21 11:44:44.042568	\N
55	Chembur	400071	2013-09-21 11:44:44.057235	2013-09-21 11:44:44.057235	\N
56	Ghatkopar	400075	2013-09-21 11:44:44.073912	2013-09-21 11:44:44.073912	\N
57	Powai	400076	2013-09-21 11:44:44.084221	2013-09-21 11:44:44.084221	\N
58	Vikroli	400079	2013-09-21 11:44:44.098899	2013-09-21 11:44:44.098899	\N
59	Mulund	400080	2013-09-21 11:44:44.217417	2013-09-21 11:44:44.217417	\N
60	Niete	400087	2013-09-21 11:44:44.358438	2013-09-21 11:44:44.358438	\N
61	Deonar	400088	2013-09-21 11:44:44.367451	2013-09-21 11:44:44.367451	\N
62	Borivali(w)	400091	2013-09-21 11:44:44.382145	2013-09-21 11:44:44.382145	\N
63	Malad(e)	400097	2013-09-21 11:44:44.398534	2013-09-21 11:44:44.398534	\N
64	Kandivali(e)	400101	2013-09-21 11:44:44.415172	2013-09-21 11:44:44.415172	\N
65	Jogeshwari(w)	400102	2013-09-21 11:44:44.425494	2013-09-21 11:44:44.425494	\N
66	Bhayandar(e)	400105	2013-09-21 11:44:44.440236	2013-09-21 11:44:44.440236	\N
67	Thane	400601	2013-09-21 11:44:44.453684	2013-09-21 11:44:44.453684	\N
68	Kalwa	400605	2013-09-21 11:44:44.476668	2013-09-21 11:44:44.476668	\N
69	Mumbra	400612	2013-09-21 11:44:44.4933	2013-09-21 11:44:44.4933	\N
70	Turbhe	400613	2013-09-21 11:44:44.500444	2013-09-21 11:44:44.500444	\N
71	CBD	400614	2013-09-21 11:44:44.508988	2013-09-21 11:44:44.508988	\N
72	Ghansoli	400701	2013-09-21 11:44:44.517253	2013-09-21 11:44:44.517253	\N
73	Uran	400702	2013-09-21 11:44:44.525574	2013-09-21 11:44:44.525574	\N
74	Vashi	400703	2013-09-21 11:44:44.533934	2013-09-21 11:44:44.533934	\N
75	Nerul	400706	2013-09-21 11:44:44.548601	2013-09-21 11:44:44.548601	\N
76	Airoli	400708	2013-09-21 11:44:44.558978	2013-09-21 11:44:44.558978	\N
77	KK	400709	2013-09-21 11:44:44.567313	2013-09-21 11:44:44.567313	\N
78	Bhayandar(w)	401101	2013-09-21 11:44:44.578994	2013-09-21 11:44:44.578994	\N
79	Umparpada	401102	2013-09-21 11:44:44.592109	2013-09-21 11:44:44.592109	\N
80	Dahanu(w)	401103	2013-09-21 11:44:44.600617	2013-09-21 11:44:44.600617	\N
81	Mira Road(e)	401104	2013-09-21 11:44:44.608771	2013-09-21 11:44:44.608771	\N
82	Vasai(w)	401201	2013-09-21 11:44:44.626665	2013-09-21 11:44:44.626665	\N
83	Nalasopara(w)	401203	2013-09-21 11:44:44.637126	2013-09-21 11:44:44.637126	\N
84	Virar(e)	401204	2013-09-21 11:44:44.650801	2013-09-21 11:44:44.650801	\N
85	Vasai(e)	401205	2013-09-21 11:44:44.659051	2013-09-21 11:44:44.659051	\N
86	NalaSopara(e)	401209	2013-09-21 11:44:44.678066	2013-09-21 11:44:44.678066	\N
87	Virar(w)	401301	2013-09-21 11:44:44.695627	2013-09-21 11:44:44.695627	\N
88	Palghar(e)	401404	2013-09-21 11:44:44.718523	2013-09-21 11:44:44.718523	\N
89	Palghar(w)	401501	2013-09-21 11:44:44.725436	2013-09-21 11:44:44.725436	\N
90	Dahanu(e)	401601	2013-09-21 11:44:44.746483	2013-09-21 11:44:44.746483	\N
91	Dahanu	401608	2013-09-21 11:44:44.765269	2013-09-21 11:44:44.765269	\N
92	Panvel	410206	2013-09-21 11:44:44.778538	2013-09-21 11:44:44.778538	\N
93	Kamothe	410209	2013-09-21 11:44:44.795396	2013-09-21 11:44:44.795396	\N
94	Kharghar	410210	2013-09-21 11:44:44.808749	2013-09-21 11:44:44.808749	\N
95	Kalamboli	410218	2013-09-21 11:44:44.817092	2013-09-21 11:44:44.817092	\N
96	Ulhasnagar	421001	2013-09-21 11:44:44.825366	2013-09-21 11:44:44.825366	\N
97	Ambivali	421102	2013-09-21 11:44:44.846474	2013-09-21 11:44:44.846474	\N
98	Dombivali	421201	2013-09-21 11:44:44.858683	2013-09-21 11:44:44.858683	\N
99	Kalyan	421301	2013-09-21 11:44:44.876723	2013-09-21 11:44:44.876723	\N
100	Bhiwandi	421302	2013-09-21 11:44:44.883693	2013-09-21 11:44:44.883693	\N
101	Wada	421303	2013-09-21 11:44:44.892025	2013-09-21 11:44:44.892025	\N
102	Ambernath	421501	2013-09-21 11:44:44.910012	2013-09-21 11:44:44.910012	\N
103	Badlapur	421506	2013-09-21 11:44:44.926431	2013-09-21 11:44:44.926431	\N
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
11	6	2013-10-28 09:12:21.417993	2013-10-28 09:12:21.426898	\N	\N	\N	6	\N	\N	\N	\N	\N	\N	\N
10	5	2013-10-28 09:08:06.570751	2014-01-27 13:03:06.384765	verifime.PNG	image/png	7118	5					2014-01-27	\N	
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
20131117062235
20130930104213
20130930104233
20130930104307
20130930105302
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
44	147	1	t	t	2013-11-18	10:32:18	self		3	Rented	others	Married	3	3	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Passport H9137495\r\nTYPE OF LOAN HOME LOAN 1.2 CR.\r\n	\N	Accept	2013-11-18 05:05:35.740012	2013-11-18 05:05:35.740012	1960-02-09		\N		
45	146	1	t	t	2013-11-18	10:35:59	self		3	\N	others	Married	3	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	GAS BILL NO 644226,\r\nTYPE OF LOAN HOME AMNT 1 CR.\r\nQUALIFICATION M.B.A.	\N	Accept	2013-11-18 05:08:35.310674	2013-11-18 05:08:35.310674	1972-02-29	AFEPR7365A	\N		
46	145	1	t	t	2013-11-18	10:38:39	JYOTI	mother	20	Owned By Parents	others	Married	3	1	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Electricity Bill 000092149846\r\nQUALIFICATION B.COM.\r\nTYPE OF LOAN HOME AMNT 20 LAC	\N	Accept	2013-11-18 05:12:09.040048	2013-11-18 05:12:09.040048	1985-02-02	AKBPD8985A	\N		000092149846
47	142	1	t	t	2013-11-18	10:42:12	BINDHULAKSHMI	wife	6	Company Accomodation	others	Married	4	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	QUALIFICATION PHD,\r\nTYPE OF LOAN HOME LOAN AMNT IS 55 LAC	\N	Accept	2013-11-18 05:14:52.460642	2013-11-18 05:14:52.460642	1971-06-01	AEQPC0654Q	\N		
48	141	1	t	t	2013-11-18	10:44:58	NILESH	SECURITY	6	Rented	others	Married	2	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	QUALIFICATION B.E.\r\n,DOCUMENT VERIFY RENTED AGREEMENT EXPIRY DATE-JUN 2014\r\nTYPE OF LOAN CAR LOAN 5.2 LAKHS.	\N	Accept	2013-11-18 05:17:47.741972	2013-11-18 05:17:47.741972	1973-06-16		\N		
49	127	1	t	t	2013-11-18	10:47:55	JADHAV	SECURITY	\N	Rented	others	Married	\N	\N	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	NAME PLATE SEEN AS C/37 SHEELA NARENDRA INGALE.	\N	Accept	2013-11-18 05:19:49.147921	2013-11-18 05:19:49.147921	2013-11-18		\N		
50	125	1	t	t	2013-11-18	10:49:55	self		2	Rented	others	Married	2	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	AGREEMENT EXPIRES ON MAR-14,\r\nTYPE OF LOAN CAR AMNT IS 4LAC	\N	Accept	2013-11-18 05:22:42.189912	2013-11-18 05:22:42.189912	1979-01-21	AJYPG0263C	\N		
51	152	1	t	t	2013-11-18	15:45:04	sandhya gajare	wife	5	\N	others	Married	6	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt---8lac	\N	Accept	2013-11-18 10:17:44.954022	2013-11-18 10:17:44.954022	1968-06-01	ajypg7902j	\N		101321771705(reliance)
52	153	1	t	t	2013-11-18	15:48:05	self	self	5	\N	Graduate	Self Owned	6	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--8lac	\N	Accept	2013-11-18 10:20:18.460956	2013-11-18 10:20:18.460956	1973-09-15	awcpg6882a	\N		101321771705(reliance)
53	154	1	t	t	2013-11-18	15:51:08	self	self	30	\N	others	Married	5	3	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--40lac	\N	Accept	2013-11-18 10:26:33.26838	2013-11-18 10:26:33.26838	2013-03-31	aagpm0230q	\N		101591277351(reliance)
54	156	1	t	t	2013-11-19	16:40:01	aasma gardi	wife	1	Company Accomodation	others	Married	5	1	3	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Telephone Bill---000000215942112013(vadafone)\r\nTol--car\r\nAmt--2.3lac	\N	Accept	2013-11-19 11:13:06.317729	2013-11-19 11:13:06.317729	1970-06-10	ajepg8874s	\N		
55	168	1	t	t	2013-11-20	15:25:53	bhanu singh	security	16	\N	Graduate	Unmarried	3	3	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt---75lac	\N	Accept	2013-11-20 09:57:31.211779	2013-11-20 09:57:31.211779	1982-07-29		\N		
56	167	1	t	t	2013-11-20	15:30:21			\N	Rented	\N	Married	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--30lac\r\nPan--addpv6986a	\N	Accept	2013-11-20 10:01:46.417889	2013-11-20 10:01:46.417889	2013-11-20		\N		
57	172	1	t	t	2013-11-21	14:52:39	sarita kunder	bhabhi	2	Rented	others	Unmarried	6	3	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--31lac\r\nRent expired date--jun2014\r\n	\N	Accept	2013-11-21 09:25:06.345953	2013-11-21 09:25:06.345953	1980-11-01	aotpk6039a	\N		
58	180	1	t	t	2013-11-22	16:46:41	ammu jacob	wife	6	Company Accomodation	\N	Married	1	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--42lac	\N	Accept	2013-11-22 11:18:07.407535	2013-11-22 11:18:07.407535	2013-11-22		\N		
59	173	1	t	t	2013-11-22	16:48:30	smita rathod	wife	4	\N	others	Married	3	1	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--7.7lac	\N	Accept	2013-11-22 11:20:42.076423	2013-11-22 11:20:42.076423	1977-11-01	aempr6373r	\N		100575825834(reliance)
60	178	1	t	t	2013-11-22	16:51:00	self	self	2	Married	Graduate	Unmarried	5	3	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--18.29lac\r\nPhone bill---1104123718(mtnl)	\N	Accept	2013-11-22 11:23:32.8863	2013-11-22 11:23:32.8863	1979-10-31	arhpk6185e	\N		
61	177	1	t	t	2013-11-22	16:53:49	rajesh shelar	security	10	\N	others	Married	2	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-22 11:24:51.928148	2013-11-22 11:24:51.928148	2013-11-22		\N		
62	188	3	t	t	2013-11-22	17:04:58	self		26	\N	Under Graduate	Married	5	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	FCATION H.S.C PASS ,\r\nTYPE OF LOAN HOME LOAN AMNT 12 LAC	\N	Accept	2013-11-22 11:37:09.378255	2013-11-22 11:37:09.378255	1961-10-07		\N		
63	179	1	t	t	2013-11-23	17:11:51	madhukar shinde	father	21	\N	others	Unmarried	5	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAmt---3.94lac\r\n	\N	Accept	2013-11-23 11:44:37.819793	2013-11-23 11:44:37.819793	1992-04-13	eaaps2287h	\N		000057294507
64	205	3	t	t	2013-11-23	17:15:04	SANDHYA	wife	7	\N	Graduate	Married	5	4	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	TYPE OF LOAN HOME AMNT 25 LAC	\N	Accept	2013-11-23 11:47:10.417332	2013-11-23 11:47:10.417332	1960-06-25		\N		
65	195	1	t	t	2013-11-23	17:15:04	self	self	9	Rented	Post Graduate	Married	2	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--40 lac\r\nRent expird date--jan-2015	\N	Accept	2013-11-23 11:48:09.571633	2013-11-23 11:48:09.571633	1983-11-01	adwpt2088e	\N		
66	204	3	t	t	2013-11-23	17:17:20	SANGITA	wife	1	Rented	Post Graduate	Married	4	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DOCUMENT VERIFY RENTED AGREEMENT EXPIRY DATE-JUNE 2014\r\nTYPE OF LOAN HOME LOAN 5 LAKHS.	\N	Accept	2013-11-23 11:49:31.196224	2013-11-23 11:49:31.196224	1963-10-29		\N		
67	203	3	t	t	2013-11-23	17:19:38	HINA KANOLE	WIFE	7	\N	Post Graduate	Married	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	SALARY IS 15 LAC ANNUL INCOME,\r\n TYPE OF LOAN CAR LOAN AMNT 6.25 LAC	\N	Accept	2013-11-23 11:52:27.987905	2013-11-23 11:52:27.987905	1970-07-13	ALBPK3684Q	\N		029470210239
68	191	1	t	t	2013-11-23	17:21:41	rishikesh paphale 	son	5	\N	Graduate	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--lac	\N	Accept	2013-11-23 11:53:47.846349	2013-11-23 11:53:47.846349	1962-01-15		\N		000095099297
69	194	1	t	t	2013-11-23	17:24:04	anirudda thorat	son	1	\N	others	Married	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--8lac	\N	Accept	2013-11-23 11:55:46.143479	2013-11-23 11:55:46.143479	1964-04-28	aejpt2991n	\N		
70	193	1	t	t	2013-11-23	17:28:27	azaruddin modi	son	30	Company Accomodation	others	Married	5	3	3	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Telephone Bill--1051365958\r\nTol--home\r\nAmt--34lac	\N	Accept	2013-11-23 12:00:41.784428	2013-11-23 12:00:41.784428	2013-05-12	afjpm7611m	\N		
71	192	1	t	t	2013-11-23	17:30:51	azaruddin modi	son	30	Company Accomodation	others	Married	5	3	3	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Telephone Bill--1051365958\r\nTol--home\r\nAmt--34lac	\N	Accept	2013-11-23 12:02:52.600951	2013-11-23 12:02:52.600951	1965-06-01	agypm7826n	\N		
72	189	1	t	t	2013-11-23	17:34:16	rashmin samel	brother	50	\N	others	Married	8	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--6lac	\N	Accept	2013-11-23 12:06:44.887346	2013-11-23 12:06:44.887346	1964-03-16	bujps4536d	\N		101471534961
73	210	3	t	t	2013-11-25	13:38:32	priya	wife 	6	\N	Post Graduate	Married	3	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Telephone Bill no 15556551120\r\nType of loan-home loan,\r\nLoan amt-80 lac\r\n	\N	Accept	2013-11-25 08:20:48.989446	2013-11-25 08:20:48.989446	1978-09-15	ahlpm6283b	\N		
74	211	3	t	t	2013-11-26	11:01:43	suman jadhav	mother	28	Owned By Parents	others	Married	4	3	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Sitting Chawl	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-26 05:35:03.952949	2013-11-26 05:35:03.952949	1985-12-16		\N		
75	206	3	t	t	2013-11-26	11:19:19	self		10	Owned By Parents	others	Unmarried	7	4	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-education loan \r\nLoan amt-25 lacs	\N	Accept	2013-11-26 05:56:51.121825	2013-11-26 05:56:51.121825	1983-05-03	acqpl5667a	\N		2038848
76	208	3	t	t	2013-11-26	11:32:44	ajay jadhav	father	30	Owned By Parents	Graduate	Married	6	2	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Sitting Chawl	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nLoan amt-14 lac	\N	Accept	2013-11-26 06:05:53.156107	2013-11-26 06:05:53.156107	1983-12-07		\N		
77	217	1	t	t	2013-11-26	17:41:27	rahul shirke	son	17	\N	others	Married	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\r\nTol---home\r\nAmt--25lac\r\nAdhaar id--668694364603	\N	Accept	2013-11-26 12:23:05.647145	2013-11-26 12:23:05.647145	1968-09-19		\N		
78	226	3	t	t	2013-11-26	18:56:52	self		1	\N	others	Married	3	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan  home loan \r\n Loan amt 3 lac 25000. Amt;	\N	Accept	2013-11-26 13:37:53.299068	2013-11-26 13:37:53.299068	1985-10-04	aobpvg7912e	\N		23365421
79	224	3	t	t	2013-11-26	23:19:10	sonali  agale 	wife 	1	\N	others	Married	3	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan home loan\r\nLoan amt3lac 25000 	\N	Accept	2013-11-26 17:59:32.624428	2013-11-26 17:59:32.624428	1982-11-29	 AIIPG1625k	\N		23365421
80	224	3	t	t	2013-11-26	23:19:10	nilam agale	wife 	4	Owned By Parents	others	Married	6	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan home loan\r\nloanamt 25 lac	\N	Accept	2013-11-26 18:25:59.58006	2013-11-26 18:25:59.58006	1980-03-28	aidpa5460f 	\N		36003456
81	225	3	t	t	2013-11-27	11:45:22	nishigandha	wife 	5	\N	others	Married	4	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2013-11-27 06:18:52.19849	2013-11-27 06:18:52.19849	1963-06-01		\N		29
82	230	1	t	t	2013-11-27	15:34:04	santosh ghag	father	15	\N	others	Unmarried	8	5	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAmt--1.80lac	\N	Accept	2013-11-27 10:06:20.884318	2013-11-27 10:06:20.884318	1991-10-31	atwpg3710a	\N		000052119103
83	239	1	t	t	2013-11-27	15:36:52	vinita thomas	neighbour	4	Rented	\N	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-27 10:08:14.572491	2013-11-27 10:08:14.572491	2013-11-27		\N		
84	228	1	t	t	2013-11-27	15:38:21	vinita thomas	neighbour	4	Rented	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-27 10:09:11.451726	2013-11-27 10:09:11.451726	2013-11-27		\N		
85	241	3	t	t	2013-11-28	14:29:20	p p mutha	grand mother	5	\N	others	Married	6	3	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-28 09:03:27.920438	2013-11-28 09:03:27.920438	1966-03-02		\N		100713571
86	241	3	t	t	2013-11-28	14:29:20	p p mutha	grand mother	5	\N	others	Married	6	3	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-11-28 09:03:31.546379	2013-11-28 09:03:31.546379	1966-03-02		\N		100713571
88	249	1	t	t	2013-11-29	11:27:27	self	self	4	\N	others	Married	5	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--19lac	\N	Accept	2013-11-29 06:01:31.828146	2013-11-29 06:01:31.828146	1979-12-28	bgfpb1741k	\N		
89	248	1	t	t	2013-11-29	11:34:40	seema jadhav	wife	2	Company Accomodation	others	Married	3	3	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt---19.70lac	\N	Accept	2013-11-29 06:06:50.175098	2013-11-29 06:06:50.175098	1984-04-13	ahxpj3556g	\N		
90	258	3	t	t	2013-12-05	10:33:55	meenakshi	wife 	12	Rented	others	Self Owned	4	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nloan amt-36.50 lac 	\N	Accept	2013-12-05 05:09:10.009959	2013-12-05 05:09:10.009959	1967-11-08	adxpp9766e	\N		
91	258	3	t	t	2013-12-05	10:33:55	meenakshi	wife 	12	Rented	others	Self Owned	4	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nloan amt-36.50 lac 	\N	Accept	2013-12-05 05:09:11.161379	2013-12-05 05:09:11.161379	1967-11-08	adxpp9766e	\N		
92	258	3	t	t	2013-12-05	10:39:44	meenakshi	wife 	12	\N	Graduate	Married	4	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-05 05:10:55.222189	2013-12-05 05:10:55.222189	1967-11-08	adxpp9766e	\N		
93	261	3	t	t	2013-12-05	10:41:57	mulji sethia	father	4	Rented	others	Married	11	4	4	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Aggriment expire on-2015	\N	\N	2013-12-05 05:16:49.841711	2013-12-05 05:16:49.841711	1976-08-30		\N		
94	260	3	t	t	2013-12-05	10:49:51	mulji sethia	father	4	Rented	others	Married	11	4	4	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Aggriment expire on-2015	\N	Accept	2013-12-05 05:22:14.238031	2013-12-05 05:22:14.238031	1978-04-07	aqrps5733p	\N		
95	273	3	t	t	2013-12-06	10:16:06	pratibha 		\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2013-12-06 04:46:38.380846	2013-12-06 04:46:38.380846	2013-12-06		\N		
96	271	3	t	t	2013-12-06	10:19:40	self		20	\N	others	Married	4	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2013-12-06 04:52:49.301442	2013-12-06 04:52:49.301442	1966-02-10	aaqpl7420b	\N		
97	272	3	t	t	2013-12-06	10:26:11	rajeshwari	wife 	25	\N	others	Married	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nloan amt-50 lac 	\N	Accept	2013-12-06 04:58:18.593431	2013-12-06 04:58:18.593431	1961-08-26		\N		
98	267	1	t	t	2013-12-06	11:55:34	sarita dewale	mother	14	Company Accomodation	others	Unmarried	4	2	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--edu\r\nAmt--7.5lac	\N	Accept	2013-12-06 06:27:09.325524	2013-12-06 06:27:09.325524	1992-12-06		\N		
99	264	1	t	t	2013-12-06	12:09:53	rekha lamge	mother &law	2	\N	others	Married	4	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-06 06:41:33.307572	2013-12-06 06:41:33.307572	1971-09-29		\N		7107407874
100	263	1	t	t	2013-12-06	12:11:53	hiran patel	wife	3	\N	Post Graduate	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--5.76lac	\N	Accept	2013-12-06 06:44:02.009355	2013-12-06 06:44:02.009355	1981-12-11		\N		
101	265	1	t	t	2013-12-06	12:16:34	kashmira thakkar	wife	9	\N	others	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car	\N	Accept	2013-12-06 06:48:35.145166	2013-12-06 06:48:35.145166	1970-09-10	aaapt7863l	\N		000090793730
102	266	1	t	t	2013-12-06	15:10:07	suman khandelwal	wife	3	Rented	Post Graduate	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--1.25core\r\nRent ex date---july 2015	\N	Accept	2013-12-06 09:42:42.195207	2013-12-06 09:42:42.195207	1971-02-13	aagpk7597q	\N		
103	268	1	t	t	2013-12-06	15:12:58	gauravi desai	wife	2	\N	Graduate	Married	5	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--11lac\r\nAdhaar id---966831945601	\N	Accept	2013-12-06 09:45:08.058001	2013-12-06 09:45:08.058001	1969-01-20		\N		000060119651
104	276	1	t	t	2013-12-06	15:57:20	self	self	7	\N	others	Married	6	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--17lac	\N	Accept	2013-12-06 10:28:57.783304	2013-12-06 10:28:57.783304	1980-06-16	awnps8296m	\N		
105	279	3	t	t	2013-12-07	12:59:07	self		5	\N	others	Married	3	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nLoan amt-30 lac 	\N	Accept	2013-12-07 07:31:34.508321	2013-12-07 07:31:34.508321	1968-02-20	aaipw6597q	\N		
106	278	1	t	t	2013-12-07	15:25:11	poonam khatry	wife	6	\N	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--27lac	\N	Accept	2013-12-07 09:57:27.320046	2013-12-07 09:57:27.320046	1972-07-24	aafpk4912n	\N		100725544396(reliance)
107	278	1	t	t	2013-12-07	15:25:11	poonam khatry	wife	6	\N	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--27lac	\N	Accept	2013-12-07 09:57:30.500647	2013-12-07 09:57:30.500647	1972-07-24	aafpk4912n	\N		100725544396(reliance)
108	278	1	t	t	2013-12-07	15:25:11	poonam khatry	wife	6	\N	others	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-07 09:57:40.202066	2013-12-07 09:57:40.202066	1972-07-24	aafpk4912n	\N		100725544396(reliance)
110	287	3	t	t	2013-12-09	10:12:17	self		3	Company Accomodation	others	Married	2	2	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-personal loan\r\nLoan amt-3 lac 	\N	Accept	2013-12-09 04:45:26.621425	2013-12-09 04:45:26.621425	1990-01-05		\N		
111	286	3	t	t	2013-12-09	10:15:46	meenadevi mishra	wife 	2	Company Accomodation	others	Married	4	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- company-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-personal loan\r\nloan amt-3 lac 	\N	Accept	2013-12-09 04:48:09.826533	2013-12-09 04:48:09.826533	1974-05-22	awyrpm3426h	\N		
112	285	3	t	t	2013-12-09	10:18:19	chitrarekha netam	wife 	2	Company Accomodation	others	Married	3	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-personal loan\r\nloan amt-1.50 lac 	\N	Accept	2013-12-09 04:50:48.42639	2013-12-09 04:50:48.42639	1973-08-05	afepn3802q	\N		
109	289	3	t	t	2013-12-09	10:08:10	self		3	Company Accomodation	Post Graduate	Married	1	1	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	Flat	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	Type of loan-car loan\r\nloan amt-5 lac 	\N	Accept	2013-12-09 04:41:49.983213	2013-12-09 12:20:21.007769	1986-06-14	cmaps6815f	\N		
113	283	1	t	t	2013-12-10	09:10:38	shivi singh	wife	5	Rented	others	Married	2	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--6.56lac\r\n	\N	Accept	2013-12-10 03:44:57.731541	2013-12-10 03:44:57.731541	1985-05-12	bempm2804k	\N		
114	283	1	t	t	2013-12-10	09:10:38	shivi singh	wife	5	Rented	others	Married	2	2	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	tol---car\r\nAmt--6.56lac\r\nRent exprid date--jun2015	\N	Accept	2013-12-10 03:47:25.493464	2013-12-10 03:47:25.493464	1985-05-12	bempm2804k	\N		
115	302	3	t	t	2013-12-11	09:20:27	jyoti mhetre	wife 	15	Owned By Parents	others	Married	5	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Sitting Chawl	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nloan amt-9 lac 	\N	Accept	2013-12-11 03:53:24.331567	2013-12-11 03:53:24.331567	1976-09-15	aovpm3488b	\N		2082113
116	303	3	f	f	2013-12-11	09:23:47	renuka	neighbour	10	Company Accomodation	others	Married	2	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-11 03:55:23.532156	2013-12-11 03:55:23.532156	2013-12-11		\N		
117	298	1	t	t	2013-12-11	09:28:55	jaywant rane	husband	12	Company Accomodation	Graduate	Married	3	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--12lac\r\nAdhaar id--212675400359	\N	Accept	2013-12-11 04:01:34.473965	2013-12-11 04:01:34.473965	1966-11-21		\N		
118	296	3	t	t	2013-12-11	09:31:05	vivek	son	10	Company Accomodation	others	Married	2	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-car loan\r\nLoan amt-4.68 lac 	\N	Accept	2013-12-11 04:04:27.986852	2013-12-11 04:04:27.986852	1982-07-04	asqpb4408q	\N		
119	308	1	t	t	2013-12-11	16:43:03	mina thakkar	mother	8	\N	others	Married	5	2	1	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--30lac	\N	Accept	2013-12-11 11:15:11.331873	2013-12-11 11:15:11.331873	1984-11-15	aeupt5416p	\N		000050150097
120	307	1	t	t	2013-12-11	16:48:13	self	self	5	\N	others	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--35lac	\N	Accept	2013-12-11 11:20:49.075227	2013-12-11 11:20:49.075227	1980-08-19	aimpd6612r	\N		100903588388
121	309	1	t	t	2013-12-11	16:54:21	gurzeet kour	wife	40	\N	others	Married	12	3	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--21lac\r\nAdhaar id--832284391626	\N	Accept	2013-12-11 11:27:33.00616	2013-12-11 11:27:33.00616	1969-12-22		\N		100306110029(reliance)
123	304	3	t	t	2013-12-12	20:05:13	geeta	wife 	6	Company Accomodation	others	Married	3	2	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- neighbour\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nloan amt-64 lac\r\nQulification-b.e	\N	Accept	2013-12-12 14:38:21.18581	2013-12-12 14:38:21.18581	1980-02-02		\N		
124	288	3	t	t	2013-12-12	20:09:04	self		1	Company Accomodation	others	Married	3	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-personal loan\r\nloan amt-3.60 lac 	\N	Accept	2013-12-12 14:40:53.009604	2013-12-12 14:40:53.009604	1980-08-10		\N		
125	315	3	t	t	2013-12-12	20:11:54	prabha deshmukh	wife 	7	Owned By Parents	others	Married	4	2	0	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Type of loan-home loan\r\nLoan amt-25 lac\r\nQulification-b tech	\N	Accept	2013-12-12 14:45:05.054054	2013-12-12 14:45:05.054054	1990-04-27	bdgpd0391q	\N		
126	294	3	\N	\N	2013-12-12	20:28:18			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-12 14:58:25.683511	2013-12-12 14:58:25.683511	2013-12-12		\N		
127	295	3	t	t	2013-12-12	20:28:49	rashmi		\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2013-12-12 14:59:35.750683	2013-12-12 14:59:35.750683	2013-12-12		\N		
128	295	3	t	t	2013-12-12	20:28:49	rashmi	wife 	6	\N	others	Married	4	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-12 15:01:56.017577	2013-12-12 15:01:56.017577	1961-05-30	aaxpg1631q	\N		2050269171
129	295	3	t	t	2013-12-12	20:28:49	rashmi	wife 	6	\N	others	Married	4	1	1	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2013-12-12 15:02:04.950512	2013-12-12 15:02:04.950512	1961-05-30	aaxpg1631q	\N		2050269171
130	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	\N	others	Married	\N	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:10:14.453679	2014-01-21 14:10:14.453679	1982-01-21	adrte5436y	\N		000092290166
131	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	\N	others	Married	\N	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:10:15.511297	2014-01-21 14:10:15.511297	1982-01-21	adrte5436y	\N		000092290166
132	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	\N	others	Married	\N	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:10:31.451756	2014-01-21 14:10:31.451756	1982-01-21	adrte5436y	\N		000092290166
133	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	\N	others	Married	4	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:11:03.430287	2014-01-21 14:11:03.430287	1982-01-21	adrte5436y	\N		000092290166
134	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	\N	others	Married	4	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:11:26.14099	2014-01-21 14:11:26.14099	1982-01-21	adrte5436y	\N		000092290166
135	346	1	t	t	2014-01-21	19:37:32	seema	mother	2	Owned By Parents	others	Married	4	4	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- watchman\n- ''\n	Flat	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ration Card,\r\nElectricity Bill	\N	Accept	2014-01-21 14:12:00.696097	2014-01-21 14:12:00.696097	1982-01-21	adrte5436y	\N		000092290166
136	359	1	t	t	2014-01-27	13:43:13	shila gadiyar	mother	34	Owned By Parents	others	Unmarried	3	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--21lac	\N	Accept	2014-01-27 08:15:09.476986	2014-01-27 08:15:09.476986	1979-12-02		\N		
137	366	3	t	t	2014-01-27	16:31:34	gujan	mother	\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	2014-01-27 11:51:44.80695	2014-01-27 11:51:44.80695	2014-01-27		\N		
138	360	1	t	t	2014-01-28	11:14:31	samruddhi jadhav	doughter	20	\N	Graduate	Married	\N	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--6lac	\N	Accept	2014-01-28 05:52:00.74571	2014-01-28 05:52:00.74571	1967-05-18	aidpj1409m	\N		
139	361	1	t	t	2014-01-28	11:22:13	shaila minge	wife	7	\N	others	Married	3	1	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--30lac	\N	Accept	2014-01-28 05:54:51.639592	2014-01-28 05:54:51.639592	1960-01-01	aaeph9976j	\N		
140	375	1	t	t	2014-01-28	16:16:26	taramati	mother	25	\N	others	Married	2	\N	\N	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- name-plate\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Remark---third partyb is confrmation	\N	Accept	2014-01-28 10:48:55.65832	2014-01-28 10:48:55.65832	2014-01-28		\N		
141	376	1	t	t	2014-01-28	16:30:08	akkatai	mother	36	\N	Graduate	Married	4	1	0	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--home\r\nAmt--5.13lac\r\n	\N	Accept	2014-01-28 11:02:24.200545	2014-01-28 11:02:24.200545	1977-08-24	aldpk4509j	\N		
142	380	1	t	t	2014-01-29	10:01:25	Shovha	mother	20	Company Accomodation	Post Graduate	Married	5	2	2	f		f	\N	\N	\N	\N	\N	polite	positive	---\n- company-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--car\r\nAmt--5.70lac	\N	Accept	2014-01-29 04:33:19.155195	2014-01-29 04:33:19.155195	1974-10-20		\N		
143	382	1	t	t	2014-01-29	10:13:05	aasha	wife	30	Company Accomodation	others	Married	4	1	2	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- society-board\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol--pl\r\nAmt--3lac\r\n	\N	Accept	2014-01-29 04:45:29.452089	2014-01-29 04:45:29.452089	2014-01-29	adapk8332l	\N		
144	165	2	t	\N	2014-01-29	16:43:07			\N	\N	\N	\N	\N	\N	\N	\N		f	\N	\N	\N	\N	\N	polite	positive	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	Accept	2014-01-29 11:20:13.592821	2014-01-29 11:20:13.592821	2014-01-29		\N		
\.


--
-- Name: serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serveys_id_seq', 144, true);


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
2	scorpeo.tab1@gmail.com	$2a$10$cyFp7iE88/ikiAOt2hQ3JO9uuXcHWN7lO9x3paAToAPkg/2vaFzm2	\N	\N	\N	82	2014-02-01 09:11:05.018984	2014-01-30 04:31:10.831645	115.248.231.170	122.179.151.135	2013-09-21 12:48:30.353638	2014-02-01 09:11:05.020006	tab_user	scorpeo.tab1	1
1	avcv@scorpeo.in	$2a$10$bwzp8.ePaE48C4sJ6wMmWOj9yCzTgR2GBfJan8eWDAVBHNa/mFjpC	\N	\N	\N	291	2014-02-01 11:56:55.637851	2014-02-01 11:39:47.393006	115.248.231.170	115.248.231.170	2013-09-21 12:47:19.137738	2014-02-01 11:56:55.64093	super_user	data entry	1
4	scorpeo.tab3@gmail.com	$2a$10$jIn4qaFmKkZhjlNqe/B17eUzLoylK/Z3Ib8x7oAopgDrOJHiPYtUq	\N	\N	\N	32	2014-01-29 10:34:28.502002	2014-01-27 06:47:05.320524	101.60.253.165	115.246.152.20	2013-09-23 08:55:49.271805	2014-01-29 10:34:28.502811	tab_user	scorpeo.tab3	3
6	srikumar@scorpeo.in	$2a$10$W9vIqe7zI3osu3ysLGllPuxdbx.IyT3pbezEDdGAN7nZ2Xzcnpv32	\N	\N	\N	1	2013-10-28 09:12:21.407536	2013-10-28 09:12:21.407536	59.184.31.105	59.184.31.105	2013-10-28 09:12:21.387733	2013-10-28 09:12:21.408094	super_user	N Srikumar	1
5	ithelpdesk@scorpeo.in	$2a$10$HqPrM6cOQG9w2oDJubh.1OEtuddu2sfFR9jMnPAuY.MvxCLMlW5GK	\N	\N	\N	34	2014-01-29 11:22:15.419729	2014-01-29 11:07:24.663087	115.246.15.106	115.246.15.106	2013-10-28 09:08:06.486517	2014-01-29 11:22:15.420504	super_user	IT Helpdesk	1
3	scorpeo.tab2@gmail.com	$2a$10$TNkFFLfsyn3V6u6t/nXJwu.hKqKcDr1ZDlg5c/K.67lMJqLEVcTrm	\N	\N	\N	26	2014-01-30 04:16:11.907908	2014-01-29 11:11:38.512286	115.246.72.11	115.246.15.106	2013-09-21 12:51:03.387013	2014-01-30 04:16:11.90874	tab_user	scorpeo.tab2	2
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
9	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,.....74283070\r\nPan Card......aewpb6981m(01/02/1979)\r\nTol.....home loan\r\nAmt....26.50lacs	\N	positive	\N	\N	2013-10-21 14:24:53.129112	2013-10-21 14:24:53.158447	\N	\N	ready_for_verification	1	department......supply chain management	\N
2	1	L& LTD, IES 2ND FLOOR, GATE NO 5, TECH TOWER, 2 B SAKI VIHAR ROAD, L& BUSINESS PARK , POWAI, MUMBAI\r\n	19.1196772999999993	72.9050809000000015	\N	N/A	2013-09-23	11:45:52						\N	\N	L & T LTD	\N	\N	\N	\N			\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nSalary Slip	\N	\N	\N	\N	2013-09-23 06:19:26.736163	2013-09-23 06:19:26.760852	\N	\N	ready_for_verification	1		\N
4	6	K.J.SOMAIYA COLLEGE OF SC.& COMM.VIDYAVIHAR-EAST-400077.\r\n	\N	\N	t	asst.professor	2013-09-28	10:07:09	self	asst.professor			9969038681	21	t	K.J.SOMAIYA COLLEGE OF SC.& COMM.	Public Ltd.	Others	\N	\N			75	\N	Permanent	Assistant	f	\N	\N	t	---\n- colleage\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card,\r\nPan Card	\N	positive	\N	\N	2013-09-28 04:50:57.06974	2013-09-28 04:50:57.091214	\N	\N	ready_for_verification	1		\N
10	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	\N	\N	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....74283070\r\nPan Card.....aewpb6981m(01/02/1979)\r\nTol....home loan\r\nAmt.....26.50lacs	\N	positive	\N	\N	2013-10-21 14:28:15.564498	2013-10-21 14:28:15.60084	\N	\N	ready_for_verification	1	department......supply chain management	\N
6	29	CAPGEMINI INDIA PVT LTD, PLANT 2,  BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, CBS MARG, VIKHROLI, MUMBAI 400079\r\n	19.1091760999999991	72.9194797999999906	t	senior consultant	2013-10-21	19:34:37	self	senior consultant			9967986959	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	Others	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	Business Center	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....23471\r\nPan Card.....bfpps0990j\r\nTol......home loan\r\nAmt....21.56lacs	\N	positive	\N	\N	2013-10-21 14:10:21.913517	2013-10-21 14:10:21.973098	\N	\N	ready_for_verification	1	department....dim	\N
8	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,.....74283070\r\nPan Card......aewpb6981m(01/02/1979)\r\nTol.....home loan\r\nAmt....26.50lacs	\N	positive	\N	\N	2013-10-21 14:24:24.517308	2013-10-21 14:24:24.568711	\N	\N	ready_for_verification	1	department......supply chain management	\N
11	27	SIEMENS ENTERPRISE COMMUNICATION PVT LTD, HINCON HOUSE, 247 PARK, TOWER B, 601, 6TH FLOOR, LBS MARG, VIKHROLI W, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	senior excutive logsitics	2013-10-21	19:47:33	self	senior excutive logsitics			9820726235	\N	f	SIEMENS ENTERPRISE COMMUNICATION PVT LTD	Private LTD.	\N	\N	\N			\N	\N	Permanent	Senior/Middle Manager	f	\N	\N	t	---\n- receptionist\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,....74283070\r\nPan Card.....aewpb6981m(01/02/1979)\r\nTol....home loan\r\nAmt.....26.50lacs	\N	positive	\N	\N	2013-10-21 14:28:43.40954	2013-10-21 14:28:43.44099	\N	\N	ready_for_verification	1	department......supply chain management	\N
13	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:36:42.920917	2013-10-21 14:36:42.946867	\N	\N	ready_for_verification	1	department....it	\N
14	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:37:02.427457	2013-10-21 14:37:02.453542	\N	\N	ready_for_verification	1	department....it	\N
15	26	TATA CONSULTANCY SERVICES LTD, KENSINGTON, B WING, HIRANANDANI SEZ, POWAI, MUMBAI 400021\r\n	19.1196772999999993	72.9050809000000015	t	asst.consultant	2013-10-21	19:59:22	self	asst.consultant			9930072208	6	f	TATA CONSULTANCY SERVICES LTD	Private LTD.	Others	\N	\N			66	\N	Permanent	Assistant	f	\N	\N	t	---\n- others\n- ''\n	Others	\N	\N	\N	\N	\N	Easy	High	\N	\N	\N	\N	Employee Card......231251\r\nPan Card.....aujpk9169k(14/10/1981)\r\nTol.....home loan\r\nAmt.....20lacs	\N	positive	\N	\N	2013-10-21 14:37:13.426838	2013-10-21 14:37:13.451511	\N	\N	ready_for_verification	1	department....it	\N
16	25	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	\N	\N	t	team leader	2013-10-21	20:08:01	self	team leadar			9967049941	\N	f	ACCENTURE CONSULTANCY SERVICES PVT LTD	Private LTD.	Others	\N	\N			59	\N	Permanent	Others	f	\N	\N	t	---\n- others\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,......10569429\r\nPan Card......aevpt3842a(19/05/1980)\r\nTol.....home loan\r\nAmt.....37.50lacs	\N	positive	\N	\N	2013-10-21 14:44:14.195706	2013-10-21 14:44:14.229431	\N	\N	ready_for_verification	1		\N
17	25	ACCENTURE CONSULTANCY SERVICES PVT LTD, PLANT 3 GODREJ & BOYCEE COMPLEX, LBS MARG, VIKROLI W\r\n	\N	\N	t	team leader	2013-10-21	20:08:01	self	team leadar			9967049941	\N	f	ACCENTURE CONSULTANCY SERVICES PVT LTD	Private LTD.	Others	\N	\N			59	\N	Permanent	Others	f	\N	\N	t	---\n- others\n- ''\n	Office Complex	\N	\N	\N	\N	\N	Easy	Medium	\N	\N	\N	\N	Employee Card,......10569429\r\nPan Card......aevpt3842a(19/05/1980)\r\nTol.....home loan\r\nAmt.....37.50lacs	\N	positive	\N	\N	2013-10-21 14:44:28.707491	2013-10-21 14:44:28.740659	\N	\N	ready_for_verification	1		\N
18	40	OFF NM:_____, 1001, A WING, JARDI NE LLOUD THOMPSON PVT LTD, SUPREME BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	test anyalist	2013-10-29	10:23:00	self				7506051745	\N	f	COMPANY NO NAME	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----11271\r\nPan Card----awsp2880c(25/05/1988)\r\nTol----home\r\nAmt---10lac	\N	positive	\N	\N	2013-10-29 04:55:48.005981	2013-10-29 04:55:48.110779	\N	\N	ready_for_verification	1	it	\N
19	41	COLGATE PALMOLINE INDIA LTD.COLGATE RESEARCH CENTRE,MAIN STREET,HIRANANDANI GARDENS ,DEPTCUSTOMER DEVELOPMENT,MUMBAI-400076.\r\n	19.1253004000000004	72.9076668999999953	t	head custmer marketing	2013-10-29	10:26:15	self				9920096860	\N	f	COLGATE PALMOLINE INDIA LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----34003855\r\nPan Card---aiopb6721h(10/08/1981)\r\nTol----car\r\nAmt----3.80lac	\N	positive	\N	\N	2013-10-29 04:59:09.292962	2013-10-29 04:59:09.320028	\N	\N	ready_for_verification	1	seals	\N
20	33	J.P.MORGAN SERVICES INDIA P LTD.GATE-5,L & T BUSINESS PARK,SAKIVIHAR ROAD,POWAI,MUMBAI-400072\r\n	19.1063666999999988	72.8899466000000018	t	 anyalist	2013-10-29	10:30:10	self				8879952307	\N	f	J.P.MORGAN SERVICES INDIA P LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---e573734\r\nTol----car\r\nAmt---5.5lac	\N	positive	\N	\N	2013-10-29 05:02:25.578502	2013-10-29 05:02:25.609933	\N	\N	ready_for_verification	1	cpu	\N
22	34	COLGATE GLOBAL BUSINESS SERVICES PVT LTD, 10TH FLOOR, TOWER B, L & T POWAI GATE NO-5, MUMBAI\r\n	\N	\N	t	asst.associate	2013-10-29	10:37:03	self				9920055567	\N	f	COLGATE GLOBAL BUSINESS SERVICES PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	\N	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---34005498\r\nPan Card---aubpa5941r(25/12/1988)\r\nTol---home\r\nAmt---21lac	\N	positive	\N	\N	2013-10-29 05:09:46.991426	2013-10-29 05:09:47.035698	\N	\N	ready_for_verification	1	dsso	\N
23	35	J P  MORGAN SERVICES INDIA, WSS TECHNOLOGY, 3RD FLOOR, VENTURA, POWAI, MUMBAI- 400076\r\n	19.1253004000000004	72.9076668999999953	t	application supply anyalist	2013-10-29	10:40:26	self				9820847817	\N	f	J P  MORGAN SERVICES INDIA	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---0418985\r\nPan Card---agdpn7331e(03/07/84)\r\nTol--car\r\nAmt---3.7lac\r\nYe of work---2ye\r\nSal---70.000pm	\N	positive	\N	\N	2013-10-29 05:16:06.240826	2013-10-29 05:16:06.260884	\N	\N	ready_for_verification	1	cib techonolical	\N
26	52	TEVAPHARM INDIA PVT LTD,402, OMEGA, HIRANANDANI BUSINESS PARK, NEAR TO BAYER HOUSE, POWAI MUMBAI – 76\r\n	\N	\N	t	qa excutive	2013-10-29	10:55:22	self				8082050230	\N	f	TEVAPHARM INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--10694\r\nPan Card---ayjpp4003d(3/4/87)\r\nTol---home\r\nAmt---20lac\r\nYe of work---2monts\r\nSal---24,000pm\r\n	\N	positive	\N	\N	2013-10-29 05:29:20.272517	2013-10-29 05:29:20.303257	\N	\N	ready_for_verification	1	qa	\N
27	53	TATA CONSULTANCY SERVICES, KENSINGTON TOWER B WING, 12 FLOOR, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	manager	2013-10-29	10:59:32	self				9920845617	\N	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---273594\r\nPan Card---agcpj7885l(17/5/83)\r\nTol--home\r\nAmt---25lac\r\nYe of work---7ye\r\nSal--80,000pm	\N	positive	\N	\N	2013-10-29 05:32:22.653818	2013-10-29 05:32:22.681477	\N	\N	ready_for_verification	1	telecom bps	\N
28	54	DELOITTE CONSULTING INDIA PVT LTD, FAIRMONT LEVEL 2, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	consultant	2013-10-29	11:02:46	self				9819824265	\N	f	DELOITTE CONSULTING INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---352462\r\nPan Card---ahupj4459r(1/4/85)\r\nTol---car\r\nAmt---4lac\r\nYe of work---11month\r\nSal---56,000pm	\N	positive	\N	\N	2013-10-29 05:37:32.768899	2013-10-29 05:37:32.797159	\N	\N	ready_for_verification	1	consulting techological	\N
29	61	J P MORGAN INIDA PVT LTD, 2ND FLOOR, VENTURA BUSINESS TOWER HIRA NANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	associate	2013-10-29	14:08:15	self				9167091404	\N	f	J P MORGAN INIDA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----fo75842\r\nPan Card---agmpc1547j(11/11/82)\r\nTol---home\r\nAmt--40lac\r\nYe of work---1.5ye\r\nSal--90,000pm	\N	positive	\N	\N	2013-10-29 08:44:06.495237	2013-10-29 08:44:06.52438	\N	\N	ready_for_verification	1	r.b.techonlogical	\N
30	65	WIPRO TECHNOLOGIES SEZ UNIT 701 7TH FLOOR KENSINGTON A WING HIRANANDANI POWAI  \r\n	19.1153797999999995	72.9091435999999931	t	network specilist	2013-10-29	14:14:24	self				9821061781	\N	f	WIPRO TECHNOLOGIES SEZ UNIT	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,----254235\r\nPan Card---ajzp6905h(6/8/83)\r\nTol---car\r\nAmt---3.63lacs\r\nYe of work---1.4ye\r\nSal---60,000pm	\N	positive	\N	\N	2013-10-29 09:13:21.746905	2013-10-29 09:13:21.774911	\N	\N	ready_for_verification	1	network	\N
31	55	THERMO FISHER SCIENTIRIC INDIA LTD, POWAI HIRANANDANI, MUMBAI 400076\r\n	19.1153797999999995	72.9091435999999931	t	bussiness devolpment specilist	2013-10-29	14:43:45	self				9594409888	\N	f	THERMO FISHER SCIENTIRIC INDIA LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---60613\r\nPan Card--pcmps2230n(15/02/86)\r\nTol---homw\r\nAmt---16lac\r\nYe of work---9 monts\r\nSal---32,000pm	\N	positive	\N	\N	2013-10-29 09:17:10.824669	2013-10-29 09:17:10.858797	\N	\N	ready_for_verification	1	health care	\N
49	79	OM CLEARING AGENCY,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	19.1746738999999984	72.9431038000000029	t	billing(asst)	2013-11-11	11:12:57	shailesh pandey(husband)				9867782906	\N	f	OM CLEARING AGENCY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--52\r\nPan Card---ceupp0373p(14/05/85)\r\nTol--home\r\nAmt--12lac\r\nYe of work--1.5year\r\nSal--8,000pm	\N	positive	\N	\N	2013-11-11 05:48:17.760976	2013-11-11 05:48:17.78968	\N	\N	ready_for_verification	1	billing	\N
34	66	SOHAM FOUNDATIONS, BUBBLING SPRING, HARI OM NAGAR, MULUND E 400081\r\n	19.1602277000000001	72.972630499999994	t	service staff	2013-10-30	20:10:11	vijaya jayaraman(quidinetar)				8097164698	\N	f	SOHAM FOUNDATIONS	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---atkpr1006l(1/6/65)\r\nTol--edu\r\nAmt--1.77lac\r\nYe of work---9ye\r\nSal--4370pm\r\n	\N	positive	\N	\N	2013-10-30 14:46:11.173519	2013-10-30 14:46:11.201069	\N	\N	ready_for_verification	1	staff	\N
35	66	SOHAM FOUNDATIONS, BUBBLING SPRING, HARI OM NAGAR, MULUND E 400081\r\n	19.1602277000000001	72.972630499999994	t	service staff	2013-10-30	20:10:11	vijaya jayaraman(quidinetar)				8097164698	\N	f	SOHAM FOUNDATIONS	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---atkpr1006l(1/6/65)\r\nTol--edu\r\nAmt--1.77lac\r\nYe of work---9ye\r\nSal--4370pm\r\n	\N	positive	\N	\N	2013-10-30 14:46:28.542053	2013-10-30 14:46:28.584759	\N	\N	ready_for_verification	1	staff	\N
36	67	CRISIL LTD, RATINGS 4TH FLOOR, CRISIL HOUSE, HIRANDANI B PARK, POWAI, BAYER HOUSE, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	manager	2013-10-30	20:22:37	self				9892078887	\N	f	CRISIL LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1005402\r\nPan Card--alzpr7277c(3/10/85)\r\nTol--home\r\nAmt--1croe\r\nYe of work---3monts\r\nSal--85,000pm	\N	positive	\N	\N	2013-10-30 14:57:23.225298	2013-10-30 14:57:23.250062	\N	\N	ready_for_verification	1	reting	\N
37	71	GODREJ CONSUMER PRODUCTS LTD, PIROJSHAYAGAR, EASTERN EXPRESS HIGHWAY, VIKHROLI E, MUMBAI 400079\r\n	19.0957310999999983	72.9268788999999913	t	senior excutive 	2013-10-30	20:35:43	chetan git(senior)				9925038391	\N	f	GODREJ CONSUMER PRODUCTS LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---226\r\nPan Card--ahcpd2279b(7/9/76)\r\nTol---home\r\nAmt--25lac\r\nYe of work--10ye\r\n	\N	positive	\N	\N	2013-10-30 15:12:06.277863	2013-10-30 15:12:06.308232	\N	\N	ready_for_verification	1	seals	\N
38	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:19:14.437808	2013-10-30 15:19:14.470861	\N	\N	ready_for_verification	1	plan approval	\N
39	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:19:58.241724	2013-10-30 15:19:58.274649	\N	\N	ready_for_verification	1	plan approval	\N
40	72	INDIAN REGISTER OF SHIPPING, 52A, ADI SHANKARACHARYA MARG, OPP POWAI LAKE, POWAI, MUMBAI 400072\r\n	19.1063666999999988	72.8899466000000018	t	redio servar	2013-10-30	20:44:43	self				9820608212	\N	f	INDIAN REGISTER OF SHIPPING	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1878\r\nPan Card--aadpt8459m(13/01/62)\r\nTol---car\r\nAmt--7.7lac\r\nYe of work---6.5ye\r\nSal--65,000pm	\N	positive	\N	\N	2013-10-30 15:20:42.19306	2013-10-30 15:20:42.208407	\N	\N	ready_for_verification	1	plan approval	\N
45	36	IOT INFRASTRUCTURE & ENERGY SERVICES LTD., PLOT NO Y2, CEAT TYRE ROAD, NEAR RAHUL RAILWAY STATION, BHANDUP WEST, MUMBAI - 400 078\r\n	\N	\N	t	N/A	2013-11-07	16:21:51	self		61524938		9930917337/ 7738140012 	2	\N	IOT INFRASTRUCTURE & ENERGY SERVICES LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-11-07 10:53:21.375764	2013-11-07 10:53:21.412911	\N	\N	ready_for_verification	1		\N
43	63	HIRANANDANI LIVING PVT LTD, SIGMA BUILDING, 6TH FLOOR, HIRANANDANI GARDENS, POWAI, MUMBAI 76\r\n	\N	\N	t	N/A	2013-11-07	16:19:44	SELF					\N	f	HIRANANDANI LIVING PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	satish govide LOAN CANCALLED\r\n	\N	positive	\N	\N	2013-11-07 10:50:45.431073	2013-11-07 10:50:45.468233	\N	\N	ready_for_verification	1		\N
46	32	YASHWANT CHANDJI SAWANT VIDYAMANDIR , UTKARSH NAGAR, JM RD, NR SHIV TEMPLE, BHANDUP\r\n	19.1499009999999998	72.9311340000000001	t	N/A	2013-11-07	16:23:27	self				9890772032	18	\N	YASHWANT CHANDJI SAWANT VIDYAMANDIR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-11-07 10:54:25.577015	2013-11-07 10:54:25.610693	\N	\N	ready_for_verification	1		\N
47	31	KENDRIYA VIDYALAYA SANGTHAN,REGIONAL OFFICE,IIT CAMPUS,POWAI,MUMBAI - 400076 \r\n	19.1253004000000004	72.9076668999999953	t	N/A	2013-11-07	16:24:30	SELF		25728060		9920722869/ 9969543909	5	f	KENDRIYA VIDYALAYA SANGTHAN	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Salary Slip, 39,000/\r\nPan Card BLXPS7207N\r\ndEPT FINANCE ACCOUNT,\r\nDESIGNATION FINANCEAL oFFICER\r\ntYPE OF LOAN CAR LOAN AMNT IS 2.50 LAC	\N	positive	\N	\N	2013-11-07 10:59:13.80559	2013-11-07 10:59:13.838726	\N	\N	ready_for_verification	1		\N
48	78	OM CLEARING AGENCY ,714/716,7TH FLOOR, NIRMAL LIFE STYLE CO-OP CENTER, LBS MARG NR SHOPPER STOP, MULUND W\r\n	19.1746738999999984	72.9431038000000029	t	accounts credit control excutive	2013-11-11	11:08:04	self				9867782906	\N	f	OM CLEARING AGENCY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---22\r\nPan Card--ayapp1350l(5/5/85)\r\nTol--home\r\nAmt--12lac\r\nYe of work---3ye\r\nSal--16,000p.m	\N	positive	\N	\N	2013-11-11 05:42:49.012199	2013-11-11 05:42:49.041419	\N	\N	ready_for_verification	1	accounts	\N
50	74	CRISIL LTD, SECOND FLOOR, KENSIGTON SEZ, WING -A, HIRANANDANI BUSINESS PARK, MUMBAI 76\r\n	\N	\N	t	manager	2013-11-11	11:18:46	self	manager			9920899321	\N	f	CRISIL LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--a008681\r\nPan Card--agbpa5142q(9/10/80)\r\nTol--max\r\nAmt---99lac\r\nYe of work--6ye\r\nSal--1.24lac pm	\N	positive	\N	\N	2013-11-11 05:52:57.405684	2013-11-11 05:52:57.434187	\N	\N	ready_for_verification	1		\N
51	75	POWAI AUTO WORKS, 19, ADISHANKARARCHARYA MARG, OPP PANCH KUTIR BUS STOP, POWAI, OPP SUVARNA TEMPLE, MUMBAI 76\r\n	19.1196772999999993	72.9050809000000015	t	work managr	2013-11-11	11:23:09	self				9833857002	\N	f	POWAI AUTO WORKS	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Tol---home\r\nAmt--21lac\r\nDob--23/02/70\r\nYe of work--5ye\r\nSal---54,000pm	\N	positive	\N	\N	2013-11-11 05:56:26.342512	2013-11-11 05:56:26.362088	\N	\N	ready_for_verification	1	automobile	\N
52	76	WEATHER FORD SYSTEMS SUPPORT, GODREJ IT PARK, P2 BLOCK-B, 4TH FLOOR, PIROJSHANAGAR, VIKHROLI, MUMBAI 400079\r\n	19.0966610999999986	72.9239094999999935	t	senior  desinger engineer	2013-11-11	11:26:50	self				9325274930	\N	f	WEATHER FORD SYSTEMS SUPPORT	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---e158549\r\nPan Card---alzpd6718n(11/10/80)\r\nTol--home\r\nAmt--19.5lac\r\nYe of work---3ye\r\nSal---8lac p.a	\N	positive	\N	\N	2013-11-11 06:00:45.283794	2013-11-11 06:00:45.309419	\N	\N	ready_for_verification	1	machinical	\N
53	77	MAERSK GLOBAL SERVICES PVT.LTD., 4TH AND 5T FLOOR, PRUDENTIAL BUILDING, CENTRAL AVENUE ROAD, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI- 400076. \r\n	19.1253004000000004	72.9076668999999953	t	process xpart	2013-11-11	14:14:18	self				9819227567	\N	f	MAERSK GLOBAL SERVICES PVT.LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---aya012\r\nPan Card---agrpa3791m(23/01/84)\r\nTol--car\r\nAmt---4lac\r\nYe of work---7ye\r\nSal---28,000pm	\N	positive	\N	\N	2013-11-11 08:47:19.251859	2013-11-11 08:47:19.27736	\N	\N	ready_for_verification	1	operation	\N
54	81	JAIET AIRCON PVT LTD, GC-1, KARMA STAMBH, LBS MARG, VIKHROLI WEST, MUMBAI 400083\r\n	19.1211196000000001	72.9256154999999922	t	bussiness (aircondtion)	2013-11-12	14:49:56	naina bode(wife)				9867010154	\N	t	JAIET AIRCON PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---aeypb9100q(13/09/76)\r\nTol---home\r\nAmt--35lac\r\nYe of work---3ye\r\nSal--50,000pm	\N	positive	\N	\N	2013-11-12 09:23:59.284084	2013-11-12 09:23:59.299073	\N	\N	ready_for_verification	1	marketing	\N
55	82	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, LBS MARG, VIKHROLI WEST 400079\r\n	19.102046399999999	72.9225682999999947	t	senior consultant	2013-11-12	14:54:17	self				9619868968	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---44392\r\nPan Card--afqpb7995e(07/03/1982)\r\nTol--education\r\nAmt--2lac\r\nYe of work--1.5ye\r\nSal--57,000pm	\N	positive	\N	\N	2013-11-12 09:28:05.201989	2013-11-12 09:28:05.233694	\N	\N	ready_for_verification	1	sap	\N
56	87	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD, TRANSOCEAN HOUSE ,LAKE BOULEVARD RD, HIRANANDANI BUSSINESS PARK POWAI\r\n	19.1196772999999993	72.9050809000000015	f		2013-11-18	11:01:13			022-25513415		9821539543	\N	f	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	OUT OF STATION & MOBILE SWITCH OFF\r\n	\N	refer to bank	\N	\N	2013-11-18 05:33:06.255414	2013-11-18 05:33:06.284628	\N	\N	ready_for_verification	1	TRANSOCEAN OF SHORE INTERNATIONAL VENI LTD	\N
57	80	SUTLEJ TEXTILE & INDUSTRIES LTD, SOLARIES BLDG NO 1, B-242, 2ND FLR, SOLARIES, SAKI VIHAR RD, POWAI , MUMBAI 72\r\n	\N	\N	t	N/A	2013-11-18	11:03:12	SUNIL	MARKETING MANAGER 	022-42198800		8879531537/8898552349	8	f	SUTLEJ TEXTILE & INDUSTRIES LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card BHT018\r\nSalary Slip 47000/-\r\nTYPE OF LOAN CAR LOAN AMNT 3 LAC	\N	positive	\N	\N	2013-11-18 05:35:58.181762	2013-11-18 05:35:58.21324	\N	\N	ready_for_verification	1	SUTLEJ TEXTILE & INDUSTRIES LTD.	\N
58	73	M/S SUPREME INFRASTRUCTURE INDIA LTD, 94/C PRATAPGAD, OPP IIT MAIN GATE, POWAI\r\n	19.1196772999999993	72.9050809000000015	t	N/A	2013-11-18	11:06:05	SPOKETO RUCHA	H.R.	022-61289700			8	f	M/S SUPREME INFRASTRUCTURE INDIA LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- colleage\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	DEPT PROJECT,\r\n DESG QC MANAGER	\N	positive	\N	\N	2013-11-18 05:39:21.651901	2013-11-18 05:39:21.679924	\N	\N	ready_for_verification	1	M/S SUPREME INFRASTRUCTURE INDIA LTD	\N
59	83	CITIUS IT SOLUTIONS PVT LTD., H1/2, SAKI VIHAR ROAD, MUMBAI - 400072\r\n	19.124098	72.8910979999999995	t	N/A	2013-11-18	11:09:26	SELF		61536027		9920062665	2	f	Mr. MANOJKUMAR R KOLLY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,685\r\nSalary Slip 80,000/-	\N	positive	\N	\N	2013-11-18 05:41:51.769879	2013-11-18 05:41:51.796871	\N	\N	ready_for_verification	1	CITIUS IT SOLUTIONS PVT LTD.	\N
60	84	DEPT OF COMPUTER SC. & ENGG. IIT BOMBAY, IIT BOMBAY, POWAI, MUMBAI 400076\r\n	19.1316687999999999	72.9176625999999999	t	N/A	2013-11-18	11:11:58	self		022-25767721		9820103723	14	f	IIT BOMBAY	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-199097\r\nSalary Slip-70,000/-\r\nPan Card-AEQPC0654Q	\N	positive	\N	\N	2013-11-18 05:49:50.261218	2013-11-18 05:49:50.28694	\N	\N	ready_for_verification	1	bombay it	\N
61	86	EMERSON PROCESS MANAGEMENT, DELPHI, B WING, 601-603 HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 400076\r\n	19.1253004000000004	72.9076668999999953	t	N/A	2013-11-18	11:20:17	self		66620566		9820286256/ 9833122485	7	f	EMERSON PROCESS MANAGEMENT	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-30140263\r\nSalary Slip-85,000/-\r\nPan Card-ALDPB8720G\r\nTYPE OF LOAN HOME AMNT IS 30 LAC	\N	positive	\N	\N	2013-11-18 05:52:09.995755	2013-11-18 05:52:10.022331	\N	\N	ready_for_verification	1	EMERSON PROCESS MANAGEMENT	\N
62	88	PETROFAC ENGINEERING INDIA P LTD, 7TH FLR, VENTURA CENTRAL AVENUE, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI 76\r\n	\N	\N	t	N/A	2013-11-18	11:31:08	SELF		022-30513100		9820868260	7	f	PETROFAC ENGINEERING INDIA P LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-100153\r\nSalary Slip-70,000/-\r\nPan Card-AMTPP6145N\r\nTYPE OF LOAN HOME AMNT IS 27 LAC	\N	positive	\N	\N	2013-11-18 06:03:26.563649	2013-11-18 06:03:26.584432	\N	\N	ready_for_verification	1	PETROFAC ENGINEERING INDIA P LTD	\N
63	90	PAWAR PUBLIC SCHOOL, LBS ROAD, NEAR DREAMS MALL, BANDUP WEST, MUMBAI\r\n	19.0759836999999983	72.8776558999999935	t	teacher	2013-11-18	15:57:19	self				9967971480	\N	f	PAWAR PUBLIC SCHOOL	Public Ltd.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card---p-272\r\nTol--home\r\nAmt--23lac\r\nYe of work--2ye\r\nSal--32,000pm	\N	positive	\N	\N	2013-11-18 10:30:03.142151	2013-11-18 10:30:03.174962	\N	\N	ready_for_verification	1	history	\N
64	94	INDIAN NAVY, FH 25, CWH, MO-MB , GHATKOPAR\r\n	19.0908063000000006	72.9076668999999953	t	unskil lebour	2013-11-19	12:52:37	self				9833419167	\N	f	INDIAN NAVY	Others	\N	\N	\N	\N	\N	\N	\N	\N	Skilled Labour	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---d411625\r\nPan Card---bpups9395q(18/01/84)\r\nTol--personl\r\nAmt--1lac\r\nYe of work---5.5ye\r\nSal--17,500pm-	\N	positive	\N	\N	2013-11-19 07:37:07.272472	2013-11-19 07:37:07.306634	\N	\N	ready_for_verification	1	cwh--ss25 store	\N
65	91	THE NEW INDIA ASSURANCE CO LTD, GHATKOPAR JYOTI CHEMBERS KHOT LANE, GHATKOPER WEST MUMBAI \r\n	19.0759836999999983	72.8776558999999935	t	asst.manager	2013-11-19	16:31:11	self				9819204202	\N	f	THE NEW INDIA ASSURANCE CO LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--18941\r\nPan Card--adspm8487e(15/09/65)\r\nYe of work--26ye\r\nSal--60,000pm\r\nTol--home\r\nAmt--35lac	\N	positive	\N	\N	2013-11-19 11:04:25.792463	2013-11-19 11:04:25.832649	\N	\N	ready_for_verification	1	second incharge	\N
67	98	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND, LBS MARG, VIKHROLI(W),MUMBAI-79\r\n	\N	\N	t	associate director	2013-11-19	16:37:37	amit thakur(son)				9820724436	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---1668\r\nTol---car\r\nAmt--2lac\r\nYe of work--9ye	\N	positive	\N	\N	2013-11-19 11:09:49.122162	2013-11-19 11:09:49.136156	\N	\N	ready_for_verification	1	sap	\N
68	92	GODREJ AND BOYCE MFG CO LTD, LBS ROAD, FIROSHA NGR, VIKHROLI WEST, 79\r\n	\N	\N	t	manager	2013-11-19	16:43:13	self				9819335545	\N	f	GODREJ AND BOYCE MFG CO LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---47232\r\nPan Card---ajepg8874s(10/06/70)\r\nTol--car\r\nAmt--2.3lac\r\nYe of work--7ye\r\nSal--59,000pm	\N	positive	\N	\N	2013-11-19 11:15:44.211984	2013-11-19 11:15:44.243978	\N	\N	ready_for_verification	1	qa	\N
69	95	J.P.MORGAN SERVICES INDIA PVT LTD. L &T BUSINESS PARK,8 TH FLR,GATE-5,SAKI VIHAR ROAD,POWAI,MUMBAI-400072.\r\n	19.1181069000000008	72.8900290999999925	t	associate	2013-11-19	16:45:56	self				9833066077	\N	f	J.P.MORGAN SERVICES INDIA PVT LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---d112485\r\nPan Card---deips3304a(20/08/82)\r\nTol--car\r\nAmt--6lac\r\nYe of work--7ye\r\nSal--1.35lac	\N	positive	\N	\N	2013-11-19 11:18:32.236947	2013-11-19 11:18:32.260449	\N	\N	ready_for_verification	1	cau	\N
70	97	GENERAL MILLS INDIA PVT LTD, I.T 9TH FLOOR, HIRANANDANI GARDEN POWAI\r\n	19.1153797999999995	72.9091435999999931	t	sap crm consultant	2013-11-19	16:48:39	self				9820724448	\N	f	GENERAL MILLS INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---home\r\nPan Card---agspa4018n(26/08/82)\r\nTol--home\r\nAmt--70lac\r\nYe of work--2ye\r\nSal--1.08lac	\N	positive	\N	\N	2013-11-19 11:21:30.29142	2013-11-19 11:21:30.31747	\N	\N	ready_for_verification	1	it	\N
72	100	CAPGEMINI INDIA PVT LTD, PLANT 2, BLOCK A, GODREJ IT PARK, GODREJ & BOYCE COMPOUND LBS MARG, MUMBAI 79\r\n	\N	\N	t	manager	2013-11-20	15:18:06	self				9819804045	\N	f	CAPGEMINI INDIA PVT LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---4366\r\nPan Card--addpv6986a(18/10/79)\r\nTol--home\r\nAmt--30lac\r\nYe of work--8ye\r\nSal--85,000pm	\N	positive	\N	\N	2013-11-20 09:50:49.771499	2013-11-20 09:50:49.796834	\N	\N	ready_for_verification	1	sap	\N
74	93	TRANSOCEAN, TRANSOCEAN HOUSE, LAKE BOULEVARD ROAD, HIRANANDANI BUSIESS PARK,POWAI, MUMBAI 76\r\n	\N	\N	t	excutive	2013-11-20	15:24:12	sanil sandesh(rece)				9482001554	\N	f	TRANSOCEAN	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Ye of work---2ye	\N	positive	\N	\N	2013-11-20 09:55:44.781842	2013-11-20 09:55:44.810204	\N	\N	ready_for_verification	1		\N
77	103	WNS GLOBAL SERVICES P LTD, GATE NO 4, GODREJ & BOYCE COMPLEX, PHIROJ SHAH NAGAR, VIKHROLI W, MUMBAI 79\r\n	\N	\N	t	senior group manager	2013-11-21	14:47:50	self				9833361263	\N	f	WNS GLOBAL SERVICES P LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---101906\r\nPan Card---aotpk6039a(1/12/80)\r\nTol--home\r\nAmt--31lac\r\nYe of work--7.5ye\r\nSal--1.12lac pm	\N	positive	\N	\N	2013-11-21 09:22:10.395218	2013-11-21 09:22:10.41412	\N	\N	ready_for_verification	1	finance	\N
86	113	TATA CONSULTANCY SERVICES, 10 FLOOR, KENSINGTON B, HIRANANDANI BUSINESS PARK, POWAI, MUMBAI \r\n	19.1196772999999993	72.9050809000000015	t	asst consultant	2013-11-23	17:45:56	self				9004711197	\N	f	TATA CONSULTANCY SERVICES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--523029\r\nPan Card--adwpt2088e\r\nTol--home\r\nAmt--40lac\r\nYe of work--2.2ye\r\nSal--81,000pm	\N	positive	\N	\N	2013-11-23 12:18:32.184827	2013-11-23 12:18:32.216257	\N	\N	ready_for_verification	1	ceg	\N
88	122	TATA COMMUNICATIONS TRANSFORMATIONS LTD, PLOT C-21/C-36, G BLOCK, TATA COMMUNICATIONS, C WING, BKC, VIDYANAGAR, MUMBAI 400098\r\n	19.0735175999999989	72.8618865999999912	f	N/A	2013-11-25	18:09:48	prashd balkar	siniyar  manegar				\N	f	TATA COMMUNICATIONS TRANSFORMATIONS LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Campany id 80076 campany past 6 years 6manths department netwark opration disination siniyar mangar type of loan home loan loan amt 27lac salary amt 80,000amt pan no. Ainpa 0270h dob. 23/01/1980 	\N	positive	\N	\N	2013-11-25 12:50:56.569915	2013-11-25 12:50:56.598303	\N	\N	ready_for_verification	3		\N
91	123	TAX OFFICER 23 (1) () & J C I T-23 (I), - 1ST FLR, BANDRA KURLA COMPLEX, PRATAYAKSH KAR BHAWAN, BANDRA,MUMBAI\r\n	19.0552290000000006	72.8308289999999943	t	s.t.a	2013-11-26	11:10:34	self					6	f	TAX OFFICER 23 (1) () & J C I T-23 (I)	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,.156747\r\nSalary Slip,-22,000\r\nPan Card no.-aebpv7024g	\N	positive	\N	\N	2013-11-26 05:47:22.449516	2013-11-26 05:47:22.47641	\N	\N	ready_for_verification	3		\N
92	123	TAX OFFICER 23 (1) () & J C I T-23 (I), - 1ST FLR, BANDRA KURLA COMPLEX, PRATAYAKSH KAR BHAWAN, BANDRA,MUMBAI\r\n	19.0552290000000006	72.8308289999999943	t	s.t.a	2013-11-26	11:10:34	self					6	f	TAX OFFICER 23 (1) () & J C I T-23 (I)	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,.156747\r\nSalary Slip,-22,000\r\nPan Card no.-aebpv7024g	\N	positive	\N	\N	2013-11-26 05:47:23.220082	2013-11-26 05:47:23.23402	\N	\N	ready_for_verification	3		\N
134	137	DELOITTE CONSULTING INDIA PVT LTD.FAIRMONT LEVEL-2,HIRANANDANI BUSINESS PARK,POWAI-400076\r\n	19.1253004000000004	72.9076668999999953	t	 consultant	2013-11-29	11:04:19	self				9833192687	\N	f	DELOITTE CONSULTING INDIA PVT LTD.	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee C!ard,---278781\r\nPan Card---afspj6701n\r\nTol--car\r\nAmt---2lac\r\nYe of work---5ye\r\nSal---72,000pm	\N	positive	\N	\N	2013-11-29 05:36:46.77486	2013-11-29 05:36:46.904119	\N	\N	ready_for_verification	1	it	\N
127	129	RABIDI POLICE STATION, SREERANG SOC RD, NR BRINDAVAN SOC, THANE\r\n	\N	\N	t	constabal	2013-11-27	11:53:12	self					5	f	RABIDI POLICE STATION	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,-288\r\nType of loan -home loan \r\nLoan amt-8 lac\r\nPan card no-ateps3991r	\N	positive	\N	\N	2013-11-27 06:27:42.426114	2013-11-27 06:27:42.451686	\N	\N	ready_for_verification	3		\N
141	149	WINDMILL CREATIONS, 230, ANANDRAJ INDUSTRIAL ESTATE, SONAPUR LANE, BHANDUP WET, MUMBAI 400078\r\n	19.1520170999999984	72.9165265999999974	t	sbi(owner)	2013-11-29	11:22:30	yasmin(office patner)				9222055614	\N	f	WINDMILL CREATIONS	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card---akepj8422p(3/4/75)	\N	positive	\N	\N	2013-11-29 05:55:59.025671	2013-11-29 05:55:59.050026	\N	\N	ready_for_verification	1	garment	\N
142	145	DEAN ALUMNI CORPORATION RELATIONS, IIT BOMBAY, POWAI\r\n	19.1196772999999993	72.9050809000000015	t	N/A	2013-11-29	11:26:46						\N	\N	DEAN ALUMNI CORPORATION RELATIONS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-11-29 05:57:00.422973	2013-11-29 05:57:00.450528	\N	\N	ready_for_verification	1		\N
143	144	MECHANICAL ENGG. DEPT. IIT BOMBAY, IIT POWAI, MUMBAI 400076\r\n	19.1333650999999989	72.9167211000000037	t	junior techincal supretender	2013-11-29	11:37:11	self				9769058082	\N	f	MECHANICAL ENGG. IIT BOMBAY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- security\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,---i08084\r\nPan Card---ahxpj3556g(13/04/84)\r\nTol--home\r\nAmt--19.70lac\r\nYe of work--5ye\r\nSal--30,000pm	\N	positive	\N	\N	2013-11-29 06:10:43.72978	2013-11-29 06:10:43.757447	\N	\N	ready_for_verification	1	machinical	\N
145	151	BALRAJESHWAR REAL ESTATE, 17 GOLDEN VASANT WILLOWS, VASANT GARDEN, MULUND W, MUMBAI 400080\r\n	19.1804610000000011	72.9387667000000022	t	director 	2013-12-05	10:30:06	self					7	f	BALRAJESHWAR REAL ESTATE	Propreietorship	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Pan Card-aqrps5733p\r\nType of loan-top up loan 	\N	positive	\N	\N	2013-12-05 05:03:32.273901	2013-12-05 05:03:32.29387	\N	\N	ready_for_verification	3		\N
146	152	BALRAJESHWAR REAL ESTATE PVT LTD, 17 GOLDEN WILLOWS, VASANT GARDEN MULUND W, MUMBAI 400080\r\n	19.1804610000000011	72.9387667000000022	t	director 	2013-12-05	10:52:34	self	d				7	\N	BALRAJESHWAR REAL ESTATE PVT LTD	Propreietorship	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2013-12-05 05:24:25.160148	2013-12-05 05:24:25.187212	\N	\N	ready_for_verification	3		\N
148	156	K E M HOSPITAL NURSES HOME, S S RAO ROAD, SURGERY WARD, MUMBAI 400012\r\n	18.9978593999999994	72.8367775999999907	t	staff ners	2013-12-06	10:46:44	alka choudhary	incharge				27	f	K E M HOSPITAL NURSES HOME	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card'-3417528	\N	positive	\N	\N	2013-12-06 05:18:58.138533	2013-12-06 05:18:58.162899	\N	\N	ready_for_verification	3		\N
151	153	B.E.S.T.,MULUND DEVI DAYAL ROAD,FIRE BRIGADE.MULUND WEST MUMBAI \r\n	19.1751603000000017	72.9425500999999912	t	bus conductor	2013-12-06	15:15:21	avinash tatar(senior)				9757031336	\N	f	B.E.S.T.	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card---99114\r\nAdhaar--966831945601\r\nTol--home\r\nAmt--11lac\r\nYe of wr--14ye\r\nSal--24,000pm	\N	positive	\N	\N	2013-12-06 09:48:08.464473	2013-12-06 09:48:08.499847	\N	\N	ready_for_verification	1	traffic	\N
176	209	SECURITY GUARD BOARD FOR BRIHAN MUMBAI, D-301/ E-301, SANPADA RAILWAY COMPLEX, NAVI MUMBAI 400703.\r\n	19.0793546999999997	72.99920130000001	t	N/A	2014-01-27	17:24:47						\N	\N	SECURITY GUARD BOARD FOR BRIHAN MUMBAI	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-01-27 11:56:53.811885	2014-01-27 11:56:53.906286	\N	\N	ready_for_verification	3		38
160	174	A2 NUB NPCIL, ANUSHAKTI NAGAR, BARC, MUMBAI 400094\r\n	19.0222081000000003	72.9268625999999927	t	sintific officer (e)	2013-12-11	09:27:18						1	f	A2 NUB NPCIL	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-9134930\r\nType of loan-home loan\r\nloan amt-64 lac\r\ndob 2/3/1980	\N	\N	\N	\N	2013-12-11 04:00:45.060322	2013-12-11 04:00:45.110777	\N	\N	ready_for_verification	3		\N
177	215	RELAINCE DAIRY FOODS LTD, COMMERCIAL DEPT, RELAINCE CORPORATE PARK, PHASE 4,11TH FLLOR,  A BLOCK, WS 174,  NAVI MUMBAI\r\n	19.0330487999999995	73.0296625000000006	t	Accounts manager	2014-01-28	10:24:45	pra					\N	\N	RELAINCE DAIRY FOODS LTD	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	2014-01-28 04:56:49.15462	2014-01-28 04:56:49.189955	\N	\N	ready_for_verification	3		86
163	180	TATA PROJECTS LTD,11TH FLOOR,HIRANANDANI KNOWLEDGE PARK,TECHNOLOGY STREET,POWAI 400076\r\n	19.1196473000000005	72.9152672000000024	t	senior manager	2013-12-11	17:01:52	self				9820521053	\N	f	TATA PROJECTS LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--1307\r\nPan Card--afvpk9921j(23/06/70)\r\nTol--home\r\nAmt--55lac\r\nYe of wr--13ye\r\nSal--1.4lac pm	\N	positive	\N	\N	2013-12-11 11:36:52.325697	2013-12-11 11:36:52.356684	\N	\N	ready_for_verification	1	qa	\N
164	180	TATA PROJECTS LTD,11TH FLOOR,HIRANANDANI KNOWLEDGE PARK,TECHNOLOGY STREET,POWAI 400076\r\n	19.1196473000000005	72.9152672000000024	t	senior manager	2013-12-11	17:01:52	self				9820521053	\N	f	TATA PROJECTS LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nPan Card	\N	positive	\N	\N	2013-12-11 11:37:08.845374	2013-12-11 11:37:08.874226	\N	\N	ready_for_verification	1	qa	\N
165	180	TATA PROJECTS LTD,11TH FLOOR,HIRANANDANI KNOWLEDGE PARK,TECHNOLOGY STREET,POWAI 400076\r\n	19.1196473000000005	72.9152672000000024	t	senior manager	2013-12-11	17:01:52	self				9820521053	\N	f	TATA PROJECTS LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Senior/Middle Manager	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,\r\nPan Card	\N	positive	\N	\N	2013-12-11 11:37:14.080497	2013-12-11 11:37:14.111109	\N	\N	ready_for_verification	1	qa	\N
178	215	RELAINCE DAIRY FOODS LTD, COMMERCIAL DEPT, RELAINCE CORPORATE PARK, PHASE 4,11TH FLLOR,  A BLOCK, WS 174,  NAVI MUMBAI\r\n	19.0330487999999995	73.0296625000000006	t	Accounts manager	2014-01-28	10:24:45	self					1	\N	RELAINCE DAIRY FOODS LTD	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card-50010566 loan amount 52 lakh home death of birth-10 june1980	\N	positive	\N	\N	2014-01-28 05:03:55.831003	2014-01-28 05:03:55.861629	\N	\N	ready_for_verification	3		86
179	223	GODREJ & BOYCE MFG. LTD., INTERIO DIVISION, PLANT 13 A, VIKHROLI EAST, MUMBAI 400079.\r\n	19.0852663999999983	72.9401508999999919	t	interoi division	2014-01-29	10:03:36	self				9920601678	\N	f	GODREJ & BOYCE MFG. LTD	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--66305\r\nTol--car\r\nAmt--5.70lac\r\nDob--20/10/74	\N	positive	\N	\N	2014-01-29 04:37:43.302482	2014-01-29 04:37:43.332893	\N	\N	ready_for_verification	1	marketing	215
180	224	I.I.T. BOMBAY, MAIN BLDG., ACCOUNT SECTION, 2ND FLR., POWAI, MUMBAI 400076.\r\n	19.1253004000000004	72.9076668999999953	t	supertender	2014-01-29	10:16:39	self				9699528486	\N	f	I.I.T. BOMBAY	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--312221\r\nPan Card--adapk8332\r\nTol--pl\r\nAmt--3lac\r\nYe of wok--30ye	\N	positive	\N	\N	2014-01-29 04:50:12.446517	2014-01-29 04:50:12.475344	\N	\N	ready_for_verification	1	accounts section	1
181	221	CREDIT SUISSE, CITY PARK, CENTRAL AVENUE 5TH FLR, HIRANANDANI BUSINESS PARK, POWAI, MUMBIA 76\r\n	\N	\N	t	asst.vice president	2014-01-29	10:27:02	self	invesment banking(it)			9320022722	1	f	CREDIT SUISSE	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Assistant	f	\N	\N	t	---\n- receptionist\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card--1h39\r\nTol--home\r\nAmt--80lac\r\nDob--5/12/73	\N	positive	\N	\N	2014-01-29 05:02:56.319562	2014-01-29 05:02:56.345758	\N	\N	ready_for_verification	1		1
174	168	MANKHURD POLICE STATION MANKHURD \r\n	19.0523428999999993	72.9331076999999937	\N	N/A	2013-12-12	20:18:46						\N	\N	MANKHURD POLICE STATION	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	---\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	positive	\N	\N	2013-12-12 14:48:55.229711	2013-12-12 14:48:55.258434	\N	\N	ready_for_verification	3		\N
175	169	TATA POWER,TROMBAY THERMAL POWER STATION,MAHUL ROAD,CHEMBUR,MUMBAI - 400074 \r\n	19.0208109999999984	72.9044396000000035	t	security head	2013-12-12	20:19:07	self					8	f	TATA POWER	Others	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	f	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,169862\r\nSalary Slip,60,000\r\nPan Card asqpb4408q\r\nDep-security\r\nDob 2/1/1066\r\nType of loan-car loan\r\nloan amt-4.68 lac 	\N	positive	\N	\N	2013-12-12 14:52:13.76173	2013-12-12 14:52:13.788058	\N	\N	ready_for_verification	3		\N
182	220	NOMURA ,9TH FLR FID, HIRANANDANI BUSINESS PLARK, POWAI, MUMBAI 76\r\n	\N	\N	t	associate 	2014-01-29	10:34:26	self				9820234078	6	f	NOMURA 	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--36641\r\nPan Card--17/5/83\r\nTol--home(tranfer loan)\r\nAmt--56lac	\N	positive	\N	\N	2014-01-29 05:07:05.408539	2014-01-29 05:07:05.435846	\N	\N	ready_for_verification	1		1
183	219	CROMPTON CREAVES, TRANSFARMER DEPTT. KANJURMARG EAST, MUMBAI \r\n	19.1322811000000002	72.9357214999999997	t	coli vainder	2014-01-29	10:37:53	self				9702605519	30	f	CROMPTON CREAVES	Private LTD.	\N	\N	\N	\N	\N	\N	\N	\N	Others	f	\N	\N	t	---\n- others\n- ''\n	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Employee Card,--5564\r\nPan Card--alpvp6902h(21/7/61)\r\nTol--edu\r\nAmt--4lac	\N	positive	\N	\N	2014-01-29 05:10:50.41484	2014-01-29 05:10:50.440301	\N	\N	ready_for_verification	1	power vainder	1
\.


--
-- Name: work_serveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('work_serveys_id_seq', 183, true);


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

