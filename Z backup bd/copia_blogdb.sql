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
    user_id integer NOT NULL,
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
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    short_name character varying(15) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.entrada_category OWNER TO neunapp;

--
-- Name: entrada_category_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_category_id_seq
    AS integer
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
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    title character varying(200) NOT NULL,
    resume text NOT NULL,
    content text NOT NULL,
    public boolean NOT NULL,
    image character varying(100) NOT NULL,
    portada boolean NOT NULL,
    in_home boolean NOT NULL,
    slug character varying(300) NOT NULL,
    category_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.entrada_entry OWNER TO neunapp;

--
-- Name: entrada_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_entry_id_seq
    AS integer
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
    entry_id integer NOT NULL,
    tag_id integer NOT NULL
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
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.entrada_tag OWNER TO neunapp;

--
-- Name: entrada_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.entrada_tag_id_seq
    AS integer
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
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    entry_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.favoritos_favorites OWNER TO neunapp;

--
-- Name: favoritos_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.favoritos_favorites_id_seq
    AS integer
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
    id integer NOT NULL,
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
    AS integer
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
    id integer NOT NULL,
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
    AS integer
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
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.home_suscribers OWNER TO neunapp;

--
-- Name: home_suscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: neunapp
--

CREATE SEQUENCE public.home_suscribers_id_seq
    AS integer
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
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(254) NOT NULL,
    full_name character varying(100) NOT NULL,
    ocupation character varying(30) NOT NULL,
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
    user_id integer NOT NULL,
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
    AS integer
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
    user_id integer NOT NULL,
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
\.


--
-- Data for Name: entrada_category; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_category (id, created, modified, short_name, name) FROM stdin;
4	2022-12-09 14:18:16.159167-05	2022-12-09 14:18:16.159167-05	JavaScript	JavaScript
1	2022-11-21 14:24:15.255669-05	2022-12-09 14:18:34.568384-05	Python	Python
2	2022-11-25 15:47:50.905864-05	2022-12-09 14:18:39.641876-05	Postgresql	Postgresql
3	2022-12-05 12:47:10.407358-05	2022-12-09 14:19:10.914593-05	GitHub	GitHub
5	2022-12-09 14:19:19.937393-05	2022-12-09 14:19:19.937393-05	Django	Django
6	2022-12-09 14:25:34.201131-05	2022-12-09 14:25:34.201131-05	Django Rest	Django Rest
7	2022-12-09 14:28:59.80018-05	2022-12-09 14:28:59.80018-05	Docker	Docker
8	2022-12-09 17:06:09.379561-05	2022-12-09 17:06:09.379561-05	DigitalOcean	DigitalOcean
\.


--
-- Data for Name: entrada_entry; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_entry (id, created, modified, title, resume, content, public, image, portada, in_home, slug, category_id, user_id) FROM stdin;
1	2022-11-21 14:25:11.56427-05	2022-12-09 00:13:57.802506-05	Habilidades más demandadas por las empresas internacionales de TI empresas internacionales de TI	Para entender los lenguajes de programación y las habilidades tecnológicas que necesitan las empresas y que representan una oportunidad para los desarrolladores mexicanos..lkñ.	<p>El cambio clim&aacute;tico viene de la mano del&nbsp;<a href="https://www.elconfidencial.com/tecnologia/ciencia/2017-06-19/mapa-del-cambio-climatico-asi-luchan-los-paises-contra-el-calentamiento-global_1379960/" target="_self">calentamiento global</a>&nbsp;y est&aacute;&nbsp;<strong>modificando el paradigma meteorol&oacute;gico</strong>&nbsp;poco a poco. Un ejemplo de ello es lo que ha ocurrido en un pueblo de los Alpes franceses llamado Saint-Firmin. Resulta que este pueblecito ten&iacute;a una estaci&oacute;n de esqu&iacute; que se inaugur&oacute; en 1964, con sus telesillas y todo. Nevaba cada a&ntilde;o y serv&iacute;a como pista para que los ni&ntilde;os principiantes aprendiesen a esquiar antes de lanzarse a lo loco por las zonas m&aacute;s desafiantes de los Alpes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sin embargo,&nbsp;<strong>lleg&oacute; un d&iacute;a en el que la nieve dej&oacute; de caer</strong>&nbsp;con tanta frecuencia y en tanta cantidad. Este fen&oacute;meno lleva not&aacute;ndose desde hace m&aacute;s de 15 a&ntilde;os y, poco a poco, ha obligado a ir deteniendo los telesillas. Esta es la misma situaci&oacute;n que viven otras estaciones de esqu&iacute; francesas y europeas, afectadas tambi&eacute;n por el cambio clim&aacute;tico.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/07/image.png" style="height:47%; width:88%" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Uno de los principales apartados cuando desarrollamos un sistema es la Seguridad, en espec&iacute;fico, la denominada Autenticaci&oacute;n, la cual no es mas que un conjunto de mecanismos para asociar la solicitud entrante con un conjunto de credenciales de identificaci&oacute;n que puede contener el usuario del cual proviene la petici&oacute;n o el token perteneciente a un usuario, dependiendo los mecanismos que se hayan definido, se valida si la solicitud puede ser permitida o no.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabemos que la autenticaci&oacute;n siempre se ejecuta al comienzo de la vista antes de que se produzcan las comprobaciones de permisos y limitaciones y antes de cualquier procesamiento de datos en alguna vista, por ello Django Rest Framework, luego de validar la petici&oacute;n, guardar&aacute; la instancia de la clase User en&nbsp;<em>request.user</em>. Adem&aacute;s de ello, existe otra propiedad llamada request.auth, la cual se utiliza para cualquier informaci&oacute;n adicional de la autenticaci&oacute;n, por ejemplo, representar el Token para la Autenticaci&oacute;n.</p>\r\n\r\n<p>Seg&uacute;n los datos de la empresa dedicada al reclutamiento remoto de desarrolladores, los lenguajes de programaci&oacute;n m&aacute;s populares para los proyectos de desarrollo de software de las empresas de TI estadounidenses son React, Python, Node, JavaScript, AWS, Typescript, SQL, Java, Rest y React Native. Aqu&iacute; los tres m&aacute;s populares:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n\t<li><strong>React.js es la habilidad de programaci&oacute;n m&aacute;s demandada</strong>. Se percibe como el m&aacute;s &uacute;til para el desarrollo front-end, representando el 20% de todos los puestos de trabajo y el 14% de las 50 principales habilidades de programaci&oacute;n.</li>\r\n\t<li><strong>Python, el segundo lenguaje de programaci&oacute;n m&aacute;s demandado</strong>. Su popularidad ha alcanzado un m&aacute;ximo hist&oacute;rico, superando a Java, C# e incluso a JavaScript en el &iacute;ndice de trabajos de Turing. Asimismo el 30% de los desarrolladores desea aprender este idioma, lo que lo convierte en el m&aacute;s deseado por tercer a&ntilde;o consecutivo.</li>\r\n\t<li><strong>Node.js es la tercera habilidad de desarrollo m&aacute;s demandada</strong>. Con una cuota del 52%, mantiene su posici&oacute;n como el principal framework web para crear aplicaciones web. Adem&aacute;s, con m&aacute;s de 90.000 estrellas, Node JS es la segunda tecnolog&iacute;a m&aacute;s querida en GitHub.</li>\r\n</ol>\r\n\r\n<p>Turing mencion&oacute; que con frecuencia sus clientes solicitan desarrolladores que dominen m&aacute;s de un lenguaje de programaci&oacute;n, adem&aacute;s de buscar talento familiarizado con m&uacute;ltiples tecnolog&iacute;as. Esta es una lista de las habilidades m&aacute;s demandadas para:</p>\r\n\r\n<p><strong>&ndash;Desarrollo de back-end</strong>. Como el desarrollo de backend se centra en bases de datos, l&oacute;gica de backend, APIs y Servidores; las empresas buscan desarrolladores de backend que posean habilidades como Python, Django, Node.js, REST, Java, Go/Golang, PostgreSQL, PHP, Flask, C#, .NET</p>\r\n\r\n<p><strong>&ndash;Desarrollo front-end</strong>. Como los desarrolladores de front-end crean hermosas experiencias para sitios web y aplicaciones, las empresas buscan desarrolladores de front-end que posean habilidades como React, Typescript, JavaScript, CSS, HTML, Redux, GraphQL, Angular, Vue.js, UI Design y jQuery.</p>\r\n\r\n<p><strong>&ndash;Conocimientos en b</strong><strong>ases de datos</strong>. Todas las empresas utilizan una o varias bases de datos para almacenar y organizar la informaci&oacute;n. La informaci&oacute;n que las empresas almacenan puede ser muy sensible, por lo que deben tener cuidado mientras acceden o manipulan la informaci&oacute;n de la base de datos.</p>\r\n\r\n<p><strong>&mdash;</strong><strong>Habilidades de DevOps</strong>. Seg&uacute;n un estudio reciente, se espera que el tama&ntilde;o del mercado global de DevOps alcance los 12.850 millones de d&oacute;lares para el a&ntilde;o 2025, con una CAGR del 18,60%. Los ingenieros de DevOps m&aacute;s demandados son los que tienen experiencia con NoSQL, MongoDB, Firebase, MySQL y Redis.</p>\r\n\r\n<p><strong>&ndash;Habilidades de desarrollo m&oacute;vil</strong>. Se prev&eacute; que la econom&iacute;a mundial de las aplicaciones genere 21 billones de d&oacute;lares. Para atender esta demanda, las empresas buscan candidatos que tengan experiencia en lenguajes y habilidades de programaci&oacute;n, incluyendo Android, React Native, Swift y Flutter. Tambi&eacute;n est&aacute;n contratando desarrolladores de m&oacute;viles que tengan una buena comprensi&oacute;n del dise&ntilde;o UI/UX.</p>\r\n\r\n<p>MODIFICADO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;!-- head para PC --&gt;\r\n{% extends "home/base_home.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block title %}\r\n{{ home.title }}\r\n{% endblock title %}\r\n\r\n{% block description %}\r\n&lt;meta name="description" content="{{ home.description }}"&gt;\r\n{% endblock description %}\r\n\r\n{% block content %}\r\n\r\n{% include "includes/header.html" %}\r\n\r\n\r\n\t&lt;div class="row justify-content-center"&gt;\r\n\t\t&lt;div class="col-12"&gt;\r\n\t\t\t&lt;div class="aprende"&gt;\r\n\t\t\t\t&lt;p class="display-4 text-center mt-3 mb-4"&gt; Aprende Python, Django y más&lt;/p&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row justify-content-center"&gt;\r\n\t\t\t&lt;div class="col-md-6"&gt;\r\n\t\t\t\t\t&lt;div class="col mb-4 mt-0 portada"&gt;\r\n\t\t\t\t\t\t&lt;div class="card h-100 " &gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' portada.slug %}"&gt;\r\n\t\t\t\t\t\t\t\t&lt;img src="{{ portada.image.url }}" class="card-img-top mt-0" &gt;\r\n\r\n\t\t\t\t\t\t\t&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body"&gt;\r\n\t\t\t\t\t\t&lt;h4 class="card-title"&gt;\r\n\t\t\t\t\t\t\t&lt;a class="h5" href="{% url 'entrada_app:entry-detail' portada.slug %}"&gt;{{ portada.title }}&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;/h4&gt;\r\n\t\t\t\t\t\t&lt;p class=""&gt;{{ portada.resume|truncatechars:150 }}&lt;/p&gt;\r\n\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;div class="col-md-6"&gt;\r\n\t\t\t\t&lt;div class="row row-cols-1 row-cols-md-2 mt-0 justify-content-center entrada"&gt;\r\n\t\t\t\t\t{% for entrada in entradas_home %}\r\n\t\t\t\t\t&lt;div class="col mb-4"&gt;\r\n\t\t\t\t\t\t&lt;div class="card h-100"&gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;\r\n\t\t\t\t\t\t\t\t&lt;img class="img-fluid" src="{{entrada.image.url}}"&gt;\r\n\t\t\t\t\t\t\t&lt;/a&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="card-title"&gt;\r\n\t\t\t\t\t\t\t&lt;a href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;{{ entrada.title | truncatechars:30}}&lt;/a&gt;\r\n\t\t\t\t\t\t\t&lt;/h5&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t{% endfor %}\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row mb-4 justify-content-center  align-items-center"&gt;\r\n\t\t\t\t&lt;div class="col-md-10"&gt;\r\n\r\n\t\t\t\t\t\t&lt;div class="card h-100 shadow bienvenido"&gt;\r\n\t\t\t\t\t\t&lt;div class="card-body bg-warning"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="card-title "&gt;{{ home.about_title }}&lt;/h5&gt;\r\n\t\t\t\t\t\t\t&lt;p class="card-text "&gt;{{ home.about_text }}&lt;/p&gt;\r\n\t\t\t\t&lt;!-- Button trigger modal --&gt;\r\n\t\t\t\t\t\t\t&lt;button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"&gt;\r\n\t\t\t\t\t\t\t\tSuscribete\r\n\t\t\t\t\t\t\t  &lt;/button&gt;\r\n\r\n\t\t\t\t\t\t&lt;/div&gt;\t\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;!-- Modal --&gt;\r\n\t\t\t\t\t&lt;div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"&gt;\r\n\t\t\t\t\t\t&lt;div class="modal-dialog modal-dialog-centered " role="document"&gt;\r\n\t\t\t\t\t\t&lt;div class="modal-content text-center"&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-header"&gt;\r\n\t\t\t\t\t\t\t&lt;h5 class="modal-title" id="exampleModalLabel"&gt; Ingresa tu Correo&lt;/h5&gt;\r\n\t\t\t\t\t\t\t&lt;form method="post" action="{% url 'home_app:add-suscription' %}"&gt;{% csrf_token %}\r\n\t\t\t\t\t\t\t&lt;button type="button" class="close" data-dismiss="modal" aria-label="Close"&gt;\r\n\t\t\t\t\t\t\t\t&lt;span aria-hidden="true"&gt;&amp;times;&lt;/span&gt;\r\n\t\t\t\t\t\t\t&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-body"&gt;\r\n\t\t\t\t\t\t\t&lt;br&gt;\r\n\t\t\t\t\t\t\t{{form.email}}\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t\t&lt;div class="modal-footer"&gt;\r\n\t\t\t\t\t\t\t&lt;button type="submit" class="btn btn-success ml-auto"&gt;Suscribirme&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;button type="button" class="btn btn-danger mr-auto" data-dismiss="modal"&gt;Salir&lt;/button&gt;\r\n\t\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t&lt;/form&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\r\n\t&lt;div class="row mb-4 justify-content-center "&gt;\r\n\t\t&lt;div class="col-12"&gt;\r\n\r\n\t\t\t&lt;h5 class="mb-4 display-4 text-center articulos"&gt;Articulos Recientes&lt;/h5&gt;\r\n\t\t&lt;/div&gt;\r\n\t&lt;/div&gt;\r\n\t&lt;div class="row  row-cols-1 row-cols-md-4 justify-content-center articulos_recientes" &gt;\r\n\t\t\t{% for entrada in entradas_recientes %}\r\n\t\t\t&lt;div class="col mb-4" &gt;\r\n\t\t\t\t&lt;div class="card h-100"&gt;\r\n\t\t\t\t\t&lt;img src="{{ entrada.image.url }}" "&gt;\r\n\t\t\t\t\t&lt;div class="card-body" &gt;\r\n\t\t\t\t\t\t&lt;h5 class="card-title"&gt;\r\n\t\t\t\t\t\t&lt;a  href="{% url 'entrada_app:entry-detail' entrada.slug %}"&gt;{{ entrada.title | truncatechars:40}}&lt;/a&gt;\r\n\t\t\t\t\t&lt;/h5&gt;\r\n\t\t\t\t\t&lt;p class="card-text d-none d-sm-none d-md-block"&gt;{{ entrada.resume | truncatechars:40}}&lt;/p&gt;\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t\t&lt;div class="card-footer"&gt;\r\n\t\t\t\t\t\t&lt;small class="text-muted"&gt;Creado: {{ entrada.created }}&lt;/small&gt;\r\n\r\n\t\t\t\t\t&lt;/div&gt;\r\n\t\t\t\t&lt;/div&gt;\r\n\t\t\t&lt;/div&gt;\r\n\t\t\t{% endfor %}\r\n\t&lt;/div&gt;\r\n\r\n\t&lt;div class="row justify-content-center  mt-4"&gt;\r\n\t\t&lt;!-- &lt;article class="col-12 col-md-6 col-lg-3 mb-3 mb-lg-0"&gt; --&gt;\r\n\t\t&lt;div class="col-8 text-center frase"&gt;\r\n\t\t\t\t&lt;blockquote class="blockquote"&gt;\r\n\t\t\t\t&lt;p class=" h7 text-primary"&gt;\r\n\t\t\t\t\t“No lo sé, procuro no cargar mi memoria con datos que puedo encontrar en cualquier manual"\r\n\t\t\t\t&lt;/p&gt;\r\n\t\t\t\t&lt;footer class="blockquote-footer  h6"&gt;\r\n\t\t\t\t\tAlbert Einstein \r\n\t\t\t\t&lt;/footer&gt;\r\n\t\t\t\t&lt;p class="h8"&gt;[Cuando Thomas Alva Edison le preguntó la velocidad del sonido]&lt;/p&gt;\r\n\t\t\t\t&lt;/blockquote&gt;\r\n\t\t&lt;/div&gt;\r\n\t\t&lt;div class="col-4 mt-4 mb-4 albert"&gt;\r\n\t\t\t&lt;img class="img-thumbnail" style="height: 200px;" src="static/img/002.jpg" alt=""&gt;\r\n\t\t&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n{% include "includes/footer.html" %}\r\n\r\n{% endblock content %}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;!-- head para PC --&gt;\r\n{% extends "home/base_home.html" %}\r\n\r\n{% load  static %}\r\n\r\n{% block title %}\r\n{{ home.title }}\r\n{% endblock title %}\r\n\r\n{% block description %}\r\n&lt;meta name="description" content="{{ home.description }}"&gt;\r\n{% endblock description %}\r\n\r\n{% block content %}\r\n\r\n{% include "includes/header.html" %}\r\n\r\n{% include "includes/footer.html" %}\r\n\r\n{% endblock content %}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/desarrolladores-780x470.jpg	t	t	habilidades-mas-demandadas-por-las-empresas-internacionales-de-ti-empresas-internacionales-de-ti-837	1	1
4	2022-11-21 18:03:09.285198-05	2022-11-27 19:26:23.622606-05	Habilidades más demandadas por las empresas internacionales de TI	Para entender los lenguajes de programación y las habilidades tecnológicas que necesitan las empresas y que representan una oportunidad para los desarrolladores mexicanos...	<p>3</p>	t	Entry/registro-y-autenticacion-con-dja.2e16d0ba.fill-2000x1000_rJ2NJV9.jpg	f	t	habilidades-mas-demandadas-por-las-empresas-internacionales-de-ti-69983	2	1
31	2022-12-09 16:31:16.900702-05	2022-12-10 20:57:16.755911-05	Generar y Restaurar Backup Postgresql 12 en Windows 10	Generar y Restaurar Backup Postgresql 12 en Windows 10	<p>Para no tener problemes es mejor abrir el <strong>cmd modo administrador </strong>y ejecutamos el siguiente comando</p>\r\n\r\n<p>Primero ir a la siguiente ruta en el cmd</p>\r\n\r\n<pre>\r\n<code>C:\\Program Files\\PostgreSQL\\12\\bin</code></pre>\r\n\r\n<p>Luego ejecutamos el siguiente comando</p>\r\n\r\n<pre>\r\n<code>pg_dump -U postgres -W -h localhost blogdb&gt; copia_blogdb.sql</code></pre>\r\n\r\n<p>poner la contrase&ntilde;a del postgresql</p>\r\n\r\n<p><img src="/media/uploads/2022/12/09/image_q6GjSiU.png" /></p>\r\n\r\n<p>Para restaurar la base de datos debemos acceder al shell de postgressql y poner el password</p>\r\n\r\n<p><img src="/media/uploads/2022/12/09/image_Qvluz8t.png" /></p>\r\n\r\n<p>ejecutar los sigueintes comandos</p>\r\n\r\n<pre>\r\n<code>\\c</code></pre>\r\n\r\n<pre>\r\n<code>\\l</code></pre>\r\n\r\n<p>con eso nos da privilegios y no slista las base de datos que existen</p>\r\n\r\n<p>para restaurar la bd creamos una base de datos con el nombre blogdb(si ya existe borramos y creamos de nuevo)</p>\r\n\r\n<p>en postgresql usamos el siguiente comando</p>\r\n\r\n<pre>\r\n<code>postgres=# create database blogdb;</code></pre>\r\n\r\n<p>luego abrimso el cmd vamos a la ruta</p>\r\n\r\n<pre>\r\n<code>C:\\Program Files\\PostgreSQL\\12\\bin</code></pre>\r\n\r\n<p>y ejecutamos el sigueinte comando para restaurar la bd</p>\r\n\r\n<pre>\r\n<code>psql -h localhost -U postgres -p 5432 blogdb &lt; copia_blogdb.sql</code></pre>\r\n\r\n<p>si estamos trabajando con django y queremos restauara la bd</p>\r\n\r\n<p>primero borramos los archivos q se generan dentro de la carpeta migrations de cada aplicacion</p>\r\n\r\n<p>luego activamos el entorno virtual y ejecutamos los siguientes comandos.</p>\r\n\r\n<pre>\r\n<code>python manage.py makemigrations</code></pre>\r\n\r\n<pre>\r\n<code>python manage.py migrate --fake</code></pre>\r\n\r\n<p>y finalmente el</p>\r\n\r\n<pre>\r\n<code>python manage.py runserver</code></pre>\r\n\r\n<p>&nbsp;</p>	t	Entry/Como-listar-bases-de-datos-y-tablas-en-PostgreSQL-usando-psql.jpg	f	t	generar-y-restaurar-backup-postgresql-12-en-windows-10-75436	2	1
30	2022-12-08 01:29:49.120044-05	2022-12-09 14:32:46.780725-05	GIT - Subir un Repositorio - BASICO	GIT - Subir un Repositorio GIT	<p>Primero creamos una cuenta de github luego creamos un respositorio, luego descargamos el archivo</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_WOuXa9m.png" style="height:39%; width:40%" /></p>\r\n\r\n<p>y ejecutamos el comando en la carpeta que creamos en este ejemplo &quot;blog&quot;:</p>\r\n\r\n<pre>\r\n<code>$ git clone https://github.com/roberthbardales/blog.git\r\n</code></pre>\r\n\r\n<p><strong>Para Subir Archivos</strong></p>\r\n\r\n<p>Primero para ver si hay cambios ejecutamos&nbsp;</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_XrsSMRO.png" style="height:53%; width:83%" /></p>\r\n\r\n<pre>\r\n<code>$ git add .\r\n</code></pre>\r\n\r\n<p>luego hacemos el commit</p>\r\n\r\n<pre>\r\n<code>$ git commit -m "git 8 12 2022"\r\n</code></pre>\r\n\r\n<p>para saber donde guardaremos el repositorio, ahi encontraremos el origin</p>\r\n\r\n<pre>\r\n<code>$ git remote -v\r\n</code></pre>\r\n\r\n<p>ahora hacemos el push, al hacer el push puede que te pida que te loguees</p>\r\n\r\n<pre>\r\n<code>$ git push origin\r\n</code></pre>\r\n\r\n<p>aca se ve un ejemplo de loquearse por comandos</p>\r\n\r\n<p><img src="/media/uploads/2022/12/08/image_nOERbqn.png" style="height:43%; width:67%" /></p>	t	Entry/1_CWFkh5z8oa6dZfn5_gkKKQ.webp	f	t	git-subir-un-repositorio-basico-52366	3	1
32	2022-12-09 16:47:14.125594-05	2022-12-09 16:47:14.321593-05	Crear Base de datos y eliminarlos Postgresql 12	Crear Base de datos y eliminarlos Postgresql 12	<p>Crear Base de datos y eliminarlos Postgresql 12</p>	t	Entry/Como-listar-bases-de-datos-y-tablas-en-PostgreSQL-usando-psql_6V8AKHb.jpg	f	t	crear-base-de-datos-y-eliminarlos-postgresql-12-60434	2	1
\.


--
-- Data for Name: entrada_entry_tag; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_entry_tag (id, entry_id, tag_id) FROM stdin;
1	1	1
4	4	1
32	30	1
33	31	1
34	32	2
\.


--
-- Data for Name: entrada_tag; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.entrada_tag (id, created, modified, name) FROM stdin;
1	2022-11-21 14:24:24.904966-05	2022-11-21 14:24:24.904966-05	Programacion en Python
2	2022-12-05 17:11:31.77834-05	2022-12-05 17:11:31.77834-05	BD Postgresql
3	2022-12-05 17:11:36.336588-05	2022-12-05 17:11:36.336588-05	VUE JS
\.


--
-- Data for Name: favoritos_favorites; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.favoritos_favorites (id, created, modified, entry_id, user_id) FROM stdin;
72	2022-12-09 00:06:14.936073-05	2022-12-09 00:06:14.936073-05	30	1
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
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: neunapp
--

COPY public.users_user (id, password, last_login, is_superuser, email, full_name, ocupation, genero, date_birth, is_staff, is_active) FROM stdin;
1	pbkdf2_sha256$180000$2GkcmhgZlt90$pPZ7SHcymp77drtLGi19Vi6z5Lrgiyp1eivCkGDhwmM=	2022-12-09 19:12:33.336043-05	t	roberthbardales@gmail.com	Russell Bardales			\N	t	t
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 68, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: entrada_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_category_id_seq', 8, true);


--
-- Name: entrada_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_entry_id_seq', 34, true);


--
-- Name: entrada_entry_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_entry_tag_id_seq', 36, true);


--
-- Name: entrada_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.entrada_tag_id_seq', 3, true);


--
-- Name: favoritos_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.favoritos_favorites_id_seq', 73, true);


--
-- Name: home_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_contact_id_seq', 5, true);


--
-- Name: home_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_home_id_seq', 1, true);


--
-- Name: home_suscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.home_suscribers_id_seq', 9, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neunapp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 3, true);


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
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry entrada_entry_category_id_e607aeaf_fk_entrada_category_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry
    ADD CONSTRAINT entrada_entry_category_id_e607aeaf_fk_entrada_category_id FOREIGN KEY (category_id) REFERENCES public.entrada_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry_tag entrada_entry_tag_entry_id_b96785c0_fk_entrada_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry_tag
    ADD CONSTRAINT entrada_entry_tag_entry_id_b96785c0_fk_entrada_entry_id FOREIGN KEY (entry_id) REFERENCES public.entrada_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry_tag entrada_entry_tag_tag_id_f1163daa_fk_entrada_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry_tag
    ADD CONSTRAINT entrada_entry_tag_tag_id_f1163daa_fk_entrada_tag_id FOREIGN KEY (tag_id) REFERENCES public.entrada_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entrada_entry entrada_entry_user_id_6026c573_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.entrada_entry
    ADD CONSTRAINT entrada_entry_user_id_6026c573_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favoritos_favorites favoritos_favorites_entry_id_6d78d273_fk_entrada_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_entry_id_6d78d273_fk_entrada_entry_id FOREIGN KEY (entry_id) REFERENCES public.entrada_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favoritos_favorites favoritos_favorites_user_id_08e04514_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.favoritos_favorites
    ADD CONSTRAINT favoritos_favorites_user_id_08e04514_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: neunapp
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

