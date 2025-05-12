--
-- PostgreSQL database dump
--

-- Dumped from database version 12.20 (Ubuntu 12.20-1.pgdg22.04+1)
-- Dumped by pg_dump version 17.0 (Ubuntu 17.0-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accommodations; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.accommodations (
    id integer NOT NULL,
    name character varying(100),
    roomtype integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.accommodations OWNER TO robiblack;

--
-- Name: accommodations_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.accommodations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accommodations_id_seq OWNER TO robiblack;

--
-- Name: accommodations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.accommodations_id_seq OWNED BY public.accommodations.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO robiblack;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO robiblack;

--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO robiblack;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO robiblack;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: hotels; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.hotels (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    nit character varying(50) NOT NULL,
    "totalRooms" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.hotels OWNER TO robiblack;

--
-- Name: hotels_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.hotels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotels_id_seq OWNER TO robiblack;

--
-- Name: hotels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.hotels_id_seq OWNED BY public.hotels.id;


--
-- Name: hotelsdetails; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.hotelsdetails (
    id bigint NOT NULL,
    hotel integer NOT NULL,
    roomtype integer NOT NULL,
    accommodation integer NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.hotelsdetails OWNER TO robiblack;

--
-- Name: hotelsdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.hotelsdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hotelsdetails_id_seq OWNER TO robiblack;

--
-- Name: hotelsdetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.hotelsdetails_id_seq OWNED BY public.hotelsdetails.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO robiblack;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO robiblack;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO robiblack;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO robiblack;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO robiblack;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO robiblack;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO robiblack;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO robiblack;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: roomtypes; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.roomtypes (
    id integer NOT NULL,
    name character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.roomtypes OWNER TO robiblack;

--
-- Name: roomtypes_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.roomtypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roomtypes_id_seq OWNER TO robiblack;

--
-- Name: roomtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.roomtypes_id_seq OWNED BY public.roomtypes.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO robiblack;

--
-- Name: users; Type: TABLE; Schema: public; Owner: robiblack
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO robiblack;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: robiblack
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO robiblack;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robiblack
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accommodations id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.accommodations ALTER COLUMN id SET DEFAULT nextval('public.accommodations_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: hotels id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotels ALTER COLUMN id SET DEFAULT nextval('public.hotels_id_seq'::regclass);


--
-- Name: hotelsdetails id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotelsdetails ALTER COLUMN id SET DEFAULT nextval('public.hotelsdetails_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: roomtypes id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.roomtypes ALTER COLUMN id SET DEFAULT nextval('public.roomtypes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: accommodations; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.accommodations (id, name, roomtype, created_at, updated_at, deleted_at) FROM stdin;
1	SENCILLA	1	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
2	DOBLE	1	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
3	TRIPLE	2	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
4	CUÁDRUPLE	2	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
5	SENCILLA	3	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
6	DOBLE	3	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
7	TRIPLE	3	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.cache (key, value, expiration) FROM stdin;
laravel_cache_a75f3f172bfb296f2e10cbfc6dfc1883:timer	i:1747025281;	1747025281
laravel_cache_a75f3f172bfb296f2e10cbfc6dfc1883	i:1;	1747025281
laravel_cache_f1f70ec40aaa556905d4a030501c0ba4:timer	i:1747026804;	1747026804
laravel_cache_f1f70ec40aaa556905d4a030501c0ba4	i:1;	1747026804
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: hotels; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.hotels (id, name, address, city, nit, "totalRooms", created_at, updated_at, deleted_at) FROM stdin;
1	DECAMERON CARTAGENA	CALLE 23 58-25	CARTAGENA	12345678-9	42	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
\.


--
-- Data for Name: hotelsdetails; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.hotelsdetails (id, hotel, roomtype, accommodation, quantity, created_at, updated_at, deleted_at) FROM stdin;
1	1	1	1	25	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
2	1	2	3	12	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
3	1	1	2	5	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2025_05_10_134226_create_personal_access_tokens_table	1
5	2025_05_12_033201_create_roomtypes_table	2
6	2025_05_12_033713_create_accommodations_table	2
7	2025_05_12_034015_create_hotels_table	2
8	2025_05_12_034220_create_hotelsdetails_table	2
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
1	App\\Models\\User	1	api-token	a4c65ac8dd5aeaccc71c30bb61a334d4ec5404dd824924c07ac97f571dcc3389	["*"]	\N	\N	2025-05-11 14:23:48	2025-05-11 14:23:48
2	App\\Models\\User	1	api-token	b7ad466ba288930f2ba962e0977fec04424604ad58f18a140a00d664b8e3154c	["*"]	2025-05-12 05:12:24	\N	2025-05-12 04:47:02	2025-05-12 05:12:24
\.


--
-- Data for Name: roomtypes; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.roomtypes (id, name, created_at, updated_at, deleted_at) FROM stdin;
1	ESTANDAR	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
2	JUNIOR	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
3	SUITE	2025-05-12 04:19:46	2025-05-12 04:19:46	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
0cMV8SU0R8Z9VMdVUIzeB0ALNwrSbGFoFJdgrk2h	\N	127.0.0.1	PostmanRuntime/7.39.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUY0OTl1MWduYTNkSnNyZ3VNNE1yYnN5MmZibkhNZEVCNEFhR2xheCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1746889862
AyvXh46UgmsEZ5Qi2iZ51o5GUcOKVUKCdvvNlURl	\N	127.0.0.1	PostmanRuntime/7.39.1	YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlkwdFczcTBGc09HeGYwQldEcUZSZGw3dXdwZWk1dEJzbHEwakNKVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1746973599
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: robiblack
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
1	Administrador	administrador@admin.com	\N	$2y$12$Dwr3oFJjrUrz1ihlXMJkUeqULQRsMGSu3A9E9L9rCrYZTBZ6x25Z6	\N	2025-05-10 14:50:04	2025-05-10 14:50:04
\.


--
-- Name: accommodations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.accommodations_id_seq', 7, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: hotels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.hotels_id_seq', 1, true);


--
-- Name: hotelsdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.hotelsdetails_id_seq', 3, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 2, true);


--
-- Name: roomtypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.roomtypes_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robiblack
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: accommodations accommodations_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.accommodations
    ADD CONSTRAINT accommodations_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: hotels hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);


--
-- Name: hotelsdetails hotelsdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotelsdetails
    ADD CONSTRAINT hotelsdetails_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: roomtypes roomtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.roomtypes
    ADD CONSTRAINT roomtypes_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: robiblack
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: robiblack
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: robiblack
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: robiblack
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: accommodations accommodations_roomtype_foreign; Type: FK CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.accommodations
    ADD CONSTRAINT accommodations_roomtype_foreign FOREIGN KEY (roomtype) REFERENCES public.roomtypes(id);


--
-- Name: hotelsdetails hotelsdetails_accommodation_foreign; Type: FK CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotelsdetails
    ADD CONSTRAINT hotelsdetails_accommodation_foreign FOREIGN KEY (accommodation) REFERENCES public.accommodations(id);


--
-- Name: hotelsdetails hotelsdetails_hotel_foreign; Type: FK CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotelsdetails
    ADD CONSTRAINT hotelsdetails_hotel_foreign FOREIGN KEY (hotel) REFERENCES public.hotels(id);


--
-- Name: hotelsdetails hotelsdetails_roomtype_foreign; Type: FK CONSTRAINT; Schema: public; Owner: robiblack
--

ALTER TABLE ONLY public.hotelsdetails
    ADD CONSTRAINT hotelsdetails_roomtype_foreign FOREIGN KEY (roomtype) REFERENCES public.roomtypes(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

