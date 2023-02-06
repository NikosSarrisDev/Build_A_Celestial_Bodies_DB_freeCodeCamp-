--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,0),
    is_alive boolean,
    our_galaxy boolean,
    number_of_suns integer,
    name character varying(20),
    find_by text,
    sum_of_planets integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,0),
    is_alive boolean,
    is_in_our_galaxy boolean,
    number_of_rings integer,
    name character varying(20),
    find_by text,
    holes integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: new_exp_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.new_exp_table (
    table_id integer NOT NULL,
    name character varying(20),
    founder text,
    age integer,
    hits integer,
    is_alive boolean,
    is_true boolean,
    numero numeric(10,0),
    must1 integer NOT NULL,
    new_exp_table_id integer NOT NULL
);


ALTER TABLE public.new_exp_table OWNER TO freecodecamp;

--
-- Name: new_exp_table_new_exp_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_exp_table_new_exp_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_exp_table_new_exp_table_id_seq OWNER TO freecodecamp;

--
-- Name: new_exp_table_new_exp_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.new_exp_table_new_exp_table_id_seq OWNED BY public.new_exp_table.new_exp_table_id;


--
-- Name: new_exp_table_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_exp_table_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_exp_table_table_id_seq OWNER TO freecodecamp;

--
-- Name: new_exp_table_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.new_exp_table_table_id_seq OWNED BY public.new_exp_table.table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,0),
    is_alive boolean,
    is_in_our_galaxy boolean,
    number_of_rings integer,
    name character varying(20),
    find_by text,
    star_id integer,
    earth_like integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,0),
    is_alive boolean,
    is_in_our_galaxy boolean,
    number_of_rings integer,
    name character varying(20),
    find_by text,
    galaxy_id integer,
    death_star integer DEFAULT 1 NOT NULL,
    rolas integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: new_exp_table table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_exp_table ALTER COLUMN table_id SET DEFAULT nextval('public.new_exp_table_table_id_seq'::regclass);


--
-- Name: new_exp_table new_exp_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_exp_table ALTER COLUMN new_exp_table_id SET DEFAULT nextval('public.new_exp_table_new_exp_table_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 12, 345, true, true, 34, 'helios', 'Asterix', 51);
INSERT INTO public.galaxy VALUES (2, 35, 3454, true, true, 5, 'jojo', 'Nikos', 52);
INSERT INTO public.galaxy VALUES (3, 13, 3400, true, true, 8, 'jojuop', 'Nikos23', 46);
INSERT INTO public.galaxy VALUES (4, 10, 340, true, true, 9, 'jojuop2', 'Nikos236', 78);
INSERT INTO public.galaxy VALUES (5, 109, 34000, true, true, 0, 'jojuop26', 'Nikos2367', 100);
INSERT INTO public.galaxy VALUES (6, 108, 34009, true, false, 1, 'jojuop268', 'Nikos23679', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 90, NULL);
INSERT INTO public.moon VALUES (2, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 900, NULL);
INSERT INTO public.moon VALUES (3, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 93, NULL);
INSERT INTO public.moon VALUES (4, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 100, NULL);
INSERT INTO public.moon VALUES (5, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 101, NULL);
INSERT INTO public.moon VALUES (6, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 102, NULL);
INSERT INTO public.moon VALUES (7, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 103, NULL);
INSERT INTO public.moon VALUES (8, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 200, NULL);
INSERT INTO public.moon VALUES (9, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 201, NULL);
INSERT INTO public.moon VALUES (10, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 202, NULL);
INSERT INTO public.moon VALUES (11, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 203, NULL);
INSERT INTO public.moon VALUES (12, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 204, NULL);
INSERT INTO public.moon VALUES (13, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 205, NULL);
INSERT INTO public.moon VALUES (14, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 207, NULL);
INSERT INTO public.moon VALUES (15, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 208, NULL);
INSERT INTO public.moon VALUES (16, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 209, NULL);
INSERT INTO public.moon VALUES (17, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 210, NULL);
INSERT INTO public.moon VALUES (18, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 310, NULL);
INSERT INTO public.moon VALUES (19, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 316, NULL);
INSERT INTO public.moon VALUES (20, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 318, NULL);
INSERT INTO public.moon VALUES (22, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 340, NULL);
INSERT INTO public.moon VALUES (23, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 343, NULL);
INSERT INTO public.moon VALUES (24, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 347, NULL);
INSERT INTO public.moon VALUES (25, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', 3400, NULL);


--
-- Data for Name: new_exp_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.new_exp_table VALUES (1, 'nikos', 'now is time', 21, 1, true, false, 6789, 12, 1);
INSERT INTO public.new_exp_table VALUES (2, 'jojo', 'now is time', 90, 2, false, true, 6785, 13, 2);
INSERT INTO public.new_exp_table VALUES (3, 'bego', 'now is time', 100, 3, false, true, 6781, 14, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 1);
INSERT INTO public.planet VALUES (2, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 2);
INSERT INTO public.planet VALUES (3, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 3);
INSERT INTO public.planet VALUES (4, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 4);
INSERT INTO public.planet VALUES (5, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 5);
INSERT INTO public.planet VALUES (6, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 6);
INSERT INTO public.planet VALUES (7, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 7);
INSERT INTO public.planet VALUES (8, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 8);
INSERT INTO public.planet VALUES (9, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 9);
INSERT INTO public.planet VALUES (10, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 10);
INSERT INTO public.planet VALUES (11, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 11);
INSERT INTO public.planet VALUES (12, 108, 3400, true, true, 5, 'jojuop268', 'Nikos', NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (8, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (9, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (10, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (11, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);
INSERT INTO public.star VALUES (12, 108, 3400, true, true, 0, 'jojuop268', 'Nikos23679', NULL, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: new_exp_table_new_exp_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_exp_table_new_exp_table_id_seq', 3, true);


--
-- Name: new_exp_table_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_exp_table_table_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sum_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sum_of_planets_key UNIQUE (sum_of_planets);


--
-- Name: moon moon_holes_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_holes_key UNIQUE (holes);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: new_exp_table new_exp_table_must1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_exp_table
    ADD CONSTRAINT new_exp_table_must1_key UNIQUE (must1);


--
-- Name: new_exp_table new_exp_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_exp_table
    ADD CONSTRAINT new_exp_table_pkey PRIMARY KEY (new_exp_table_id);


--
-- Name: planet planet_earth_like_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_earth_like_key UNIQUE (earth_like);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_rolas_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_rolas_key UNIQUE (rolas);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

