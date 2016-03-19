--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO recipe;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO recipe;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO recipe;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO recipe;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO recipe;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO recipe;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO recipe;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO recipe;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO recipe;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO recipe;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO recipe;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO recipe;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO recipe;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO recipe;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO recipe;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO recipe;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO recipe;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO recipe;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO recipe;

--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE ingredients (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE ingredients OWNER TO recipe;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingredients_id_seq OWNER TO recipe;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE ingredients_id_seq OWNED BY ingredients.id;


--
-- Name: ingredients_recipes; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE ingredients_recipes (
    id integer NOT NULL,
    ingredient_id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE ingredients_recipes OWNER TO recipe;

--
-- Name: ingredients_recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE ingredients_recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingredients_recipes_id_seq OWNER TO recipe;

--
-- Name: ingredients_recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE ingredients_recipes_id_seq OWNED BY ingredients_recipes.id;


--
-- Name: ingredients_variants; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE ingredients_variants (
    id integer NOT NULL,
    ingredient_id integer NOT NULL,
    variantofingredient_id integer NOT NULL
);


ALTER TABLE ingredients_variants OWNER TO recipe;

--
-- Name: ingredients_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE ingredients_variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingredients_variants_id_seq OWNER TO recipe;

--
-- Name: ingredients_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE ingredients_variants_id_seq OWNED BY ingredients_variants.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE recipes (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE recipes OWNER TO recipe;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recipes_id_seq OWNER TO recipe;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE recipes_id_seq OWNED BY recipes.id;


--
-- Name: variants_of_ingredient; Type: TABLE; Schema: public; Owner: recipe
--

CREATE TABLE variants_of_ingredient (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE variants_of_ingredient OWNER TO recipe;

--
-- Name: variants_of_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: recipe
--

CREATE SEQUENCE variants_of_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE variants_of_ingredient_id_seq OWNER TO recipe;

--
-- Name: variants_of_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: recipe
--

ALTER SEQUENCE variants_of_ingredient_id_seq OWNED BY variants_of_ingredient.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients ALTER COLUMN id SET DEFAULT nextval('ingredients_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_recipes ALTER COLUMN id SET DEFAULT nextval('ingredients_recipes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_variants ALTER COLUMN id SET DEFAULT nextval('ingredients_variants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY recipes ALTER COLUMN id SET DEFAULT nextval('recipes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY variants_of_ingredient ALTER COLUMN id SET DEFAULT nextval('variants_of_ingredient_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add log entry	6	add_logentry
17	Can change log entry	6	change_logentry
18	Can delete log entry	6	delete_logentry
19	Can add Рецепт	7	add_recipe
20	Can change Рецепт	7	change_recipe
21	Can delete Рецепт	7	delete_recipe
22	Can add Ингридиент	8	add_ingredient
23	Can change Ингридиент	8	change_ingredient
24	Can delete Ингридиент	8	delete_ingredient
25	Can add Вариант ингридиента	9	add_variantofingredient
26	Can change Вариант ингридиента	9	change_variantofingredient
27	Can delete Вариант ингридиента	9	delete_variantofingredient
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$bqF511rzyEqQ$SaAd/BRYVO0+UP//VHvx/8F3iUMe+eXJgElvukShYp4=	2016-03-19 10:17:23.553547+05	t	user				t	t	2016-03-19 10:17:14.813411+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-03-19 10:18:01.825215+05	1	Recipe object	1		7	1
2	2016-03-19 10:23:25.276749+05	1	масло оливковое	1		8	1
3	2016-03-19 10:23:46.286751+05	1	Масло оливковое "Альфа"	1		9	1
4	2016-03-19 10:24:01.70068+05	1	масло оливковое	2	Изменен variants.	8	1
5	2016-03-19 10:25:12.367584+05	2	помидоры черри	1		8	1
6	2016-03-19 10:38:31.550729+05	2	Масло оливковое "Бета"	1		9	1
7	2016-03-19 10:38:59.40275+05	3	Помидоры черри "Альфа"	1		9	1
8	2016-03-19 10:40:21.303687+05	3	сыр моцарелла	1		8	1
9	2016-03-19 10:40:40.526353+05	4	Сыр моцарелла "Альфа"	1		9	1
10	2016-03-19 10:40:59.277267+05	5	Сыр моцарелла "Бета"	1		9	1
11	2016-03-19 10:41:05.984952+05	3	сыр моцарелла	2	Изменен variants.	8	1
12	2016-03-19 10:41:45.209742+05	4	крабовые палочки	1		8	1
13	2016-03-19 10:42:00.736047+05	6	Крабовые палочки "Альфа"	1		9	1
14	2016-03-19 10:42:17.09013+05	7	Крабовые палочки "Бета"	1		9	1
15	2016-03-19 10:42:19.594522+05	4	крабовые палочки	2	Изменен variants.	8	1
16	2016-03-19 10:43:22.784588+05	5	салат	1		8	1
17	2016-03-19 10:43:29.129342+05	8	Салат "Романо"	1		9	1
18	2016-03-19 10:43:38.704872+05	5	салат	2	Изменен variants.	8	1
19	2016-03-19 10:44:06.377869+05	6	Соус соевый 	1		8	1
20	2016-03-19 10:44:18.57696+05	9	Соус соевый "Альфа"	1		9	1
21	2016-03-19 10:44:30.365523+05	10	Соус соевый "Бета"	1		9	1
22	2016-03-19 10:44:32.88443+05	6	Соус соевый 	2	Изменен variants.	8	1
23	2016-03-19 10:44:44.972995+05	5	Салат	2	Изменен name.	8	1
24	2016-03-19 10:44:53.203653+05	4	Крабовые палочки	2	Изменен name.	8	1
25	2016-03-19 10:45:08.637806+05	3	Сыр моцарелла	2	Изменен name.	8	1
26	2016-03-19 10:45:15.884536+05	2	Помидоры черри	2	Изменен name.	8	1
27	2016-03-19 10:45:25.852921+05	1	Масло оливковое	2	Изменен name.	8	1
28	2016-03-19 10:46:24.365324+05	2	Быстрый салат из маринованных артишоков	1		7	1
29	2016-03-19 10:47:45.560476+05	7	артишок	1		8	1
30	2016-03-19 10:48:02.948812+05	7	артишок	2	Изменен recipes.	8	1
31	2016-03-19 10:48:31.060679+05	11	Артишок "Альфа"	1		9	1
32	2016-03-19 10:48:43.26666+05	12	Артишок "Бета"	1		9	1
33	2016-03-19 10:48:47.719279+05	7	Артишок	2	Изменен name, recipes и variants.	8	1
34	2016-03-19 10:49:16.754289+05	2	Помидоры черри	2	Изменен recipes.	8	1
35	2016-03-19 10:49:37.10348+05	8	Мята	1		8	1
36	2016-03-19 10:50:11.076008+05	9	Лук зеленый	1		8	1
37	2016-03-19 10:51:04.534836+05	3	Крабовый салат с огурцом и зеленым луком	1		7	1
38	2016-03-19 10:52:06.098278+05	10	Соль	1		8	1
39	2016-03-19 10:52:22.936428+05	13	Соль "Повареная"	1		9	1
40	2016-03-19 10:53:05.640131+05	14	Соль "Балтийская"	1		9	1
41	2016-03-19 10:53:33.278817+05	11	Огурец	1		8	1
42	2016-03-19 10:53:49.012831+05	15	Огурец "Тепличный"	1		9	1
43	2016-03-19 10:54:00.571705+05	16	Огурец "Зозуля"	1		9	1
44	2016-03-19 10:54:07.425058+05	11	Огурец	2	Изменен variants.	8	1
45	2016-03-19 10:55:06.559369+05	4	Крабовые палочки	2	Изменен recipes.	8	1
46	2016-03-19 10:55:29.187567+05	12	Майонез	1		8	1
47	2016-03-19 10:55:55.014731+05	17	Майонез "Провансаль ЕЖК"	1		9	1
48	2016-03-19 10:56:10.12272+05	18	Майонез "Ряба"	1		9	1
49	2016-03-19 10:56:55.340033+05	13	Яйцо куриное	1		8	1
50	2016-03-19 10:57:06.232288+05	19	Яйцо куриное "Пышминское"	1		9	1
51	2016-03-19 10:57:18.488093+05	20	Яйцо куриное "Среднеуральское"	1		9	1
52	2016-03-19 10:57:21.89285+05	13	Яйцо куриное	2	Изменен variants.	8	1
53	2016-03-19 10:58:12.679534+05	14	Укроп	1		8	1
54	2016-03-19 13:28:35.130077+05	1	Романо с моцареллой и черри Cалат	2	Изменен name.	7	1
55	2016-03-19 13:28:57.483766+05	1	Романо с моцареллой и черри cалат	2	Изменен name.	7	1
56	2016-03-19 13:35:19.804614+05	1	Романо с моцареллой и черри	2	Изменен name.	7	1
57	2016-03-19 13:36:15.420886+05	1	Романо с моцареллой и черри салат	2	Изменен name.	7	1
58	2016-03-19 13:36:34.908144+05	1	Романо с моцареллой и черри	2	Изменен name.	7	1
59	2016-03-19 16:44:59.860251+05	4	Фруктовый салат с арбузом и сливами	1		7	1
60	2016-03-19 16:45:25.415805+05	15	корица	1		8	1
61	2016-03-19 16:45:45.22856+05	16	Сливы	1		8	1
62	2016-03-19 16:46:07.894143+05	17	Мёд	1		8	1
63	2016-03-19 16:46:23.177445+05	18	Арбуз	1		8	1
64	2016-03-19 16:46:37.667507+05	15	Корица	2	Изменен name.	8	1
65	2016-03-19 16:47:32.628595+05	5	Салат с консервированным лососем и сельдереем	1		7	1
66	2016-03-19 16:48:43.770946+05	19	Лимонный сок	1		8	1
67	2016-03-19 16:49:20.611386+05	20	Стебель сельдерея	1		8	1
68	2016-03-19 16:50:28.230534+05	10	Соль	2	Изменен recipes.	8	1
69	2016-03-19 16:50:34.040866+05	12	Майонез	2	Изменен recipes.	8	1
70	2016-03-19 16:50:42.641111+05	14	Укроп	2	Изменен recipes.	8	1
71	2016-03-19 16:51:22.804908+05	6	Салат «Мимоза» с рыбой	1		7	1
72	2016-03-19 16:52:32.220709+05	21	Сыр "Российский"	1		8	1
73	2016-03-19 16:53:09.255164+05	22	Лук репчатый	1		8	1
74	2016-03-19 16:53:26.254736+05	13	Яйцо куриное	2	Изменен recipes.	8	1
75	2016-03-19 16:53:54.647286+05	23	Рыба	1		8	1
76	2016-03-19 16:54:00.835167+05	12	Майонез	2	Изменен recipes.	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 76, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	admin	logentry
7	recipes	recipe
8	recipes	ingredient
9	recipes	variantofingredient
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-03-19 10:07:53.668269+05
2	contenttypes	0002_remove_content_type_name	2016-03-19 10:07:53.752148+05
3	auth	0001_initial	2016-03-19 10:07:54.177395+05
4	auth	0002_alter_permission_name_max_length	2016-03-19 10:07:54.244833+05
5	auth	0003_alter_user_email_max_length	2016-03-19 10:07:54.275776+05
6	auth	0004_alter_user_username_opts	2016-03-19 10:07:54.305174+05
7	auth	0005_alter_user_last_login_null	2016-03-19 10:07:54.34207+05
8	auth	0006_require_contenttypes_0002	2016-03-19 10:07:54.347683+05
9	admin	0001_initial	2016-03-19 10:08:44.525338+05
10	recipes	0001_initial	2016-03-19 10:08:44.833854+05
11	sessions	0001_initial	2016-03-19 10:08:44.925102+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
oz6kxv5qd4hslk6iw3sm0wa5o6nfbtkd	ZjVhM2VlZWRiNmYyZTZiMmIyMDViZDNmNTliNjVlMDlmZmI2MDcxZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiZmM0NjlmZjg1YzBlMDAzMjM2ZWVkY2ExODc0ZjJjOTdhYmNkODU2In0=	2016-04-02 10:17:23.560344+05
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY ingredients (id, name) FROM stdin;
6	Соус соевый 
5	Салат
3	Сыр моцарелла
1	Масло оливковое
7	Артишок
2	Помидоры черри
8	Мята
9	Лук зеленый
11	Огурец
4	Крабовые палочки
16	Сливы
17	Мёд
18	Арбуз
15	Корица
19	Лимонный сок
20	Стебель сельдерея
10	Соль
14	Укроп
21	Сыр "Российский"
22	Лук репчатый
13	Яйцо куриное
23	Рыба
12	Майонез
\.


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('ingredients_id_seq', 23, true);


--
-- Data for Name: ingredients_recipes; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY ingredients_recipes (id, ingredient_id, recipe_id) FROM stdin;
11	6	1
12	5	1
14	3	1
16	1	1
20	7	2
21	2	1
22	2	2
23	8	2
24	9	2
27	11	3
28	4	1
29	4	3
35	16	4
36	17	4
37	18	4
38	15	4
39	19	5
40	20	5
41	10	3
42	10	5
45	14	3
46	14	5
47	21	6
48	22	6
49	13	3
50	13	6
51	23	6
52	12	3
53	12	5
54	12	6
\.


--
-- Name: ingredients_recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('ingredients_recipes_id_seq', 54, true);


--
-- Data for Name: ingredients_variants; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY ingredients_variants (id, ingredient_id, variantofingredient_id) FROM stdin;
7	6	9
8	6	10
9	5	8
12	3	4
13	3	5
14	1	1
15	7	11
16	7	12
17	11	16
18	11	15
19	4	6
20	4	7
23	13	19
24	13	20
\.


--
-- Name: ingredients_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('ingredients_variants_id_seq', 24, true);


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY recipes (id, name) FROM stdin;
2	Быстрый салат из маринованных артишоков
3	Крабовый салат с огурцом и зеленым луком
1	Романо с моцареллой и черри
4	Фруктовый салат с арбузом и сливами
5	Салат с консервированным лососем и сельдереем
6	Салат «Мимоза» с рыбой
\.


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('recipes_id_seq', 6, true);


--
-- Data for Name: variants_of_ingredient; Type: TABLE DATA; Schema: public; Owner: recipe
--

COPY variants_of_ingredient (id, name, ingredient_id) FROM stdin;
1	Масло оливковое "Альфа"	1
2	Масло оливковое "Бета"	1
3	Помидоры черри "Альфа"	2
4	Сыр моцарелла "Альфа"	3
5	Сыр моцарелла "Бета"	3
6	Крабовые палочки "Альфа"	4
7	Крабовые палочки "Бета"	4
8	Салат "Романо"	5
9	Соус соевый "Альфа"	6
10	Соус соевый "Бета"	6
11	Артишок "Альфа"	7
12	Артишок "Бета"	7
13	Соль "Повареная"	10
14	Соль "Балтийская"	10
15	Огурец "Тепличный"	11
16	Огурец "Зозуля"	11
17	Майонез "Провансаль ЕЖК"	12
18	Майонез "Ряба"	12
19	Яйцо куриное "Пышминское"	13
20	Яйцо куриное "Среднеуральское"	13
\.


--
-- Name: variants_of_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: recipe
--

SELECT pg_catalog.setval('variants_of_ingredient_id_seq', 20, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_395678bdc82ea007_uniq; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_395678bdc82ea007_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: ingredients_recipes_ingredient_id_recipe_id_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_recipes
    ADD CONSTRAINT ingredients_recipes_ingredient_id_recipe_id_key UNIQUE (ingredient_id, recipe_id);


--
-- Name: ingredients_recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_recipes
    ADD CONSTRAINT ingredients_recipes_pkey PRIMARY KEY (id);


--
-- Name: ingredients_variants_ingredient_id_variantofingredient_id_key; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_variants
    ADD CONSTRAINT ingredients_variants_ingredient_id_variantofingredient_id_key UNIQUE (ingredient_id, variantofingredient_id);


--
-- Name: ingredients_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_variants
    ADD CONSTRAINT ingredients_variants_pkey PRIMARY KEY (id);


--
-- Name: recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: variants_of_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY variants_of_ingredient
    ADD CONSTRAINT variants_of_ingredient_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_72c04acaccfbd012_like; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_group_name_72c04acaccfbd012_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_3d86790ca570d669_like; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX auth_user_username_3d86790ca570d669_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_7b774d1311e0c331_like; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX django_session_session_key_7b774d1311e0c331_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: ingredients_recipes_7a06a9e2; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX ingredients_recipes_7a06a9e2 ON ingredients_recipes USING btree (ingredient_id);


--
-- Name: ingredients_recipes_da50e9c3; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX ingredients_recipes_da50e9c3 ON ingredients_recipes USING btree (recipe_id);


--
-- Name: ingredients_variants_2e575f78; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX ingredients_variants_2e575f78 ON ingredients_variants USING btree (variantofingredient_id);


--
-- Name: ingredients_variants_7a06a9e2; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX ingredients_variants_7a06a9e2 ON ingredients_variants USING btree (ingredient_id);


--
-- Name: variants_of_ingredient_7a06a9e2; Type: INDEX; Schema: public; Owner: recipe
--

CREATE INDEX variants_of_ingredient_7a06a9e2 ON variants_of_ingredient USING btree (ingredient_id);


--
-- Name: D32f97cb90a52307d96a483059993814; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_variants
    ADD CONSTRAINT "D32f97cb90a52307d96a483059993814" FOREIGN KEY (variantofingredient_id) REFERENCES variants_of_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_5d02c8bc5b652f7b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_5d02c8bc5b652f7b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_425fbb27c2fc4aa0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_425fbb27c2fc4aa0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_67c92ac5a9ce916f_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_67c92ac5a9ce916f_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_67f0ac3306bbbd63_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_67f0ac3306bbbd63_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_27a2a3dca690770_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_27a2a3dca690770_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_2e167f168001bd1d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_2e167f168001bd1d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_2c3b7701ce4c1af9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_2c3b7701ce4c1af9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_3c9f19b44e7a3548_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_3c9f19b44e7a3548_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_678b5d5e8d46f0d4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_678b5d5e8d46f0d4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ingredients_rec_ingredient_id_c21915ae7381848_fk_ingredients_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_recipes
    ADD CONSTRAINT ingredients_rec_ingredient_id_c21915ae7381848_fk_ingredients_id FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ingredients_recipes_recipe_id_2aedef640af02882_fk_recipes_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_recipes
    ADD CONSTRAINT ingredients_recipes_recipe_id_2aedef640af02882_fk_recipes_id FOREIGN KEY (recipe_id) REFERENCES recipes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ingredients_va_ingredient_id_5987e1de9dba7d53_fk_ingredients_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY ingredients_variants
    ADD CONSTRAINT ingredients_va_ingredient_id_5987e1de9dba7d53_fk_ingredients_id FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: variants_of_in_ingredient_id_2d185ef427414849_fk_ingredients_id; Type: FK CONSTRAINT; Schema: public; Owner: recipe
--

ALTER TABLE ONLY variants_of_ingredient
    ADD CONSTRAINT variants_of_in_ingredient_id_2d185ef427414849_fk_ingredients_id FOREIGN KEY (ingredient_id) REFERENCES ingredients(id) DEFERRABLE INITIALLY DEFERRED;


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

