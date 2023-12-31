--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-1.pgdg20.04+1)

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
-- Name: article_member; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.article_member (
    id bigint NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL
);


ALTER TABLE public.article_member OWNER TO vmdo_user;

--
-- Name: article_member_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.article_member ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.article_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: articles_article; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.articles_article (
    id bigint NOT NULL,
    titre character varying(255) NOT NULL,
    description text,
    content text,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.articles_article OWNER TO vmdo_user;

--
-- Name: articles_article_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.articles_article ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.articles_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO vmdo_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO vmdo_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO vmdo_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO vmdo_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO vmdo_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO vmdo_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: base_postfile; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.base_postfile (
    id bigint NOT NULL,
    lng character varying(20) NOT NULL,
    ext_name character varying(20) NOT NULL,
    file character varying(100),
    content text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id_id integer NOT NULL
);


ALTER TABLE public.base_postfile OWNER TO vmdo_user;

--
-- Name: base_postfile_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.base_postfile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.base_postfile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: base_posttexte; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.base_posttexte (
    id bigint NOT NULL,
    lng character varying(20) NOT NULL,
    content text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id_id integer NOT NULL
);


ALTER TABLE public.base_posttexte OWNER TO vmdo_user;

--
-- Name: base_posttexte_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.base_posttexte ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.base_posttexte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: base_profile; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.base_profile (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.base_profile OWNER TO vmdo_user;

--
-- Name: base_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.base_profile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.base_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: base_uploadimage; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.base_uploadimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    author_id_id integer NOT NULL
);


ALTER TABLE public.base_uploadimage OWNER TO vmdo_user;

--
-- Name: base_uploadimage_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.base_uploadimage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.base_uploadimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: courses_coursemodels; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.courses_coursemodels (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    description character varying(200) NOT NULL,
    link character varying(200) NOT NULL,
    author character varying(200) NOT NULL,
    published boolean NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "editeAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.courses_coursemodels OWNER TO vmdo_user;

--
-- Name: courses_coursemodels_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.courses_coursemodels ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.courses_coursemodels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: vmdo_user
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


ALTER TABLE public.django_admin_log OWNER TO vmdo_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO vmdo_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO vmdo_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO vmdo_user;

--
-- Name: project_projetmodel; Type: TABLE; Schema: public; Owner: vmdo_user
--

CREATE TABLE public.project_projetmodel (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    duration text,
    "photoUrl" character varying(100),
    "logoUrl" character varying(100),
    link character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "editeAt" timestamp with time zone NOT NULL,
    author character varying(200) NOT NULL,
    "sponsorLogoUrl" character varying(100)
);


ALTER TABLE public.project_projetmodel OWNER TO vmdo_user;

--
-- Name: project_projetmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: vmdo_user
--

ALTER TABLE public.project_projetmodel ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.project_projetmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: article_member; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.article_member (id, firstname, lastname) FROM stdin;
\.


--
-- Data for Name: articles_article; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.articles_article (id, titre, description, content, image, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: vmdo_user
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
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add profile	7	add_profile
26	Can change profile	7	change_profile
27	Can delete profile	7	delete_profile
28	Can view profile	7	view_profile
29	Can add post file	8	add_postfile
30	Can change post file	8	change_postfile
31	Can delete post file	8	delete_postfile
32	Can view post file	8	view_postfile
33	Can add post texte	9	add_posttexte
34	Can change post texte	9	change_posttexte
35	Can delete post texte	9	delete_posttexte
36	Can view post texte	9	view_posttexte
37	Can add upload image	10	add_uploadimage
38	Can change upload image	10	change_uploadimage
39	Can delete upload image	10	delete_uploadimage
40	Can view upload image	10	view_uploadimage
41	Can add member	11	add_member
42	Can change member	11	change_member
43	Can delete member	11	delete_member
44	Can view member	11	view_member
45	Can add article	12	add_article
46	Can change article	12	change_article
47	Can delete article	12	delete_article
48	Can view article	12	view_article
49	Can add projet model	13	add_projetmodel
50	Can change projet model	13	change_projetmodel
51	Can delete projet model	13	delete_projetmodel
52	Can view projet model	13	view_projetmodel
53	Can add course models	14	add_coursemodels
54	Can change course models	14	change_coursemodels
55	Can delete course models	14	delete_coursemodels
56	Can view course models	14	view_coursemodels
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: base_postfile; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.base_postfile (id, lng, ext_name, file, content, created_at, author_id_id) FROM stdin;
\.


--
-- Data for Name: base_posttexte; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.base_posttexte (id, lng, content, created_at, author_id_id) FROM stdin;
\.


--
-- Data for Name: base_profile; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.base_profile (id, created_at, user_id) FROM stdin;
\.


--
-- Data for Name: base_uploadimage; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.base_uploadimage (id, image, created_at, author_id_id) FROM stdin;
\.


--
-- Data for Name: courses_coursemodels; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.courses_coursemodels (id, title, description, link, author, published, "createdAt", "editeAt") FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	base	profile
8	base	postfile
9	base	posttexte
10	base	uploadimage
11	article	member
12	articles	article
13	project	projetmodel
14	courses	coursemodels
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-07-20 14:18:00.521661+01
2	auth	0001_initial	2023-07-20 14:18:01.045798+01
3	admin	0001_initial	2023-07-20 14:18:01.20351+01
4	admin	0002_logentry_remove_auto_add	2023-07-20 14:18:01.224896+01
5	admin	0003_logentry_add_action_flag_choices	2023-07-20 14:18:01.245721+01
6	article	0001_initial	2023-07-20 14:18:01.305248+01
7	articles	0001_initial	2023-07-20 14:18:01.518835+01
8	contenttypes	0002_remove_content_type_name	2023-07-20 14:18:01.550131+01
9	auth	0002_alter_permission_name_max_length	2023-07-20 14:18:01.593045+01
10	auth	0003_alter_user_email_max_length	2023-07-20 14:18:01.631114+01
11	auth	0004_alter_user_username_opts	2023-07-20 14:18:01.647937+01
12	auth	0005_alter_user_last_login_null	2023-07-20 14:18:01.671769+01
13	auth	0006_require_contenttypes_0002	2023-07-20 14:18:01.685434+01
14	auth	0007_alter_validators_add_error_messages	2023-07-20 14:18:01.705887+01
15	auth	0008_alter_user_username_max_length	2023-07-20 14:18:01.776037+01
16	auth	0009_alter_user_last_name_max_length	2023-07-20 14:18:01.797898+01
17	auth	0010_alter_group_name_max_length	2023-07-20 14:18:01.820052+01
18	auth	0011_update_proxy_permissions	2023-07-20 14:18:01.836367+01
19	auth	0012_alter_user_first_name_max_length	2023-07-20 14:18:01.847229+01
20	base	0001_initial	2023-07-20 14:18:01.991666+01
21	base	0002_postfile_posttexte_delete_post	2023-07-20 14:18:02.185131+01
22	base	0003_alter_postfile_file	2023-07-20 14:18:02.210511+01
23	base	0004_alter_postfile_file	2023-07-20 14:18:02.221944+01
24	base	0005_uploadimage	2023-07-20 14:18:02.286028+01
25	base	0006_remove_uploadimage_caption	2023-07-20 14:18:02.303867+01
26	courses	0001_initial	2023-07-20 14:18:02.365819+01
27	project	0001_initial	2023-07-20 14:18:02.422731+01
28	project	0002_projetmodel_sponsorlogourl_alter_projetmodel_link	2023-07-20 14:18:02.439624+01
29	sessions	0001_initial	2023-07-20 14:18:02.559426+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: project_projetmodel; Type: TABLE DATA; Schema: public; Owner: vmdo_user
--

COPY public.project_projetmodel (id, title, description, duration, "photoUrl", "logoUrl", link, "createdAt", "editeAt", author, "sponsorLogoUrl") FROM stdin;
\.


--
-- Name: article_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.article_member_id_seq', 1, false);


--
-- Name: articles_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.articles_article_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: base_postfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.base_postfile_id_seq', 1, false);


--
-- Name: base_posttexte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.base_posttexte_id_seq', 1, false);


--
-- Name: base_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.base_profile_id_seq', 1, false);


--
-- Name: base_uploadimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.base_uploadimage_id_seq', 1, false);


--
-- Name: courses_coursemodels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.courses_coursemodels_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: project_projetmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vmdo_user
--

SELECT pg_catalog.setval('public.project_projetmodel_id_seq', 1, false);


--
-- Name: article_member article_member_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.article_member
    ADD CONSTRAINT article_member_pkey PRIMARY KEY (id);


--
-- Name: articles_article articles_article_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: base_postfile base_postfile_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_postfile
    ADD CONSTRAINT base_postfile_pkey PRIMARY KEY (id);


--
-- Name: base_posttexte base_posttexte_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_posttexte
    ADD CONSTRAINT base_posttexte_pkey PRIMARY KEY (id);


--
-- Name: base_profile base_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_profile
    ADD CONSTRAINT base_profile_pkey PRIMARY KEY (id);


--
-- Name: base_profile base_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_profile
    ADD CONSTRAINT base_profile_user_id_key UNIQUE (user_id);


--
-- Name: base_uploadimage base_uploadimage_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_uploadimage
    ADD CONSTRAINT base_uploadimage_pkey PRIMARY KEY (id);


--
-- Name: courses_coursemodels courses_coursemodels_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.courses_coursemodels
    ADD CONSTRAINT courses_coursemodels_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: project_projetmodel project_projetmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.project_projetmodel
    ADD CONSTRAINT project_projetmodel_pkey PRIMARY KEY (id);


--
-- Name: articles_article_created_by_id_b1067734; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX articles_article_created_by_id_b1067734 ON public.articles_article USING btree (created_by_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: base_postfile_author_id_id_b3784323; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX base_postfile_author_id_id_b3784323 ON public.base_postfile USING btree (author_id_id);


--
-- Name: base_posttexte_author_id_id_48420365; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX base_posttexte_author_id_id_48420365 ON public.base_posttexte USING btree (author_id_id);


--
-- Name: base_uploadimage_author_id_id_29ea7f90; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX base_uploadimage_author_id_id_29ea7f90 ON public.base_uploadimage USING btree (author_id_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: vmdo_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: articles_article articles_article_created_by_id_b1067734_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.articles_article
    ADD CONSTRAINT articles_article_created_by_id_b1067734_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: base_postfile base_postfile_author_id_id_b3784323_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_postfile
    ADD CONSTRAINT base_postfile_author_id_id_b3784323_fk_auth_user_id FOREIGN KEY (author_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: base_posttexte base_posttexte_author_id_id_48420365_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_posttexte
    ADD CONSTRAINT base_posttexte_author_id_id_48420365_fk_auth_user_id FOREIGN KEY (author_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: base_profile base_profile_user_id_8081352f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_profile
    ADD CONSTRAINT base_profile_user_id_8081352f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: base_uploadimage base_uploadimage_author_id_id_29ea7f90_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.base_uploadimage
    ADD CONSTRAINT base_uploadimage_author_id_id_29ea7f90_fk_auth_user_id FOREIGN KEY (author_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: vmdo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

