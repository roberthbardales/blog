--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13
-- Dumped by pg_dump version 12.13

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO neunapp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO neunapp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO neunapp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO neunapp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO neunapp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO neunapp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO neunapp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO neunapp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO neunapp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO neunapp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO neunapp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO neunapp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO neunapp;

--
-- Name: entrada_category; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.entrada_category (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.entrada_category OWNER TO neunapp;

--
-- Name: entrada_category_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entrada_category_id_seq OWNER TO neunapp;

--
-- Name: entrada_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.entrada_category_id_seq OWNED BY public.entrada_category.id;


--
-- Name: entrada_entry; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.entrada_entry (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    title character varying(200) NOT NULL,
    resume character varying(400) NOT NULL,
    content text NOT NULL,
    public boolean NOT NULL,
    image character varying(100) NOT NULL,
    portada boolean NOT NULL,
    in_home boolean NOT NULL,
    slug character varying(300) NOT NULL,
    category_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.entrada_entry OWNER TO neunapp;

--
-- Name: entrada_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entrada_entry_id_seq OWNER TO neunapp;

--
-- Name: entrada_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.entrada_entry_id_seq OWNED BY public.entrada_entry.id;


--
-- Name: entrada_entry_tag; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.entrada_entry_tag (
    id integer NOT NULL,
    entry_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.entrada_entry_tag OWNER TO neunapp;

--
-- Name: entrada_entry_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_entry_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entrada_entry_tag_id_seq OWNER TO neunapp;

--
-- Name: entrada_entry_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.entrada_entry_tag_id_seq OWNED BY public.entrada_entry_tag.id;


--
-- Name: entrada_tag; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.entrada_tag (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.entrada_tag OWNER TO neunapp;

--
-- Name: entrada_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entrada_tag_id_seq OWNER TO neunapp;

--
-- Name: entrada_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.entrada_tag_id_seq OWNED BY public.entrada_tag.id;


--
-- Name: favoritos_favorites; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.favoritos_favorites (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    entry_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.favoritos_favorites OWNER TO neunapp;

--
-- Name: favoritos_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.favoritos_favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favoritos_favorites_id_seq OWNER TO neunapp;

--
-- Name: favoritos_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.favoritos_favorites_id_seq OWNED BY public.favoritos_favorites.id;


--
-- Name: home_contact; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.home_contact (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    full_name character varying(60) NOT NULL,
    email character varying(254) NOT NULL,
    messagge text NOT NULL
);


ALTER TABLE public.home_contact OWNER TO neunapp;

--
-- Name: home_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.home_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_contact_id_seq OWNER TO neunapp;

--
-- Name: home_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.home_contact_id_seq OWNED BY public.home_contact.id;


--
-- Name: home_home; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.home_home (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    title character varying(30) NOT NULL,
    description text NOT NULL,
    about_title character varying(50) NOT NULL,
    about_text text NOT NULL,
    contact_email character varying(254),
    phone character varying(20) NOT NULL
);


ALTER TABLE public.home_home OWNER TO neunapp;

--
-- Name: home_home_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.home_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_home_id_seq OWNER TO neunapp;

--
-- Name: home_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.home_home_id_seq OWNED BY public.home_home.id;


--
-- Name: home_suscribers; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.home_suscribers (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.home_suscribers OWNER TO neunapp;

--
-- Name: home_suscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.home_suscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_suscribers_id_seq OWNER TO neunapp;

--
-- Name: home_suscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.home_suscribers_id_seq OWNED BY public.home_suscribers.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    full_name character varying(100) NOT NULL,
    ocupation character varying(1) NOT NULL,
    genero character varying(1) NOT NULL,
    date_birth date,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.users_user OWNER TO neunapp;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO neunapp;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO neunapp;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO neunapp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: neunapp
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO neunapp;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO neunapp;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neunapp
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: entrada_category id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_category ALTER COLUMN id SET DEFAULT nextval('public.entrada_category_id_seq'::regclass);


--
-- Name: entrada_entry id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry ALTER COLUMN id SET DEFAULT nextval('public.entrada_entry_id_seq'::regclass);


--
-- Name: entrada_entry_tag id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry_tag ALTER COLUMN id SET DEFAULT nextval('public.entrada_entry_tag_id_seq'::regclass);


--
-- Name: entrada_tag id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_tag ALTER COLUMN id SET DEFAULT nextval('public.entrada_tag_id_seq'::regclass);


--
-- Name: favoritos_favorites id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites ALTER COLUMN id SET DEFAULT nextval('public.favoritos_favorites_id_seq'::regclass);


--
-- Name: home_contact id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_contact ALTER COLUMN id SET DEFAULT nextval('public.home_contact_id_seq'::regclass);


--
-- Name: home_home id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_home ALTER COLUMN id SET DEFAULT nextval('public.home_home_id_seq'::regclass);


--
-- Name: home_suscribers id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_suscribers ALTER COLUMN id SET DEFAULT nextval('public.home_suscribers_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
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
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add Contacto	7	add_contact
26	Can change Contacto	7	change_contact
27	Can delete Contacto	7	delete_contact
28	Can view Contacto	7	view_contact
29	Can add Pagina Principal	8	add_home
30	Can change Pagina Principal	8	change_home
31	Can delete Pagina Principal	8	delete_home
32	Can view Pagina Principal	8	view_home
33	Can add Suscriptor	9	add_suscribers
34	Can change Suscriptor	9	change_suscribers
35	Can delete Suscriptor	9	delete_suscribers
36	Can view Suscriptor	9	view_suscribers
37	Can add Categoria	10	add_category
38	Can change Categoria	10	change_category
39	Can delete Categoria	10	delete_category
40	Can view Categoria	10	view_category
41	Can add Etiqueta	11	add_tag
42	Can change Etiqueta	11	change_tag
43	Can delete Etiqueta	11	delete_tag
44	Can view Etiqueta	11	view_tag
45	Can add Entrada	12	add_entry
46	Can change Entrada	12	change_entry
47	Can delete Entrada	12	delete_entry
48	Can view Entrada	12	view_entry
49	Can add Entrada Favorita	13	add_favorites
50	Can change Entrada Favorita	13	change_favorites
51	Can delete Entrada Favorita	13	delete_favorites
52	Can view Entrada Favorita	13	view_favorites
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-11-21 14:21:29.088717-05	1	Russell Roberth	1	[{"added": {}}]	8	1
2	2022-11-21 14:24:15.259667-05	1	Programacion en Python	1	[{"added": {}}]	10	1
3	2022-11-21 14:24:24.907964-05	1	Programacion en Python	1	[{"added": {}}]	11	1
4	2022-11-21 14:25:11.658314-05	1	1-Habilidades más demandadas por las empresas internacionales de TI	1	[{"added": {}}]	12	1
5	2022-11-21 17:16:50.7085-05	1	neunapp@gmail.com	1	[{"added": {}}]	9	1
6	2022-11-21 17:17:06.657465-05	1	Jaun Perez	1	[{"added": {}}]	7	1
7	2022-11-24 01:17:16.237558-05	2	2-TITULO 1	2	[{"changed": {"fields": ["Titulo", "Resumen", "Contenido"]}}]	12	1
8	2022-11-24 01:20:02.307199-05	3	3-2	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
9	2022-11-24 20:43:09.965347-05	6	6-rest framewrok	1	[{"added": {}}]	12	1
10	2022-11-24 21:31:29.428134-05	2	2-Habilidades más demandadas por las empresas internacionales de TI	2	[{"changed": {"fields": ["Titulo"]}}]	12	1
11	2022-11-24 21:31:34.990108-05	4	4-Habilidades más demandadas por las empresas internacionales de TI	2	[{"changed": {"fields": ["Titulo"]}}]	12	1
12	2022-11-24 21:31:44.316991-05	5	5-Habilidades más demandadas por las empresas internacionales de TI	2	[{"changed": {"fields": ["Titulo"]}}]	12	1
13	2022-11-25 15:47:50.91198-05	2	BD Postgresql	1	[{"added": {}}]	10	1
14	2022-11-25 15:48:01.826843-05	3	3-2	2	[{"changed": {"fields": ["Category"]}}]	12	1
15	2022-11-26 00:12:02.7366-05	1	Russell Roberth	2	[{"changed": {"fields": ["About text"]}}]	8	1
16	2022-11-26 00:13:55.706447-05	1	Russell Roberth	2	[{"changed": {"fields": ["Titulo Nosotros", "About text"]}}]	8	1
17	2022-11-26 00:14:13.803475-05	1	Russell Roberth	2	[{"changed": {"fields": ["Titulo Nosotros"]}}]	8	1
18	2022-11-26 00:14:17.913441-05	1	Russell Roberth	2	[]	8	1
19	2022-11-26 00:57:01.120117-05	4	roberthbardales@gmail.com	3		9	1
20	2022-11-26 00:57:01.123114-05	3	roberthbardales@gmail.com	3		9	1
21	2022-11-26 17:59:53.58154-05	2	2-Habilidades más demandadas por las empresas internacionales de TI	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
22	2022-11-26 18:00:00.868716-05	4	4-Habilidades más demandadas por las empresas internacionales de TI	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
23	2022-11-26 18:00:11.245072-05	3	3-Para entender los lenguajes de	2	[{"changed": {"fields": ["Titulo", "Resumen"]}}]	12	1
24	2022-11-28 22:13:18.905443-05	1	roberthbardales@gmail.com	2	[{"changed": {"fields": ["Nombres"]}}]	6	1
25	2022-11-28 22:13:46.149858-05	1	roberthbardales@gmail.com	2	[{"changed": {"fields": ["Nombres"]}}]	6	1
27	2022-12-01 19:02:33.025515-05	2	neunapp@gmail.com	2	[{"changed": {"fields": ["Is active"]}}]	6	1
28	2022-12-04 22:28:33.350983-05	9	9-vgb	1	[{"added": {}}]	12	1
29	2022-12-05 12:47:10.413899-05	3	Git Hub	1	[{"added": {}}]	10	1
30	2022-12-05 13:52:43.728375-05	19	19-XDXDXDDXD	3		12	1
31	2022-12-05 13:52:43.731374-05	18	18-HOLA	3		12	1
32	2022-12-05 13:52:43.732371-05	17	17-HOLA	3		12	1
33	2022-12-05 13:52:43.73337-05	16	16-fgn	3		12	1
34	2022-12-05 13:52:43.734371-05	15	15-ggggg	3		12	1
35	2022-12-05 13:52:43.735371-05	14	14-fbfbfbfbfbfbfbfbf	3		12	1
36	2022-12-05 13:52:43.73637-05	13	13-joooooooooooooooo	3		12	1
37	2022-12-05 13:52:43.73637-05	12	12-gfh	3		12	1
38	2022-12-05 13:52:43.73737-05	11	11-j	3		12	1
39	2022-12-05 13:52:43.738368-05	10	10-bf	3		12	1
40	2022-12-05 13:52:43.739367-05	9	9-vgb	3		12	1
41	2022-12-05 17:11:31.781359-05	2	BD Postgresql	1	[{"added": {}}]	11	1
42	2022-12-05 17:11:36.338586-05	3	VUE JS	1	[{"added": {}}]	11	1
43	2022-12-05 17:11:39.602273-05	22	22-gh	2	[{"changed": {"fields": ["Tag", "Contenido"]}}]	12	1
44	2022-12-05 17:30:38.365182-05	24	24-k,	3		12	1
45	2022-12-05 17:30:38.368181-05	23	23-ererererere	3		12	1
46	2022-12-05 17:30:38.369316-05	22	22-gh	3		12	1
47	2022-12-05 17:30:38.370195-05	21	21-rurururu	3		12	1
48	2022-12-05 17:30:38.371192-05	20	20-TUTUTUTUTU	3		12	1
49	2022-12-05 17:30:38.372083-05	8	8-gn	3		12	1
50	2022-12-06 21:29:03.839368-05	29	29-sdf	3		12	1
51	2022-12-06 21:29:03.844007-05	28	28-ffff	3		12	1
52	2022-12-06 21:29:03.84523-05	27	27-ññoñ	3		12	1
53	2022-12-06 21:29:03.847137-05	26	26-000	3		12	1
54	2022-12-06 21:29:03.848097-05	25	25-i	3		12	1
55	2022-12-08 01:25:46.93093-05	3	fgh@hotmail.com	3		6	1
56	2022-12-08 22:26:29.415678-05	1	roberthbardales@gmail.com	2	[{"changed": {"fields": ["Nombres"]}}]	6	1
57	2022-12-09 14:18:16.164163-05	4	JavaScript	1	[{"added": {}}]	10	1
58	2022-12-09 14:18:34.570383-05	1	Python	2	[{"changed": {"fields": ["Nombre"]}}]	10	1
59	2022-12-09 14:18:39.642875-05	2	Postgresql	2	[{"changed": {"fields": ["Nombre"]}}]	10	1
60	2022-12-09 14:19:10.915593-05	3	GitHub	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
61	2022-12-09 14:19:19.94039-05	5	Django	1	[{"added": {}}]	10	1
62	2022-12-09 14:25:34.20413-05	6	Django Rest	1	[{"added": {}}]	10	1
63	2022-12-09 14:28:59.802179-05	7	Docker	1	[{"added": {}}]	10	1
64	2022-12-09 14:38:39.858575-05	2	neunapp@gmail.com	2	[{"changed": {"fields": ["Is staff"]}}]	6	1
65	2022-12-09 14:39:01.211962-05	2	neunapp@gmail.com	2	[{"changed": {"fields": ["Is staff", "Is active"]}}]	6	1
66	2022-12-09 17:06:09.383562-05	8	DigitalOcean	1	[{"added": {}}]	10	1
67	2022-12-09 21:11:46.819504-05	33	33-fg	3		12	1
68	2022-12-10 19:12:42.737933-05	2	neunapp@gmail.com	3		6	1
69	2022-12-17 18:04:08.482417-05	3	VUE JS	3		11	1
70	2022-12-17 18:04:08.485646-05	2	BD Postgresql	3		11	1
71	2022-12-17 18:05:01.233043-05	6	Rest Framework	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
72	2022-12-19 00:33:15.269054-05	9	hacking	1	[{"added": {}}]	10	1
73	2022-12-19 13:07:38.494411-05	36	36-Google Hacking: Comandos y Operadores Booleanos	2	[{"changed": {"fields": ["Portada"]}}]	12	1
74	2022-12-21 12:49:16.659717-05	50	50-DestroyAPIView	3		12	1
75	2022-12-22 16:32:38.030449-05	6	Django Rest 1	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
76	2022-12-25 21:03:29.194919-05	10	Usuarios Django	1	[{"added": {}}]	10	1
77	2022-12-26 16:05:20.899189-05	64	64-Validacion en Formulario de registro	3		12	1
78	2022-12-27 20:48:03.423083-05	11	M. Avanzados	1	[{"added": {}}]	10	1
79	2022-12-31 13:19:51.025339-05	12	TIPS Django	1	[{"added": {}}]	10	1
80	2022-12-31 16:48:31.73848-05	5	Django Basico	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
81	2023-01-05 19:00:14.813986-05	8	DigitalOcean	3		10	1
82	2023-01-05 19:00:14.817988-05	7	Docker	3		10	1
83	2023-01-05 19:30:49.40927-05	10	Django Usuarios	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
84	2023-01-05 19:31:20.644846-05	11	Django Modelos Avanzados	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
85	2023-01-05 19:31:56.860415-05	11	Django M Avanzados	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
86	2023-01-05 19:36:14.073024-05	11	DJ M.Avanzados	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
87	2023-01-05 19:43:08.958907-05	108	108-fgf	3		12	1
88	2023-01-08 18:54:09.082082-05	1	roberthbardales@gmail.com	2	[{"changed": {"fields": ["Ocupation", "Genero", "Fecha de nacimiento"]}}]	6	1
89	2023-01-09 15:45:13.296006-05	4	usuario_prueba@gmail.com	1	[{"added": {}}]	6	1
90	2023-01-09 16:06:30.256364-05	4	prueba@gmail.com	2	[{"changed": {"fields": ["Email"]}}]	6	1
91	2023-01-09 16:10:40.609498-05	4	prueba@gmail.com	3		6	1
92	2023-01-09 16:24:58.831044-05	5	prueba@gmail.com	2	[{"changed": {"fields": ["Is staff", "Is active"]}}]	6	1
93	2023-01-09 16:27:53.16009-05	5	prueba1@gmail.com	2	[{"changed": {"fields": ["Email", "Nombres"]}}]	6	1
94	2023-01-09 16:29:04.437547-05	6	prueba2@gmail.com	2	[{"changed": {"fields": ["Is staff", "Is active"]}}]	6	1
95	2023-01-09 18:01:44.168729-05	7	prueba3@gmail.com	2	[{"changed": {"fields": ["Email", "Nombres", "Is staff", "Is active"]}}]	6	1
96	2023-01-10 01:02:33.810612-05	74	74-Biblioteca - Creacion de Proyecto	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
97	2023-01-10 01:02:40.866051-05	75	75-Creacion de Modelos del Proyecto Biblioteca	2	[]	12	1
98	2023-01-10 01:02:53.14193-05	85	85-Consulta ForeingKey con Related Name	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
99	2023-01-10 01:03:12.562337-05	84	84-Consulta en un ForeingKey ORM	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
100	2023-01-10 01:03:20.40955-05	83	83-Filtro por Rango de Fechas con Validación de formato de fecha	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
101	2023-01-10 01:03:27.567226-05	82	82-Managers rango de Fechas	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
102	2023-01-10 01:03:48.88883-05	81	81-Managers Mayor que, Menor que	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
103	2023-01-10 01:03:56.630779-05	80	80-Managers Filtros de Exclusion exclude	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
104	2023-01-10 01:04:06.115953-05	79	79-Managers  Filtrar AND, NOT	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
105	2023-01-10 01:04:14.836515-05	78	78-Managers Filtrar OR	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
106	2023-01-10 01:04:23.193826-05	77	77-Filtros Basicos con Managers	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
107	2023-01-10 01:04:30.599176-05	76	76-Managers Basico Basado en Modelos	2	[{"changed": {"fields": ["Resumen"]}}]	12	1
108	2023-01-10 19:51:28.153387-05	6	Rest Framework	2	[{"changed": {"fields": ["Nombre corto", "Nombre"]}}]	10	1
109	2023-01-11 19:05:23.112658-05	111	111-sdf	3		12	1
110	2023-01-13 00:33:44.780029-05	114	114-gfhfgh	3		12	1
111	2023-01-13 00:33:44.784053-05	113	113-gb	3		12	1
112	2023-01-13 00:33:44.785028-05	112	112-dfg	3		12	1
113	2023-01-14 18:01:40.889776-05	7	prueba3@gmail.com	2	[{"changed": {"fields": ["Ocupation"]}}]	6	1
114	2023-01-14 19:36:05.437339-05	13	prueba	1	[{"added": {}}]	10	1
115	2023-01-14 19:36:22.997196-05	13	prueba	3		10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	home	contact
8	home	home
9	home	suscribers
10	entrada	category
11	entrada	tag
12	entrada	entry
13	favoritos	favorites
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-11-21 14:14:11.07377-05
2	contenttypes	0002_remove_content_type_name	2022-11-21 14:14:11.087173-05
3	auth	0001_initial	2022-11-21 14:14:11.125244-05
4	auth	0002_alter_permission_name_max_length	2022-11-21 14:14:11.161163-05
5	auth	0003_alter_user_email_max_length	2022-11-21 14:14:11.168161-05
6	auth	0004_alter_user_username_opts	2022-11-21 14:14:11.175154-05
7	auth	0005_alter_user_last_login_null	2022-11-21 14:14:11.182152-05
8	auth	0006_require_contenttypes_0002	2022-11-21 14:14:11.185149-05
9	auth	0007_alter_validators_add_error_messages	2022-11-21 14:14:11.191145-05
10	auth	0008_alter_user_username_max_length	2022-11-21 14:14:11.197824-05
11	auth	0009_alter_user_last_name_max_length	2022-11-21 14:14:11.203859-05
12	auth	0010_alter_group_name_max_length	2022-11-21 14:14:11.214853-05
13	auth	0011_update_proxy_permissions	2022-11-21 14:14:11.222849-05
14	users	0001_initial	2022-11-21 14:14:11.260169-05
15	admin	0001_initial	2022-11-21 14:14:11.317037-05
16	admin	0002_logentry_remove_auto_add	2022-11-21 14:14:11.336389-05
17	admin	0003_logentry_add_action_flag_choices	2022-11-21 14:14:11.346382-05
18	entrada	0001_initial	2022-11-21 14:14:11.389305-05
19	entrada	0002_entry_user	2022-11-21 14:14:11.435259-05
20	favoritos	0001_initial	2022-11-21 14:14:11.459146-05
21	favoritos	0002_auto_20221121_1414	2022-11-21 14:14:11.496614-05
22	home	0001_initial	2022-11-21 14:14:11.53361-05
23	sessions	0001_initial	2022-11-21 14:14:11.546977-05
24	favoritos	0002_auto_20221209_1639	2022-12-09 16:39:27.530903-05
25	entrada	0003_auto_20230105_1929	2023-01-05 19:29:50.146014-05
26	entrada	0004_auto_20230105_1939	2023-01-05 19:39:28.970564-05
27	users	0002_auto_20230108_1846	2023-01-08 18:46:49.201885-05
28	users	0003_auto_20230108_1900	2023-01-08 19:00:33.814389-05
29	auth	0012_alter_user_first_name_max_length	2023-01-11 19:04:04.817238-05
30	entrada	0005_auto_20230111_1902	2023-01-11 19:04:05.093546-05
31	entrada	0006_alter_entry_resume	2023-01-11 19:04:05.1528-05
32	entrada	0007_alter_entry_resume	2023-01-11 19:04:05.197801-05
33	favoritos	0003_alter_favorites_id	2023-01-11 19:04:05.2398-05
34	home	0002_auto_20230111_1902	2023-01-11 19:04:05.353919-05
35	users	0004_alter_user_id	2023-01-11 19:04:05.518682-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ngx32qt4im5ibs2alfguk5rxjhlw3q9p	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:14:23.664688-05
7kxiva0bdcyyyekvwmrhsqw06bx452x0	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:14:28.86138-05
tqnqzvtqxs5bdfde8t3q2cvujkv81jw0	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:15:01.181315-05
8o8x0r72znujo7vn08xbsbj5qbi05msb	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:15:11.531-05
xwm2xq18xgmlkxadnn49v7fbx3cwet1o	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:16:08.146263-05
ziz8rnr2x0cwxcqedo7sgwmucesxxqpw	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:17:38.010006-05
tsebrq0ds1zrx0bk5vfjfiu7cby1163i	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:17:44.802773-05
p9z4ysi0qyyy255p1ff7v9wwfbqsqw4d	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:19:04.744556-05
4etdhxp6rz1mh2keae6exzbqhcqwo1tp	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:26:21.295696-05
6avvfk7t2mbe6ef89uzt57cb43041kt8	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:28:25.902826-05
eaf96y6co31ruo5a21bw6gxuu1f7etsa	NDM3MDkxOTNkNDM0ZmNhYmEzNGM1ZTQ1M2YyYWE5MjAwMDE3NzhjZTp7fQ==	2022-12-05 17:33:56.02036-05
fmc1rxs2gtz0xu4f186f5pgtlmbhzfzv	MmU3Y2U2ZTdjOTg4MzU2Njc0OTYwYzRjM2MyNThjODQ3N2VhNTY1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMDJkZTRmN2JjM2FjZmEyODY1NzE4NzU0Yjk4NGJkZDQ1MzBhYTc0In0=	2022-12-14 22:44:56.734852-05
ebcz2pmgs39sddw20pewpmf8urkfmylx	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2022-12-23 19:12:33.339042-05
grhye0qxcd9z8os518jw5vruo69743mk	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2022-12-31 18:03:43.84865-05
cn5m50kvjawqtqh2odlkd9mbcjjq5t18	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2022-12-31 22:22:53.304707-05
vcin3ls27ab36js5ydb56bfj0ls6e32s	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-02 00:32:45.340856-05
upxrkgbakerzsqvatpoicvtc5jc7n18z	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 20:41:45.59824-05
tr12a9ng380sazo2xsqo5c3mqratj5cx	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 21:50:24.982332-05
eiu2ef5c61qdywlg5s46qmytpc1unww3	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 22:45:27.774525-05
pesn1bjnuvjiskwmg6kidi25yq6faigu	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 22:47:49.29145-05
lou23ccxa5v455x8z6a57dt3np8yqkjq	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 22:54:19.809741-05
sbnwetm87uz05f8ngiqgpnlzzuczn4va	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 22:54:59.634886-05
09amjgdqlw0m201kk4qw595kvjyjf8yl	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 22:59:48.087691-05
92f3z6cc5cf50h42vsbmdvc4ibfpuwg5	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-03 23:03:03.970415-05
ferqkzcamsm3yeq0shi5zrqlb1j9m63r	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-04 12:38:37.348105-05
j34bs2h5o3eh1w9ql40odxy8bdi8nc7w	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-04 12:48:10.125239-05
oqakuy5nj6e7p9pgdd0sdozfyhwcmcdd	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-04 12:48:55.796913-05
5ws4jhqb0ww18xydfdrcpxkoybnuki9c	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-04 13:03:26.433714-05
xuej60yh2fywaor98bgicoeeor1ipbmi	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-04 13:53:32.844372-05
i6jdg034bqhxav9bxkbn1lcm1tlxhihf	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-08 21:02:45.736395-05
bf7tobyu41wufucs0tkggh2wefk46dnw	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-08 21:03:39.764-05
nt8exfvl1ang2i9i8blu6nozn4dunsjp	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 15:34:22.061793-05
81dlne5ph5565hoxyj9w7azj1ak4zf9r	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 16:05:13.543472-05
7dyovkffixger4iddhmrwihl86wy7qam	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 20:03:55.811912-05
6i8ux2pxqfm9x5m97y3lff9a9zxlr7vg	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 20:06:36.349533-05
6qf9phqz4w2rnzk7rtodt25s3w8s8ap1	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 20:47:22.82719-05
yqblutdlfwdggljmuictga1zf0x2l3wy	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 20:47:59.372429-05
wm6vvs7bzwq1yyrnft5po4z8euuhe2dm	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-09 20:48:30.122874-05
72gdsrslv3zy4v4n26otq8ykwmhn9wbf	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-10 00:27:33.310481-05
wcbqut21dk0n5mqssq8eoahazt27r5iw	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-10 11:38:43.970425-05
680n6uet0kvz9ly7it5y6bmaa8ymtogp	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-10 12:16:30.700447-05
0o0q4mxw42wxl25ghqrvefktgtaomguw	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-11 00:09:24.09717-05
qxctz7bomssxag724yilp47bl1c6tag5	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-11 19:38:01.987012-05
3wk5z5w6k1hip1zuiswf9tl481a5p7hz	.eJxVjMsOwiAQRf-FtSHjwBTq0n2_gQxlkKqBpI-V8d-1SRe6veec-1KBt7WEbZE5TEldFKnT7xZ5fEjdQbpzvTU9trrOU9S7og-66KEleV4P9--g8FK-tTuLscaKZOjIkvVZCITIOE7Q--SBO8bUUwSTsx1dhwgGCZwT7BHV-wPI4Ta4:1pGnAg:Nm8ehS9yXgVnp0h7DWNmPk0CTWhy3QcX003voDHCAiE	2023-01-28 15:30:34.435495-05
00uyn3ehoupj5ox082m36yay0ykpbjn4	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 16:29:13.181623-05
8rk2tdjh89wp2m3asx6z0ms1b7sokc7c	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 16:41:52.402544-05
i7snoami5ao4gpb58iehbrxldlvcbhos	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 16:59:05.080546-05
2z9fg059fotni27ohshqpz97fzthrzhb	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 19:35:20.557199-05
4mabpax072kpw33vbk5q842u1v2elui6	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 22:00:02.258554-05
39qibeimbw5286xxtt57xlgrtg2h5se3	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-12 22:06:51.897203-05
ayv3lyrmcrckecww9ohc3fmsk9i9c46a	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-15 20:55:56.800298-05
fnmpmzl7i03f8ot4bol4urioa3x6xl25	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:07:07.926509-05
jpwvxw55d5h54jvotp2tlz6m76nlnrmg	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:15:41.87679-05
4wpmo8icuf6e0dw8esjyfpg2tqrrm6ps	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:23:33.654563-05
b2azzwjaueyqrf2mewh37n8zx75yb42n	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:28:40.528304-05
739emylfboo8vfael4burivgav8l2yk7	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:30:35.337669-05
lndz8qo0q5fym5cgs0fk8fu6nzvg5o82	.eJxVjEEOwiAQRe_C2hAYCmRcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWWpx-txTpkdsO-B7brUvqbV3mJHdFHnTIa-f8vBzu30GNo35rLMURIHv0iJOlYgEIrddktEXH6CFpZY3zUHjSGZUCYpMADCQXi3h_AMHNNvU:1pGTDX:92s46C51rZNkS53-PU0KQh6hgZ9JxtEEKN9ZGVXaBdY	2023-01-27 18:12:11.575462-05
m0rwysv8ect9ix0hxx4zm1nnoteff8z1	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 00:36:04.128483-05
b597fja7v9dl52ouav645805eocx41a2	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 15:49:49.972579-05
w7ai13axxrjvps716dlhk3v3flhgv9wt	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 16:00:02.129833-05
mdec4qeadmfg7a9d7krii2av9jcdu7hq	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-16 18:21:24.376008-05
8lrl2oogbl628210pdb7yo9f4c41tcb2	.eJxVjEEOwiAQRe_C2hAYCmRcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWWpx-txTpkdsO-B7brUvqbV3mJHdFHnTIa-f8vBzu30GNo35rLMURIHv0iJOlYgEIrddktEXH6CFpZY3zUHjSGZUCYpMADCQXi3h_AMHNNvU:1pHT2a:RfOHsE2Nsn8QhmtnmBvgSC0dJGWTcYh7B7fR9ExNV7A	2023-01-30 12:13:00.133389-05
vbszi99q400dzotlb0hwwtmz3wx6gkuk	NTIwM2FjNGM4MjQwMzhjZTZmMjRiNzJjM2ZjNmJhM2Q0MmZiODJhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTU5MjNjZDg0NzcyODBmZTAyZGI1NjA3ZjI3OTRjMTc3ZTE5YzUzIn0=	2023-01-20 01:01:17.221317-05
onsydm8resq8qsgto5mvxs495zd5hvx4	.eJxVjEEOwiAQRe_C2hAYCmRcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWWpx-txTpkdsO-B7brUvqbV3mJHdFHnTIa-f8vBzu30GNo35rLMURIHv0iJOlYgEIrddktEXH6CFpZY3zUHjSGZUCYpMADCQXi3h_AMHNNvU:1pHTtQ:PYLnqYw2kZG4ptPpv44IkqgqGGLNFU3v_u8H9nA6Pz8	2023-01-30 13:07:36.265903-05
o1j6240cjhgsr441grupr0ansfgkp6j9	.eJxVjDsOwjAQBe_iGlmOP9osJT1nsNbeDQ4gW4qTCnF3iJQC2jcz76UibWuJW5clzqzOKqjT75YoP6TugO9Ub03nVtdlTnpX9EG7vjaW5-Vw_w4K9fKtM1kGN1pkTA6CQ7bGOjZeQMBMZsBMAMl5QghkwGPIQII0Dt5PQOr9Ac6WN1E:1pGqyV:94pvOcGY6nCPoiMI0oUQbxfHbhlYmm2bH_YrnKI5CfU	2023-01-28 19:34:15.506564-05
dlsvqovapeevftgz7pli15vpfdky2xrr	.eJxVjMsOwiAQRf-FtSHjwBTq0n2_gQxlkKqBpI-V8d-1SRe6veec-1KBt7WEbZE5TEldFKnT7xZ5fEjdQbpzvTU9trrOU9S7og-66KEleV4P9--g8FK-tTuLscaKZOjIkvVZCITIOE7Q--SBO8bUUwSTsx1dhwgGCZwT7BHV-wPI4Ta4:1pGoQU:SyHqKkOY6JiRLqqKIerNjYRNDzA02HfktY5ZQk3YBEE	2023-01-28 16:50:58.775118-05
rm6wiv4aupi7fa3094tuaqv9gv1s2yp5	.eJxVjEEOwiAQRe_C2hAYCmRcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWWpx-txTpkdsO-B7brUvqbV3mJHdFHnTIa-f8vBzu30GNo35rLMURIHv0iJOlYgEIrddktEXH6CFpZY3zUHjSGZUCYpMADCQXi3h_AMHNNvU:1pGSPk:EhtGSfhiEX3tOE9kv_NvuL4BWlOwRFaedGZhESQKmuA	2023-01-27 17:20:44.387269-05
\.


--
-- Data for Name: entrada_category; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_category (id, created, modified, short_name, name) FROM stdin;
4	2022-12-09 14:18:16.159167-05	2022-12-09 14:18:16.159167-05	JavaScript	JavaScript
1	2022-11-21 14:24:15.255669-05	2022-12-09 14:18:34.568384-05	Python	Python
2	2022-11-25 15:47:50.905864-05	2022-12-09 14:18:39.641876-05	Postgresql	Postgresql
3	2022-12-05 12:47:10.407358-05	2022-12-09 14:19:10.914593-05	GitHub	GitHub
9	2022-12-19 00:33:15.264058-05	2022-12-19 00:33:15.264058-05	Hacking	hacking
12	2022-12-31 13:19:51.019333-05	2022-12-31 13:19:51.019333-05	TIPS Django	TIPS Django
5	2022-12-09 14:19:19.937393-05	2022-12-31 16:48:31.737483-05	Django Basico	Django Basico
10	2022-12-25 21:03:29.18492-05	2023-01-05 19:30:49.407268-05	Django Usuarios	Django Usuarios
11	2022-12-27 20:48:03.419082-05	2023-01-05 19:36:14.071023-05	DJ M.Avanzados	DJ M.Avanzados
6	2022-12-09 14:25:34.201131-05	2023-01-10 19:51:28.151386-05	Rest Framework	Rest Framework
\.


--
-- Data for Name: entrada_entry; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_entry (id, created, modified, title, resume, content, public, image, portada, in_home, slug, category_id, user_id) FROM stdin;
1	2022-11-21 14:25:11.56427-05	2022-12-09 00:13:57.802506-05	Habilidades más demandadas por las empresas internacionales de TI empresas internacionales de TI	Para entender los lenguajes de programación y las habilidades tecnológicas que necesitan las empresas y que representan una oportunidad para los desarrolladores mexicanos..lkñ.	<p>El cambio clim&aacute;tico viene de la mano del&nbsp;<a href="https://www.elconfidencial.com/tecnologia/ciencia/2017-06-19/mapa-del-cambio-climatico-asi-luchan-los-paises-contra-el-calentamiento-global_1379960/" target="_self">calentamiento global</a>&nbsp;y est&aacute;&nbsp;<strong>modificando el paradigma meteorol&oacute;gico</strong>&nbsp;poco a poco. Un ejemplo de ello es lo que ha ocurrido en un pueblo de los Alpes franceses llamado Saint-Firmin. Resulta que este pueblecito ten&iacute;a una estaci&oacute;n de esqu&iacute; que se inaugur&oacute; en 1964, con sus telesillas y todo. Nevaba cada a&ntilde;o y serv&iacute;a como pista para que los ni&ntilde;os principiantes aprendiesen a esquiar antes de lanzarse a lo loco por las zonas m&aacute;s desafiantes de los Alpes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sin embargo,&nbsp;<strong>lleg&oacute; un d&iacute;a en el que la nieve dej&oacute; de caer</strong>&nbsp;con tanta frecuencia y en tanta cantidad. Este fen&oacute;meno lleva not&aacute;ndose desde hace m&aacute;s de 15 a&ntilde;os y, poco a poco, ha obligado a ir deteniendo los telesillas. Esta es la misma situaci&oacute;n que viven otras estaciones de esqu&iacute; francesas y europeas, afectadas tambi&eacute;n por el cambio clim&aacute;tico.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/07/image.png" style="height:47%; width:88%" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Uno de los principales apartados cuando desarrollamos un sistema es la Seguridad, en espec&iacute;fico, la denominada Autenticaci&oacute;n, la cual no es mas que un conjunto de mecanismos para asociar la solicitud entrante con un conjunto de credenciales de identificaci&oacute;n que puede contener el usuario del cual proviene la petici&oacute;n o el token perteneciente a un usuario, dependiendo los mecanismos que se hayan definido, se valida si la solicitud puede ser permitida o no.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabemos que la autenticaci&oacute;n siempre se ejecuta al comienzo de la vista antes de que se produzcan las comprobaciones de permisos y limitaciones y antes de cualquier procesamiento de datos en alguna vista, por ello Django Rest Framework, luego de validar la petici&oacute;n, guardar&aacute; la instancia de la clase User en&nbsp;<em>request.user</em>. Adem&aacute;s de ello, existe otra propiedad llamada request.auth, la cual se utiliza para cualquier informaci&oacute;n adicional de la autenticaci&oacute;n, por ejemplo, representar el Token para la Autenticaci&oacute;n.</p>\r\n\r\n<p>Seg&uacute;n los datos de la empresa dedicada al reclutamiento remoto de desarrolladores, los lenguajes de programaci&oacute;n m&aacute;s populares para los proyectos de desarrollo de software de las empresas de TI estadounidenses son React, Python, Node, JavaScript, AWS, Typescript, SQL, Java, Rest y React Native. Aqu&iacute; los tres m&aacute;s populares:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><strong>React.js es la habilidad de programaci&oacute;n m&aacute;s demandada</strong>. Se percibe como el m&aacute;s &uacute;til para el desarrollo front-end, representando el 20% de todos los puestos de trabajo y el 14% de las 50 principales habilidades de programaci&oacute;n.</li>\r\n\t<li><strong>Python, el segundo lenguaje de programaci&oacute;n m&aacute;s demandado</strong>. Su popularidad ha alcanzado un m&aacute;ximo hist&oacute;rico, superando a Java, C# e incluso a JavaScript en el &iacute;ndice de trabajos de Turing. Asimismo el 30% de los desarrolladores desea aprender este idioma, lo que lo convierte en el m&aacute;s deseado por tercer a&ntilde;o consecutivo.</li>\r\n\t<li><strong>Node.js es la tercera habilidad de desarrollo m&aacute;s demandada</strong>. Con una cuota del 52%, mantiene su posici&oacute;n como el principal framework web para crear aplicaciones web. Adem&aacute;s, con m&aacute;s de 90.000 estrellas, Node JS es la segunda tecnolog&iacute;a m&aacute;s querida en GitHub.</li>\r\n</ol>\r\n\r\n<p>Turing mencion&oacute; que con frecuencia sus clientes solicitan desarrolladores que dominen m&aacute;s de un lenguaje de programaci&oacute;n, adem&aacute;s de buscar talento familiarizado con m&uacute;ltiples tecnolog&iacute;as. Esta es una lista de las habilidades m&aacute;s demandadas para:</p>\r\n\r\n<p><strong>&ndash;Desarrollo de back-end</strong>. Como el desarrollo de backend se centra en bases de datos, l&oacute;gica de backend, APIs y Servidores; las empresas buscan desarrolladores de backend que posean habilidades como Python, Django, Node.js, REST, Java, Go/Golang, PostgreSQL, PHP, Flask, C#, .NET</p>\r\n\r\n<p><strong>&ndash;Desarrollo front-end</strong>. Como los desarrolladores de front-end crean hermosas experiencias para sitios web y aplicaciones, las empresas buscan desarrolladores de front-end que posean habilidades como React, Typescript, JavaScript, CSS, HTML, Redux, GraphQL, Angular, Vue.js, UI Design y jQuery.</p>\r\n\r\n<p><strong>&ndash;Conocimientos en b</strong><strong>ases de datos</strong>. Todas las empresas utilizan una o varias bases de datos para almacenar y organizar la informaci&oacute;n. La informaci&oacute;n que las empresas almacenan puede ser muy sensible, por lo que deben tener cuidado mientras acceden o manipulan la informaci&oacute;n de la base de datos.</p>\r\n\r\n<p><strong>&mdash;</strong><strong>Habilidades de DevOps</strong>. Seg&uacute;n un estudio reciente, se espera que el tama&ntilde;o del mercado global de DevOps alcance los 12.850 millones de d&oacute;lares para el a&ntilde;o 2025, con una CAGR del 18,60%. Los ingenieros de DevOps m&aacute;s demandados son los que tienen experiencia con NoSQL, MongoDB, Firebase, MySQL y Redis.</p>\r\n\r\n<p><strong>&ndash;Habilidades de desarrollo m&oacute;vil</strong>. Se prev&eacute; que la econom&iacute;a mundial de las aplicaciones genere 21 billones de d&oacute;lares. Para atender esta demanda, las empresas buscan candidatos que tengan experiencia en lenguajes y habilidades de programaci&oacute;n, incluyendo Android, React Native, Swift y Flutter. Tambi&eacute;n est&aacute;n contratando desarrolladores de m&oacute;viles que tengan una buena comprensi&oacute;n del dise&ntilde;o UI/UX.</p>\r\n\r\n<p>MODIFICADO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;!-- head para PC --&gt;\r\n{% extends "home/base_home.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block title %}\r\n{{ home.title }}\r\n{% endblock title %}\r\n\r\n{% block description %}\r\n&lt;meta name="description" content="{{ home.description }}"&gt;\r\n{% endblock description %}\r\n\r\n{% block content %}\r\n\r\n{% include "includes/header.html" %}\r\n\r\n\r\n\t&lt;div class="row justify-content-center"&gt;\r\n\t\t&lt;div class="col-12"&gt;\r\n\t\t\t&lt;div class="aprende"&gt;\r\n\t\t\t\t&lt;p class="display-4 text-center mt-3 mb-4"&gt; Aprende Python, Django y más&lt;/p&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row justify-content-center"&gt;\r\n\t\t\t&lt;div class="col-md-6"&gt;\r\n\t\t\t\t\t&lt;div class="col mb-4 mt-0 portada"&gt;\r\n\t\t\t\t\t\t&lt;div class="card h-100 " &gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' portada.slug %}"&gt;\r\n\t\t\t\t\t\t\t\t&lt;img src="{{ portada.image.url }}" class="card-img-top mt-0" &gt;\r\n\r\n\t\t\t\t\t\t\t&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body"&gt;\r\n\t\t\t\t\t\t&lt;h4 class="card-title"&gt;\r\n\t\t\t\t\t\t\t&lt;a class="h5" href="{% url 'entrada_app:entry-detail' portada.slug %}"&gt;{{ portada.title }}&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;/h4&gt;\r\n\t\t\t\t\t\t&lt;p class=""&gt;{{ portada.resume|truncatechars:150 }}&lt;/p&gt;\r\n\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;div class="col-md-6"&gt;\r\n\t\t\t\t&lt;div class="row row-cols-1 row-cols-md-2 mt-0 justify-content-center entrada"&gt;\r\n\t\t\t\t\t{% for entrada in entradas_home %}\r\n\t\t\t\t\t&lt;div class="col mb-4"&gt;\r\n\t\t\t\t\t\t&lt;div class="card h-100"&gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;\r\n\t\t\t\t\t\t\t\t&lt;img class="img-fluid" src="{{entrada.image.url}}"&gt;\r\n\t\t\t\t\t\t\t&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="card-title"&gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;{{ entrada.title | truncatechars:30}}&lt;/a&gt;\r\n\t\t\t\t\t\t\t&lt;/h5&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t{% endfor %}\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row mb-4 justify-content-center  align-items-center"&gt;\r\n\t\t\t\t&lt;div class="col-md-10"&gt;\r\n\r\n\t\t\t\t\t\t&lt;div class="card h-100 shadow bienvenido"&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body bg-warning"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="card-title "&gt;{{ home.about_title }}&lt;/h5&gt;\r\n\t\t\t\t\t\t\t&lt;p class="card-text "&gt;{{ home.about_text }}&lt;/p&gt;\r\n\t\t\t\t&lt;!-- Button trigger modal --&gt;\r\n\t\t\t\t\t\t\t&lt;button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"&gt;\r\n\t\t\t\t\t\t\t\tSuscribete\r\n\t\t\t\t\t\t\t  &lt;/button&gt;\r\n\r\n\t\t\t\t\t\t&lt;/div&gt;\t\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;!-- Modal --&gt;\r\n\t\t\t\t\t&lt;div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"&gt;\r\n\t\t\t\t\t\t&lt;div class="modal-dialog modal-dialog-centered " role="document"&gt;\r\n\t\t\t\t\t\t&lt;div class="modal-content text-center"&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-header"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="modal-title" id="exampleModalLabel"&gt; Ingresa tu Correo&lt;/h5&gt;\r\n\t\t\t\t\t\t\t&lt;form method="post" action="{% url 'home_app:add-suscription' %}"&gt;{% csrf_token %}\r\n\t\t\t\t\t\t\t&lt;button type="button" class="close" data-dismiss="modal" aria-label="Close"&gt;\r\n\t\t\t\t\t\t\t\t&lt;span aria-hidden="true"&gt;&amp;times;&lt;/span&gt;\r\n\t\t\t\t\t\t\t&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-body"&gt;\r\n\t\t\t\t\t\t\t&lt;br&gt;\r\n\t\t\t\t\t\t\t{{form.email}}\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-footer"&gt;\r\n\t\t\t\t\t\t\t&lt;button type="submit" class="btn btn-success ml-auto"&gt;Suscribirme&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;button type="button" class="btn btn-danger mr-auto" data-dismiss="modal"&gt;Salir&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t&lt;/form&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\r\n\t&lt;div class="row mb-4 justify-content-center "&gt;\r\n\t\t&lt;div class="col-12"&gt;\r\n\r\n\t\t\t&lt;h5 class="mb-4 display-4 text-center articulos"&gt;Articulos Recientes&lt;/h5&gt;\r\n\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row  row-cols-1 row-cols-md-4 justify-content-center articulos_recientes" &gt;\r\n\t\t\t{% for entrada in entradas_recientes %}\r\n\t\t\t&lt;div class="col mb-4" &gt;\r\n\t\t\t\t&lt;div class="card h-100"&gt;\r\n\t\t\t\t\t&lt;img src="{{ entrada.image.url }}" "&gt;\r\n\t\t\t\t\t&lt;div class="card-body" &gt;\r\n\t\t\t\t\t\t&lt;h5 class="card-title"&gt;\r\n\t\t\t\t\t\t&lt;a  href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;{{ entrada.title | truncatechars:40}}&lt;/a&gt;\r\n\t\t\t\t\t&lt;/h5&gt;\r\n\t\t\t\t\t&lt;p class="card-text d-none d-sm-none d-md-block"&gt;{{ entrada.resume | truncatechars:40}}&lt;/p&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;div class="card-footer"&gt;\r\n\t\t\t\t\t\t&lt;small class="text-muted"&gt;Creado: {{ entrada.created }}&lt;/small&gt;\r\n\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t\t{% endfor %}\r\n\t&lt;/div&gt;\r\n\r\n\t&lt;div class="row justify-content-center  mt-4"&gt;\r\n\t\t&lt;!-- &lt;article class="col-12 col-md-6 col-lg-3 mb-3 mb-lg-0"&gt; --&gt;\r\n\t\t&lt;div class="col-8 text-center frase"&gt;\r\n\t\t\t\t&lt;blockquote class="blockquote"&gt;\r\n\t\t\t\t&lt;p class=" h7 text-primary"&gt;\r\n\t\t\t\t\t“No lo sé, procuro no cargar mi memoria con datos que puedo encontrar en cualquier manual"\r\n\t\t\t\t&lt;/p&gt;\r\n\t\t\t\t&lt;footer class="blockquote-footer  h6"&gt;\r\n\t\t\t\t\tAlbert Einstein \r\n\t\t\t\t&lt;/footer&gt;\r\n\t\t\t\t&lt;p class="h8"&gt;[Cuando Thomas Alva Edison le preguntó la velocidad del sonido]&lt;/p&gt;\r\n\t\t\t\t&lt;/blockquote&gt;\r\n\t\t&lt;/div&gt;\r\n\t\t&lt;div class="col-4 mt-4 mb-4 albert"&gt;\r\n\t\t\t&lt;img class="img-thumbnail" style="height: 200px;" src="static/img/002.jpg" alt=""&gt;\r\n\t\t&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n{% include "includes/footer.html" %}\r\n\r\n{% endblock content %}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;!-- head para PC --&gt;\r\n{% extends "home/base_home.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block title %}\r\n{{ home.title }}\r\n{% endblock title %}\r\n\r\n{% block description %}\r\n&lt;meta name="description" content="{{ home.description }}"&gt;\r\n{% endblock description %}\r\n\r\n{% block content %}\r\n\r\n{% include "includes/header.html" %}\r\n\r\n{% include "includes/footer.html" %}\r\n\r\n{% endblock content %}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/desarrolladores-780x470.jpg	t	t	habilidades-mas-demandadas-por-las-empresas-internacionales-de-ti-empresas-internacionales-de-ti-837	1	1
55	2022-12-21 17:27:49.117786-05	2022-12-22 16:50:23.770626-05	serialyzers con modelos relacionadas foreign key y many to many	agenda	<p>models.py&nbsp;</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom model_utils.models import TimeStampedModel\r\n#\r\nfrom django.db import models\r\n\r\n#\r\nclass Hobby(TimeStampedModel):\r\n    hobby = models.CharField(\r\n        'Pasatiempo',\r\n         max_length=50,\r\n    ) \r\n\r\n    class Meta:\r\n        verbose_name='Hobby'\r\n        verbose_name_plural='Hobbies'\r\n\r\n    def __str__(self):\r\n\r\n        return self.hobby\r\n\r\n#\r\nclass Person(TimeStampedModel):\r\n    """  Modelo para registrar personas de una agenda  """\r\n\r\n    full_name = models.CharField(\r\n        'Nombres', \r\n        max_length=50,\r\n    )\r\n    job = models.CharField(\r\n        'Trabajo', \r\n        max_length=30,\r\n        blank=True\r\n    )\r\n    email = models.EmailField(\r\n        blank=True, \r\n        null=True\r\n    )\r\n    phone = models.CharField(\r\n        'telefono',\r\n        max_length=15,\r\n        blank=True,\r\n    )\r\n\r\n    hobbies = models.ManyToManyField(Hobby) \r\n\r\n\r\n    class Meta:\r\n        verbose_name = 'Persona'\r\n        verbose_name_plural = 'Personas'\r\n    \r\n    def __str__(self):\r\n        return self.full_name\r\n\r\n\r\n\r\nclass Reunion(TimeStampedModel):\r\n    """  Modelo para reunion  """\r\n\r\n    persona = models.ForeignKey(\r\n        Person, \r\n        on_delete=models.CASCADE\r\n    )\r\n    fecha = models.DateField()\r\n    hora = models.TimeField()\r\n    asunto = models.CharField(\r\n        'Aunto de Reunion',\r\n        max_length=100\r\n    )\r\n    \r\n\r\n    class Meta:\r\n        verbose_name = 'Reunion'\r\n        verbose_name_plural = 'Reunion'\r\n    \r\n    def __str__(self):\r\n        return self.asunto</code></pre>\r\n\r\n<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>class ReunionSerializer(serializers.ModelSerializer):\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ReunionApilista(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= ReunionSerializer\r\n\r\n    def get_queryset(self):</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/reuniones/',\r\n        views.ReunionApilista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Modificando el serializer para&nbsp; un modelo foreing key que nos arroge el resultado requerido</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;serializers.py</p>\r\n\r\n<pre>\r\n<code>class PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )\r\n\r\nclass ReunionSerializer(serializers.ModelSerializer):\r\n\r\n    persona= PersonSerializer()\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n                'id',\r\n                'fecha',\r\n                'hora',\r\n                'asunto',\r\n                'persona',\r\n        )\r\n    </code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Modificando el serializer para&nbsp; un modelo many to many&nbsp;que nos arroge el resultado requerido</p>\r\n\r\n<p>&nbsp;serializers.py</p>\r\n\r\n<pre>\r\n<code>class ReunionSerializer(serializers.ModelSerializer):\r\n\r\n    persona= PersonSerializer()\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n                'id',\r\n                'fecha',\r\n                'hora',\r\n                'asunto',\r\n                'persona',\r\n        )</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ReunionApilista(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= ReunionSerializer\r\n\r\n    def get_queryset(self):\r\n        return Reunion.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/reuniones/',\r\n        views.ReunionApilista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_ZMYcxp3.png" style="height:779px; width:1053px" /></p>\r\n\r\n<p>Modificando Serializers para relacion Many to MAny</p>\r\n\r\n<p>srializers.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass HobbySerializer(serializers.ModelSerializer):\r\n\r\n    class Meta:\r\n        model=Hobby\r\n        fields=('__all__')\r\n\r\n\r\nclass PersonaSerializer3(serializers.ModelSerializer):\r\n\r\n    hobbies=HobbySerializer(many=True)\r\n\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            'id',\r\n            'full_name',\r\n            'job',\r\n            'email',\r\n            'phone',\r\n            'hobbies',\r\n            'created',\r\n        )</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonApiLista(ListAPIView):\r\n\r\n    #serializer_class= PersonaSerializer\r\n    serializer_class= PersonaSerializer3\r\n\r\n    def get_queryset(self):\r\n        return Person.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/personas/',\r\n        views.PersonApiLista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_xiraUFc.png" style="height:767px; width:1076px" /></p>	t	Entry/drf-logo2_Mx3OE41.png	f	t	serialyzers-con-modelos-relacionadas-foreign-key-y-many-to-many-60623	6	1
4	2022-11-21 18:03:09.285198-05	2022-11-27 19:26:23.622606-05	Habilidades más demandadas por las empresas internacionales de TI	Para entender los lenguajes de programación y las habilidades tecnológicas que necesitan las empresas y que representan una oportunidad para los desarrolladores mexicanos...	<p>3</p>	t	Entry/registro-y-autenticacion-con-dja.2e16d0ba.fill-2000x1000_rJ2NJV9.jpg	f	t	habilidades-mas-demandadas-por-las-empresas-internacionales-de-ti-69983	2	1
61	2022-12-25 21:18:54.314845-05	2022-12-25 21:18:54.402842-05	Gitignore ignorar archivos que se suben al repositorio	usuarios	<p>.gitignore</p>\r\n\r\n<pre>\r\n<code># secret key\r\nusuarios/secret.json</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/25/image_I9vqgHP.png" style="height:125px; width:627px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/25/image_eSvu4kf.png" style="height:456px; width:226px" /></p>	t	Entry/1_CWFkh5z8oa6dZfn5_gkKKQ_NYlaixj.webp	f	t	gitignore-ignorar-archivos-que-se-suben-al-repositorio-76734	3	1
31	2022-12-09 16:31:16.900702-05	2022-12-10 20:57:16.755911-05	Generar y Restaurar Backup Postgresql 12 en Windows 10	Generar y Restaurar Backup Postgresql 12 en Windows 10	<p>Para no tener problemes es mejor abrir el <strong>cmd modo administrador </strong>y ejecutamos el siguiente comando</p>\r\n\r\n<p>Primero ir a la siguiente ruta en el cmd</p>\r\n\r\n<pre>\r\n<code>C:\\Program Files\\PostgreSQL\\12\\bin</code></pre>\r\n\r\n<p>Luego ejecutamos el siguiente comando</p>\r\n\r\n<pre>\r\n<code>pg_dump -U postgres -W -h localhost blogdb&gt; copia_blogdb.sql</code></pre>\r\n\r\n<p>poner la contrase&ntilde;a del postgresql</p>\r\n\r\n<p><img src="/media/uploads/2022/12/09/image_q6GjSiU.png" /></p>\r\n\r\n<p>Para restaurar la base de datos debemos acceder al shell de postgressql y poner el password</p>\r\n\r\n<p><img src="/media/uploads/2022/12/09/image_Qvluz8t.png" /></p>\r\n\r\n<p>ejecutar los sigueintes comandos</p>\r\n\r\n<pre>\r\n<code>\\c</code></pre>\r\n\r\n<pre>\r\n<code>\\l</code></pre>\r\n\r\n<p>con eso nos da privilegios y no slista las base de datos que existen</p>\r\n\r\n<p>para restaurar la bd creamos una base de datos con el nombre blogdb(si ya existe borramos y creamos de nuevo)</p>\r\n\r\n<p>en postgresql usamos el siguiente comando</p>\r\n\r\n<pre>\r\n<code>postgres=# create database blogdb;</code></pre>\r\n\r\n<p>luego abrimso el cmd vamos a la ruta</p>\r\n\r\n<pre>\r\n<code>C:\\Program Files\\PostgreSQL\\12\\bin</code></pre>\r\n\r\n<p>y ejecutamos el sigueinte comando para restaurar la bd</p>\r\n\r\n<pre>\r\n<code>psql -h localhost -U postgres -p 5432 blogdb &lt; copia_blogdb.sql</code></pre>\r\n\r\n<p>si estamos trabajando con django y queremos restauara la bd</p>\r\n\r\n<p>primero borramos los archivos q se generan dentro de la carpeta migrations de cada aplicacion</p>\r\n\r\n<p>luego activamos el entorno virtual y ejecutamos los siguientes comandos.</p>\r\n\r\n<pre>\r\n<code>python manage.py makemigrations</code></pre>\r\n\r\n<pre>\r\n<code>python manage.py migrate --fake</code></pre>\r\n\r\n<p>y finalmente el</p>\r\n\r\n<pre>\r\n<code>python manage.py runserver</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/Como-listar-bases-de-datos-y-tablas-en-PostgreSQL-usando-psql.jpg	f	t	generar-y-restaurar-backup-postgresql-12-en-windows-10-75436	2	1
58	2022-12-22 18:06:14.311669-05	2022-12-22 18:06:14.401667-05	Paginacion en los Serializadores	agenda	<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass PersonPagination(pagination.PageNumberPagination):\r\n    page_size=3\r\n    max_page_size=50\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonPaginationList(ListAPIView):\r\n    """\r\n    lista personas con paginacion\r\n    """\r\n    serializer_class= PersonaSerializer\r\n    pagination_class= PersonPagination\r\n\r\n    def get_queryset(self):\r\n        return Person.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>        path(\r\n        'api/personas/paginacion/',\r\n        views.PersonPaginationList.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_6YZxTHl.png" style="height:759px; width:1204px" /></p>	t	Entry/drf-logo2_gdn5EIF.png	f	t	paginacion-en-los-serializadores-65174	6	1
54	2022-12-21 16:47:55.596262-05	2022-12-21 16:48:48.48985-05	Agregar Atributos a un modelo Serializer	agenda	<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass PersonaSerializer2(serializers.ModelSerializer):\r\n\r\n    activo=serializers.BooleanField(default=False)\r\n\r\n    class Meta:\r\n        model=Person\r\n        fields=('__all__')</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonApiLista(ListAPIView):\r\n\r\n    #serializer_class= PersonaSerializer\r\n    serializer_class= PersonaSerializer2\r\n\r\n    def get_queryset(self):\r\n        return Person.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/personas/',\r\n        views.PersonApiLista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_5oTRyr9.png" style="height:433px; width:1053px" /></p>	t	Entry/drf-logo2_4Dy8sei.png	f	t	agregar-atributos-a-un-modelo-serializer-60528	6	1
86	2022-12-31 13:21:54.88503-05	2022-12-31 13:27:56.691513-05	Ejecutar Django desde el CMD arhcivo bat	tips	<p>Abrir un block de notas copias el codigo y guardar el achivo como .bat</p>\r\n\r\n<p>poner la ruta donde se encuentra el activate del entorno virtual y luego la ruta donde se encuentra el manage.py</p>\r\n\r\n<pre>\r\n<code>@echo off\r\ncmd /k "cd /d D:\\Proyectos GIT\\entornos_blog\\blog\\Scripts &amp; activate &amp; cd /d D:\\Proyectos GIT\\blog &amp; python manage.py runserver 5000"</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/31/image.png" style="height:345px; width:510px" /></p>\r\n\r\n<p>tambien funciona desde el visual studio code</p>\r\n\r\n<p><img src="/media/uploads/2022/12/31/image_NuJGzVq.png" style="height:338px; width:548px" /></p>	t	Entry/django_yQzEXc1.JPG	f	t	ejecutar-django-desde-el-cmd-arhcivo-bat-48476	12	1
93	2023-01-02 16:44:07.089505-05	2023-01-02 16:51:47.424659-05	ListView con Filtro	empleado	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>views.py&nbsp;</p>\r\n\r\n<pre>\r\n<code>class ListByAreaEmpleado(ListView):\r\n    """ lista empleados de un area """\r\n    template_name = 'persona/list_by_area.html'\r\n    context_object_name = 'empleados'\r\n\r\n    queryset=Empleado.objects.filter(\r\n        departamento__shor_name='contabilidad'\r\n    )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'lista-by-area/',\r\n        views.ListByAreaEmpleado.as_view(),\r\n        name='emplados_area'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/list_by_area.html</p>\r\n\r\n<pre>\r\n<code>{% extends 'base.html' %}\r\n\r\n{% block title %}\r\n  lista empelados por departamento\r\n{% endblock title %}\r\n\r\n{% block content %}\r\n  {% include "includes/header.html" %}\r\n\r\n  &lt;div class="grid-container"&gt;\r\n      &lt;div class="grid-x"&gt;\r\n        &lt;div class="cell"&gt;Empelados por area:&lt;/div&gt;\r\n        &lt;div class="cell"&gt;\r\n            &lt;table&gt;\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                    &lt;th width="200"&gt;ID&lt;/th&gt;\r\n                    &lt;th&gt;NOMBRES&lt;/th&gt;\r\n                    &lt;th width="150"&gt;APELLIDOS&lt;/th&gt;\r\n                    &lt;th width="150"&gt;DEPARTAMENTO&lt;/th&gt;\r\n                    &lt;th width="150"&gt;ACCION&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    {% for e in empleados %}\r\n                    &lt;tr&gt;\r\n                        &lt;td&gt;{{ e.id }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.first_name }}&lt;/td&gt;\r\n                        &lt;td&gt;C{{ e.last_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.departamento }}&lt;/td&gt;\r\n                        &lt;td&gt;&lt;a class="button warning" href="{% url 'persona_app:empleado_detail' e.id %}"&gt;Ver&lt;/a&gt;&lt;/td&gt;\r\n                    &lt;/tr&gt;\r\n                    {% endfor %}\r\n                &lt;/tbody&gt;\r\n            &lt;/table&gt;\r\n        &lt;/div&gt;\r\n      &lt;/div&gt;\r\n  &lt;/div&gt;\r\n\r\n\r\n{% endblock content %}\r\n\r\n&lt;h1&gt;Lista empelados por departamento&lt;/h1&gt;\r\n\r\n&lt;ul&gt;\r\n    \r\n    {% for e in object_list  %}\r\n        &lt;li&gt;{{ e }}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;</code></pre>\r\n\r\n<p>agregar al urls.py principal</p>\r\n\r\n<pre>\r\n<code>"""empleado URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/2.2/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path, re_path, include\r\nfrom django.conf import settings\r\nfrom django.conf.urls.static import static\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    # incluimos las urls de la app departamento\r\n    re_path('', include('applications.departamento.urls')),\r\n    re_path('', include('applications.home.urls')),\r\n    re_path('', include('applications.persona.urls')),\r\n] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)</code></pre>	t	Entry/django_PScRrNO.JPG	f	t	listview-con-filtro-60707	5	1
30	2022-12-08 01:29:49.120044-05	2022-12-09 14:32:46.780725-05	GIT - Subir un Repositorio - BASICO	GIT - Subir un Repositorio GIT	<p>Primero creamos una cuenta de github luego creamos un respositorio, luego descargamos el archivo</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_WOuXa9m.png" style="height:39%; width:40%" /></p>\r\n\r\n<p>y ejecutamos el comando en la carpeta que creamos en este ejemplo &quot;blog&quot;:</p>\r\n\r\n<pre>\r\n<code>$ git clone https://github.com/roberthbardales/blog.git\r\n</code></pre>\r\n\r\n<p><strong>Para Subir Archivos</strong></p>\r\n\r\n<p>Primero para ver si hay cambios ejecutamos&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_XrsSMRO.png" style="height:53%; width:83%" /></p>\r\n\r\n<pre>\r\n<code>$ git add .\r\n</code></pre>\r\n\r\n<p>luego hacemos el commit</p>\r\n\r\n<pre>\r\n<code>$ git commit -m "git 8 12 2022"\r\n</code></pre>\r\n\r\n<p>para saber donde guardaremos el repositorio, ahi encontraremos el origin</p>\r\n\r\n<pre>\r\n<code>$ git remote -v\r\n</code></pre>\r\n\r\n<p>ahora hacemos el push, al hacer el push puede que te pida que te loguees</p>\r\n\r\n<pre>\r\n<code>$ git push origin\r\n</code></pre>\r\n\r\n<p>aca se ve un ejemplo de loquearse por comandos</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_nOERbqn.png" style="height:43%; width:67%" /></p>	t	Entry/1_CWFkh5z8oa6dZfn5_gkKKQ.webp	f	t	git-subir-un-repositorio-basico-52366	3	1
32	2022-12-09 16:47:14.125594-05	2022-12-09 16:47:14.321593-05	Crear Base de datos y eliminarlos Postgresql 12	Crear Base de datos y eliminarlos Postgresql 12	<p>Crear Base de datos y eliminarlos Postgresql 12</p>	t	Entry/Como-listar-bases-de-datos-y-tablas-en-PostgreSQL-usando-psql_6V8AKHb.jpg	f	t	crear-base-de-datos-y-eliminarlos-postgresql-12-60434	2	1
59	2022-12-25 21:10:34.841622-05	2022-12-25 21:12:49.491981-05	Organizacion de Carpetas	Usuarios	<p>Cofigurar los siguientes archivos</p>\r\n\r\n<p><img src="/media/uploads/2022/12/25/image.png" style="height:646px; width:246px" /></p>\r\n\r\n<p>base.py</p>\r\n\r\n<pre>\r\n<code>from django.core.exceptions import ImproperlyConfigured\r\nimport json\r\n\r\n\r\n# Build paths inside the project like this: os.path.join(BASE_DIR, ...)\r\nfrom unipath import Path\r\nBASE_DIR = Path(__file__).ancestor(3)\r\n\r\n\r\n# Quick-start development settings - unsuitable for production\r\n# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/\r\n\r\n# SECURITY WARNING: keep the secret key used in production secret!\r\nwith open("secret.json") as f:\r\n    secret = json.loads(f.read())\r\n\r\ndef get_secret(secret_name, secrets=secret):\r\n    try:\r\n        return secrets[secret_name]\r\n    except:\r\n        msg = "la variable %s no existe" % secret_name\r\n        raise ImproperlyConfigured(msg)\r\n\r\n\r\n\r\nSECRET_KEY = get_secret('SECRET_KEY')\r\n\r\n\r\n# Application definition\r\n\r\nDJANGO_APPS = (\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n)\r\n\r\nLOCAL_APPS = (\r\n    'applications.users',\r\n)\r\n\r\nTHIRD_PARTY_APPS = ()\r\n\r\nINSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS\r\n\r\nEMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'\r\n\r\nMIDDLEWARE = [\r\n    'django.middleware.security.SecurityMiddleware',\r\n    'django.contrib.sessions.middleware.SessionMiddleware',\r\n    'django.middleware.common.CommonMiddleware',\r\n    'django.middleware.csrf.CsrfViewMiddleware',\r\n    'django.contrib.auth.middleware.AuthenticationMiddleware',\r\n    'django.contrib.messages.middleware.MessageMiddleware',\r\n    'django.middleware.clickjacking.XFrameOptionsMiddleware',\r\n]\r\n\r\nROOT_URLCONF = 'usuarios.urls'\r\n\r\nTEMPLATES = [\r\n    {\r\n        'BACKEND': 'django.template.backends.django.DjangoTemplates',\r\n        'DIRS': [BASE_DIR.child('templates')],\r\n        'APP_DIRS': True,\r\n        'OPTIONS': {\r\n            'context_processors': [\r\n                'django.template.context_processors.debug',\r\n                'django.template.context_processors.request',\r\n                'django.contrib.auth.context_processors.auth',\r\n                'django.contrib.messages.context_processors.messages',\r\n            ],\r\n        },\r\n    },\r\n]\r\n\r\nWSGI_APPLICATION = 'usuarios.wsgi.application'\r\n\r\n\r\n# Password validation\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators\r\n\r\nAUTH_PASSWORD_VALIDATORS = [\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',\r\n    },\r\n]\r\n\r\nAUTH_USER_MODEL = 'users.User'\r\n\r\n# Internationalization\r\n# https://docs.djangoproject.com/en/2.2/topics/i18n/\r\n\r\nLANGUAGE_CODE = 'es-us'\r\n\r\nTIME_ZONE = 'UTC'\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = True\r\n\r\nUSE_TZ = True\r\n</code></pre>\r\n\r\n<p>local.py</p>\r\n\r\n<pre>\r\n<code>from .base import *\r\n# SECURITY WARNING: don't run with debug turned on in production!\r\nDEBUG = True\r\n\r\nALLOWED_HOSTS = []\r\n\r\n# Database\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#databases\r\n\r\nDATABASES = {\r\n    'default': {\r\n        'ENGINE': 'django.db.backends.postgresql_psycopg2',\r\n        'NAME': get_secret('DB_NAME'),\r\n        'USER': get_secret('USER'),\r\n        'PASSWORD': get_secret('PASSWORD'),\r\n        'HOST': 'localhost',\r\n        'PORT': '5432',\r\n    }\r\n}\r\n# Static files (CSS, JavaScript, Images)\r\n# https://docs.djangoproject.com/en/2.2/howto/static-files/\r\n\r\nSTATIC_URL = '/static/'\r\nSTATICFILES_DIRS = [BASE_DIR.child('static')]\r\n\r\nMEDIA_URL = '/media/'\r\nMEDIA_ROOT = BASE_DIR.child('media')\r\n\r\n# EMAIL SETTINGS\r\nEMAIL_USE_TLS = True\r\nEMAIL_HOST = 'smtp.gmail.com'\r\nEMAIL_HOST_USER = get_secret('EMAIL')\r\nEMAIL_HOST_PASSWORD = get_secret('PASS_EMAIL')\r\nEMAIL_PORT = 587</code></pre>\r\n\r\n<p>prod.py</p>\r\n\r\n<pre>\r\n<code>from .base import *\r\n# SECURITY WARNING: don't run with debug turned on in production!\r\nDEBUG = True\r\n\r\nALLOWED_HOSTS = ['*']\r\n\r\n# Database\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#databases\r\n\r\nDATABASES = {\r\n    'default': {\r\n        'ENGINE': 'django.db.backends.postgresql_psycopg2',\r\n        'NAME': get_secret('DB_NAME'),\r\n        'USER': get_secret('USER'),\r\n        'PASSWORD': get_secret('PASSWORD'),\r\n        'HOST': 'localhost',\r\n        'PORT': '5432',\r\n    }\r\n}\r\n# Static files (CSS, JavaScript, Images)\r\n# https://docs.djangoproject.com/en/2.2/howto/static-files/\r\n\r\nSTATIC_URL = '/static/'\r\nSTATICFILES_DIRS = [BASE_DIR.child('static')]\r\n\r\nMEDIA_URL = '/media/'\r\nMEDIA_ROOT = BASE_DIR.child('media')\r\n\r\n# EMAIL SETTINGS\r\nEMAIL_USE_TLS = True\r\nEMAIL_HOST = 'smtp.gmail.com'\r\nEMAIL_HOST_USER = get_secret('EMAIL')\r\nEMAIL_HOST_PASSWORD = get_secret('PASS_EMAIL')\r\nEMAIL_PORT = 587</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>"""usuarios URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/3.0/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path, re_path, include\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    re_path('', include('applications.users.urls')),\r\n    re_path('', include('applications.home.urls')),\r\n]\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django.JPG	f	t	organizacion-de-carpetas-76369	10	1
38	2022-12-19 01:41:50.648893-05	2022-12-19 11:35:14.009321-05	Censys	Censys	<p>Ir a&nbsp;&nbsp;</p>\r\n\r\n<p>https://censys.io/</p>\r\n\r\n<p>y seleccionar censys search</p>\r\n\r\n<p>aqui hya ejemplos</p>\r\n\r\n<p>https://search.censys.io/search/examples?resource=hosts&amp;sort=RELEVANCE&amp;per_page=25&amp;virtual_hosts=EXCLUDE&amp;q=ftp</p>\r\n\r\n<h2>Example Queries:</h2>\r\n\r\n<h4>Hosts in 23.0.0.0/8 or 8.8.8.0/24:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts running FTP or Telnet in Germany:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with powershell.exe within an HTTP body:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>The exact SNMP location value of &quot;Sitting on the Dock of the Bay&quot;:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with the phrase &quot;Schneider Electric&quot; or Dell within the range 23.20.0.0/14:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts that have any of the following ports open: 22, 23, 24, 25:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts that do not have an HTTP service running:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts presenting any certificate:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts presenting the string hello succeeded by any value (regular expresion):</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts presenting certificates with a name foo1, foo2, foo3...foo100 succeeded by any value (regular expresion):</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts within the specified range:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with an SSH service running on ports other than port 22 and 2222:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts running elasticsearch on port 443:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with services that were last scanned by Censys Scanners within NTT ISP:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with services that were last scanned by Censys Scanners within NTT or TELIA ISPs:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with a page title on an HTTP service containing the word &quot;dashboard&quot;:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with an HTTP service that responded with a server error status code:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with an HTTP service that have specific HTTP header-value pairs:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with an RDP service presenting a certificate:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with any service that is running SSLv3:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with a service presenting a TLS certificate with the string &quot;localhost&quot; in the subject_dn:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with a service running Microsoft IIS 7.5:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts with a service presenting a specific combination of operating system and application software:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts running a Raspberry Pi product:</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;SEARCH</p>\r\n\r\n<h4>Hosts in ASes that contain word University:</h4>\r\n\r\n<p>&nbsp;</p>	t	Entry/banner-2021.2-release_ygtaoQ2.jpg	f	t	censys-41714	9	1
35	2022-12-17 18:11:24.487829-05	2022-12-17 18:11:24.810846-05	Instalar Django Rest Framework	Instalar Django Rest Framework	<p>Activar el entorno e instalar:</p>\r\n\r\n<pre>\r\n<code>pip install djangorestframework</code></pre>\r\n\r\n<p>configurar el archivo base.py y agregar lo siguiente</p>\r\n\r\n<pre>\r\n<code>THIRD_PARTY_APPS = (\r\n    'rest_framework',\r\n)</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/drf-logo2.png	f	t	instalar-django-rest-framework-65484	6	1
62	2022-12-25 23:21:58.513998-05	2022-12-25 23:59:56.955541-05	Creacion de UsuariosModelo Users AbstractBaseUser	usuarios	<p>usaremos&nbsp;AbstractBaseUser, PermissionsMixin</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\nfrom django.contrib.auth.models import AbstractBaseUser, PermissionsMixin\r\n#\r\nfrom .managers import UserManager\r\n\r\nclass User(AbstractBaseUser, PermissionsMixin):\r\n\r\n    GENDER_CHOICES = (\r\n        ('M', 'Masculino'),\r\n        ('F', 'Femenino'),\r\n        ('O', 'Otros'),\r\n    )\r\n\r\n    username = models.CharField(max_length=10, unique=True)\r\n    email = models.EmailField()\r\n    nombres = models.CharField(max_length=30, blank=True)\r\n    apellidos = models.CharField(max_length=30, blank=True)\r\n    genero = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True)\r\n    codregistro = models.CharField(max_length=6, blank=True)\r\n    #\r\n    is_staff = models.BooleanField(default=False)\r\n    is_active = models.BooleanField(default=False)\r\n\r\n    USERNAME_FIELD = 'username'\r\n\r\n    REQUIRED_FIELDS = ['email',]\r\n\r\n    objects = UserManager()\r\n\r\n    def get_short_name(self):\r\n        return self.username\r\n    \r\n    def get_full_name(self):\r\n        return self.nombres + ' ' + self.apellidos\r\n</code></pre>\r\n\r\n<p>se modifca el archivo base.py</p>\r\n\r\n<pre>\r\n<code>from django.core.exceptions import ImproperlyConfigured\r\nimport json\r\n\r\n\r\n# Build paths inside the project like this: os.path.join(BASE_DIR, ...)\r\nfrom unipath import Path\r\nBASE_DIR = Path(__file__).ancestor(3)\r\n\r\n\r\n# Quick-start development settings - unsuitable for production\r\n# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/\r\n\r\n# SECURITY WARNING: keep the secret key used in production secret!\r\nwith open("secret.json") as f:\r\n    secret = json.loads(f.read())\r\n\r\ndef get_secret(secret_name, secrets=secret):\r\n    try:\r\n        return secrets[secret_name]\r\n    except:\r\n        msg = "la variable %s no existe" % secret_name\r\n        raise ImproperlyConfigured(msg)\r\n\r\n\r\n\r\nSECRET_KEY = get_secret('SECRET_KEY')\r\n\r\n\r\n# Application definition\r\n\r\nDJANGO_APPS = (\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n)\r\n\r\nLOCAL_APPS = (\r\n    'applications.users',\r\n)\r\n\r\nTHIRD_PARTY_APPS = ()\r\n\r\nINSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS\r\n\r\nEMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'\r\n\r\nMIDDLEWARE = [\r\n    'django.middleware.security.SecurityMiddleware',\r\n    'django.contrib.sessions.middleware.SessionMiddleware',\r\n    'django.middleware.common.CommonMiddleware',\r\n    'django.middleware.csrf.CsrfViewMiddleware',\r\n    'django.contrib.auth.middleware.AuthenticationMiddleware',\r\n    'django.contrib.messages.middleware.MessageMiddleware',\r\n    'django.middleware.clickjacking.XFrameOptionsMiddleware',\r\n]\r\n\r\nROOT_URLCONF = 'usuarios.urls'\r\n\r\nTEMPLATES = [\r\n    {\r\n        'BACKEND': 'django.template.backends.django.DjangoTemplates',\r\n        'DIRS': [BASE_DIR.child('templates')],\r\n        'APP_DIRS': True,\r\n        'OPTIONS': {\r\n            'context_processors': [\r\n                'django.template.context_processors.debug',\r\n                'django.template.context_processors.request',\r\n                'django.contrib.auth.context_processors.auth',\r\n                'django.contrib.messages.context_processors.messages',\r\n            ],\r\n        },\r\n    },\r\n]\r\n\r\nWSGI_APPLICATION = 'usuarios.wsgi.application'\r\n\r\n\r\n# Password validation\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators\r\n\r\nAUTH_PASSWORD_VALIDATORS = [\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',\r\n    },\r\n]\r\n\r\nAUTH_USER_MODEL = 'users.User'  #constannte nueva para trabajar con este modelo de users\r\n\r\n# Internationalization\r\n# https://docs.djangoproject.com/en/2.2/topics/i18n/\r\n\r\nLANGUAGE_CODE = 'es-us'\r\n\r\nTIME_ZONE = 'UTC'\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = True\r\n\r\nUSE_TZ = True\r\n</code></pre>\r\n\r\n<p>para trabjar con usuarios requiere necesariamente de los managers</p>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n#\r\nfrom django.contrib.auth.models import BaseUserManager\r\n\r\nclass UserManager(BaseUserManager, models.Manager):\r\n\r\n    def _create_user(self, username, email, password, is_staff, is_superuser, is_active, **extra_fields):\r\n        user = self.model(\r\n            username=username,\r\n            email=email,\r\n            is_staff=is_staff,\r\n            is_superuser=is_superuser,\r\n            is_active=is_active,\r\n            **extra_fields\r\n        )\r\n        user.set_password(password)\r\n        user.save(using=self.db)\r\n        return user\r\n    \r\n    def create_user(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, False, False, False, **extra_fields)\r\n\r\n    def create_superuser(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, True, True, True, **extra_fields)\r\n    \r\n    def cod_validation(self, id_user, cod_registro):\r\n        if self.filter(id=id_user, codregistro=cod_registro).exists():\r\n            return True\r\n        else:\r\n            return False</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_GVlkm4A.JPG	f	t	creacion-de-usuariosmodelo-users-abstractbaseuser-86396	10	1
37	2022-12-19 01:20:36.482304-05	2022-12-19 01:30:19.839553-05	Shodan Comandos	Shodan Comandos	<p>Shodan: Comandos principales</p>\r\n\r\n<p><strong>Comandos relevantes para Shodan</strong></p>\r\n\r\n<p>A continuaci&oacute;n se presentan algunos de los filtros m&aacute;s relevantes para el uso de Shodan:</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><code>after</code>: Only show results after the given date (dd/mm/yyyy) string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>asn</code>: Autonomous system number string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>before</code>: Only show results before the given date (dd/mm/yyyy) string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>category</code>: Available categories: ics, malwarestring</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>city</code>: Name of the city string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>country</code>: 2-letter country code string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>geo</code>: Accepts between 2 and 4 parameters. If 2 parameters: latitude, longitude. If 3 parameters: latitude, longitude, range. If 4 parameters: top left latitude, top left longitude, bottom right latitude, bottom right longitude.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>hash</code>: Hash of the data property integer</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>has_ipv6</code>: True/False boolean</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>has_screenshot</code>: True/False boolean</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>server</code>: Devices or servers that contain a specific server header flag string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>hostname</code>: Full host name for the device string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>ip</code>: Alias for net filter string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>isp</code>: ISP managing the netblock string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>net</code>: Network range in CIDR notation (ex.199.4.1.0/24) string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>org</code>: Organization assigned the netblock string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>os</code>: Operating system string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>port</code>: Port number for the service integer</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>postal</code>: Postal code (US-only) string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>product</code>: Name of the software/product providing the banner string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>region</code>: Name of the region/state string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>state</code>: Alias for region string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>version</code>: Version for the product string</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>vuln</code>: CVE ID for a vulnerability string</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>Registrate&nbsp;</p>\r\n\r\n<p>https://www.shodan.io/dashboard?language=en</p>\r\n\r\n<p>en el buscador</p>\r\n\r\n<pre>\r\n<code>ftp</code></pre>\r\n\r\n<p>buscando en eeuu</p>\r\n\r\n<pre>\r\n<code>ftp anonymous country:"US"</code></pre>\r\n\r\n<p>con el login ok</p>\r\n\r\n<pre>\r\n<code>ftp anonymous login ok</code></pre>\r\n\r\n<pre>\r\n<code>ftp anonymous login ok country:"US" port:21</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>repositorio donde hay gran cantidad de parametros para shodan</p>\r\n\r\n<p>https://github.com/jakejarvis/awesome-shodan-queries</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>por ejemplo para ver camaras</p>\r\n\r\n<pre>\r\n<code>"Server: yawcam" "Mime-Type: text/html"</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/banner-2021.2-release_Wt4EQsU.jpg	f	t	shodan-comandos-5419	9	1
39	2022-12-19 11:40:29.1489-05	2022-12-19 11:40:29.365274-05	Who is	Who is	<p>Entrar en la terminal y escribir</p>\r\n\r\n<pre>\r\n<code>whois unfv.edu.pe </code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image.png" style="height:497px; width:630px" /></p>	t	Entry/banner-2021.2-release_0cfFycD.jpg	f	t	who-is-42029	9	1
40	2022-12-19 11:55:00.619158-05	2022-12-19 11:55:01.097158-05	https://archive.org/	https://archive.org/	<p>ponemos en el buscador</p>\r\n\r\n<p>udemy.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image_u89tMdU.png" style="height:704px; width:851px" /></p>	t	Entry/banner-2021.2-release_RC7yz7K.jpg	f	t	httpsarchiveorg-42901	9	1
36	2022-12-19 00:50:56.901926-05	2022-12-19 13:07:38.489409-05	Google Hacking: Comandos y Operadores Booleanos	Comandos principales Google Hacking	<p>Google Hacking: Comandos y Operadores Booleanos</p>\r\n\r\n<p><strong>Comandos principales Google Hacking</strong></p>\r\n\r\n<p>A continuaci&oacute;n se muestran los comandos principales que podemos utilizar con Google. Hay que tener en cuenta que todos ellos deben ir seguidos (sin espacios) de la consulta que quiere realizarse:</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><code>define:t&eacute;rmino</code>&nbsp;- Se muestran definiciones procedentes de p&aacute;ginas web para el t&eacute;rmino buscado.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>filetype:t&eacute;rmino</code>&nbsp;- Las b&uacute;squedas se restringen a p&aacute;ginas cuyos nombres acaben en el t&eacute;rmino especificado. Sobretodo se utiliza para determinar la extensi&oacute;n de los ficheros requeridos. Nota: el comando&nbsp;<code>ext:t&eacute;rmino&nbsp;</code>se usa de manera equivalente.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>site:sitio/dominio</code>&nbsp;- Los resultados se restringen a los contenidos en el sitio o dominio especificado. Muy &uacute;til para realizar b&uacute;squedas en sitios que no tienen buscadores internos propios.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>link:url</code>&nbsp;- Muestra p&aacute;ginas que apuntan a la definida por dicha url. La cantidad (y calidad) de los enlaces a una p&aacute;gina determina su relevancia para los buscadores. Nota: s&oacute;lo presenta aquellas p&aacute;ginas con pagerank 5 o m&aacute;s.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>cache:url&nbsp;</code>- Se mostrar&aacute; la versi&oacute;n de la p&aacute;gina definida por url que Google tiene en su memoria, es decir, la copia que hizo el robot de Google la &uacute;ltima vez que pas&oacute; por dicha p&aacute;gina.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>info:url&nbsp;</code>- Google presentar&aacute; informaci&oacute;n sobre la p&aacute;gina web que corresponde con la url.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>related:url</code>&nbsp;- Google mostrar&aacute; p&aacute;ginas similares a la que especifica la url.&nbsp; Nota: Es dif&iacute;cil entender que tipo de relaci&oacute;n tiene en cuenta Google para mostrar dichas p&aacute;ginas. Muchas veces carece de utilidad.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>allinanchor:t&eacute;rminos&nbsp;</code>- Google restringe las b&uacute;squedas a aquellas p&aacute;ginas apuntadas por enlaces donde el texto contiene los t&eacute;rminos buscados.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>inanchor:t&eacute;rmino&nbsp;</code>- Las b&uacute;squedas se restringen a aquellas apuntadas por enlaces donde el texto contiene el t&eacute;rmino especificado. A diferencia de allinanchor se puede combinar con la b&uacute;squeda habitual.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>allintext:t&eacute;rminos&nbsp;</code>- Se restringen las b&uacute;squedas a los resultados que contienen los t&eacute;rminos en el texto de la p&aacute;gina.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>intext:t&eacute;rmino&nbsp;</code>- Restringe los resultados a aquellos textos que contienen t&eacute;rmino en el texto. A diferencia de allintext se puede combinar con la b&uacute;squeda habitual de t&eacute;rminos.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>allinurl:t&eacute;rminos&nbsp;</code>- S&oacute;lo se presentan los resultados que contienen los t&eacute;rminos buscados en la url.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>inurl:t&eacute;rmino&nbsp;</code>- Los resultados se restringen a aquellos que contienen t&eacute;rmino en la url. A diferencia de allinurl se puede combinar con la b&uacute;squeda habitual de t&eacute;rminos.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>allintitle:t&eacute;rminos&nbsp;</code>- Restringe los resultados a aquellos que contienen los t&eacute;rminos en el t&iacute;tulo.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>intitle:t&eacute;rmino&nbsp;</code>- Restringe los resultados a aquellos documentos que contienen t&eacute;rmino en el t&iacute;tulo. A diferencia de allintitle se puede combinar con la b&uacute;squeda habitual de t&eacute;rminos.</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p><strong>Operadores Booleanos Google Hacking</strong></p>\r\n\r\n<p>Google hace uso de los operadores booleanos para realizar b&uacute;squedas combinadas de varios t&eacute;rminos. Esos operadores son una serie de s&iacute;mbolos que Google reconoce y modifican la b&uacute;squeda realizada:</p>\r\n\r\n<ul>\r\n\t<li>\r\n\t<p><code>&quot; &quot;</code>&nbsp;- Busca las palabras exactas.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>-</code>&nbsp;- Excluye una palabra de la b&uacute;squeda. (Ej:&nbsp;<code>gmail -hotmail</code>, busca p&aacute;ginas en las que aparezca la palabra&nbsp;<em>gmail&nbsp;</em>y no aparezca la palabra&nbsp;<em>hotmail</em>)</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>OR (&oacute; |)</code>&nbsp;- Busca p&aacute;ginas que contengan un t&eacute;rmino u otro.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>+</code>&nbsp;- Permite incluir palabras que Google por defecto no tiene en cuenta al ser muy comunes (en espa&ntilde;ol: &quot;de&quot;, &quot;el&quot;, &quot;la&quot;.....). Tambi&eacute;n se usa para que Google distinga acentos, di&eacute;resis y la letra &ntilde;, que normalmente son elementos que no distingue.</p>\r\n\t</li>\r\n\t<li>\r\n\t<p><code>*</code>&nbsp;- Comod&iacute;n. Utilizado para sustituir una palabra. Suele combinarse con el operador de literalidad (&quot; &quot;).</p>\r\n\t</li>\r\n</ul>\r\n\r\n<p>en este link puedes ver dorks</p>\r\n\r\n<p>https://www.exploit-db.com/google-hacking-database</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>En el buscador de google poner en vez de udemy.com va el dominio</p>\r\n\r\n<pre>\r\n<code>site:udemy.com filetype:pdf</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>"index of" / "chat/logs"</code></pre>\r\n\r\n<pre>\r\n<code>"index of" / "chat/logs" site:udemy.com</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>filetype:sql "MySQL dump"</code></pre>\r\n\r\n<p>&nbsp;&quot;|&quot; es como un or</p>\r\n\r\n<pre>\r\n<code>filetype:sql "MySQL dump" (pass|password|passwd|pwd)</code></pre>\r\n\r\n<pre>\r\n<code>inurl:index.php?id=</code></pre>\r\n\r\n<pre>\r\n<code>inurl:index.php?id= site:unfv.edu.pe</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>site:gov filetype:pdf allintitle:restricted</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/banner-2021.2-release.jpg	t	t	google-hacking-comandos-y-operadores-booleanos-47258	9	1
41	2022-12-19 12:19:43.855069-05	2022-12-19 12:22:59.925251-05	Theharvester	Theharvester	<p>Vamos a :</p>\r\n\r\n<pre>\r\n<code>https://github.com/laramies/theHarvester</code></pre>\r\n\r\n<p>abrimos theHarvester en kali</p>\r\n\r\n<pre>\r\n<code>theHarvester -h\r\ntheHarvester</code></pre>\r\n\r\n<p>ejemplo</p>\r\n\r\n<pre>\r\n<code>theHarvester -d kali.org -l 200 -b bing\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image_kaXflAK.png" style="height:547px; width:561px" /></p>\r\n\r\n<p>otro</p>\r\n\r\n<pre>\r\n<code>theHarvester -d unfv.edu.pe  -l 200 -b bing\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image_MbEYSe7.png" style="height:408px; width:398px" /></p>\r\n\r\n<pre>\r\n<code>heHarvester -d unfv.edu.pe  -l 200 -b bing -f resultados.html\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image_2cXnIn1.png" style="height:454px; width:387px" /></p>	t	Entry/banner-2021.2-release_jILZQPu.jpg	f	t	theharvester-44579	9	1
74	2022-12-27 20:52:59.400369-05	2023-01-10 01:02:33.803612-05	Biblioteca - Creacion de Proyecto	Biblioteca	<p style="text-align:center"><span style="font-size:16px"><strong>Creacion de Un Proyecto en Django</strong></span></p>\r\n\r\n<p>1.&nbsp; Crear un Entorno Virtual, abrimos el cmd y nos ubicamos en la carpeta donde crearemos nuestro proyecto y usamos el siguiente comando</p>\r\n\r\n<pre>\r\n<code>python -m venv biblioteca</code></pre>\r\n\r\n<p>2. Activamos el entorno&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_23BeptG.png" style="height:207px; width:488px" /></p>\r\n\r\n<p>3. usando el cmd instalamos django y los demas repositorios necesarios para trabajar en nuestro proyecto</p>\r\n\r\n<pre>\r\n<code>pip install django</code></pre>\r\n\r\n<p>&nbsp;la otra opcion es instalar desde la carpeta requeriments&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_0U5VUSs.png" style="height:406px; width:684px" /></p>\r\n\r\n<p>4. creamos el proyecto, para ello debemos tener el entorno activado en este caso (libro)</p>\r\n\r\n<pre>\r\n<code>django-admin startproject biblioteca</code></pre>\r\n\r\n<p>5. abrimos la carpeta biblioteca con el editor de codigo en este caso visual studio code</p>\r\n\r\n<p>6. creamos la carpeta settings en la misma altura del archivo settings.py y dentro los archivos : base.py, local.py ,&nbsp;prod,py y creamos el archivo __init__.py</p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_ykZXfVt.png" style="height:556px; width:258px" /></p>\r\n\r\n<p>7. configuramos los archivos base.py y local.py&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;base.py</p>\r\n\r\n<pre>\r\n<code>"""\r\nDjango settings for biblioteca project.\r\n\r\nGenerated by 'django-admin startproject' using Django 3.2.14.\r\n\r\nFor more information on this file, see\r\nhttps://docs.djangoproject.com/en/3.2/topics/settings/\r\n\r\nFor the full list of settings and their values, see\r\nhttps://docs.djangoproject.com/en/3.2/ref/settings/\r\n"""\r\nimport os\r\nfrom unipath import Path\r\n\r\n# Build paths inside the project like this: BASE_DIR / 'subdir'.\r\nBASE_DIR = Path(__file__).ancestor(3)\r\n\r\n\r\n# Quick-start development settings - unsuitable for production\r\n# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/\r\n\r\n# SECURITY WARNING: keep the secret key used in production secret!\r\nSECRET_KEY = 'django-insecure-2^j7g753+1i-dfxa+ls^q2nm(@t21ml757c9kxz!ri&amp;q8qri84'\r\n\r\n# SECURITY WARNING: don't run with debug turned on in production!\r\n\r\n\r\n\r\n# Application definition\r\n\r\nINSTALLED_APPS = [\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n    'django.contrib.postgres',\r\n    #local apps\r\n    'applications.autor',\r\n    'applications.libro',\r\n    'applications.lector',\r\n]\r\n\r\nMIDDLEWARE = [\r\n    'django.middleware.security.SecurityMiddleware',\r\n    'django.contrib.sessions.middleware.SessionMiddleware',\r\n    'django.middleware.common.CommonMiddleware',\r\n    'django.middleware.csrf.CsrfViewMiddleware',\r\n    'django.contrib.auth.middleware.AuthenticationMiddleware',\r\n    'django.contrib.messages.middleware.MessageMiddleware',\r\n    'django.middleware.clickjacking.XFrameOptionsMiddleware',\r\n]\r\n\r\nROOT_URLCONF = 'biblioteca.urls'\r\n\r\nTEMPLATES = [\r\n    {\r\n        'BACKEND': 'django.template.backends.django.DjangoTemplates',\r\n        'DIRS': [BASE_DIR.child('templates')],\r\n        'APP_DIRS': True,\r\n        'OPTIONS': {\r\n            'context_processors': [\r\n                'django.template.context_processors.debug',\r\n                'django.template.context_processors.request',\r\n                'django.contrib.auth.context_processors.auth',\r\n                'django.contrib.messages.context_processors.messages',\r\n            ],\r\n        },\r\n    },\r\n]\r\n\r\nWSGI_APPLICATION = 'biblioteca.wsgi.application'\r\n\r\n\r\n\r\nAUTH_PASSWORD_VALIDATORS = [\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',\r\n    },\r\n]\r\n\r\n\r\n# Internationalization\r\n# https://docs.djangoproject.com/en/3.2/topics/i18n/\r\n\r\nLANGUAGE_CODE = 'en-us'\r\n\r\nTIME_ZONE = 'UTC'\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = True\r\n\r\nUSE_TZ = True\r\n</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;local.py</p>\r\n\r\n<pre>\r\n<code>from .base import *\r\n\r\nDEBUG = True\r\n\r\nALLOWED_HOSTS = []\r\n# Database\r\n# https://docs.djangoproject.com/en/3.2/ref/settings/#databases\r\nDATABASES = {\r\n    'default': {\r\n        'ENGINE': 'django.db.backends.postgresql_psycopg2',\r\n        'NAME': 'dbbiblioteca',\r\n        'USER': 'neunapp',\r\n        'PASSWORD': 'neunapp2020',\r\n        'HOST': 'localhost',\r\n        'PORT': '5432',\r\n    }\r\n}\r\n\r\n\r\nSTATIC_URL = '/static/'\r\nSTATICFILES_DIRS = [BASE_DIR.child('static')]\r\n\r\nMEDIA_URL = '/media/'\r\nMEDIA_ROOT = BASE_DIR.child('media')\r\n\r\n# Default primary key field type\r\n# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field\r\n\r\nDEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>"""biblioteca URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/3.2/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path,re_path,include\r\nfrom django.conf import settings\r\nfrom django.conf.urls.static import static\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    re_path('',include('applications.autor.urls')),\r\n    re_path('',include('applications.libro.urls')),\r\n    re_path('',include('applications.lector.urls')),\r\n] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)\r\n</code></pre>\r\n\r\n<p>8. Creamos la carpeta templates a la misma altura del manage.py</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9. creamos una base de datos desde la shell de postgresql, primero accedemos con el password a postgresql</p>\r\n\r\n<p>luego escribimos el comando:</p>\r\n\r\n<pre>\r\n<code>\\c</code></pre>\r\n\r\n<pre>\r\n<code>create database dbbiblioteca;</code></pre>\r\n\r\n<p>10. acccedemos a la bd creada y definimos el password&nbsp;&nbsp;debe salirnos el mensaje de alter role</p>\r\n\r\n<pre>\r\n<code>\\c dbbiblioteca;\r\nalter user neunapp with password 'neunapp2020';</code></pre>\r\n\r\n<p>11. Configuramos los archivos manage.py y&nbsp; wsgi.py y agregamos el &quot;.local&quot;</p>\r\n\r\n<p>manage.py</p>\r\n\r\n<pre>\r\n<code>#!/usr/bin/env python\r\n"""Django's command-line utility for administrative tasks."""\r\nimport os\r\nimport sys\r\n\r\n\r\ndef main():\r\n    """Run administrative tasks."""\r\n    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'biblioteca.settings.local')\r\n    try:\r\n        from django.core.management import execute_from_command_line\r\n    except ImportError as exc:\r\n        raise ImportError(\r\n            "Couldn't import Django. Are you sure it's installed and "\r\n            "available on your PYTHONPATH environment variable? Did you "\r\n            "forget to activate a virtual environment?"\r\n        ) from exc\r\n    execute_from_command_line(sys.argv)\r\n\r\n\r\nif __name__ == '__main__':\r\n    main()\r\n</code></pre>\r\n\r\n<p>wsgi.py</p>\r\n\r\n<pre>\r\n<code>"""\r\nWSGI config for biblioteca project.\r\n\r\nIt exposes the WSGI callable as a module-level variable named ``application``.\r\n\r\nFor more information on this file, see\r\nhttps://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/\r\n"""\r\n\r\nimport os\r\n\r\nfrom django.core.wsgi import get_wsgi_application\r\n\r\nos.environ.setdefault('DJANGO_SETTINGS_MODULE', 'biblioteca.settings.local')\r\n\r\napplication = get_wsgi_application()\r\n</code></pre>\r\n\r\n<p>12 hacemos el makemigrations, migrate ,createsuperuser y runserver</p>\r\n\r\n<pre>\r\n<code>python manage.py makemigrations\r\npython manage.py migrate\r\npython manage.py createsuperuser\r\npython manage.py runserver\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image.png" style="height:279px; width:576px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_X9GODZi.png" style="height:289px; width:386px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_fnyWqKn.png" style="height:284px; width:644px" /></p>\r\n\r\n<p>13. creamos la carpeta applications a la altura del manage.py y creamos el archivo __init__.py</p>\r\n\r\n<p>14. entramos al cmd y vamos a la carpeta applications y&nbsp;creamos las apps con el siguiente comando</p>\r\n\r\n<pre>\r\n<code>django-admin startapp libro\r\ndjango-admin startapp autor\r\ndjango-admin startapp lector\r\ndjango-admin startapp home</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_yMyU4cA.png" style="height:208px; width:257px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Base de Datos&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_r8Hq1V0.png" style="height:496px; width:715px" /></p>	t	Entry/django_pbB3SBe.JPG	f	t	biblioteca-creacion-de-proyecto-3753	11	1
42	2022-12-19 12:34:14.606574-05	2022-12-19 12:34:14.699618-05	TheHarvester Errores comunes	TheHarvester Errores comunes	<p><strong><em>Cuando intento exportar los resultados con la opci&oacute;n&nbsp;</em></strong><code><strong><em>-f</em></strong></code><strong><em>&nbsp;de TheHarvester obtengo un error similar al siguiente:</em></strong></p>\r\n\r\n<p><img src="https://img-b.udemycdn.com/redactor/raw/article_lecture/2022-05-23_18-08-25-bc4d3b8de778170690e109afb7f15110.png" /></p>\r\n\r\n<p>En la &uacute;ltima versi&oacute;n de theHarvester que viene por defecto en Kali Linux y que esta en sus repositorio hay un bug.</p>\r\n\r\n<p>Para resolverlo puedes instalar manualmente la &uacute;ltima versi&oacute;n utilizando los siguiente comandos:</p>\r\n\r\n<p><code>sudo apt remove theharvester</code></p>\r\n\r\n<p><code>sudo apt update</code></p>\r\n\r\n<p><code>sudo apt install python3-pip</code></p>\r\n\r\n<p><code>git clone https://github.com/laramies/theHarvester</code></p>\r\n\r\n<p><code>cd theHarvester</code></p>\r\n\r\n<p><code>pip install -r requirements/base.txt</code></p>\r\n\r\n<p>Una vez hecho esto, dentro de la carpeta&nbsp;<code>theHarvester</code>&nbsp;puedes ejecutar los comandos del v&iacute;deo de la siguiente forma:</p>\r\n\r\n<p><code>python3 theHarvester.py -d udemy.com -b bing -l 100 -f resultados</code></p>\r\n\r\n<p>Con esto deber&iacute;a resolverse el problema.</p>\r\n\r\n<p>Disculpa por las molestias, supongo que Kali tardar&aacute; poco en actualizar esta herramienta.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Cuando exporto los resultados de TheHarvester no obtengo un fichero&nbsp;</em></strong><code><strong><em>.html</em></strong></code><strong><em>, en su lugar, obtengo un fichero&nbsp;</em></strong><code><strong><em>.xml</em></strong></code><strong><em>&nbsp;y&nbsp;</em></strong><code><strong><em>.json</em></strong></code></p>\r\n\r\n<p>Ahora este es el resultado correcto que obtienes al exportar algo con TheHarvester. En los &uacute;ltimos cambios que han realizado han eliminado la funci&oacute;n de exportar los resultados como HTML y lo han cambiado por JSON o XML:</p>\r\n\r\n<p><img src="https://img-b.udemycdn.com/redactor/raw/q_and_a/2021-09-29_18-27-14-405047abe36f23bce80386e2a0e836f7.PNG" /></p>\r\n\r\n<p>Este tipo de cambios suelen realizarse motivados por proporcionar un&nbsp;<em>output&nbsp;</em>que sea m&aacute;s f&aacute;cil de procesar con otras herramientas o con scripts que el usuario pueda programar. En el&nbsp;<em>commit&nbsp;</em>del cambio no proporcionan m&aacute;s detalles de porque se ha llevado a cabo la modificaci&oacute;n.</p>\r\n\r\n<p>Por otro lado, recuerda que existen muchas herramientas que permiten convertir la salida en formato XML o JSON a HTML. Muchas de estas herramientas puedes encontrarlas online realizando una simple b&uacute;squeda en Google.</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/banner-2021.2-release_lKaGo6M.jpg	f	t	theharvester-errores-comunes-45254	9	1
100	2023-01-03 21:36:51.247771-05	2023-01-03 21:43:39.013244-05	Redireccion dentro de un CreateView - URL Name	empleado	<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass EmpleadoCreateView(CreateView):\r\n    template_name = "persona/add.html"\r\n    model = Empleado\r\n    fields=[\r\n        'first_name',\r\n        'last_name',\r\n        'job',\r\n    ]\r\n    success_url = reverse_lazy('persona_app:emplados_admin')\r\n\r\n\r\nclass SuccessView(TemplateView):\r\n    template_name = "persona/success.html"</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nfrom .models import Empleado\r\n\r\n\r\nclass EmpleadoForm(forms.ModelForm):\r\n    \r\n    class Meta:\r\n        model = Empleado\r\n        fields = (\r\n            'first_name',\r\n            'last_name',\r\n            'job',\r\n            'departamento',\r\n            'avatar',\r\n            'habilidades',\r\n        )\r\n        widgets = {\r\n            'habilidades': forms.CheckboxSelectMultiple()\r\n        }\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'add-empleado/',\r\n        views.EmpleadoCreateView.as_view(),\r\n        name='empleado_add'\r\n    ),\r\n    path(\r\n        'success/',\r\n        views.SuccessView.as_view(),\r\n        name='correcto'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/add.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Registrar empelado&lt;/h1&gt;\r\n        &lt;form class="cell grid-x grid-margin-x" method="POST" enctype="multipart/form-data"&gt;{% csrf_token %}\r\n\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Nombres:\r\n                  {{form.first_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Apellidos:\r\n                  {{form.last_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Trabajo:\r\n                  {{form.job}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            \r\n            &lt;div class="medium-12 cell"&gt;\r\n                &lt;button type="submit" class="button success"&gt;Guardar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n</code></pre>\r\n\r\n<p>templates/persona/success.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Felicitaciones, se guardo correctamenet el empleado&lt;/h1&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_2cMJ41T.JPG	f	t	redireccion-dentro-de-un-createview-url-name-78219	5	1
43	2022-12-19 16:49:39.775329-05	2022-12-19 16:49:40.051445-05	Maltego	Maltego	<p>vamos a:</p>\r\n\r\n<p><img src="/media/uploads/2022/12/19/image_SWdcJA4.png" style="height:636px; width:608px" /></p>	t	Entry/banner-2021.2-release_vb3e8io.jpg	f	t	maltego-60580	9	1
56	2022-12-22 16:56:09.734916-05	2022-12-22 17:04:58.783994-05	Metodos de un Serializador MethodFieldSerializer	agenda	<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>class ReunionSerializer2(serializers.ModelSerializer):\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n            'id',\r\n            'fecha',\r\n            'hora',\r\n            'asunto',\r\n            'persona',\r\n        )\r\n    \r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass ReunionApilista(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= ReunionSerializer2\r\n\r\n    def get_queryset(self):\r\n        return Reunion.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/reuniones/',\r\n        views.ReunionApilista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_QLIIQOp.png" style="height:660px; width:445px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>class ReunionSerializer2(serializers.ModelSerializer):\r\n\r\n    fecha_hora=serializers.SerializerMethodField()\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n            'id',\r\n            'fecha',\r\n            'hora',\r\n            'asunto',\r\n            'persona',\r\n            'fecha_hora',   #al momento de crear SerializerMethodField() debo poner esto aqui\r\n        )\r\n    def get_fecha_hora(self,obj):\r\n        return str(obj.fecha)+ ' - ' + str(obj.hora)\r\n    </code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ReunionApilista(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= ReunionSerializer2\r\n\r\n    def get_queryset(self):\r\n        return Reunion.objects.all()\r\n        </code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/reuniones/',\r\n        views.ReunionApilista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_eUGwBGS.png" style="height:683px; width:1052px" /></p>	t	Entry/drf-logo2_BCXUzPm.png	f	t	metodos-de-un-serializador-methodfieldserializer-61498	6	1
44	2022-12-20 21:34:08.003846-05	2022-12-20 21:36:45.620873-05	REST Estructura base de AGENDA	Proyecto Agenda	<p>Modelos:</p>\r\n\r\n<p>persona.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom model_utils.models import TimeStampedModel\r\n#\r\nfrom django.db import models\r\n\r\n#\r\nclass Hobby(TimeStampedModel):\r\n    hobby = models.CharField(\r\n        'Pasatiempo',\r\n         max_length=50,\r\n    ) \r\n\r\n    class Meta:\r\n        verbose_name='Hobby'\r\n        verbose_name_plural='Hobbies'\r\n\r\n    def __str__(self):\r\n\r\n        return self.hobby\r\n\r\n#\r\nclass Person(TimeStampedModel):\r\n    """  Modelo para registrar personas de una agenda  """\r\n\r\n    full_name = models.CharField(\r\n        'Nombres', \r\n        max_length=50,\r\n    )\r\n    job = models.CharField(\r\n        'Trabajo', \r\n        max_length=30,\r\n        blank=True\r\n    )\r\n    email = models.EmailField(\r\n        blank=True, \r\n        null=True\r\n    )\r\n    phone = models.CharField(\r\n        'telefono',\r\n        max_length=15,\r\n        blank=True,\r\n    )\r\n\r\n    hobbies = models.ManyToManyField(Hobby) \r\n\r\n\r\n    class Meta:\r\n        verbose_name = 'Persona'\r\n        verbose_name_plural = 'Personas'\r\n    \r\n    def __str__(self):\r\n        return self.full_name\r\n\r\n\r\n\r\nclass Reunion(TimeStampedModel):\r\n    """  Modelo para reunion  """\r\n\r\n    persona = models.ForeignKey(\r\n        Person, \r\n        on_delete=models.CASCADE\r\n    )\r\n    fecha = models.DateField()\r\n    hora = models.TimeField()\r\n    asunto = models.CharField(\r\n        'Aunto de Reunion',\r\n        max_length=100\r\n    )\r\n    \r\n\r\n    class Meta:\r\n        verbose_name = 'Reunion'\r\n        verbose_name_plural = 'Reunion'\r\n    \r\n    def __str__(self):\r\n        return self.asunto</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\n\r\nfrom django.views.generic import ListView,TemplateView\r\n\r\n#\r\nfrom rest_framework.generics import (\r\n    ListAPIView,\r\n    CreateAPIView,\r\n    RetrieveAPIView,  #Detailview\r\n    DestroyAPIView,\r\n    UpdateAPIView,\r\n    RetrieveUpdateAPIView,\r\n)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path,re_path\r\n#\r\nfrom .import views\r\n\r\napp_name='persona_app'\r\n\r\nurlpatterns = [\r\n    path(\r\n    )\r\n]</code></pre>\r\n\r\n<p>Archivos de Configuracion</p>\r\n\r\n<p>base.py</p>\r\n\r\n<pre>\r\n<code>from django.core.exceptions import ImproperlyConfigured\r\nimport json\r\n\r\n\r\n# Build paths inside the project like this: os.path.join(BASE_DIR, ...)\r\nfrom unipath import Path\r\nBASE_DIR = Path(__file__).ancestor(3)\r\n\r\n\r\n# Quick-start development settings - unsuitable for production\r\n# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/\r\n\r\n# SECURITY WARNING: keep the secret key used in production secret!\r\nwith open("secret.json") as f:\r\n    secret = json.loads(f.read())\r\n\r\ndef get_secret(secret_name, secrets=secret):\r\n    try:\r\n        return secrets[secret_name]\r\n    except:\r\n        msg = "la variable %s no existe" % secret_name\r\n        raise ImproperlyConfigured(msg)\r\n\r\n\r\n\r\nSECRET_KEY = get_secret('SECRET_KEY')\r\n\r\n\r\n# Application definition\r\n\r\nDJANGO_APPS = (\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n)\r\n\r\nLOCAL_APPS = (\r\n    'applications.home',\r\n    'applications.persona',\r\n)\r\n\r\nTHIRD_PARTY_APPS = (\r\n    'rest_framework',\r\n)\r\n\r\nINSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS\r\n\r\nMIDDLEWARE = [\r\n    'django.middleware.security.SecurityMiddleware',\r\n    'django.contrib.sessions.middleware.SessionMiddleware',\r\n    'django.middleware.common.CommonMiddleware',\r\n    'django.middleware.csrf.CsrfViewMiddleware',\r\n    'django.contrib.auth.middleware.AuthenticationMiddleware',\r\n    'django.contrib.messages.middleware.MessageMiddleware',\r\n    'django.middleware.clickjacking.XFrameOptionsMiddleware',\r\n]\r\n\r\nROOT_URLCONF = 'agenda.urls'\r\n\r\nTEMPLATES = [\r\n    {\r\n        'BACKEND': 'django.template.backends.django.DjangoTemplates',\r\n        'DIRS': [BASE_DIR.child('templates')],\r\n        'APP_DIRS': True,\r\n        'OPTIONS': {\r\n            'context_processors': [\r\n                'django.template.context_processors.debug',\r\n                'django.template.context_processors.request',\r\n                'django.contrib.auth.context_processors.auth',\r\n                'django.contrib.messages.context_processors.messages',\r\n            ],\r\n        },\r\n    },\r\n]\r\n\r\nWSGI_APPLICATION = 'agenda.wsgi.application'\r\n\r\n\r\n# Password validation\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators\r\n\r\nAUTH_PASSWORD_VALIDATORS = [\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',\r\n    },\r\n]\r\n\r\n# Internationalization\r\n# https://docs.djangoproject.com/en/2.2/topics/i18n/\r\n\r\nLANGUAGE_CODE = 'en-us'\r\n\r\nTIME_ZONE = 'UTC'\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = True\r\n\r\nUSE_TZ = True\r\n</code></pre>\r\n\r\n<p>local.py</p>\r\n\r\n<pre>\r\n<code>from .base import *\r\n# SECURITY WARNING: don't run with debug turned on in production!\r\nDEBUG = True\r\n\r\nALLOWED_HOSTS = []\r\n\r\n# Database\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#databases\r\n\r\nDATABASES = {\r\n    'default': {\r\n        'ENGINE': 'django.db.backends.postgresql_psycopg2',\r\n        'NAME': get_secret('DB_NAME'),\r\n        'USER': get_secret('USER'),\r\n        'PASSWORD': get_secret('PASSWORD'),\r\n        'HOST': 'localhost',\r\n        'PORT': '5432',\r\n    }\r\n}\r\n# Static files (CSS, JavaScript, Images)\r\n# https://docs.djangoproject.com/en/2.2/howto/static-files/\r\n\r\nSTATIC_URL = '/static/'\r\nSTATICFILES_DIRS = [BASE_DIR.child('static')]\r\n\r\nMEDIA_URL = '/media/'\r\nMEDIA_ROOT = BASE_DIR.child('media')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>"""agenda URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/3.0/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path, re_path, include\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    re_path('', include('applications.persona.urls')),\r\n]\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/drf-logo2_2PWWout.png	f	t	rest-estructura-base-de-agenda-77805	6	1
91	2023-01-02 00:44:18.366392-05	2023-01-02 19:06:29.412992-05	Apps de Terceros - Admin Django	empleado	<p>Instalar CKEDITOR</p>\r\n\r\n<p>base.py</p>\r\n\r\n<pre>\r\n<code>INSTALLED_APPS = [\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n    #apps de terceros\r\n    'ckeditor',\r\n    # local apps\r\n    'applications.home',\r\n    'applications.persona',\r\n    'applications.departamento',\r\n]\r\n</code></pre>\r\n\r\n<p>con el entorno activado instalar el ckeditor</p>\r\n\r\n<pre>\r\n<code>pip install django-ckeditor</code></pre>\r\n\r\n<p>models.py&nbsp;</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>hacemos las migraciones</p>\r\n\r\n<pre>\r\n<code>python manage.py makemigrations\r\npython manage.py migrate\r\npython manage.py runserver\r\n</code></pre>\r\n\r\n<p>elegimos la opcion 1<img src="/media/uploads/2023/01/02/image_voDN5rg.png" style="height:237px; width:1251px" /></p>\r\n\r\n<p>ponemos &#39;texto&#39;</p>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_AV984aA.png" style="height:249px; width:750px" /></p>\r\n\r\n<p>ya se puede usar el ckeditor desde el administrador</p>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_i3ikh9Y.png" style="height:597px; width:1013px" /></p>	t	Entry/django_1JD1Cgy.JPG	f	t	apps-de-terceros-admin-django-68789	5	1
75	2022-12-28 19:53:06.555439-05	2023-01-10 01:02:40.861058-05	Creacion de Modelos del Proyecto Biblioteca	Biblioteca	<p>autor models.py&nbsp;</p>\r\n\r\n<pre>\r\n<code>\r\nfrom pyexpat import model\r\nfrom django.db import models\r\n# managers\r\nfrom .managers import AutorManager\r\n\r\nclass Persona(models.Model):\r\n    nombre = models.CharField(\r\n        max_length=50\r\n    )\r\n    apellidos = models.CharField(\r\n        max_length=50\r\n    )\r\n    nacionalidad = models.CharField(\r\n        max_length=20\r\n    )\r\n    edad = models.PositiveIntegerField()\r\n\r\n    def __str__(self):\r\n        return str(self.id)+'-'+ self.nombre + '-'+ self.apellidos\r\n\r\n    class Meta:\r\n        abstract=True\r\n        \r\n\r\nclass Autor(Persona):\r\n    seudonimo = models.CharField(\r\n        'seudonimo',\r\n        max_length=50,\r\n        blank= True\r\n        )\r\n    objects=AutorManager()\r\n\r\n</code></pre>\r\n\r\n<p>lector models.py</p>\r\n\r\n<pre>\r\n<code>from tabnanny import verbose\r\nfrom django.db import models\r\n#from locasl apps\r\nfrom django.db.models.signals import post_delete\r\n\r\nfrom applications.libro.models import Libro\r\nfrom applications.autor.models import Persona\r\n# from managers\r\n\r\nfrom .managers import PrestamoManager\r\nfrom .singals import update_libro_stok\r\n\r\n# Create your models here.\r\nclass Lector(Persona):\r\n\r\n    class Meta:\r\n        verbose_name='Lector'\r\n        verbose_name_plural='Lectores'\r\n\r\nclass Prestamo(models.Model):\r\n    lector = models.ForeignKey(\r\n        Lector, \r\n        on_delete=models.CASCADE\r\n    )\r\n    libro = models.ForeignKey(\r\n        Libro, \r\n        on_delete=models.CASCADE,\r\n        related_name='libro_prestamo'\r\n    )\r\n    fecha_prestamo = models.DateField()\r\n    fecha_devolucion = models.DateField(\r\n        blank=True,\r\n        null=True\r\n    )\r\n    devuelto = models.BooleanField()\r\n    \r\n    objects = PrestamoManager()\r\n\r\n    def save(self,*args,**kwargs):\r\n        super(Prestamo,self).save(*args,**kwargs)\r\n\r\n        print('===========')\r\n        self.libro.stok=self.libro.stok - 1\r\n        self.libro.save()\r\n\r\n    def __str__(self):\r\n        return self.libro.titulo\r\n\r\n# def update_libro_stok(sender,instance,**kwargs):\r\n#     #actualizamos el stok si se elimina  un prestamo\r\n#     instance.libro.stok = instance.libro.stok +1\r\n#     instance.libro.save()\r\npost_delete.connect(update_libro_stok,sender=Prestamo)\r\n</code></pre>\r\n\r\n<p>libro models.py</p>\r\n\r\n<pre>\r\n<code>from pickletools import optimize\r\nfrom django.db import models\r\nfrom django.db.models.signals import post_save\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n# Create your models here.\r\n\r\n\r\nclass Categoria(models.Model):\r\n    nombre = models.CharField(max_length=30)\r\n\r\n    objects=CategoriaManager()\r\n\r\n    def __str__(self):\r\n        return str(self.id) + ' - '+ self.nombre\r\n\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n        related_name='categoria_libro'\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n\r\ndef optimize_image(sender,instance,**kwargs):\r\n    print("========")\r\n    print(instance)\r\n    if instance.portada:\r\n        portada= Image.open(instance.portada.path)\r\n        portada.save(instance.portada.path,quality=20,optimize=True)\r\n\r\npost_save.connect(optimize_image,sender=Libro)\r\n</code></pre>\r\n\r\n<p>home models.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom enum import unique\r\nfrom django.db import models\r\n\r\n# Create your models here.\r\nclass Persona(models.Model):\r\n\r\n    full_name = models.CharField('nombres', max_length=50)\r\n    pais = models.CharField('Pais', max_length=30)\r\n    pasaporte = models.CharField('Pasaporte', max_length=50)\r\n    edad = models.IntegerField()\r\n    apelativo = models.CharField('Apelativo', max_length=10)\r\n\r\n    class Meta:\r\n\r\n        verbose_name = 'Persona'\r\n        verbose_name_plural = 'Personas'\r\n        db_table='persona'\r\n        unique_together=['pais','apelativo']\r\n        constraints=[\r\n            models.CheckConstraint(check=models.Q(edad__gte=18), name='edad_mayor_18')\r\n        ]\r\n        abstract = True\r\n\r\n    def __str__(self):\r\n        return self.full_name\r\n\r\nclass Empleados(Persona):\r\n    empleo = models.CharField('Empleo', max_length=50)\r\n    \r\n\r\n# class Cliente(Persona):\r\n#     email = models.CharField('email', max_length=50)\r\n    \r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>base.py&nbsp;</p>\r\n\r\n<pre>\r\n<code>\r\nINSTALLED_APPS = [\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n    'django.contrib.postgres',\r\n    #local apps\r\n    'applications.autor',\r\n    'applications.libro',\r\n    'applications.lector',\r\n]</code></pre>\r\n\r\n<p>urls.py del principal</p>\r\n\r\n<pre>\r\n<code>"""biblioteca URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/3.2/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path,re_path,include\r\nfrom django.conf import settings\r\nfrom django.conf.urls.static import static\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    re_path('',include('applications.autor.urls')),\r\n    re_path('',include('applications.libro.urls')),\r\n    re_path('',include('applications.lector.urls')),\r\n] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)\r\n</code></pre>\r\n\r\n<p>hacer las migraciones</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_AVrmNtJ.JPG	f	t	creacion-de-modelos-del-proyecto-biblioteca-3760	11	1
79	2022-12-29 12:29:28.800774-05	2023-01-10 01:04:06.112955-05	Managers  Filtrar AND, NOT	Biblioteca	<p><strong>AND</strong></p>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db.models import Q\r\nclass AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n    def buscar_autor2(self,kword):\r\n        resultado = self.filter(\r\n            Q(nombre__icontains=kword) &amp; Q(apellidos__icontains=kword)\r\n        )\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor2(palabra_clave)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'autores',\r\n        views.ListarAutores.as_view(),\r\n        name="autores"\r\n    ),</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<p>para poder funcionar necesitarias una vista html donde se puedan ingresar dos parametros diferentes</p>\r\n\r\n<p><br />\r\n<strong>NOT</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db.models import Q\r\nclass AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n    def buscar_autor2(self,kword):\r\n        resultado = self.filter(\r\n            Q(nombre__icontains=kword) &amp; ~Q(apellidos__icontains=kword)\r\n        )\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor2(palabra_clave)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'autores',\r\n        views.ListarAutores.as_view(),\r\n        name="autores"\r\n    ),</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<p>para poder funcionar necesitarias una vista html donde se puedan ingresar dos parametros diferentes</p>	t	Entry/django_PfMkgWP.JPG	f	t	managers-filtrar-and-not-3846	11	1
87	2022-12-31 17:37:59.836934-05	2023-01-03 19:35:31.461519-05	Modelos Relacionados - ForeingKey	Proyecto Empleado	<p><img src="/media/uploads/2023/01/03/image.png" style="height:387px; width:700px" /></p>\r\n\r\n<p>models.py empleado</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>admin.py de empleado</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\n\r\n# Register your models here.\r\n\r\nadmin.site.register(Empleado)</code></pre>\r\n\r\n<p>models.py departamento</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\n# Create your models here.\r\nclass Departamento(models.Model):\r\n    name = models.CharField('Nombre', max_length=50,)\r\n    shor_name = models.CharField('Nombre Corto', max_length=20, unique=True)\r\n    anulate = models.BooleanField('Anulado', default=False)\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.name + '-' + self.shor_name</code></pre>\r\n\r\n<p>admin.py de departamento</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom .models import Departamento\r\n# Register your models here.\r\n\r\nadmin.site.register(Departamento)</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_EdP6pTm.JPG	f	t	modelos-relacionados-foreingkey-70531	5	1
45	2022-12-20 21:45:38.375149-05	2022-12-20 21:51:55.90043-05	ListAPIView Listar	AGENDA	<p>Verificar que&nbsp;&nbsp;rest framework este instaladado y que configurado&nbsp;&#39;rest_framework&#39;, en el archivo base.py</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\n\r\nfrom django.views.generic import ListView,TemplateView\r\n\r\n#\r\nfrom rest_framework.generics import (\r\n    ListAPIView,\r\n    CreateAPIView,\r\n    RetrieveAPIView,  #equivalente al Detailview\r\n    DestroyAPIView,\r\n    UpdateAPIView,\r\n    RetrieveUpdateAPIView,\r\n)\r\n\r\nfrom .models import Person\r\n\r\nfrom .serializer import (\r\n    PersonSerializer,\r\n)\r\n\r\nclass PersonListAPIView(ListAPIView):\r\n    serializer_class=PersonSerializer\r\n\r\n    def get_queryset(self):\r\n        return Person.objects.all()</code></pre>\r\n\r\n<p>serializer.py</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom rest_framework import serializers\r\n\r\nfrom .models import Person\r\n\r\nclass PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path,re_path\r\n#\r\nfrom .import views\r\n\r\napp_name='persona_app'\r\n\r\nurlpatterns = [\r\n    path(\r\n        'api/persona/lista/',\r\n        views.PersonListAPIView.as_view(),\r\n        name='personasapi'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/20/image_ONcq4V3.png" style="height:596px; width:1128px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/drf-logo2_IHXG7hR.png	f	t	listapiview-listar-78715	6	1
68	2022-12-26 19:43:59.236125-05	2022-12-26 20:07:06.95206-05	Mixin	Usuario	<p>applications/home</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>import datetime\r\n#\r\nfrom django.shortcuts import render\r\nfrom django.contrib.auth.mixins import LoginRequiredMixin\r\nfrom django.urls import reverse_lazy, reverse\r\n\r\nfrom django.views.generic import (\r\n    TemplateView\r\n)\r\n\r\nclass FechaMixin(object):\r\n    \r\n    def get_context_data(self, **kwargs):\r\n        context = super(FechaMixin, self).get_context_data(**kwargs)\r\n        context['fecha'] = datetime.datetime.now()\r\n        return context\r\n\r\n\r\nclass HomePage(LoginRequiredMixin, TemplateView):\r\n    template_name = "home/index.html"\r\n    login_url = reverse_lazy('users_app:user-login')\r\n\r\n    \r\n\r\nclass TemplatePruebaMixin(FechaMixin, TemplateView):\r\n    template_name = "home/mixin.html"\r\n\r\n\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "home_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'panel/', \r\n        views.HomePage.as_view(),\r\n        name='panel',\r\n    ),\r\n    path(\r\n        'mixin/', \r\n        views.TemplatePruebaMixin.as_view(),\r\n        name='mixn',\r\n    ),\r\n]</code></pre>\r\n\r\n<p>template/home/index.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Panel de usuario&lt;/h1&gt;\r\n    &lt;h3&gt;Bienvenidos: {{user}}&lt;/h3&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-logout' %}"&gt;Cerrar Sesion&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-update' %}"&gt;Actualizar Datos&lt;/a&gt;&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>template/home/mixin.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Probando mixin:&lt;/h1&gt;\r\n\r\n{{ fecha }}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image_xstm2Su.png" style="height:254px; width:329px" /></p>\r\n\r\n<p>al cerrar sesion ya no nos deja entrar, ingresamos la url&nbsp;http://127.0.0.1:8000/panel/</p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image_h0RVRVL.png" style="height:261px; width:405px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_QCFa4pn.JPG	f	t	mixin-72426	10	1
53	2022-12-21 13:53:18.073003-05	2022-12-21 15:21:09.954367-05	Serializers sin modelos	agenda	<p>Construimos un modelo en el serializer</p>\r\n\r\n<p>serializer.py</p>\r\n\r\n<pre>\r\n<code>class PersonaSerializer(serializers.Serializer):\r\n    id = serializers.IntegerField()\r\n    full_name = serializers.CharField()\r\n    job = serializers.CharField()\r\n    email = serializers.CharField()\r\n    phone = serializers.CharField()</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from .models import Person,Reunion\r\n#\r\nfrom .serializer import (\r\n\r\n    PersonSerializer,\r\n    PersonaSerializer,\r\n)\r\n\r\n\r\nclass PersonApiLista(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= PersonaSerializer\r\n\r\n    def get_queryset(self):\r\n        return Person.objects.all()</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/personas/',\r\n        views.PersonApiLista.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p>A&ntilde;adir un aartirbuto que no este presente en el modelo</p>\r\n\r\n<p>seriallizers.py</p>\r\n\r\n<pre>\r\n<code>class PersonaSerializer(serializers.Serializer):\r\n    id = serializers.IntegerField()\r\n    full_name = serializers.CharField()\r\n    job = serializers.CharField()\r\n    email = serializers.CharField()\r\n    phone = serializers.CharField()\r\n    activo = serializers.BooleanField(default=False)  #required=False</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_SQporZ2.png" style="height:546px; width:1050px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/drf-logo2_gGlLB1W.png	f	t	serializers-sin-modelos-55269	6	1
46	2022-12-20 22:45:19.929879-05	2022-12-20 22:54:34.860687-05	Consumiendo un API buscador con AXIOS	Agenda	<p>crear un templateview en el modelo persona&nbsp;</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonListView(TemplateView):\r\n    template_name='persona/lista.html'\r\n</code></pre>\r\n\r\n<p>tambien agregar lo siguiente</p>\r\n\r\n<pre>\r\n<code>class PersonSearchAPIView(ListAPIView):\r\n    serializer_class=PersonSerializer\r\n\r\n    def get_queryset(self):\r\n        #filtramos datos\r\n        kword=self.kwargs['kword']\r\n        return Person.objects.filter(\r\n            full_name__icontains=kword\r\n        )\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'lista/',\r\n        views.PersonListView.as_view(),\r\n        name='lista'\r\n    ),</code></pre>\r\n\r\n<p>tambien esta parte</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/persona/search/&lt;kword&gt;/',\r\n        views.PersonSearchAPIView.as_view(),\r\n        name='personasapisearch'\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>en la carpeta static/apps</p>\r\n\r\n<p>search.js</p>\r\n\r\n<pre>\r\n<code>new Vue({\r\n  el: 'app',\r\n  delimiters: ['{$', '$}'],\r\n\r\n  //\r\n  mounted() {\r\n    var self = this;\r\n    // cargamos lista de personas\r\n    axios.get('/api/persona/lista/')\r\n      .then(function (response) {\r\n        self.listaPersonas = response.data;\r\n      })\r\n      .catch(function (error) {\r\n        console.log(error);\r\n      });\r\n  },\r\n  methods: {\r\n    buscar_persona: function(kword){\r\n      var self = this;\r\n      axios.get('/api/persona/search/' + kword + '/')\r\n        .then(function (response) {\r\n          self.listaPersonas = response.data;\r\n        })\r\n        .catch(function (error) {\r\n          console.log(error);\r\n        });\r\n    },\r\n  },\r\n  watch: {\r\n    kword: function (val) {\r\n      var self = this;\r\n      self.buscar_persona(val)\r\n    },\r\n  },\r\n  data: {\r\n    listaPersonas:[],\r\n    kword:'',\r\n  },\r\n})\r\n</code></pre>\r\n\r\n<p>en el template/persona</p>\r\n\r\n<p>base_persona.html</p>\r\n\r\n<pre>\r\n<code>{% extends "base.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block css %}\r\n{% endblock css %}\r\n\r\n{% block js %}\r\n&lt;!-- ========== importando vue y axios [ASI ES MALA PRACTICA]========== --&gt;\r\n&lt;script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"&gt;&lt;/script&gt;\r\n&lt;!-- &lt;script src="https://cdn.jsdelivr.net/npm/vue"&gt;&lt;/script&gt; --&gt;\r\n&lt;script src="https://unpkg.com/axios/dist/axios.min.js"&gt;&lt;/script&gt;\r\n\r\n&lt;!-- ==========seccion codigo vuejs========== --&gt;\r\n&lt;script src="{% static 'apps/search.js' %}"&gt;&lt;/script&gt;\r\n&lt;!-- ==========Fin seccion codigo vuejs========== --&gt;\r\n{% endblock js %}</code></pre>\r\n\r\n<p>lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!-- head para PC --&gt;\r\n{% extends "persona/base_persona.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block content %}\r\n\r\n&lt;div class="grid-container" style="padding: 5em;"&gt;\r\n    &lt;div class="grid-x grid-margin-x align-center"&gt;\r\n        &lt;div class="cell large-5"&gt;\r\n            &lt;h3 class="cell"&gt;Personas en la agenda&lt;/h3&gt;\r\n            &lt;app&gt;\r\n                &lt;div class="grid-x grid-margin-x"&gt;\r\n                    &lt;div class="cell" v-model="kword"&gt;\r\n                        &lt;input type="text" v-model="kword" placeholder="buscar.."&gt;\r\n                    &lt;/div&gt;\r\n                    &lt;div class="cell"&gt;\r\n                        &lt;ul class="vertical menu"&gt;\r\n                            &lt;li v-for="persona in listaPersonas"&gt;\r\n                                &lt;a href="#"&gt;{$ persona.full_name $}&lt;/a&gt;\r\n                            &lt;/li&gt;\r\n                        &lt;/ul&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;\r\n            &lt;/app&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n{% endblock content %}</code></pre>\r\n\r\n<p>resultado</p>\r\n\r\n<p><img src="/media/uploads/2022/12/20/image_qIJTXz5.png" style="height:389px; width:896px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/20/image_TqWENAu.png" style="height:221px; width:629px" /></p>	t	Entry/drf-logo2_wQp3gA0.png	f	t	consumiendo-un-api-buscador-con-axios-82474	6	1
47	2022-12-20 22:58:37.373636-05	2022-12-20 23:03:14.855937-05	CreateAPIVIew	Agenda	<p>serializer.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom rest_framework import serializers\r\n\r\nfrom .models import Person, Reunion, Hobby\r\n\r\nclass PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonCreateAPIView(CreateAPIView):\r\n\r\n    serializer_class= PersonSerializer</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>        'api/persona/create/',\r\n        views.PersonCreateAPIView.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Resultado</p>\r\n\r\n<p><img src="/media/uploads/2022/12/20/image_QYuWkRS.png" style="height:738px; width:1188px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/20/image_jQbHdBg.png" style="height:358px; width:332px" /></p>	t	Entry/drf-logo2_I92jEEi.png	f	t	createapiview-82994	6	1
48	2022-12-20 23:46:10.585083-05	2022-12-21 12:42:06.92663-05	RetrieveAPIView	agenda	<p>views.py</p>\r\n\r\n<pre>\r\n<code>from rest_framework.generics import (\r\n    ListAPIView,\r\n    CreateAPIView,\r\n    RetrieveAPIView,  #Detailview\r\n    DestroyAPIView,\r\n    UpdateAPIView,\r\n    RetrieveUpdateAPIView,\r\n)\r\n\r\nclass PersonDetailView(RetrieveAPIView):\r\n\r\n    serializer_class= PersonSerializer\r\n    queryset= Person.objects.all() #en vez de all se puede poner el filter</code></pre>\r\n\r\n<p>serializer.py</p>\r\n\r\n<pre>\r\n<code>from .models import Person, Reunion, Hobby\r\n\r\nclass PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/persona/detail/&lt;pk&gt;',\r\n        views.PersonDetailView.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image.png" style="height:456px; width:1055px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/drf-logo2_RLLWGxj.png	f	t	retrieveapiview-45726	6	1
51	2022-12-21 13:01:38.155157-05	2022-12-21 13:05:37.519296-05	UpdateAPIView	Agenda	<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonUpdateView(UpdateAPIView):\r\n\r\n    serializer_class= PersonSerializer\r\n    queryset= Person.objects.all() #en vez de all se puede poner el filter</code></pre>\r\n\r\n<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/persona/update/&lt;pk&gt;',\r\n        views.PersonUpdateView.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_NsACvcw.png" style="height:666px; width:1139px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_QSqq0OM.png" style="height:376px; width:1085px" /></p>	t	Entry/drf-logo2_Jr7ulGU.png	f	t	updateapiview-47137	6	1
49	2022-12-21 12:44:06.55211-05	2022-12-21 12:50:00.261535-05	DestroyAPIView	Agenda	<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonDeleteView(DestroyAPIView):\r\n\r\n    serializer_class= PersonSerializer\r\n    queryset= Person.objects.all() #en vez de all se puede poner el filter</code></pre>\r\n\r\n<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>class PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>        'api/persona/delete/&lt;pk&gt;',\r\n        views.PersonDeleteView.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_zyVyQDH.png" style="height:388px; width:1075px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_AmMRv6U.png" style="height:273px; width:313px" /></p>	t	Entry/drf-logo2_bzVMDoT.png	f	t	destroyapiview-46200	6	1
52	2022-12-21 13:11:47.42845-05	2022-12-21 13:11:47.522449-05	RetrieveUpdateAPIView	agenda	<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonRetrieveUpdateAPIView(RetrieveUpdateAPIView):\r\n\r\n    serializer_class= PersonSerializer\r\n    queryset= Person.objects.all() #en vez de all se puede poner el filter</code></pre>\r\n\r\n<p>serializers.py</p>\r\n\r\n<pre>\r\n<code>class PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'api/persona/modificar/&lt;pk&gt;',\r\n        views.PersonRetrieveUpdateAPIView.as_view(),\r\n        name=''\r\n    ),</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_VqqoNdx.png" style="height:659px; width:1095px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/21/image_zGNmWdS.png" style="height:354px; width:1047px" /></p>	t	Entry/drf-logo2_yH5EqeM.png	f	t	retrieveupdateapiview-47507	6	1
57	2022-12-22 17:52:09.489712-05	2022-12-22 17:52:09.684933-05	HyperLinkedModelSerializer Generar Link	agenda	<p>serialyzers.py</p>\r\n\r\n<pre>\r\n<code>class PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )\r\n\r\nclass ReunionSerializerLink(serializers.HyperlinkedModelSerializer):\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n            'id',\r\n            'fecha',\r\n            'hora',\r\n            'asunto',\r\n            'persona',\r\n        )\r\n        extra_kwargs={\r\n            'persona':{'view_name':'persona_app:detalle','lookup_field':'pk'}\r\n        }\r\n\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class PersonDetailView(RetrieveAPIView):\r\n\r\n    serializer_class= PersonSerializer\r\n    queryset= Person.objects.all() #en vez de all se puede poner el filter\r\n\r\n\r\n\r\nclass ReunionApilistaLink(ListAPIView):\r\n\r\n    # serializer_class= PersonaSerializer\r\n    serializer_class= ReunionSerializerLink\r\n\r\n    def get_queryset(self):\r\n        return Reunion.objects.all()\r\n\r\n\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path,re_path\r\n#\r\nfrom .import views\r\n\r\napp_name='persona_app'\r\n\r\nurlpatterns = [\r\n    path(\r\n        'api/persona/detail/&lt;pk&gt;',\r\n        views.PersonDetailView.as_view(),\r\n        name='detalle'\r\n    ),\r\n        path(\r\n        'api/reuniones-link/',\r\n        views.ReunionApilistaLink.as_view(),\r\n        name=''\r\n    ),\r\n]</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_YazscQv.png" style="height:662px; width:1102px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/22/image_hMnOtYE.png" style="height:644px; width:1103px" /></p>	t	Entry/drf-logo2_hcT9b6c.png	f	t	hyperlinkedmodelserializer-generar-link-64329	6	1
60	2022-12-25 21:15:11.220701-05	2022-12-25 21:15:11.313702-05	Archivo Secret para esconder datos	usuarios	<p>base.py</p>\r\n\r\n<pre>\r\n<code>from django.core.exceptions import ImproperlyConfigured\r\nimport json\r\n\r\n\r\n# Build paths inside the project like this: os.path.join(BASE_DIR, ...)\r\nfrom unipath import Path\r\nBASE_DIR = Path(__file__).ancestor(3)\r\n\r\n\r\n# Quick-start development settings - unsuitable for production\r\n# See https://docs.djangoproject.com/en/2.2/howto/deployment/checklist/\r\n\r\n# SECURITY WARNING: keep the secret key used in production secret!\r\nwith open("secret.json") as f:\r\n    secret = json.loads(f.read())\r\n\r\ndef get_secret(secret_name, secrets=secret):\r\n    try:\r\n        return secrets[secret_name]\r\n    except:\r\n        msg = "la variable %s no existe" % secret_name\r\n        raise ImproperlyConfigured(msg)\r\n\r\n\r\n\r\nSECRET_KEY = get_secret('SECRET_KEY')\r\n\r\n\r\n# Application definition\r\n\r\nDJANGO_APPS = (\r\n    'django.contrib.admin',\r\n    'django.contrib.auth',\r\n    'django.contrib.contenttypes',\r\n    'django.contrib.sessions',\r\n    'django.contrib.messages',\r\n    'django.contrib.staticfiles',\r\n)\r\n\r\nLOCAL_APPS = (\r\n    'applications.users',\r\n)\r\n\r\nTHIRD_PARTY_APPS = ()\r\n\r\nINSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS\r\n\r\nEMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'\r\n\r\nMIDDLEWARE = [\r\n    'django.middleware.security.SecurityMiddleware',\r\n    'django.contrib.sessions.middleware.SessionMiddleware',\r\n    'django.middleware.common.CommonMiddleware',\r\n    'django.middleware.csrf.CsrfViewMiddleware',\r\n    'django.contrib.auth.middleware.AuthenticationMiddleware',\r\n    'django.contrib.messages.middleware.MessageMiddleware',\r\n    'django.middleware.clickjacking.XFrameOptionsMiddleware',\r\n]\r\n\r\nROOT_URLCONF = 'usuarios.urls'\r\n\r\nTEMPLATES = [\r\n    {\r\n        'BACKEND': 'django.template.backends.django.DjangoTemplates',\r\n        'DIRS': [BASE_DIR.child('templates')],\r\n        'APP_DIRS': True,\r\n        'OPTIONS': {\r\n            'context_processors': [\r\n                'django.template.context_processors.debug',\r\n                'django.template.context_processors.request',\r\n                'django.contrib.auth.context_processors.auth',\r\n                'django.contrib.messages.context_processors.messages',\r\n            ],\r\n        },\r\n    },\r\n]\r\n\r\nWSGI_APPLICATION = 'usuarios.wsgi.application'\r\n\r\n\r\n# Password validation\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#auth-password-validators\r\n\r\nAUTH_PASSWORD_VALIDATORS = [\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',\r\n    },\r\n    {\r\n        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',\r\n    },\r\n]\r\n\r\nAUTH_USER_MODEL = 'users.User'\r\n\r\n# Internationalization\r\n# https://docs.djangoproject.com/en/2.2/topics/i18n/\r\n\r\nLANGUAGE_CODE = 'es-us'\r\n\r\nTIME_ZONE = 'UTC'\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = True\r\n\r\nUSE_TZ = True\r\n</code></pre>\r\n\r\n<p>secret.json</p>\r\n\r\n<pre>\r\n<code>{\r\n    "FILENAME": "secret.json",\r\n    "SECRET_KEY": "7%sp*+l6*i@t-8*)$nf1u^)9w_o8yz^bw7xu1rrmwx_o(t$#c1",\r\n    "DB_NAME": "dbuser",\r\n    "USER": "neunapp",\r\n    "PASSWORD": "neunapp2020",\r\n    "EMAIL": "neunapp.cursos@gmail.com",\r\n    "PASS_EMAIL": "********"\r\n}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/25/image_0QcKcuw.png" style="height:639px; width:243px" /></p>	t	Entry/django_teXnrnz.JPG	f	t	archivo-secret-para-esconder-datos-76511	10	1
65	2022-12-26 16:17:15.794453-05	2022-12-26 16:26:31.608987-05	Login de Usuario	usuarios	<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.urls import reverse_lazy, reverse\r\nfrom django.contrib.auth import authenticate, login, logout\r\n\r\nclass LoginUser(FormView):\r\n    template_name = 'users/login.html'\r\n    form_class = LoginForm\r\n    success_url = reverse_lazy('home_app:panel')\r\n\r\n    def form_valid(self, form):\r\n        user = authenticate(\r\n            username=form.cleaned_data['username'],\r\n            password=form.cleaned_data['password']\r\n        )\r\n        login(self.request, user)\r\n        return super(LoginUser, self).form_valid(form)\r\n\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>class LoginForm(forms.Form):\r\n    username = forms.CharField(\r\n        label='username',\r\n        required=True,\r\n        widget=forms.TextInput(\r\n            attrs={\r\n                'placeholder': 'usernmae',\r\n            }\r\n        )\r\n    )\r\n    password = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'contraseña'\r\n            }\r\n        )\r\n    )\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'login/', \r\n        views.LoginUser.as_view(),\r\n        name='user-login',\r\n    ),</code></pre>\r\n\r\n<p>template/users/login.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Acceder al sistema&lt;/h1&gt;\r\n    &lt;form method="post"&gt;{% csrf_token %}\r\n        {{ form.as_p }}\r\n        &lt;button type="submit"&gt;Acceder&lt;/button&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_2fXiwzz.JPG	f	t	login-de-usuario-59191	10	1
66	2022-12-26 16:31:57.465289-05	2022-12-26 16:31:57.5509-05	Logout Cerrar Sesion	usuarios	<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.urls import reverse_lazy, reverse\r\nfrom django.contrib.auth import authenticate, login, logout\r\nfrom django.http import HttpResponseRedirect\r\n\r\nfrom django.views.generic import (\r\n    View,\r\n    CreateView\r\n)\r\n\r\nclass LogoutView(View):\r\n\r\n    def get(self, request, *args, **kargs):\r\n        logout(request)\r\n        return HttpResponseRedirect(\r\n            reverse(\r\n                'users_app:user-login'\r\n            )\r\n        )\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'logout/', \r\n        views.LogoutView.as_view(),\r\n        name='user-logout',\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>templates/home/index.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Panel de usuario&lt;/h1&gt;\r\n    &lt;h3&gt;Bienvenidos: {{user}}&lt;/h3&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-logout' %}"&gt;Cerrar Sesion&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-update' %}"&gt;Actualizar Datos&lt;/a&gt;&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_nC9dKAJ.JPG	f	t	logout-cerrar-sesion-59517	10	1
67	2022-12-26 16:33:03.036574-05	2022-12-26 16:50:00.300725-05	Validacion de usuario en el formulario Login	usuarios	<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\nfrom django.contrib.auth import authenticate\r\n#\r\nfrom .models import User\r\n\r\nclass LoginForm(forms.Form):\r\n    username = forms.CharField(\r\n        label='username',\r\n        required=True,\r\n        widget=forms.TextInput(\r\n            attrs={\r\n                'placeholder': 'usernmae',\r\n            }\r\n        )\r\n    )\r\n    password = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'contraseña'\r\n            }\r\n        )\r\n    )\r\n\r\n    def clean(self):\r\n        cleaned_data = super(LoginForm, self).clean()\r\n        username = self.cleaned_data['username']\r\n        password = self.cleaned_data['password']\r\n\r\n        if not authenticate(username=username, password=password):\r\n            raise forms.ValidationError('Los datos de usuario no son correctos')\r\n        \r\n        return self.cleaned_data\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class LoginUser(FormView):\r\n    template_name = 'users/login.html'\r\n    form_class = LoginForm\r\n    success_url = reverse_lazy('home_app:panel')\r\n\r\n    def form_valid(self, form):\r\n        user = authenticate(\r\n            username=form.cleaned_data['username'],\r\n            password=form.cleaned_data['password']\r\n        )\r\n        login(self.request, user)\r\n        return super(LoginUser, self).form_valid(form)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'login/', \r\n        views.LoginUser.as_view(),\r\n        name='user-login',\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image.png" style="height:297px; width:337px" /></p>	t	Entry/django_Gvdpxj2.JPG	f	t	validacion-de-usuario-en-el-formulario-login-60600	10	1
63	2022-12-26 00:27:25.586097-05	2023-01-01 19:49:59.703911-05	Registrar y Validar Usuario FormView	usuarios	<p>el CreateViewno sirve para el caso de usuarios por eso usaremos&nbsp;FormView</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\nfrom django.core.mail import send_mail\r\nfrom django.urls import reverse_lazy, reverse\r\nfrom django.contrib.auth import authenticate, login, logout\r\nfrom django.contrib.auth.mixins import LoginRequiredMixin\r\nfrom django.http import HttpResponseRedirect\r\n\r\nfrom django.views.generic import (\r\n    View,\r\n    CreateView\r\n)\r\n\r\nfrom django.views.generic.edit import (\r\n    FormView\r\n)\r\n\r\nfrom .forms import (\r\n    UserRegisterForm, \r\n    LoginForm,\r\n    UpdatePasswordForm,\r\n    VerificationForm\r\n)\r\n#\r\nfrom .models import User\r\n# \r\nfrom .functions import code_generator\r\n\r\n\r\nclass UserRegisterView(FormView):\r\n    template_name = 'users/register.html'\r\n    form_class = UserRegisterForm\r\n    success_url = '/'\r\n\r\n    def form_valid(self, form):\r\n        # generamos el codigo\r\n        codigo = code_generator()\r\n        #\r\n        usuario = User.objects.create_user(\r\n            form.cleaned_data['username'],\r\n            form.cleaned_data['email'],\r\n            form.cleaned_data['password1'],\r\n            nombres=form.cleaned_data['nombres'],\r\n            apellidos=form.cleaned_data['apellidos'],\r\n            genero=form.cleaned_data['genero'],\r\n        )\r\n        #\r\n        return super(UserRegisterView,self).form_valid(form)</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<p>Se crea la funcion para validar si el password ingresado coincide</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\nfrom django.contrib.auth import authenticate\r\n#\r\nfrom .models import User\r\n\r\nclass UserRegisterForm(forms.ModelForm):\r\n\r\n    password1 = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'Contraseña'\r\n            }\r\n        )\r\n    )\r\n    password2 = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'Repetir Contraseña'\r\n            }\r\n        )\r\n    )\r\n\r\n    class Meta:\r\n        """Meta definition for Userform."""\r\n\r\n        model = User\r\n        fields = (\r\n            'username',\r\n            'email',\r\n            'nombres',\r\n            'apellidos',\r\n            'genero',\r\n        )\r\n    \r\n    def clean_password2(self):\r\n        if self.cleaned_data['password1'] != self.cleaned_data['password2']:\r\n            self.add_error('password2', 'Las contraseñas no son iguales')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "users_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'register/', \r\n        views.UserRegisterView.as_view(),\r\n        name='user-register',\r\n    ),</code></pre>\r\n\r\n<p>url principal</p>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>"""usuarios URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/3.0/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path, re_path, include\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    re_path('', include('applications.users.urls')),\r\n    re_path('', include('applications.home.urls')),\r\n]\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_mzolW0x.JPG	f	t	registrar-y-validar-usuario-formview-71399	10	1
70	2022-12-27 00:28:29.409902-05	2022-12-27 12:20:36.292778-05	Envio de email a usuario registrado	usuarios	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\nfrom django.contrib.auth.models import AbstractBaseUser, PermissionsMixin\r\n#\r\nfrom .managers import UserManager\r\n\r\nclass User(AbstractBaseUser, PermissionsMixin):\r\n\r\n    GENDER_CHOICES = (\r\n        ('M', 'Masculino'),\r\n        ('F', 'Femenino'),\r\n        ('O', 'Otros'),\r\n    )\r\n\r\n    username = models.CharField(max_length=10, unique=True)\r\n    email = models.EmailField()\r\n    nombres = models.CharField(max_length=30, blank=True)\r\n    apellidos = models.CharField(max_length=30, blank=True)\r\n    genero = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True)\r\n    codregistro = models.CharField(max_length=6, blank=True)\r\n    #\r\n    is_staff = models.BooleanField(default=False)\r\n    is_active = models.BooleanField(default=False)\r\n\r\n    USERNAME_FIELD = 'username'\r\n\r\n    REQUIRED_FIELDS = ['email',]\r\n\r\n    objects = UserManager()\r\n\r\n    def get_short_name(self):\r\n        return self.username\r\n    \r\n    def get_full_name(self):\r\n        return self.nombres + ' ' + self.apellidos\r\n</code></pre>\r\n\r\n<p>functions.py</p>\r\n\r\n<pre>\r\n<code># funciones extra de la aplicacion users\r\n\r\nimport random\r\nimport string\r\n\r\ndef code_generator(size=6, chars=string.ascii_uppercase + string.digits):\r\n    return ''.join(random.choice(chars) for _ in range(size))</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class UserRegisterView(FormView):\r\n    template_name = 'users/register.html'\r\n    form_class = UserRegisterForm\r\n    success_url = '/'\r\n\r\n    def form_valid(self, form):\r\n        # generamos el codigo\r\n        codigo = code_generator()\r\n        #\r\n        usuario = User.objects.create_user(\r\n            form.cleaned_data['username'],\r\n            form.cleaned_data['email'],\r\n            form.cleaned_data['password1'],\r\n            nombres=form.cleaned_data['nombres'],\r\n            apellidos=form.cleaned_data['apellidos'],\r\n            genero=form.cleaned_data['genero'],\r\n            codregistro=codigo\r\n        )\r\n        # enviar el codigo al email del user\r\n        asunto = 'Confrimacion d eemail'\r\n        mensaje = 'Codigo de verificacion: ' + codigo\r\n        email_remitente = 'roberthbardales@gmail.com'\r\n        #\r\n        send_mail(asunto, mensaje, email_remitente, [form.cleaned_data['email'],])\r\n        # redirigir a pantalla de valdiacion\r\n\r\n        return HttpResponseRedirect(\r\n            reverse(\r\n                'users_app:user-verification',\r\n                kwargs={'pk': usuario.id}\r\n            )\r\n        )\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>class VerificationForm(forms.Form):\r\n    codregistro = forms.CharField(required=True)\r\n\r\n\r\n    def __init__(self, pk, *args, **kwargs):\r\n        self.id_user = pk\r\n        super(VerificationForm, self).__init__(*args, **kwargs)\r\n\r\n    def clean_codregistro(self):\r\n        codigo = self.cleaned_data['codregistro']\r\n\r\n        if len(codigo) == 6:\r\n            # verificamos si el codigo y el id de usuario son validos:\r\n            activo = User.objects.cod_validation(\r\n                self.id_user,\r\n                codigo\r\n            )\r\n            if not activo:\r\n                raise forms.ValidationError('el codigo es incorrecto')\r\n        else:\r\n            raise forms.ValidationError('el codigo es incorrecto')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'user-verification/&lt;pk&gt;/', \r\n        views.CodeVerificationView.as_view(),\r\n        name='user-verification',\r\n    ),</code></pre>\r\n\r\n<p>local.py</p>\r\n\r\n<pre>\r\n<code>from .base import *\r\n# SECURITY WARNING: don't run with debug turned on in production!\r\nDEBUG = True\r\n\r\nALLOWED_HOSTS = []\r\n\r\n# Database\r\n# https://docs.djangoproject.com/en/2.2/ref/settings/#databases\r\n\r\nDATABASES = {\r\n    'default': {\r\n        'ENGINE': 'django.db.backends.postgresql_psycopg2',\r\n        'NAME': get_secret('DB_NAME'),\r\n        'USER': get_secret('USER'),\r\n        'PASSWORD': get_secret('PASSWORD'),\r\n        'HOST': 'localhost',\r\n        'PORT': '5432',\r\n    }\r\n}\r\n# Static files (CSS, JavaScript, Images)\r\n# https://docs.djangoproject.com/en/2.2/howto/static-files/\r\n\r\nSTATIC_URL = '/static/'\r\nSTATICFILES_DIRS = [BASE_DIR.child('static')]\r\n\r\nMEDIA_URL = '/media/'\r\nMEDIA_ROOT = BASE_DIR.child('media')\r\n\r\n# EMAIL SETTINGS\r\nEMAIL_USE_TLS = True\r\nEMAIL_HOST = 'smtp.gmail.com'\r\nEMAIL_HOST_USER = get_secret('EMAIL')\r\nEMAIL_HOST_PASSWORD = get_secret('PASS_EMAIL')\r\nEMAIL_PORT = 587</code></pre>\r\n\r\n<p>secret.json</p>\r\n\r\n<pre>\r\n<code>{\r\n    "FILENAME": "secret.json",\r\n    "SECRET_KEY": "7%sp*+l6*i@t-8*)$nf1u^)9w_o8yz^bw7xu1rrmwx_o(t$#c1",\r\n    "DB_NAME": "dbuser",\r\n    "USER": "neunapp",\r\n    "PASSWORD": "neunapp2020",\r\n    "EMAIL": "roberthbardales@gmail.com",\r\n    "PASS_EMAIL": "xqvuzdqwirflsxog"\r\n}</code></pre>\r\n\r\n<p>templates/users/verification.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Verificacion de email&lt;/h1&gt;\r\n    &lt;h3&gt;Ingre el codigo de Verificacion:&lt;/h3&gt;\r\n    &lt;form method="post"&gt;{% csrf_token %}\r\n        {{form.as_p}}\r\n        &lt;button type="submit"&gt;Confirmar&lt;/button&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>Para que funcione de debe tener activado la verificacion de dos pasos de la cuenta de google</p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_JX4PiuO.png" style="height:333px; width:850px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_ydssbwD.png" style="height:536px; width:681px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_DOn1TdQ.png" style="height:444px; width:345px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_q3rPdyd.png" style="height:538px; width:1366px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_2VCZuAp.png" style="height:261px; width:1249px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/27/image_lU7y6bM.png" style="height:179px; width:328px" /></p>\r\n\r\n<p>y finalmente se accede al sistema</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_CUgCaBc.JPG	f	t	envio-de-email-a-usuario-registrado-44436	10	1
72	2022-12-27 13:31:48.137912-05	2022-12-27 13:31:48.227915-05	Solucion is_Active en el modelo User	usuarios	<p>models.py</p>\r\n\r\n<pre>\r\n<code>​\r\nfrom django.db import models\r\n\r\nfrom django.contrib.auth.models import AbstractBaseUser, PermissionsMixin\r\n#\r\nfrom .managers import UserManager\r\n\r\nclass User(AbstractBaseUser, PermissionsMixin):\r\n\r\n    GENDER_CHOICES = (\r\n        ('M', 'Masculino'),\r\n        ('F', 'Femenino'),\r\n        ('O', 'Otros'),\r\n    )\r\n\r\n    username = models.CharField(max_length=10, unique=True)\r\n    email = models.EmailField()\r\n    nombres = models.CharField(max_length=30, blank=True)\r\n    apellidos = models.CharField(max_length=30, blank=True)\r\n    genero = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True)\r\n    codregistro = models.CharField(max_length=6, blank=True)\r\n    #\r\n    is_staff = models.BooleanField(default=False)\r\n    is_active = models.BooleanField(default=False)\r\n\r\n    USERNAME_FIELD = 'username'\r\n\r\n    REQUIRED_FIELDS = ['email',]\r\n\r\n    objects = UserManager()\r\n\r\n    def get_short_name(self):\r\n        return self.username\r\n    \r\n    def get_full_name(self):\r\n        return self.nombres + ' ' + self.apellidos\r\n\r\n​</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n#\r\nfrom django.contrib.auth.models import BaseUserManager\r\n\r\nclass UserManager(BaseUserManager, models.Manager):\r\n\r\n    def _create_user(self, username, email, password, is_staff, is_superuser, is_active, **extra_fields):\r\n        user = self.model(\r\n            username=username,\r\n            email=email,\r\n            is_staff=is_staff,\r\n            is_superuser=is_superuser,\r\n            is_active=is_active,\r\n            **extra_fields\r\n        )\r\n        user.set_password(password)\r\n        user.save(using=self.db)\r\n        return user\r\n    \r\n    def create_user(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, False, False, False, **extra_fields)\r\n\r\n    def create_superuser(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, True, True, True, **extra_fields)\r\n    \r\n    def cod_validation(self, id_user, cod_registro):\r\n        if self.filter(id=id_user, codregistro=cod_registro).exists():\r\n            return True\r\n        else:\r\n            return False</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_38HM3G3.JPG	f	t	solucion-is_active-en-el-modelo-user-48708	10	1
76	2022-12-28 23:14:08.168265-05	2023-01-10 01:04:30.596175-05	Managers Basico Basado en Modelos	Biblioteca	<p>&nbsp;views.py comparacion&nbsp; del manager con la vista</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n\r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        return  Autor.objects.all()</code></pre>\r\n\r\n<p>models.py modelo base</p>\r\n\r\n<pre>\r\n<code>class Persona(models.Model):\r\n    nombre = models.CharField(\r\n        max_length=50\r\n    )\r\n    apellidos = models.CharField(\r\n        max_length=50\r\n    )\r\n    nacionalidad = models.CharField(\r\n        max_length=30\r\n    )\r\n    edad = models.PositiveIntegerField()\r\n\r\n    def __str__(self):\r\n        return str(self.id)+'-'+ self.nombre + '-'+ self.apellidos\r\n</code></pre>\r\n\r\n<p>Conectar Modelo con el Manager</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>from .managers import AutorManager\r\n\r\nclass Persona(models.Model):\r\n    nombre = models.CharField(\r\n        max_length=50\r\n    )\r\n    apellidos = models.CharField(\r\n        max_length=50\r\n    )\r\n    nacionalidad = models.CharField(\r\n        max_length=30\r\n    )\r\n    edad = models.PositiveIntegerField()\r\n\r\n    obejcts=AutorManager()\r\n\r\n    def __str__(self):\r\n        return str(self.id)+'-'+ self.nombre + '-'+ self.apellidos\r\n</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>class AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n    def listar_autores(self):\r\n    # el self de abajo es equivalente a Autor.objects\r\n        return self.all()</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n\r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        return  Autor.objects.listar_autores()\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom .import views\r\n\r\napp_name = "autor_app"\r\nurlpatterns = [\r\n        path(\r\n        'autores/',\r\n        views.ListarAutores.as_view(),\r\n        name="inicio"\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;lista de autores&lt;/h1&gt;\r\n    \r\n    {% for a  in lista_autores %}\r\n        &lt;li&gt;\r\n            {{a.nombre}}\r\n        &lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_wLC7Ui3.png" style="height:256px; width:321px" /></p>	t	Entry/django_KBJMQUG.JPG	f	t	managers-basico-basado-en-modelos-3870	11	1
71	2022-12-27 12:41:21.02888-05	2022-12-27 13:22:02.450167-05	Formulario de Verificacion de Email	usuarios	<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\nfrom django.core.mail import send_mail\r\nfrom django.urls import reverse_lazy, reverse\r\nfrom django.contrib.auth import authenticate, login, logout\r\nfrom django.contrib.auth.mixins import LoginRequiredMixin\r\nfrom django.http import HttpResponseRedirect\r\n\r\nfrom django.views.generic import (\r\n    View,\r\n    CreateView\r\n)\r\n\r\nfrom django.views.generic.edit import (\r\n    FormView\r\n)\r\n\r\nfrom .forms import (\r\n    UserRegisterForm, \r\n    LoginForm,\r\n    UpdatePasswordForm,\r\n    VerificationForm\r\n)\r\n#\r\nfrom .models import User\r\n# \r\nfrom .functions import code_generator\r\n\r\n\r\nclass UserRegisterView(FormView):\r\n    template_name = 'users/register.html'\r\n    form_class = UserRegisterForm\r\n    success_url = '/'\r\n\r\n    def form_valid(self, form):\r\n        # generamos el codigo\r\n        codigo = code_generator()\r\n        #\r\n        usuario = User.objects.create_user(\r\n            form.cleaned_data['username'],\r\n            form.cleaned_data['email'],\r\n            form.cleaned_data['password1'],\r\n            nombres=form.cleaned_data['nombres'],\r\n            apellidos=form.cleaned_data['apellidos'],\r\n            genero=form.cleaned_data['genero'],\r\n            codregistro=codigo\r\n        )\r\n        # enviar el codigo al email del user\r\n        asunto = 'Confrimacion d eemail'\r\n        mensaje = 'Codigo de verificacion: ' + codigo\r\n        email_remitente = 'roberthbardales@gmail.com'\r\n        #\r\n        send_mail(asunto, mensaje, email_remitente, [form.cleaned_data['email'],])\r\n        # redirigir a pantalla de valdiacion\r\n\r\n        return HttpResponseRedirect(\r\n            reverse(\r\n                'users_app:user-verification',\r\n                kwargs={'pk': usuario.id}\r\n            )\r\n        )\r\n\r\n\r\n\r\n\r\nclass CodeVerificationView(FormView):\r\n    template_name = 'users/verification.html'\r\n    form_class = VerificationForm\r\n    success_url = reverse_lazy('users_app:user-login')\r\n\r\n    def get_form_kwargs(self):\r\n        kwargs = super(CodeVerificationView, self).get_form_kwargs()\r\n        kwargs.update({\r\n            'pk': self.kwargs['pk'],\r\n        })\r\n        return kwargs\r\n\r\n    def form_valid(self, form):\r\n        #\r\n        User.objects.filter(\r\n            id=self.kwargs['pk']\r\n        ).update(\r\n            is_active=True\r\n        )\r\n        return super(CodeVerificationView, self).form_valid(form)\r\n</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass VerificationForm(forms.Form):\r\n    codregistro = forms.CharField(required=True)\r\n\r\n\r\n    def __init__(self, pk, *args, **kwargs):\r\n        self.id_user = pk\r\n        super(VerificationForm, self).__init__(*args, **kwargs)\r\n\r\n    def clean_codregistro(self):\r\n        codigo = self.cleaned_data['codregistro']\r\n\r\n        if len(codigo) == 6:\r\n            # verificamos si el codigo y el id de usuario son validos:\r\n            activo = User.objects.cod_validation(\r\n                self.id_user,\r\n                codigo\r\n            )\r\n            if not activo:\r\n                raise forms.ValidationError('el codigo es incorrecto')\r\n        else:\r\n            raise forms.ValidationError('el codigo es incorrecto')</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n#\r\nfrom django.contrib.auth.models import BaseUserManager\r\n\r\nclass UserManager(BaseUserManager, models.Manager):\r\n\r\n    def _create_user(self, username, email, password, is_staff, is_superuser, is_active, **extra_fields):\r\n        user = self.model(\r\n            username=username,\r\n            email=email,\r\n            is_staff=is_staff,\r\n            is_superuser=is_superuser,\r\n            is_active=is_active,\r\n            **extra_fields\r\n        )\r\n        user.set_password(password)\r\n        user.save(using=self.db)\r\n        return user\r\n    \r\n    def create_user(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, False, False, False, **extra_fields)\r\n\r\n    def create_superuser(self, username, email, password=None, **extra_fields):\r\n        return self._create_user(username, email, password, True, True, True, **extra_fields)\r\n    \r\n    def cod_validation(self, id_user, cod_registro):\r\n        if self.filter(id=id_user, codregistro=cod_registro).exists():\r\n            return True\r\n        else:\r\n            return False</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'user-verification/&lt;pk&gt;/', \r\n        views.CodeVerificationView.as_view(),\r\n        name='user-verification',\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_0lK3Dhw.JPG	f	t	formulario-de-verificacion-de-email-48122	10	1
101	2023-01-03 21:44:12.790686-05	2023-01-03 23:32:17.685138-05	Form Valid en CreateView (proceso extra)	empleado	<p>El form valid se ingresa cuando los datos que se han ingresado en el formulario son validos y correctos</p>\r\n\r\n<p>se usa cuando se requiera haer alguna accion adespues del guardado de datos</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class EmpleadoCreateView(CreateView):\r\n    template_name = "persona/add.html"\r\n    model = Empleado\r\n    form_class = EmpleadoForm\r\n    success_url = reverse_lazy('persona_app:emplados_admin')\r\n\r\n    def form_valid(self, form):\r\n        #logica del proceso\r\n        empleado = form.save(commit=False)\r\n        empleado.full_name = empleado.first_name + ' ' + empleado.last_name\r\n        empleado.save()\r\n        return super(EmpleadoCreateView, self).form_valid(form)\r\n    </code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nfrom .models import Empleado\r\n\r\nclass EmpleadoForm(forms.ModelForm):\r\n    \r\n    class Meta:\r\n        model = Empleado\r\n        fields = (\r\n            'first_name',\r\n            'last_name',\r\n            'job',\r\n            'departamento',\r\n            'avatar',\r\n            'habilidades',\r\n        )\r\n        widgets = {\r\n            'habilidades': forms.CheckboxSelectMultiple()\r\n        }</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'add-empleado/',\r\n        views.EmpleadoCreateView.as_view(),\r\n        name='empleado_add'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/add.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Registrar empelado&lt;/h1&gt;\r\n        &lt;form class="cell grid-x grid-margin-x" method="POST" enctype="multipart/form-data"&gt;{% csrf_token %}\r\n\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Nombres:\r\n                  {{form.first_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Apellidos:\r\n                  {{form.last_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Trabajo:\r\n                  {{form.job}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            \r\n            &lt;div class="medium-12 cell"&gt;\r\n                &lt;button type="submit" class="button success"&gt;Guardar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n</code></pre>\r\n\r\n<p>templates/persona/success.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Felicitaciones, se guardo correctamenet el empleado&lt;/h1&gt;</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/03/image_zkVukYj.png" style="height:480px; width:987px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_oriaYAE.JPG	f	t	form-valid-en-createview-proceso-extra-84737	5	1
109	2023-01-05 21:29:23.493875-05	2023-01-05 22:48:12.524031-05	Serializdor para consultas especial de la ORM	agenda	<p>models.py</p>\r\n\r\n<p>conectando el modelo con el manager</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom model_utils.models import TimeStampedModel\r\n#\r\nfrom django.db import models\r\n\r\n#\r\nfrom .managers import ReunionManager\r\n\r\nclass Hobby(TimeStampedModel):\r\n    hobby = models.CharField(\r\n        'Pasatiempo',\r\n         max_length=50,\r\n    ) \r\n\r\n    class Meta:\r\n        verbose_name='Hobby'\r\n        verbose_name_plural='Hobbies'\r\n\r\n    def __str__(self):\r\n\r\n        return self.hobby\r\n\r\n#\r\nclass Person(TimeStampedModel):\r\n    """  Modelo para registrar personas de una agenda  """\r\n\r\n    full_name = models.CharField(\r\n        'Nombres', \r\n        max_length=50,\r\n    )\r\n    job = models.CharField(\r\n        'Trabajo', \r\n        max_length=30,\r\n        blank=True\r\n    )\r\n    email = models.EmailField(\r\n        blank=True, \r\n        null=True\r\n    )\r\n    phone = models.CharField(\r\n        'telefono',\r\n        max_length=15,\r\n        blank=True,\r\n    )\r\n\r\n    hobbies = models.ManyToManyField(Hobby) \r\n\r\n\r\n    class Meta:\r\n        verbose_name = 'Persona'\r\n        verbose_name_plural = 'Personas'\r\n    \r\n    def __str__(self):\r\n        return self.full_name\r\n\r\n\r\n\r\nclass Reunion(TimeStampedModel):\r\n    """  Modelo para reunion  """\r\n\r\n    persona = models.ForeignKey(\r\n        Person, \r\n        on_delete=models.CASCADE\r\n    )\r\n    fecha = models.DateField()\r\n    hora = models.TimeField()\r\n    asunto = models.CharField(\r\n        'Aunto de Reunion',\r\n        max_length=100\r\n    )\r\n    \r\n    objects=ReunionManager()\r\n\r\n    class Meta:\r\n        verbose_name = 'Reunion'\r\n        verbose_name_plural = 'Reunion'\r\n    \r\n    def __str__(self):\r\n        return self.asunto</code></pre>\r\n\r\n<p>serialyzers.py</p>\r\n\r\n<pre>\r\n<code>class PersonSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model=Person\r\n        fields=(\r\n            '__all__'\r\n        )\r\n\r\nclass ReunionSerializerLink(serializers.HyperlinkedModelSerializer):\r\n\r\n    class Meta:\r\n        model=Reunion\r\n        fields=(\r\n            'id',\r\n            'fecha',\r\n            'hora',\r\n            'asunto',\r\n            'persona',\r\n        )\r\n        extra_kwargs={\r\n            'persona':{'view_name':'persona_app:detalle','lookup_field':'pk'}\r\n        }\r\n\r\n</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n#\r\nfrom django.db. models import Count\r\n\r\nclass ReunionManager(models.Manager):\r\n\r\n    def cantidad_reuniones_job(self):\r\n        resultado=self.values('persona__job').annotate(\r\n            cantidad=Count('id')\r\n        )\r\n        return resultado\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass ReunionByPersonJob(ListAPIView):\r\n    serializer_class= ReunionSerializer\r\n\r\n    def get_queryset(self):\r\n        return Person.ojects.cantidad_reuniones_job()\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path,re_path\r\n#\r\nfrom .import views\r\n\r\napp_name='persona_app'\r\n\r\nurlpatterns = [\r\n        path(\r\n        'api/reuniones-link/',\r\n        views.ReunionApilistaLink.as_view(),\r\n        name=''\r\n    ),\r\n]</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2023/01/05/image_ux6KX5y.png" style="height:585px; width:1222px" /></p>	t	Entry/drf-logo2_EKgY79r.png	f	t	serializdor-para-consultas-especial-de-la-orm-82092	6	1
73	2022-12-27 13:41:39.798051-05	2023-01-01 19:50:13.621998-05	Kwargs en los Forms - Recuperar pk en Formularios	usuarios	<p>Recuperar un pk en los formularios</p>\r\n\r\n<p>def get_form_kwargs(self):</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nclass CodeVerificationView(FormView):\r\n    template_name = 'users/verification.html'\r\n    form_class = VerificationForm\r\n    success_url = reverse_lazy('users_app:user-login')\r\n\r\n    def get_form_kwargs(self):\r\n        kwargs = super(CodeVerificationView, self).get_form_kwargs()\r\n        kwargs.update({\r\n            'pk': self.kwargs['pk'],\r\n        })\r\n        return kwargs\r\n\r\n    def form_valid(self, form):\r\n        #\r\n        User.objects.filter(\r\n            id=self.kwargs['pk']\r\n        ).update(\r\n            is_active=True\r\n        )\r\n        return super(CodeVerificationView, self).form_valid(form)</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<p>def __init__(self, pk, *args, **kwargs):</p>\r\n\r\n<pre>\r\n<code>\r\nclass VerificationForm(forms.Form):\r\n    codregistro = forms.CharField(required=True)\r\n\r\n\r\n    def __init__(self, pk, *args, **kwargs):\r\n        self.id_user = pk\r\n        super(VerificationForm, self).__init__(*args, **kwargs)\r\n\r\n    def clean_codregistro(self):\r\n        codigo = self.cleaned_data['codregistro']\r\n\r\n        if len(codigo) == 6:\r\n            # verificamos si el codigo y el id de usuario son validos:\r\n            activo = User.objects.cod_validation(\r\n                self.id_user,\r\n                codigo\r\n            )\r\n            if not activo:\r\n                raise forms.ValidationError('el codigo es incorrecto')\r\n        else:\r\n            raise forms.ValidationError('el codigo es incorrecto')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'user-verification/&lt;pk&gt;/', \r\n        views.CodeVerificationView.as_view(),\r\n        name='user-verification',\r\n    ),</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_theLlaa.JPG	f	t	kwargs-en-los-forms-recuperar-pk-en-formularios-71413	10	1
88	2023-01-01 19:26:26.60714-05	2023-01-02 00:17:39.288061-05	Class Meta, modelos y en el administrador Django	Proyecto Empleado	<p>clas meta y&nbsp;unique_together</p>\r\n\r\n<p>models.py de persona</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_LCIxS7Z.JPG	f	t	class-meta-modelos-y-en-el-administrador-django-1059	5	1
78	2022-12-29 12:20:49.219018-05	2023-01-10 01:04:14.833516-05	Managers Filtrar OR	Biblioteca	<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db.models import Q\r\nclass AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n    def buscar_autor2(self,kword):\r\n        resultado = self.filter(\r\n            Q(nombre__icontains=kword) | Q(apellidos__icontains=kword)\r\n        )\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor2(palabra_clave)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'autores',\r\n        views.ListarAutores.as_view(),\r\n        name="autores"\r\n    ),</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;lista de autores&lt;/h1&gt;\r\n    \r\n    &lt;p&gt;\r\n        &lt;form method="GET"&gt;{% csrf_token %}\r\n            &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n            &lt;button type="submit"&gt;Consultar&lt;/button&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/p&gt;\r\n    {% for a  in lista_autores %}\r\n        &lt;li&gt;\r\n            {{a.nombre}} -{{a.apellidos}} - {{a.nacionalidad}}\r\n        &lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image.png" style="height:249px; width:304px" /></p>	t	Entry/django_ZQ2MJ50.JPG	f	t	managers-filtrar-or-3854	11	1
98	2023-01-03 19:44:53.41031-05	2023-01-03 21:38:44.881893-05	DetailView Vista Genérica	empleado	<p>&nbsp;views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass EmpleadoDetailView(DetailView):\r\n    model = Empleado\r\n    template_name = "persona/detail_empleado.html"\r\n\r\n\r\n</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nfrom .models import Empleado\r\n\r\n\r\nclass EmpleadoForm(forms.ModelForm):\r\n    \r\n    class Meta:\r\n        model = Empleado\r\n        fields = (\r\n            'first_name',\r\n            'last_name',\r\n            'job',\r\n            'departamento',\r\n            'avatar',\r\n            'habilidades',\r\n        )\r\n        widgets = {\r\n            'habilidades': forms.CheckboxSelectMultiple()\r\n        }\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'ver-empleado/&lt;pk&gt;/', \r\n        views.EmpleadoDetailView.as_view(),\r\n        name='empleado_detail'\r\n    ),</code></pre>\r\n\r\n<p>templates/persona/detail_empleado.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Detalle de un empelado &lt;/h1&gt;\r\n{{ empleado }}\r\n\r\n&lt;h3&gt;Todos los datos:&lt;/h3&gt;\r\n&lt;p&gt;{{ empleado.first_name }}&lt;/p&gt;\r\n&lt;p&gt;{{ empleado.last_name }}&lt;/p&gt;\r\n&lt;p&gt;{{ empleado.departamento }}&lt;/p&gt;\r\n&lt;p&gt;{{ empleado.habilidades }}&lt;/p&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ENVIAR UNA VARIABLE EXTRA</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;views.py enviar una variable extra</p>\r\n\r\n<pre>\r\n<code>class EmpleadoDetailView(DetailView):\r\n    model = Empleado\r\n    template_name = "persona/detail_empleado.html"\r\n\r\n    def get_context_data(self, **kwargs):\r\n        context = super(EmpleadoDetailView, self).get_context_data(**kwargs)\r\n        #toot un proceso\r\n        context['titulo'] = 'Empleado del mes'\r\n        return context\r\n</code></pre>\r\n\r\n<p>templates/persona/detail_empleado.html</p>\r\n\r\n<pre>\r\n<code>&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x grid-margin-x align-center"&gt;\r\n        &lt;div class="cell large-4 card" style="width: 300px; margin-top: 10px;"&gt;\r\n            &lt;div class="card-divider"&gt;\r\n\r\n            &lt;h1&gt;Detalle de un empelado {{ titulo }}&lt;/h1&gt;\r\n             {{ empleado }}\r\n            &lt;/div&gt;\r\n            \r\n            &lt;div class="card-section"&gt;\r\n                &lt;h4&gt;{{ empleado.full_name }}&lt;/h4&gt;\r\n                &lt;p&gt;{{ empleado.last_name }}&lt;/p&gt;\r\n                &lt;p&gt;{{ empleado.departamento.shor_name }}&lt;/p&gt;\r\n                &lt;p&gt;&lt;span class="label"&gt;Habilidades:&lt;/span&gt;&lt;/p&gt;\r\n                &lt;ul class="vertical menu"&gt;\r\n                    {% for h in empleado.habilidades.all %}\r\n                      &lt;li&gt;{{ h.hablidad }}&lt;/li&gt;\r\n                    {% endfor %}\r\n                &lt;/ul&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_MAVQkqa.JPG	f	t	detailview-vista-generica-77924	5	1
89	2023-01-02 00:19:40.433618-05	2023-01-02 00:40:00.380247-05	Personalizar Tablas en el Administrador Django	empleado	<p>admin.py de persona</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom .models import Empleado, Habilidades\r\n# Register your models here.\r\nadmin.site.register(Habilidades)\r\n\r\n\r\nclass EmpleadoAdmin(admin.ModelAdmin):\r\n    list_display = (\r\n        'first_name',\r\n        'last_name',\r\n        'departamento',\r\n        'job',\r\n        'id',\r\n    )\r\n\r\nadmin.site.register(Empleado, EmpleadoAdmin)\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image.png" style="height:275px; width:966px" /></p>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_6INQ9UB.png" style="height:746px; width:1026px" /></p>\r\n\r\n<p>el full_name creado pero que no pertenece al modelo</p>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_oXeAnMm.png" style="height:404px; width:989px" /></p>	t	Entry/django_nGkgBEI.JPG	f	t	personalizar-tablas-en-el-administrador-django-2400	5	1
105	2023-01-04 21:40:52.755858-05	2023-01-04 23:17:45.014816-05	Formularios Simples	empleado	<p>Formulario que no dependera directamente de un modelo</p>\r\n\r\n<p>modelo departamento</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\n# Create your models here.\r\nclass Departamento(models.Model):\r\n    name = models.CharField('Nombre', max_length=50,)\r\n    shor_name = models.CharField('Nombre Corto', max_length=20, unique=True)\r\n    anulate = models.BooleanField('Anulado', default=False)\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.name + '-' + self.shor_name</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\nfrom django.views.generic import ListView\r\nfrom django.views.generic.edit import FormView\r\n\r\nfrom applications.persona.models import Empleado\r\nfrom .models import Departamento\r\nfrom .forms import NewDepartamentoForm\r\n\r\n\r\nclass NewDepartamentoView(FormView):\r\n    template_name = 'departamento/new_departamento.html'\r\n    form_class = NewDepartamentoForm\r\n    success_url = '/'\r\n\r\n    def form_valid(self, form):\r\n        print('******estamos en el forma vlid*******')\r\n\r\n        depa = Departamento(\r\n            name=form.cleaned_data['departamento'],\r\n            shor_name=form.cleaned_data['shorname']\r\n        )\r\n        depa.save()\r\n\r\n        nombre = form.cleaned_data['nombre']\r\n        apellido = form.cleaned_data['apellidos']\r\n        Empleado.objects.create(\r\n            first_name=nombre,\r\n            last_name=apellido,\r\n            job='1',\r\n            departamento=depa\r\n        )\r\n        return super(NewDepartamentoView, self).form_valid(form)</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nclass NewDepartamentoForm(forms.Form):\r\n    nombre = forms.CharField(max_length=50)\r\n    apellidos = forms.CharField(max_length=50)\r\n    departamento = forms.CharField(max_length=50)\r\n    shorname = forms.CharField(max_length=20)\r\n\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "departamento_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'new-departamento/',\r\n        views.NewDepartamentoView.as_view(),\r\n        name='nuevo_departamento'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/add.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Regitrar Departamento&lt;/h1&gt;\r\n        &lt;form class="cell callout grid-x grid-margin-x" method="POST"&gt;{% csrf_token %}\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Nombres:\r\n                  {{form.nombre}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;apellidos\r\n                    {{form.apellidos}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;departamento\r\n                    {{form.departamento}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;shorname\r\n                    {{form.shorname}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-12 cell"&gt;\r\n                &lt;button type="submit" class="button"&gt;Guardar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n        &lt;/form&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/04/image_aeSIT0V.png" style="height:321px; width:991px" /></p>\r\n\r\n<p><img src="/media/uploads/2023/01/04/image_r2Qmwrm.png" style="height:456px; width:788px" /></p>\r\n\r\n<p><img src="/media/uploads/2023/01/04/image_7hSL6O3.png" style="height:518px; width:983px" /></p>	t	Entry/django_Oui45xV.JPG	f	t	formularios-simples-83865	5	1
82	2022-12-29 13:03:25.631714-05	2023-01-10 01:03:27.564226-05	Managers rango de Fechas	Biblioteca	<p>conectar el modelo libro con el manager</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.db import models\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n        related_name='categoria_libro'\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()    #conexion con el manager\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n\r\n\r\n</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>class LibroManager(models.Manager):\r\n\r\n    def listar_libros(self, kword):\r\n\r\n        resultado = self.filter(\r\n            titulo__icontains=kword,\r\n            fecha__range=('2000-01-01', '2010-01-01')\r\n        )\r\n        return resultado\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from .models import Libro\r\n\r\nclass ListLibros(ListView):\r\n\r\n    context_object_name = 'lista_libros'\r\n    template_name = "libro/lista.html"\r\n\r\n    def get_queryset(self):\r\n        palabra_clave = self.request.GET.get("kword",'')\r\n\r\n        return Libro.objects.listar_libros(palabra_clave)\r\n\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom .import views\r\n\r\nurlpatterns = [\r\n    path(\r\n        'libros/',\r\n        views.ListLibros.as_view(),\r\n        name="libros"\r\n    ),\r\n]\r\n</code></pre>\r\n\r\n<p>templates/libro/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;lista de Libros&lt;/h1&gt;\r\n\r\n&lt;p&gt;\r\n    &lt;form method="GET"&gt;{% csrf_token %}\r\n        &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n\r\n    &lt;/form&gt;\r\n&lt;/p&gt;\r\n&lt;ul&gt;\r\n    \r\n    {% for  l in lista_libros %}\r\n        &lt;li&gt;{{l.titulo}} - {{l.fecha}}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;\r\n    </code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image_Gdmaa4E.png" style="height:279px; width:541px" /></p>	t	Entry/django_QPcToVJ.JPG	f	t	managers-rango-de-fechas-3807	11	1
90	2023-01-02 00:31:13.186322-05	2023-01-02 00:31:59.897237-05	Funciones Especiales en el Admin	empleados	<p>admin.py de persona</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom .models import Empleado, Habilidades\r\n# Register your models here.\r\nadmin.site.register(Habilidades)\r\n\r\n\r\nclass EmpleadoAdmin(admin.ModelAdmin):\r\n    list_display = (\r\n        'first_name',\r\n        'last_name',\r\n        'departamento',\r\n        'job',\r\n        'full_name',\r\n        'id',\r\n    )\r\n    #\r\n    def full_name(self, obj):\r\n        #toda la operacion\r\n        print(obj.first_name)\r\n        return obj.first_name + ' ' + obj.last_name\r\n    #\r\n    search_fields = ('first_name',)\r\n    list_filter = ('departamento', 'job', 'habilidades',)\r\n    #\r\n    filter_horizontal = ('habilidades',)\r\n\r\nadmin.site.register(Empleado, EmpleadoAdmin)</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_FnuQsnn.JPG	f	t	funciones-especiales-en-el-admin-1919	5	1
95	2023-01-02 18:31:18.443861-05	2023-01-02 19:02:44.48934-05	Filtro a través de una caja de Texto - ListView	empleado	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListEmpleadosByKword(ListView):\r\n    """  lista empelado por palabra clave """\r\n    template_name = 'persona/by_kword.html'\r\n    context_object_name = 'empelados'\r\n\r\n    def get_queryset(self):\r\n        print('********************')\r\n        palabra_clave = self.request.GET.get("kword", '')\r\n        lista = Empleado.objects.filter(\r\n            first_name=palabra_clave\r\n        )\r\n        return lista\r\n    </code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'buscar-empleado/',\r\n        views.ListEmpleadosByKword.as_view(),\r\n        name='',\r\n    ),</code></pre>\r\n\r\n<p>teplates/persona/by_kword.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Buscar empleados por palabra clave&lt;/h1&gt;\r\n&lt;form method="GET"&gt;{% csrf_token %}\r\n    &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre aqui"&gt;\r\n    &lt;button type="submit"&gt;Buscar&lt;/button&gt;\r\n&lt;/form&gt;\r\n\r\n&lt;h3&gt;Lista resultados&lt;/h3&gt;\r\n&lt;ul&gt;\r\n    \r\n    {% for e in empelados  %}\r\n        &lt;li&gt;{{e}}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_p3uTvU5.png" style="height:259px; width:565px" /></p>\r\n\r\n<p><img src="/media/uploads/2023/01/02/image_HtqIR4w.png" style="height:268px; width:575px" /></p>	t	Entry/django_u4ZopK9.JPG	f	t	filtro-a-traves-de-una-caja-de-texto-listview-68564	5	1
103	2023-01-04 00:01:35.886306-05	2023-01-04 00:07:35.665196-05	DeleteView - Vista Generica	empleado	<p>Django necesita una pantalla de conirmacion parar eliminar</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\n\r\nclass EmpleadoDeleteView(DeleteView):\r\n    model = Empleado\r\n    template_name = "persona/delete.html"\r\n    success_url = reverse_lazy('persona_app:emplados_admin')\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'delete-empleado/&lt;pk&gt;/',\r\n        views.EmpleadoDeleteView.as_view(),\r\n        name='eliminar_empleado'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/delete.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Eliminar Empelado: {{ object.full_name }}&lt;/h1&gt;\r\n\r\n        &lt;form class="cell" method="POST"&gt;{% csrf_token %}\r\n\r\n            &lt;div class="callout secondary"&gt;\r\n                &lt;h5&gt;¿Desea eliminar este empleado?&lt;/h5&gt;\r\n                &lt;button type="submit" class="alert button"&gt;Confirmar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n        &lt;/form&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_F77qTdo.JPG	f	t	deleteview-vista-generica-455	5	1
97	2023-01-03 19:26:37.157626-05	2023-01-03 19:27:18.965204-05	Tipos de Campos de un Modelo en Django - Fields in Models	TIPS	<p>En este art&iacute;culo veamos los campos m&aacute;s utilizados en&nbsp;<strong>un modelo Django</strong>, antes asumimos que implementaremos la base de datos de una biblioteca, por esta raz&oacute;n los ejemplos ser&aacute;n basados en ello.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Toda la informaci&oacute;n es extra&iacute;da desde la&nbsp;<strong>documentaci&oacute;n oficial de Django 3</strong>.&nbsp;<a href="https://docs.djangoproject.com/en/3.1/ref/models/fields/" target="_blank">Model field reference</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>models.CharField:</strong></p>\r\n\r\n<p>Utilizado para cadenas (String), puedes especificar cadenas peque&ntilde;as o grandes, mediante el par&aacute;metro max-length</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>max-length:</strong>&nbsp;Espera un n&uacute;mero entero, que indica el tama&ntilde;o de la cadena.</p>\r\n\r\n<p><strong>blank:</strong>&nbsp;Espera un valor Booleano, que indica si el campo puede recibir valores vac&iacute;os o no.</p>\r\n\r\n<p><strong>choices:</strong>&nbsp;Espera un arreglo de String, espera un array de parejas, el cual ser&aacute; las &uacute;nicas opciones para un valor en este campo.</p>\r\n\r\n<pre>\r\n<code>class Autor(models.Model):\r\n    full_name = models.CharField(max_length=60)\r\n    addresse = models.CharField(max_length=80, blank=True)\r\n    gender = models.CharField(max_length=80, choices=array_choices)</code></pre>\r\n\r\n<p><strong>models.BooleanField:</strong></p>\r\n\r\n<p>Utilizado para especificar campos de tipo booleano (Verdadero o Falso)</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>blank</strong>&nbsp;= Especifica si este campo puede o no ser vac&iacute;o.</p>\r\n\r\n<p><strong>default&nbsp;</strong>= Especifica el valor por defecto si se intenta ingresar un valor vac&iacute;o.</p>\r\n\r\n<pre>\r\n<code>class Libro(models.Model):\r\n    titulo = models.CharField(max_length=60)\r\n    publicado = models.BooleanField(default=False)</code></pre>\r\n\r\n<p><strong>models.DateField:</strong></p>\r\n\r\n<p>Utilizado para campos que requieran el registro de fechas (objetos de tipo fecha sin hora)</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>null</strong>: se especifica valor booleano para indicar si puede o no ser vac&iacute;o.</p>\r\n\r\n<p><strong>auto_now</strong>: valor booleano que indica que si la fecha se completa autom&aacute;ticamente bas&aacute;ndose en el servidor, requiere configuraci&oacute;n adicional.</p>\r\n\r\n<pre>\r\n<code>class Libro(models.Model):\r\n    titulo = models.CharField(max_length=60)\r\n    publicado = models.BooleanField(default=False)\r\n    fecha_publicacion = models.DateField(null=True)</code></pre>\r\n\r\n<p><strong>models.DateTimeField:</strong></p>\r\n\r\n<p>A diferencia del DateFied este aparte registrar la fecha, tambi&eacute;n registra la hora y trae procesos y m&eacute;todos extra para manipular los datos de tipo hora.&nbsp;</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>null</strong>: se especifica valor booleano para indicar si puede o no ser vac&iacute;o.</p>\r\n\r\n<p><strong>auto_now</strong>: valor booleano que indica que si la fecha se completa autom&aacute;ticamente bas&aacute;ndose en el servidor, requiere configuraci&oacute;n adicional.</p>\r\n\r\n<pre>\r\n<code>class Libro(models.Model):\r\n    titulo = models.CharField(max_length=60)\r\n    publicado = models.BooleanField(default=False)\r\n    fecha_publicacion = models.DateTimeField(null=True, blank=True)</code></pre>\r\n\r\n<p><strong>models.EmailField:</strong></p>\r\n\r\n<p>Como ya da a suponer el nombre, es un campo exclusivo para cadenas de tipo email, incluye validaciones extra para que solo acepte cadenas con un correcto formato de email. No necesita especificar el tama&ntilde;o m&aacute;ximo de la cadena.&nbsp;</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>blank</strong>: se pone en True si deseas que este campo no sea obligatorio</p>\r\n\r\n<pre>\r\n<code>class Autor(models.Model):\r\n    full_name = models.CharField(max_length=60)\r\n    correo = models.EmailField(blank=True)</code></pre>\r\n\r\n<p><strong>models.URLField:</strong></p>\r\n\r\n<p>Muy similar al EmailField, recibe una cadena que tenga el formato correcto de una url v&aacute;lida. No es necesario especificar el tama&ntilde;o m&aacute;ximo de la cadena.&nbsp;</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>null</strong>: Internamente esto se transforma en un objeto, por ello para que no sea obligatorio se deber&aacute; poner la propiedad null=True</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\nclass Autor(models.Model):\r\n    full_name = models.CharField(max_length=60)\r\n    correo = models.EmailField(blank=True)\r\n    perfil = models.URLField(null=True)\r\n</pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>models.ImageField:</strong></p>\r\n\r\n<p>Se utiliza cuando se desea subir y almacenar im&aacute;genes en un servidor, al procesar este atributo se crear&aacute; un objeto que luego puedes manipular con facilidad, accediendo a la url de la imagen, el tama&ntilde;o, ruta y otros datos m&aacute;s.&nbsp;</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>null</strong>: recibe Booleano</p>\r\n\r\n<p><strong>blank</strong>: recibe Booleano</p>\r\n\r\n<p><strong>upload</strong>: recibe cadena, ah&iacute; puedes especificar el nombre de la carpeta donde deseas que se guarden las im&aacute;genes.</p>\r\n\r\n<p><strong>NOTA</strong>: puedes aplicar par&aacute;metros y funciones especial al guardar para procesar im&aacute;genes, un ejemplo de ello ser&iacute;a: si deseas comprimir el peso de una imagen para no sobrecargar tu servidor.&nbsp;&nbsp;</p>\r\n\r\n<pre>\r\n<code>class Autor(models.Model):\r\n    full_name = models.CharField(max_length=60)\r\n    correo = models.EmailField(blank=True)\r\n    perfil = models.URLField(null=True)\r\n    foto = models.ImageField(null=True, upload=’fotos’)</code></pre>\r\n\r\n<p><strong>models.PositiveIntegerField:</strong></p>\r\n\r\n<p>Parte del tipo de campo IntegerField, con la diferencia que este solo permitir&aacute; almacenar valores positivos enteros. Se puede usar por ejemplo en campos donde almacenes edad.&nbsp;</p>\r\n\r\n<p><u>Par&aacute;metros:</u></p>\r\n\r\n<p><strong>default</strong>: puedes asignar un valor por defecto o nulo si no deseas que sea obligatorio.&nbsp;</p>\r\n\r\n<pre>\r\n<code>class Autor(models.Model):\r\n    full_name = models.CharField(max_length=60)\r\n    correo = models.EmailField(blank=True)\r\n    perfil = models.URLField(null=True)\r\n    foto = models.ImageField(null=True, upload=’fotos’)\r\n    edad = models.PositiveIntegerField(default=0)</code></pre>	t	Entry/django_GenLdK8.JPG	f	t	tipos-de-campos-de-un-modelo-en-django-fields-in-models-70038	5	1
99	2023-01-03 21:18:05.123695-05	2023-01-03 21:38:26.896687-05	CreateView con Fields	empleado	<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass EmpleadoCreateView(CreateView):\r\n    template_name = "persona/add.html"\r\n    model = Empleado\r\n    fields=[\r\n        'first_name',\r\n        'last_name',\r\n        'job',\r\n    ]\r\n    success_url = reverse_lazy('persona_app:emplados_admin')\r\n</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nfrom .models import Empleado\r\n\r\n\r\nclass EmpleadoForm(forms.ModelForm):\r\n    \r\n    class Meta:\r\n        model = Empleado\r\n        fields = (\r\n            'first_name',\r\n            'last_name',\r\n            'job',\r\n            'departamento',\r\n            'avatar',\r\n            'habilidades',\r\n        )\r\n        widgets = {\r\n            'habilidades': forms.CheckboxSelectMultiple()\r\n        }\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'add-empleado/',\r\n        views.EmpleadoCreateView.as_view(),\r\n        name='empleado_add'\r\n    ),</code></pre>\r\n\r\n<p>templates/persona/add.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Registrar empelado&lt;/h1&gt;\r\n        &lt;form class="cell grid-x grid-margin-x" method="POST" enctype="multipart/form-data"&gt;{% csrf_token %}\r\n\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Nombres:\r\n                  {{form.first_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Apellidos:\r\n                  {{form.last_name}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="medium-6 cell"&gt;\r\n                &lt;label&gt;Trabajo:\r\n                  {{form.job}}\r\n                &lt;/label&gt;\r\n            &lt;/div&gt;\r\n            \r\n            &lt;div class="medium-12 cell"&gt;\r\n                &lt;button type="submit" class="button success"&gt;Guardar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_gzlYgEk.JPG	f	t	createview-con-fields-77906	5	1
107	2023-01-05 16:05:15.561109-05	2023-01-05 19:38:11.439143-05	Paginacion Django	Paginacion	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass ListAllEmpleados(ListView):\r\n    template_name = 'persona/list_all.html'\r\n    paginate_by = 4\r\n    ordering = 'first_name'\r\n    context_object_name = 'empleados'\r\n\r\n\r\n\r\n    def get_queryset(self):\r\n        palabra_clave = self.request.GET.get("kword", '')\r\n        lista = Empleado.objects.filter(\r\n            full_name__icontains=palabra_clave\r\n        )\r\n        return lista\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n\r\n    path(\r\n        'listar-todo-empleados/',\r\n        views.ListAllEmpleados.as_view(),\r\n        name='empleados_all'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona.list_all.html</p>\r\n\r\n<pre>\r\n<code>{% extends 'base.html' %}\r\n\r\n{% block content %}\r\n{% include "includes/header.html" %}\r\n\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Lista Empleados&lt;/h1&gt;\r\n        &lt;form class="cell grid-x grid-margin-x" method="GET"&gt;{% csrf_token %}\r\n            &lt;div class="cell large-7"&gt;\r\n                &lt;input type="text" id="kword" name="kword" placeholder="buscar empleado"&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="cell large-2"&gt;\r\n                &lt;button type="submit" class="success button"&gt;Buscar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n        &lt;/form&gt;\r\n        &lt;div class="cell"&gt;\r\n            &lt;table&gt;\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                    &lt;th width="200"&gt;ID&lt;/th&gt;\r\n                    &lt;th&gt;NOMBRES&lt;/th&gt;\r\n                    &lt;th width="150"&gt;APELLIDOS&lt;/th&gt;\r\n                    &lt;th width="150"&gt;DEPARTAMENTO&lt;/th&gt;\r\n                    &lt;th width="150"&gt;ACCION&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    {% for e in empleados %}\r\n                    &lt;tr&gt;\r\n                        &lt;td&gt;{{ e.id }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.first_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.last_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.departamento }}&lt;/td&gt;\r\n                        &lt;td&gt;&lt;a class="button warning" href="{% url 'persona_app:empleado_detail' e.id %}"&gt;Ver&lt;/a&gt;&lt;/td&gt;\r\n                    &lt;/tr&gt;\r\n                    {% endfor %}\r\n                &lt;/tbody&gt;\r\n            &lt;/table&gt;\r\n        &lt;/div&gt;\r\n\r\n        &lt;div class="cell"&gt;\r\n            {% if is_paginated %}\r\n            &lt;nav aria-label="Pagination"&gt;\r\n                &lt;ul class="pagination"&gt;\r\n                    {% if page_obj.has_previous %}\r\n                    &lt;li class="pagination-previous"&gt;\r\n                        &lt;a href="?page={{page_obj.previous_page_number}}"&gt;Atras&lt;/a&gt;\r\n                    &lt;/li&gt;\r\n                    {% endif %}\r\n                    \r\n                    {% for pagina in paginator.page_range %}\r\n\r\n                    \r\n                    {% ifequal pagina page_obj.number %}\r\n                    &lt;li class="current"&gt;&lt;span class="show-for-sr"&gt;You're on page&lt;/span&gt; {{ pagina }}&lt;/li&gt;\r\n                    {% else %}\r\n                    &lt;li class=""&gt;&lt;a href="?page={{pagina}}"&gt;{{ pagina }}&lt;/a&gt;&lt;/li&gt;\r\n                    {% endifequal %}\r\n                    {% endfor %}\r\n                    \r\n                    {% if page_obj.has_next %}\r\n                    &lt;li class="pagination-next"&gt;\r\n                        &lt;a href="?page={{page_obj.next_page_number}}"&gt;Siguiente&lt;/a&gt;\r\n                    &lt;/li&gt;\r\n                    {% endif %}\r\n                &lt;/ul&gt;\r\n            &lt;/nav&gt;\r\n            {% endif %}\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n{% endblock content %}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2023/01/05/image.png" style="height:659px; width:1073px" /></p>	t	Entry/django_u515Riw.JPG	f	t	paginacion-django-70691	5	1
92	2023-01-02 16:07:18.281823-05	2023-01-02 19:07:12.906831-05	ListView Simple y paginacion	empleado\r\nLink de Documentacion:\r\nhttps://ccbv.co.uk/	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>views.py simple</p>\r\n\r\n<p>y la paginacion</p>\r\n\r\n<p>&nbsp; &nbsp; paginate_by = 4<br />\r\n&nbsp; &nbsp; ordering = &#39;first_name&#39;</p>\r\n\r\n<pre>\r\n<code>from django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\nclass ListAllEmpleados(ListView):\r\n    template_name = 'persona/list_all.html'\r\n    paginate_by = 4\r\n    ordering = 'first_name'\r\n    context_object_name = 'empleados'\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'listar-todo-empleados/',\r\n        views.ListAllEmpleados.as_view(),\r\n        name='empleados_all'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/list_all.html</p>\r\n\r\n<pre>\r\n<code>{% extends 'base.html' %}\r\n\r\n{% block content %}\r\n{% include "includes/header.html" %}\r\n\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;Lista Empleados&lt;/h1&gt;\r\n        &lt;form class="cell grid-x grid-margin-x" method="GET"&gt;{% csrf_token %}\r\n            &lt;div class="cell large-7"&gt;\r\n                &lt;input type="text" id="kword" name="kword" placeholder="buscar empleado"&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class="cell large-2"&gt;\r\n                &lt;button type="submit" class="success button"&gt;Buscar&lt;/button&gt;\r\n            &lt;/div&gt;\r\n        &lt;/form&gt;\r\n        &lt;div class="cell"&gt;\r\n            &lt;table&gt;\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                    &lt;th width="200"&gt;ID&lt;/th&gt;\r\n                    &lt;th&gt;NOMBRES&lt;/th&gt;\r\n                    &lt;th width="150"&gt;APELLIDOS&lt;/th&gt;\r\n                    &lt;th width="150"&gt;DEPARTAMENTO&lt;/th&gt;\r\n                    &lt;th width="150"&gt;ACCION&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    {% for e in empleados %}\r\n                    &lt;tr&gt;\r\n                        &lt;td&gt;{{ e.id }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.first_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.last_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.departamento }}&lt;/td&gt;\r\n                        &lt;td&gt;&lt;a class="button warning" href="{% url 'persona_app:empleado_detail' e.id %}"&gt;Ver&lt;/a&gt;&lt;/td&gt;\r\n                    &lt;/tr&gt;\r\n                    {% endfor %}\r\n                &lt;/tbody&gt;\r\n            &lt;/table&gt;\r\n        &lt;/div&gt;\r\n\r\n        &lt;div class="cell"&gt;\r\n            {% if is_paginated %}\r\n            &lt;nav aria-label="Pagination"&gt;\r\n                &lt;ul class="pagination"&gt;\r\n                    {% if page_obj.has_previous %}\r\n                    &lt;li class="pagination-previous"&gt;\r\n                        &lt;a href="?page={{page_obj.previous_page_number}}"&gt;Atras&lt;/a&gt;\r\n                    &lt;/li&gt;\r\n                    {% endif %}\r\n                    \r\n                    {% for pagina in paginator.page_range %}\r\n\r\n                    \r\n                    {% ifequal pagina page_obj.number %}\r\n                    &lt;li class="current"&gt;&lt;span class="show-for-sr"&gt;You're on page&lt;/span&gt; {{ pagina }}&lt;/li&gt;\r\n                    {% else %}\r\n                    &lt;li class=""&gt;&lt;a href="?page={{pagina}}"&gt;{{ pagina }}&lt;/a&gt;&lt;/li&gt;\r\n                    {% endifequal %}\r\n                    {% endfor %}\r\n                    \r\n                    {% if page_obj.has_next %}\r\n                    &lt;li class="pagination-next"&gt;\r\n                        &lt;a href="?page={{page_obj.next_page_number}}"&gt;Siguiente&lt;/a&gt;\r\n                    &lt;/li&gt;\r\n                    {% endif %}\r\n                &lt;/ul&gt;\r\n            &lt;/nav&gt;\r\n            {% endif %}\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n{% endblock content %}</code></pre>\r\n\r\n<p>agregar al urls.py principal</p>\r\n\r\n<pre>\r\n<code>"""empleado URL Configuration\r\n\r\nThe `urlpatterns` list routes URLs to views. For more information please see:\r\n    https://docs.djangoproject.com/en/2.2/topics/http/urls/\r\nExamples:\r\nFunction views\r\n    1. Add an import:  from my_app import views\r\n    2. Add a URL to urlpatterns:  path('', views.home, name='home')\r\nClass-based views\r\n    1. Add an import:  from other_app.views import Home\r\n    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')\r\nIncluding another URLconf\r\n    1. Import the include() function: from django.urls import include, path\r\n    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))\r\n"""\r\nfrom django.contrib import admin\r\nfrom django.urls import path, re_path, include\r\nfrom django.conf import settings\r\nfrom django.conf.urls.static import static\r\n\r\nurlpatterns = [\r\n    path('admin/', admin.site.urls),\r\n    # incluimos las urls de la app departamento\r\n    re_path('', include('applications.departamento.urls')),\r\n    re_path('', include('applications.home.urls')),\r\n    re_path('', include('applications.persona.urls')),\r\n] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_rGhcKTW.JPG	f	t	listview-simple-y-paginacion-68832	5	1
106	2023-01-04 23:36:35.151459-05	2023-01-05 20:13:20.460401-05	Backup Automatico Postgresql Windows	Backup Automatico Postgresql Windows	<p>Script .bat</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/Como-listar-bases-de-datos-y-tablas-en-PostgreSQL-usando-psql_XAs9k9C.jpg	f	t	backup-automatico-postgresql-windows-72800	2	1
94	2023-01-02 18:22:40.017711-05	2023-01-03 19:19:33.136222-05	Filtro en ListView por parametro URL	empleados	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListByAreaEmpleado(ListView):\r\n    """ lista empleados de un area """\r\n    template_name = 'persona/list_by_area.html'\r\n    context_object_name = 'empleados'\r\n\r\n    def get_queryset(self):\r\n        # el codigo que yo queira\r\n        area = self.kwargs['shorname']\r\n        lista = Empleado.objects.filter(\r\n            departamento__shor_name=area\r\n        )\r\n        return lista\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'lista-by-area/&lt;shorname&gt;/',\r\n        views.ListByAreaEmpleado.as_view(),\r\n        name='emplados_area'\r\n    ),</code></pre>\r\n\r\n<p>teplates/persona/list_by_area.html</p>\r\n\r\n<pre>\r\n<code>{% extends 'base.html' %}\r\n\r\n{% block title %}\r\n  lista empelados por departamento\r\n{% endblock title %}\r\n\r\n{% block content %}\r\n  {% include "includes/header.html" %}\r\n\r\n  &lt;div class="grid-container"&gt;\r\n      &lt;div class="grid-x"&gt;\r\n        &lt;div class="cell"&gt;Empelados por area:&lt;/div&gt;\r\n        &lt;div class="cell"&gt;\r\n            &lt;table&gt;\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                    &lt;th width="200"&gt;ID&lt;/th&gt;\r\n                    &lt;th&gt;NOMBRES&lt;/th&gt;\r\n                    &lt;th width="150"&gt;APELLIDOS&lt;/th&gt;\r\n                    &lt;th width="150"&gt;DEPARTAMENTO&lt;/th&gt;\r\n                    &lt;th width="150"&gt;ACCION&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    {% for e in empleados %}\r\n                    &lt;tr&gt;\r\n                        &lt;td&gt;{{ e.id }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.first_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.last_name }}&lt;/td&gt;\r\n                        &lt;td&gt;{{ e.departamento }}&lt;/td&gt;\r\n                        &lt;td&gt;&lt;a class="button warning" href="{% url 'persona_app:empleado_detail' e.id %}"&gt;Ver&lt;/a&gt;&lt;/td&gt;\r\n                    &lt;/tr&gt;\r\n                    {% endfor %}\r\n                &lt;/tbody&gt;\r\n            &lt;/table&gt;\r\n        &lt;/div&gt;\r\n      &lt;/div&gt;\r\n  &lt;/div&gt;\r\n\r\n\r\n{% endblock content %}\r\n\r\n&lt;h1&gt;Lista empelados por departamento&lt;/h1&gt;\r\n\r\n&lt;ul&gt;\r\n    \r\n    {% for e in object_list  %}\r\n        &lt;li&gt;{{ e }}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_rJmW0KM.JPG	f	t	filtro-en-listview-por-parametro-url-69573	5	1
96	2023-01-02 19:03:26.90018-05	2023-01-03 21:39:07.964282-05	Listview con Relacion ManyToMany	empleado	<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\nfrom ckeditor.fields import RichTextField\r\n#\r\nfrom applications.departamento.models import Departamento\r\n\r\nclass Habilidades(models.Model):\r\n    hablidad = models.CharField('Habilidad', max_length=50)\r\n\r\n    class meta:\r\n        verbose_name = 'Habilidad'\r\n        verbose_name_plural = 'Habilidades Empleados'\r\n    \r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.hablidad\r\n\r\n\r\n\r\n# Create your models here.\r\nclass Empleado(models.Model):\r\n    """ Modelo para tabla empleado """\r\n\r\n    JOB_CHOICES = (\r\n        ('0', 'CONTADOR'),\r\n        ('1', 'ADMINISTRADOR'),\r\n        ('2', 'ECONOMISTA'),\r\n        ('3', 'OTRO'),\r\n    )\r\n    first_name = models.CharField('Nombres', max_length=60)\r\n    last_name = models.CharField('apellidos', max_length=60)\r\n    full_name = models.CharField(\r\n        'Nombres completos',\r\n        max_length=120,\r\n        blank=True\r\n    )\r\n    job = models.CharField('Teabajo', max_length=1, choices=JOB_CHOICES)\r\n    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)\r\n    avatar = models.ImageField(upload_to='empleado', blank=True, null=True)\r\n    habilidades = models.ManyToManyField(Habilidades)\r\n    hoja_vida=RichTextField()\r\n\r\n    class Meta:\r\n        verbose_name = 'Mi Empleado'\r\n        verbose_name_plural = 'Empleados de la empresa'\r\n        ordering = ['-first_name', 'last_name']\r\n        unique_together = ('first_name', 'departamento')\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-' + self.first_name + '-' + self.last_name</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass ListHabilidadesEmpelado(ListView):\r\n    template_name = 'persona/habilidades.html'\r\n    context_object_name = 'habilidades'\r\n\r\n    def get_queryset(self):\r\n        empleado = Empleado.objects.get(id=1)\r\n        return empleado.habilidades.all()\r\n    \r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path('lista-habilidades-empleado/',\r\n    views.ListHabilidadesEmpelado.as_view(),\r\n        name='',\r\n    ),</code></pre>\r\n\r\n<p>templates/persona/habilidades.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;Habilidades de empelado&lt;/h1&gt;\r\n&lt;ul&gt;\r\n    \r\n    {% for h in habilidades %}\r\n        &lt;li&gt;{{ h }}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/03/image_lfy82iT.png" style="height:253px; width:518px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_36dtVG6.JPG	f	t	listview-con-relacion-manytomany-77947	5	1
102	2023-01-03 23:33:01.455957-05	2023-01-04 00:00:37.308657-05	UpdateView con Fields y Methods	empleado	<p>views.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.urls import reverse_lazy\r\nfrom django.views.generic import (\r\n    ListView,\r\n    DetailView,\r\n    CreateView,\r\n    TemplateView,\r\n    UpdateView,\r\n    DeleteView\r\n)\r\n# models\r\nfrom .models import Empleado\r\n# forms\r\nfrom .forms import EmpleadoForm\r\n\r\nclass EmpleadoUpdateView(UpdateView):\r\n    template_name = "persona/update.html"\r\n    model = Empleado\r\n    fields = [\r\n        'first_name',\r\n        'last_name',\r\n        'job',\r\n        'departamento',\r\n        'habilidades',\r\n    ]\r\n    success_url = reverse_lazy('persona_app:emplados_admin')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "persona_app"\r\n\r\nurlpatterns = [\r\n    path(\r\n        'update-empleado/&lt;pk&gt;/',\r\n        views.EmpleadoUpdateView.as_view(),\r\n        name='modificar_empleado'\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/persona/update.html</p>\r\n\r\n<pre>\r\n<code>\r\n&lt;div class="grid-container"&gt;\r\n    &lt;div class="grid-x"&gt;\r\n        &lt;h1 class="cell"&gt;\r\n            Modificar Empleado\r\n        &lt;/h1&gt;\r\n        &lt;div class="cell"&gt;\r\n            &lt;form class="grid-x grid-margin-x" method="POST"&gt;{% csrf_token %}\r\n                &lt;div class="cell large-6"&gt;\r\n                    &lt;label&gt;Nombres:\r\n                        {{ form.first_name }}\r\n                    &lt;/label&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class="cell large-6"&gt;\r\n                    &lt;label&gt;Apellidos:\r\n                        {{ form.last_name }}\r\n                    &lt;/label&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class="cell large-6"&gt;\r\n                    &lt;label&gt;Trabajo:\r\n                        {{ form.job }}\r\n                    &lt;/label&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class="cell large-6"&gt;\r\n                    &lt;label&gt;Area:\r\n                        {{ form.departamento }}\r\n                    &lt;/label&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class="cell large-6"&gt;\r\n                    &lt;label&gt;Habilidades extra:\r\n                        {{ form.habilidades }}\r\n                    &lt;/label&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class="cell"&gt;\r\n                    &lt;button type="submit" class="success button"&gt;Guardar&lt;/button&gt;\r\n                &lt;/div&gt;\r\n            &lt;/form&gt; \r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n</code></pre>\r\n\r\n<p>METHODS tambien se usa en el createview</p>\r\n\r\n<p>METHOD POST Y METHOD FORMVALID</p>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class EmpleadoUpdateView(UpdateView):\r\n    template_name = "persona/update.html"\r\n    model = Empleado\r\n    fields = [\r\n        'first_name',\r\n        'last_name',\r\n        'job',\r\n        'departamento',\r\n        'habilidades',\r\n    ]\r\n    success_url = reverse_lazy('persona_app:emplados_admin')\r\n\r\n    def post(self, request, *args, **kwargs):\r\n        self.object = self.get_object()\r\n        print('************METODO POST****************')\r\n        print('=====================')\r\n        print(request.POST)\r\n        print(request.POST['last_name'])\r\n        return super().post(request, *args, **kwargs)\r\n    \r\n\r\n    def form_valid(self, form):\r\n        #logica del proceso\r\n        print('************METODO form valid****************')\r\n        print('****************************')\r\n        return super(EmpleadoUpdateView, self).form_valid(form)\r\n\r\n\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2023/01/04/image.png" style="height:334px; width:1273px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_OJskXb9.JPG	f	t	updateview-con-fields-y-methods-37	5	1
104	2023-01-04 21:24:21.871931-05	2023-01-04 21:39:24.603642-05	Model Form y Personalizacion(widgets) de un formualrio	empleado	<p>modelo&nbsp; home</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\n# Create your models here.\r\n\r\nclass Prueba(models.Model):\r\n    titulo = models.CharField(max_length=100)\r\n    subtitulo = models.CharField(max_length=50)\r\n    cantidad = models.IntegerField()\r\n\r\n    def __str__(self):\r\n        return self.titulo + '-' + self.subtitulo\r\n    \r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from django.shortcuts import render\r\n#\r\nfrom django.views.generic import (\r\n    TemplateView,\r\n    ListView,\r\n    CreateView\r\n)\r\n# import models\r\nfrom .models import Prueba\r\n\r\nfrom .forms import PruebaForm\r\n\r\nclass PruebaCreateView(CreateView):\r\n    template_name = "home/add.html"\r\n    model = Prueba\r\n    form_class = PruebaForm\r\n    success_url = '/'\r\n\r\n</code></pre>\r\n\r\n<p>forms.py</p>\r\n\r\n<pre>\r\n<code>from django import forms\r\n\r\nfrom .models import Prueba\r\n\r\nclass PruebaForm(forms.ModelForm):\r\n    \r\n    class Meta:\r\n        model = Prueba\r\n        fields = (\r\n            'titulo',\r\n            'subtitulo',\r\n            'cantidad',\r\n        )\r\n        widgets = {\r\n            'titulo': forms.TextInput(\r\n                attrs = {\r\n                    'placeholder': 'Ingrese texto aqui',\r\n                }\r\n            )\r\n        }\r\n\r\n    def clean_cantidad(self):\r\n        cantidad = self.cleaned_data['cantidad']\r\n        if cantidad &lt; 10:\r\n            raise forms.ValidationError('Ingrese un numero mayor a 10')\r\n\r\n        return cantidad\r\n\r\n\r\n\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\nurlpatterns = [\r\n    path(\r\n        'add/', \r\n        views.PruebaCreateView.as_view(),\r\n        name='prueba_add',\r\n    ),\r\n]\r\n</code></pre>\r\n\r\n<p>templates/persona/add.html</p>\r\n\r\n<pre>\r\n<code>&lt;h2&gt;Probando creaetview&lt;/h2&gt;\r\n&lt;form method="POST"&gt;{% csrf_token %}\r\n    {{form.as_p}}\r\n    &lt;button type="submit"&gt;Guardar&lt;/button&gt;\r\n&lt;/form&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2023/01/04/image_rfVNIW7.png" style="height:325px; width:367px" /></p>	t	Entry/django_Dtp63Nb.JPG	f	t	model-form-y-personalizacionwidgets-de-un-formualrio-77964	5	1
81	2022-12-29 12:46:36.002476-05	2023-01-10 01:03:48.884828-05	Managers Mayor que, Menor que	Biblioteca	<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db.models import Q\r\nclass AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n   def buscar_autor4(self,kword):\r\n        resultado = self.filter(\r\n            edad__gt=40,\r\n            edad__lt=65     \r\n            ).order_by('apellidos','nombre','id')\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor4(palabra_clave)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'autores',\r\n        views.ListarAutores.as_view(),\r\n        name="autores"\r\n    ),</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;lista de autores&lt;/h1&gt;\r\n    \r\n    &lt;p&gt;\r\n        &lt;form method="GET"&gt;{% csrf_token %}\r\n            &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n            &lt;button type="submit"&gt;Consultar&lt;/button&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/p&gt;\r\n    {% for a  in lista_autores %}\r\n        &lt;li&gt;\r\n            {{a.nombre}} -{{a.apellidos}} - {{a.nacionalidad}} -{{a.edad}}\r\n        &lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>	t	Entry/django_XQYPEr4.JPG	f	t	managers-mayor-que-menor-que-3828	11	1
85	2022-12-29 22:09:26.6993-05	2023-01-10 01:02:53.137937-05	Consulta ForeingKey con Related Name	Biblioteca	<p><img src="http://127.0.0.1:5000/media/uploads/2022/12/29/image_7I4iuhe.png" /></p>\r\n\r\n<p>Libro models.py</p>\r\n\r\n<p>se le agrega related_name=&#39;categoria_libro&#39; en el modelo libro</p>\r\n\r\n<pre>\r\n<code>from pickletools import optimize\r\nfrom django.db import models\r\nfrom django.db.models.signals import post_save\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n# Create your models here.\r\n\r\n\r\nclass Categoria(models.Model):\r\n    nombre = models.CharField(max_length=30)\r\n\r\n    def __str__(self):\r\n        return str(self.id) + ' - '+ self.nombre\r\n\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n        related_name='categoria_libro'\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n\r\n</code></pre>\r\n\r\n<p>luego hacemos</p>\r\n\r\n<pre>\r\n<code>python manage.py makemigrations\r\npython manage.py migrate\r\npython manage.py runserver</code></pre>\r\n\r\n<p>libro managers.py</p>\r\n\r\n<pre>\r\n<code>class CategoriaManager(models.Manager):\r\n\r\n    def categoria_por_autor(self, autor):\r\n\r\n        return self.filter(\r\n            categoria_libro__autores__id=autor\r\n        ).distinct()\r\n</code></pre>\r\n\r\n<p>Conectamos el managager con el modelo y deberia quedar asi el models.py</p>\r\n\r\n<pre>\r\n<code>from pickletools import optimize\r\nfrom django.db import models\r\nfrom django.db.models.signals import post_save\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n# Create your models here.\r\n\r\n\r\nclass Categoria(models.Model):\r\n    nombre = models.CharField(max_length=30)\r\n\r\n    objects=CategoriaManager()\r\n\r\n    def __str__(self):\r\n        return str(self.id) + ' - '+ self.nombre\r\n\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n        related_name='categoria_libro'\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n</code></pre>\r\n\r\n<p>COMPROBAR SI LA CONSULTA ESTA BIEN HECHA SIN CREAR UNA VISTA</p>\r\n\r\n<p>SHELL DE DJANGO</p>\r\n\r\n<p>en la terminal escribimos</p>\r\n\r\n<pre>\r\n<code>python manage.py shell</code></pre>\r\n\r\n<pre>\r\n<code>from applications.libro.models import *\r\nCategoria.objects.categoria_por_autor('4')</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image_iqQbhHA.png" style="height:225px; width:820px" /></p>	t	Entry/django_MGlMTrr.JPG	f	t	consulta-foreingkey-con-related-name-3773	11	1
84	2022-12-29 19:28:03.552063-05	2023-01-10 01:03:12.558337-05	Consulta en un ForeingKey ORM	Biblioteca	<p><img src="/media/uploads/2022/12/29/image_7I4iuhe.png" style="height:508px; width:720px" /></p>\r\n\r\n<p>Libro models.py</p>\r\n\r\n<pre>\r\n<code>from pickletools import optimize\r\nfrom django.db import models\r\nfrom django.db.models.signals import post_save\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n# Create your models here.\r\n\r\n\r\nclass Categoria(models.Model):\r\n    nombre = models.CharField(max_length=30)\r\n\r\n    objects=CategoriaManager()\r\n\r\n    def __str__(self):\r\n        return str(self.id) + ' - '+ self.nombre\r\n\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La siguiente consulta es entre los modelos libro y categoria solamente</p>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>class LibroManager(models.Manager):\r\n\r\n    def listar_libros_categoria(self, categoria):\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListLibros2(ListView):\r\n    context_object_name = 'lista_libros'\r\n    template_name = 'libro/lista2.html'\r\n\r\n    def get_queryset(self):\r\n        return Libro.objects.listar_libros_categoria('1')</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>urlpatterns = [\r\n    path(\r\n        'libros-2/',\r\n        views.ListLibros2.as_view(),\r\n        name="libros2"\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/libro/lista2.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;lista de Libros&lt;/h1&gt;\r\n\r\n&lt;ul&gt;\r\n    \r\n    {% for l in lista_libros %}\r\n        &lt;li&gt;{{l.titulo}} - {{l.fecha}}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;\r\n    </code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image_vPhFGsT.png" style="height:203px; width:326px" /></p>	t	Entry/django_Wq4ZCo4.JPG	f	t	consulta-en-un-foreingkey-orm-3792	11	1
83	2022-12-29 16:27:52.290891-05	2023-01-10 01:03:20.405554-05	Filtro por Rango de Fechas con Validación de formato de fecha	Biblioteca	<p>conectar el modelo libro con el manager</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom django.db import models\r\n\r\n#apps de tercero\r\n\r\nfrom PIL import Image\r\n\r\nfrom applications.autor.models import Autor\r\n\r\nfrom .managers import LibroManager,CategoriaManager\r\n\r\nclass Libro(models.Model):\r\n    categoria = models.ForeignKey(\r\n        Categoria,\r\n        on_delete=models.CASCADE,\r\n        related_name='categoria_libro'\r\n    )\r\n    autores = models.ManyToManyField(Autor)\r\n    titulo = models.CharField(\r\n        max_length=50\r\n    )\r\n    fecha = models.DateField('Fecha de Lanzamiento')\r\n    portada = models.ImageField(upload_to='portada')\r\n    visitas = models.PositiveIntegerField()\r\n    stok=models.PositiveIntegerField(default=0)\r\n\r\n    objects = LibroManager()    #conexion con el manager\r\n\r\n    class Meta:\r\n        verbose_name='Libro'\r\n        verbose_name_plural='Libros'\r\n        ordering=['titulo','fecha']\r\n\r\n\r\n    def __str__(self):\r\n        return str(self.id) + '-'+ self.titulo\r\n\r\n    def listar_libros_categoria(self,categoria):\r\n\r\n        return self.filter(\r\n            categoria__id=categoria\r\n        ).order_by('titulo')\r\n\r\n\r\n</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>class LibroManager(models.Manager):\r\n\r\n    def listar_libros2(self, kword,fecha1,fecha2):\r\n\r\n        resultado = self.filter(\r\n            titulo__icontains=kword,\r\n            fecha__range=(fecha1,fecha2)\r\n        )\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>from .models import Libro\r\n\r\nclass ListLibros(ListView):\r\n    context_object_name = 'lista_libros'\r\n    template_name = "libro/lista.html"\r\n\r\n    def get_queryset(self):\r\n        palabra_clave = self.request.GET.get("kword",'')\r\n\r\n        #fecha1\r\n        f1 = self.request.GET.get("fecha1",'')\r\n        #fecha2\r\n        f2 = self.request.GET.get("fecha2",'')\r\n\r\n        if f1 and f2:\r\n            return Libro.objects.listar_libros2(palabra_clave,f1,f2)\r\n        else:\r\n            return Libro.objects.listar_libros(palabra_clave)  </code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom django.urls import path\r\n\r\nfrom .import views\r\n\r\nurlpatterns = [\r\n    path(\r\n        'libros/',\r\n        views.ListLibros.as_view(),\r\n        name="libros"\r\n    ),\r\n]\r\n</code></pre>\r\n\r\n<p>templates/libro/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;h1&gt;lista de Libros&lt;/h1&gt;\r\n\r\n&lt;p&gt;\r\n    &lt;form method="GET"&gt;{% csrf_token %}\r\n        &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n\r\n        &lt;input type="date" name="fecha1" id="fecha1"&gt;\r\n        &lt;input type="date" name="fecha2" id="fecha2"&gt;\r\n        &lt;button type="submit"&gt;CONSULTAR&lt;/button&gt;\r\n\r\n    &lt;/form&gt;\r\n&lt;/p&gt;\r\n&lt;ul&gt;\r\n    \r\n    {% for  l in lista_libros %}\r\n        &lt;li&gt;{{l.titulo}} - {{l.fecha}}&lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/ul&gt;\r\n    </code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image_Dd06iOZ.png" style="height:322px; width:536px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/29/image_ubX8Gao.png" style="height:304px; width:548px" /></p>	t	Entry/django_FKJlEKf.JPG	f	t	filtro-por-rango-de-fechas-con-validacion-de-formato-de-fecha-3800	11	1
80	2022-12-29 12:35:04.89821-05	2023-01-10 01:03:56.62678-05	Managers Filtros de Exclusion exclude	Biblioteca	<p>managers.py</p>\r\n\r\n<pre>\r\n<code>from django.db.models import Q\r\nclass AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n    def buscar_autor3(self,kword):\r\n        resultado = self.filter(\r\n            nombre__icontains=kword\r\n        ).exclude(\r\n            Q(edad__icontains=35) | Q(edad__icontains=65)\r\n        )\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores'\r\n    template_name='autor/lista.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor3(palabra_clave)\r\n</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>    path(\r\n        'autores',\r\n        views.ListarAutores.as_view(),\r\n        name="autores"\r\n    ),</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;lista de autores&lt;/h1&gt;\r\n    \r\n    &lt;p&gt;\r\n        &lt;form method="GET"&gt;{% csrf_token %}\r\n            &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n            &lt;button type="submit"&gt;Consultar&lt;/button&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/p&gt;\r\n    {% for a  in lista_autores %}\r\n        &lt;li&gt;\r\n            {{a.nombre}} -{{a.apellidos}} - {{a.nacionalidad}} -{{a.edad}}\r\n        &lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>	t	Entry/django_pvgAyC0.JPG	f	t	managers-filtros-de-exclusion-exclude-3836	11	1
77	2022-12-28 23:59:42.01713-05	2023-01-10 01:04:23.189828-05	Filtros Basicos con Managers	Biblioteca	<p>Conectar Modelo con el Manager</p>\r\n\r\n<p>models.py</p>\r\n\r\n<pre>\r\n<code>from .managers import AutorManager\r\n\r\nclass Persona(models.Model):\r\n    nombre = models.CharField(\r\n        max_length=50\r\n    )\r\n    apellidos = models.CharField(\r\n        max_length=50\r\n    )\r\n    nacionalidad = models.CharField(\r\n        max_length=30\r\n    )\r\n    edad = models.PositiveIntegerField()\r\n\r\n    obejcts=AutorManager()\r\n\r\n    def __str__(self):\r\n        return str(self.id)+'-'+ self.nombre + '-'+ self.apellidos</code></pre>\r\n\r\n<p>managers.py</p>\r\n\r\n<pre>\r\n<code>class AutorManager(models.Manager):\r\n    """ managers para el modelo autor"""\r\n\r\n    def buscar_autor(self,kword):\r\n\r\n        # resultado=self.filter(nombre=kword)\r\n        resultado=self.filter(\r\n            nombre__icontains=kword\r\n        )\r\n\r\n        return resultado</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<pre>\r\n<code>class ListarAutores(ListView):\r\n    \r\n    context_object_name='lista_autores2'\r\n    template_name='autor/lista2.html'\r\n\r\n    def get_queryset(self):\r\n        palabra_clave=self.request.GET.get('kword','')\r\n        return  Autor.objects.buscar_autor(palabra_clave)</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>\r\nfrom .import views\r\n\r\napp_name = "autor_app"\r\nurlpatterns = [\r\n        path(\r\n        'autores/',\r\n        views.ListarAutores.as_view(),\r\n        name="inicio"\r\n    ),\r\n]</code></pre>\r\n\r\n<p>templates/autor/lista.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;lista de autores&lt;/h1&gt;\r\n    \r\n    &lt;p&gt;\r\n        &lt;form method="GET"&gt;{% csrf_token %}\r\n            &lt;input type="text" id="kword" name="kword" placeholder="ingrese nombre"&gt;\r\n            &lt;button type="submit"&gt;Consultar&lt;/button&gt;\r\n\r\n        &lt;/form&gt;\r\n    &lt;/p&gt;\r\n    {% for a  in lista_autores2 %}\r\n        &lt;li&gt;\r\n            {{a.nombre}}\r\n        &lt;/li&gt;\r\n    {% endfor %}\r\n        \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_CrXCD3I.png" style="height:293px; width:348px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/28/image_NgIer0w.png" style="height:233px; width:384px" /></p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_7bbUM5E.JPG	f	t	filtros-basicos-con-managers-3863	11	1
110	2023-01-11 17:45:11.518115-05	2023-01-11 19:23:59.313419-05	Django Import / Export	Aplicacion de Terceros	<p>con el entorno activado instalar</p>\r\n\r\n<pre>\r\n<code>pip install django-import-export</code></pre>\r\n\r\n<p>agregar en settings/base.py</p>\r\n\r\n<pre>\r\n<code>THIRD_PARTY_APPS = (\r\n    'ckeditor',\r\n    'ckeditor_uploader',\r\n    'import_export',\r\n    #'django_quill',\r\n)\r\n\r\n\r\nINSTALLED_APPS = DJANGO_APPS + LOCAL_APPS + THIRD_PARTY_APPS</code></pre>\r\n\r\n<p>entrada/admin.py</p>\r\n\r\n<pre>\r\n<code>#terceros\r\nfrom import_export import resources\r\nfrom import_export.admin import ImportExportModelAdmin\r\n\r\nfrom django.contrib import admin\r\n#\r\nfrom .models import Category,Tag,Entry\r\n\r\n# admin.site.register(Category)\r\nadmin.site.register(Tag)\r\n# admin.site.register(Entry)\r\n\r\nclass EntryResources(resources.ModelResource):\r\n\r\n    fields=('__all__')\r\n    class Meta:\r\n        model=Entry\r\n\r\nclass EntryAdmin(ImportExportModelAdmin):\r\n    resource_class=EntryResources\r\n    list_display = (\r\n        'id',\r\n        'title',\r\n        'user',\r\n        'category',\r\n        'public',\r\n        # 'portada',\r\n        'in_home',\r\n    )\r\n    search_fields = ('id','title')\r\n\r\n    list_filter = ('user', 'public')\r\n    \r\n    #filtro para many to manys\r\n    # filter_horizontal = ('tag',)\r\n\r\nadmin.site.register(Entry, EntryAdmin)\r\n\r\nclass CategoryAdmin(admin.ModelAdmin):\r\n    list_display = (\r\n        'id',\r\n        'short_name',\r\n        'name',\r\n    )\r\n\r\nadmin.site.register(Category, CategoryAdmin)</code></pre>\r\n\r\n<p><img src="/media/uploads/2023/01/11/image.png" style="height:377px; width:1200px" /></p>	t	Entry/django_jT0IFHp.JPG	f	t	django-import-export-69839	12	1
115	2023-01-13 16:30:16.858881-05	2023-01-13 16:30:17.148424-05	Probadno Fecha	sds	<p>sdsad</p>	t	Entry/1_CWFkh5z8oa6dZfn5_gkKKQ_uxh7y65.webp	f	t	probadno-fecha-59417	1	1
69	2022-12-26 20:07:58.556821-05	2023-01-13 16:45:14.317839-05	Actualizar password de usuario	usuarios	<p>forms.py</p>\r\n\r\n<pre>\r\n<code>class UpdatePasswordForm(forms.Form):\r\n\r\n    password1 = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'Contraseña Actual'\r\n            }\r\n        )\r\n    )\r\n    password2 = forms.CharField(\r\n        label='Contraseña',\r\n        required=True,\r\n        widget=forms.PasswordInput(\r\n            attrs={\r\n                'placeholder': 'Contraseña Nueva'\r\n            }\r\n        )\r\n    )\r\n\r\n</code></pre>\r\n\r\n<p>views.py</p>\r\n\r\n<p>tiene el mixin</p>\r\n\r\n<pre>\r\n<code>class UpdatePasswordView(LoginRequiredMixin, FormView):\r\n    template_name = 'users/update.html'\r\n    form_class = UpdatePasswordForm\r\n    success_url = reverse_lazy('users_app:user-login')\r\n    login_url = reverse_lazy('users_app:user-login')\r\n\r\n    def form_valid(self, form):\r\n        usuario = self.request.user\r\n        user = authenticate(\r\n            username=usuario.username,\r\n            password=form.cleaned_data['password1']\r\n        )\r\n\r\n        if user:\r\n            new_password = form.cleaned_data['password2']\r\n            usuario.set_password(new_password)\r\n            usuario.save()\r\n\r\n        logout(self.request)\r\n        return super(UpdatePasswordView, self).form_valid(form)</code></pre>\r\n\r\n<p>urls.py</p>\r\n\r\n<pre>\r\n<code>#\r\nfrom django.urls import path\r\n\r\nfrom . import views\r\n\r\napp_name = "users_app"\r\nurlpatterns = [\r\n    path(\r\n        'update/', \r\n        views.UpdatePasswordView.as_view(),\r\n        name='user-update',\r\n    ),\r\n]</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>templates/users/update.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Cambiar Contraseña: {{ user.get_full_name }}&lt;/h1&gt;\r\n    &lt;form method="post"&gt;{% csrf_token %}\r\n        {{form.as_p}}\r\n        &lt;button type="submit"&gt;Actualziar&lt;/button&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>home/index.html</p>\r\n\r\n<pre>\r\n<code>&lt;!DOCTYPE html&gt;\r\n&lt;html lang="en"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset="UTF-8"&gt;\r\n    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;\r\n    &lt;title&gt;Document&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Panel de usuario&lt;/h1&gt;\r\n    &lt;h3&gt;Bienvenidos: {{user}}&lt;/h3&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-logout' %}"&gt;Cerrar Sesion&lt;/a&gt;&lt;/li&gt;\r\n        &lt;li&gt;&lt;a href="{% url 'users_app:user-update' %}"&gt;Actualizar Datos&lt;/a&gt;&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>tienes q ingresar primero para poder cambiar el password yendo&nbsp;http://127.0.0.1:8000/panel</p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image_t3219OK.png" style="height:259px; width:401px" /></p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image_DzwcHJo.png" style="height:242px; width:347px" />/</p>\r\n\r\n<p><img src="/media/uploads/2022/12/26/image_KxMPEfL.png" style="height:268px; width:310px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>	t	Entry/django_Iu5akg1.JPG	f	t	actualizar-password-de-usuario-60314	10	1
\.


--
-- Data for Name: entrada_entry_tag; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_entry_tag (id, entry_id, tag_id) FROM stdin;
1	1	1
4	4	1
32	30	1
33	31	1
37	35	1
38	36	1
39	37	1
40	38	1
41	39	1
42	40	1
43	41	1
44	42	1
45	43	1
46	44	1
47	45	1
48	46	1
49	47	1
50	48	1
51	49	1
53	51	1
54	52	1
55	53	1
56	54	1
57	55	1
58	56	1
59	57	1
60	58	1
61	59	1
62	60	1
63	61	1
64	62	1
65	63	1
67	65	1
68	66	1
69	67	1
70	68	1
71	69	1
72	70	1
73	71	1
74	72	1
75	73	1
76	74	1
77	75	1
78	76	1
79	77	1
80	78	1
81	79	1
82	80	1
83	81	1
84	82	1
85	83	1
86	84	1
87	85	1
88	86	1
89	87	1
90	88	1
91	89	1
92	90	1
93	91	1
94	92	1
95	93	1
96	94	1
97	95	1
98	96	1
99	97	1
100	98	1
101	99	1
102	100	1
103	101	1
104	102	1
105	103	1
106	104	1
107	105	1
108	106	1
109	107	1
111	109	1
112	110	1
117	115	1
\.


--
-- Data for Name: entrada_tag; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_tag (id, created, modified, name) FROM stdin;
1	2022-11-21 14:24:24.904966-05	2022-11-21 14:24:24.904966-05	Programacion en Python
\.


--
-- Data for Name: favoritos_favorites; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.favoritos_favorites (id, created, modified, entry_id, user_id) FROM stdin;
72	2022-12-09 00:06:14.936073-05	2022-12-09 00:06:14.936073-05	30	1
75	2022-12-29 19:54:24.324535-05	2022-12-29 19:54:24.324535-05	84	1
76	2023-01-09 16:17:40.523481-05	2023-01-09 16:17:40.523481-05	104	1
77	2023-01-09 16:17:45.46602-05	2023-01-09 16:17:45.46602-05	109	1
79	2023-01-09 16:25:18.798421-05	2023-01-09 16:25:18.798421-05	107	5
81	2023-01-09 16:25:41.885915-05	2023-01-09 16:25:41.885915-05	71	5
83	2023-01-09 16:26:07.259646-05	2023-01-09 16:26:07.259646-05	67	5
85	2023-01-09 16:26:58.749212-05	2023-01-09 16:26:58.749212-05	109	5
86	2023-01-09 16:29:46.478263-05	2023-01-09 16:29:46.478263-05	109	6
87	2023-01-09 16:29:51.122517-05	2023-01-09 16:29:51.122517-05	101	6
91	2023-01-10 00:44:53.88218-05	2023-01-10 00:44:53.88218-05	105	1
92	2023-01-10 00:45:08.051353-05	2023-01-10 00:45:08.051353-05	103	1
93	2023-01-10 16:29:10.912424-05	2023-01-10 16:29:10.912424-05	106	5
\.


--
-- Data for Name: home_contact; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.home_contact (id, created, modified, full_name, email, messagge) FROM stdin;
1	2022-11-21 17:17:06.654467-05	2022-11-21 17:17:06.654467-05	Jaun Perez	xdxd@gmail.com	xd
2	2022-11-25 23:45:01.421485-05	2022-11-25 23:45:01.421485-05	tewrewr	dfbfdb@dsgdsg.com	@dsgdsg
3	2022-11-25 23:45:51.397006-05	2022-11-25 23:45:51.397006-05	EJEMPLO25	EJEMPLO25@GMAIL.COM	HOLA
4	2022-12-01 21:42:00.079215-05	2022-12-01 21:42:00.079215-05	Jaun Perez	roberthbardales@gmail.com	fghfgh
5	2022-12-02 19:10:31.870561-05	2022-12-02 19:10:31.870561-05	dfgf	dfbfb@gmail.com	dfgdfg
6	2023-01-13 00:16:10.512195-05	2023-01-13 00:16:10.512195-05	Jaun Perez	dfles@gmail.com	dfgfdg
\.


--
-- Data for Name: home_home; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.home_home (id, created, modified, title, description, about_title, about_text, contact_email, phone) FROM stdin;
1	2022-11-21 14:21:29.079723-05	2022-11-26 00:14:17.91244-05	Russell Roberth	Bienvenido al blog de Python, Django y mas tecnologias	Bienvenido al Blog de Python y Django	Este blog contiene informacion bien detallada y documentada de Python, Django, boostratp, Javascript,Postgresql,etc.	roberthbardales@gmail.com	960174778
\.


--
-- Data for Name: home_suscribers; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.home_suscribers (id, created, modified, email) FROM stdin;
1	2022-11-21 17:16:50.702503-05	2022-11-21 17:16:50.702503-05	neunapp@gmail.com
2	2022-11-25 23:49:05.891036-05	2022-11-25 23:49:05.891036-05	roberthbardales@gmail.com
5	2022-11-26 00:56:41.836947-05	2022-11-26 00:56:41.836947-05	color@gmail.com
6	2022-11-26 00:57:11.611091-05	2022-11-26 00:57:11.611091-05	ynyny@gmail.com
7	2022-11-26 01:01:02.395263-05	2022-11-26 01:01:02.395263-05	roberthbardales@gmail.com
8	2022-11-30 19:42:35.51789-05	2022-11-30 19:42:35.51789-05	roberthbardales@gmail.com
9	2022-12-01 17:59:41.680858-05	2022-12-01 17:59:41.680858-05	roberthbardales@gmail.com
10	2023-01-13 00:16:03.222766-05	2023-01-13 00:16:03.222766-05	fgfgfg@gmail.com
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.users_user (id, password, last_login, is_superuser, email, full_name, ocupation, genero, date_birth, is_staff, is_active) FROM stdin;
6	pbkdf2_sha256$180000$RHy3H4JnwGfU$jRC3oc2F7K1U743FSwABTHm+7Sejvvy0HWoruObPsHU=	2023-01-09 16:29:40.157346-05	f	prueba2@gmail.com	prueba2	1	M	2000-02-02	t	t
7	pbkdf2_sha256$180000$psAxzBgNxAHo$Bt+o4+gsJXsYPLD2uimNLD6qy5wc/aZYxjyHkwJPS1k=	2023-01-09 18:02:00-05	f	prueba3@gmail.com	prueba3	1	M	2023-01-03	t	t
1	pbkdf2_sha256$260000$EcluVc6qtLD4Vx5fDus36A$XOrOEzaR+WGVoTFBhCUlRcZN0AzEjNK/4Xd4bmfCdiY=	2023-01-16 13:07:36.262906-05	t	roberthbardales@gmail.com	Russell Bardales	0	M	1995-01-08	t	t
5	pbkdf2_sha256$260000$Juvcx8pCttcq7Lx4S1QrTg$C7lazqwp2oTGHlOuJczvnze5SLJqWmqvr8JA41ZxPQ0=	2023-01-14 19:34:15.685596-05	f	prueba1@gmail.com	prueba1	1	M	2000-01-01	t	t
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 115, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: entrada_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_category_id_seq', 13, true);


--
-- Name: entrada_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_entry_id_seq', 115, true);


--
-- Name: entrada_entry_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_entry_tag_id_seq', 117, true);


--
-- Name: entrada_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_tag_id_seq', 1, true);


--
-- Name: favoritos_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.favoritos_favorites_id_seq', 93, true);


--
-- Name: home_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_contact_id_seq', 6, true);


--
-- Name: home_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_home_id_seq', 1, true);


--
-- Name: home_suscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_suscribers_id_seq', 10, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 7, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: entrada_category entrada_category_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_category
    ADD CONSTRAINT entrada_category_pkey PRIMARY KEY (id);


--
-- Name: entrada_category entrada_category_short_name_key; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_category
    ADD CONSTRAINT entrada_category_short_name_key UNIQUE (short_name);


--
-- Name: entrada_entry entrada_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry
    ADD CONSTRAINT entrada_entry_pkey PRIMARY KEY (id);


--
-- Name: entrada_entry_tag entrada_entry_tag_entry_id_tag_id_1833afeb_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry_tag
    ADD CONSTRAINT entrada_entry_tag_entry_id_tag_id_1833afeb_uniq UNIQUE (entry_id, tag_id);


--
-- Name: entrada_entry_tag entrada_entry_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry_tag
    ADD CONSTRAINT entrada_entry_tag_pkey PRIMARY KEY (id);


--
-- Name: entrada_tag entrada_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_tag
    ADD CONSTRAINT entrada_tag_pkey PRIMARY KEY (id);


--
-- Name: favoritos_favorites favoritos_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_pkey PRIMARY KEY (id);


--
-- Name: favoritos_favorites favoritos_favorites_user_id_entry_id_7e7f58c9_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_user_id_entry_id_7e7f58c9_uniq UNIQUE (user_id, entry_id);


--
-- Name: home_contact home_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_contact
    ADD CONSTRAINT home_contact_pkey PRIMARY KEY (id);


--
-- Name: home_home home_home_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_pkey PRIMARY KEY (id);


--
-- Name: home_suscribers home_suscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.home_suscribers
    ADD CONSTRAINT home_suscribers_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: entrada_category_short_name_7803585e_like; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_category_short_name_7803585e_like ON public.entrada_category USING btree (short_name varchar_pattern_ops);


--
-- Name: entrada_entry_category_id_e607aeaf; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_category_id_e607aeaf ON public.entrada_entry USING btree (category_id);


--
-- Name: entrada_entry_slug_80f6e563; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_slug_80f6e563 ON public.entrada_entry USING btree (slug);


--
-- Name: entrada_entry_slug_80f6e563_like; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_slug_80f6e563_like ON public.entrada_entry USING btree (slug varchar_pattern_ops);


--
-- Name: entrada_entry_tag_entry_id_b96785c0; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_tag_entry_id_b96785c0 ON public.entrada_entry_tag USING btree (entry_id);


--
-- Name: entrada_entry_tag_tag_id_f1163daa; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_tag_tag_id_f1163daa ON public.entrada_entry_tag USING btree (tag_id);


--
-- Name: entrada_entry_user_id_6026c573; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX entrada_entry_user_id_6026c573 ON public.entrada_entry USING btree (user_id);


--
-- Name: favoritos_favorites_entry_id_6d78d273; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX favoritos_favorites_entry_id_6d78d273 ON public.favoritos_favorites USING btree (entry_id);


--
-- Name: favoritos_favorites_user_id_08e04514; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX favoritos_favorites_user_id_08e04514 ON public.favoritos_favorites USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: neunapp
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry entrada_entry_category_id_e607aeaf_fk; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry
    ADD CONSTRAINT entrada_entry_category_id_e607aeaf_fk FOREIGN KEY (category_id) REFERENCES public.entrada_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry entrada_entry_user_id_6026c573_fk; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry
    ADD CONSTRAINT entrada_entry_user_id_6026c573_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favoritos_favorites favoritos_favorites_entry_id_6d78d273_fk; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_entry_id_6d78d273_fk FOREIGN KEY (entry_id) REFERENCES public.entrada_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favoritos_favorites favoritos_favorites_user_id_08e04514_fk; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_user_id_08e04514_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

