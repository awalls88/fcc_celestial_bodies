--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    size integer,
    description text,
    age integer,
    name character varying(35) NOT NULL
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
-- Name: index; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.index (
    name character varying(50) NOT NULL,
    size integer,
    index_id integer NOT NULL
);


ALTER TABLE public.index OWNER TO freecodecamp;

--
-- Name: index_index_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.index_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.index_index_id_seq OWNER TO freecodecamp;

--
-- Name: index_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.index_index_id_seq OWNED BY public.index.index_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    spherical boolean DEFAULT true NOT NULL,
    description text NOT NULL,
    planet_id integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    spherical boolean DEFAULT false,
    has_life text NOT NULL,
    population numeric,
    star_id integer,
    name character varying(35) NOT NULL
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
    size integer,
    mass integer,
    galaxy_id integer,
    name character varying(50) NOT NULL
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
-- Name: index index_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.index ALTER COLUMN index_id SET DEFAULT nextval('public.index_index_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 'MilkyWay');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'Reeses');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 'Snickers');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'Twix');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'Kitkat');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'Carmello');


--
-- Data for Name: index; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.index VALUES ('one', 2, 1);
INSERT INTO public.index VALUES ('two', 1, 2);
INSERT INTO public.index VALUES ('three', 1, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'alpha', true, 'alpha', 6);
INSERT INTO public.moon VALUES (2, 'beta', true, 'beta', 6);
INSERT INTO public.moon VALUES (3, 'gamma', true, 'gamma', 6);
INSERT INTO public.moon VALUES (4, 'delta', true, 'delta', 6);
INSERT INTO public.moon VALUES (5, 'epsilon', true, 'epsilon', 6);
INSERT INTO public.moon VALUES (6, 'zeta', true, 'zeta', 6);
INSERT INTO public.moon VALUES (7, 'eta', true, 'eta', 6);
INSERT INTO public.moon VALUES (8, 'iota', true, 'iota', 6);
INSERT INTO public.moon VALUES (9, 'kappa', true, 'kappa', 6);
INSERT INTO public.moon VALUES (10, 'lambda', true, 'lamda', 6);
INSERT INTO public.moon VALUES (11, 'mu', true, 'mu', 6);
INSERT INTO public.moon VALUES (12, 'nu', true, 'nu', 6);
INSERT INTO public.moon VALUES (13, 'omicron', true, 'omicrom', 6);
INSERT INTO public.moon VALUES (14, 'pi', true, 'pi', 6);
INSERT INTO public.moon VALUES (15, 'rho', true, 'rho', 6);
INSERT INTO public.moon VALUES (16, 'sigma', true, 'sigma', 6);
INSERT INTO public.moon VALUES (17, 'tau', true, 'tau', 6);
INSERT INTO public.moon VALUES (18, 'upsilon', true, 'upsilon', 6);
INSERT INTO public.moon VALUES (19, 'phi', true, 'phi', 6);
INSERT INTO public.moon VALUES (20, 'khi', true, 'khi', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, true, 'no', 1, 9, 'mercury');
INSERT INTO public.planet VALUES (3, true, 'no', 2, 9, 'venus');
INSERT INTO public.planet VALUES (4, true, 'yes', 3, 9, 'earth');
INSERT INTO public.planet VALUES (5, true, 'no', 3, 9, 'mars');
INSERT INTO public.planet VALUES (6, true, 'no', 0, 9, 'jupiter');
INSERT INTO public.planet VALUES (7, true, 'no', 0, 9, 'saturn');
INSERT INTO public.planet VALUES (8, true, 'no', 0, 9, 'uranus');
INSERT INTO public.planet VALUES (9, true, 'no', 0, 9, 'neptune');
INSERT INTO public.planet VALUES (10, true, 'no', 0, 9, 'pluto');
INSERT INTO public.planet VALUES (11, true, 'yes', 10, 9, 'vulcan');
INSERT INTO public.planet VALUES (12, false, 'no', 0, 10, 'alderaan');
INSERT INTO public.planet VALUES (13, true, 'yes', 10, 10, 'yavinfour');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (9, NULL, NULL, 1, 'dwarf');
INSERT INTO public.star VALUES (10, NULL, NULL, 1, 'elf');
INSERT INTO public.star VALUES (11, NULL, NULL, 2, 'ent');
INSERT INTO public.star VALUES (12, NULL, NULL, 1, 'man');
INSERT INTO public.star VALUES (13, NULL, NULL, 1, 'orc');
INSERT INTO public.star VALUES (14, NULL, NULL, 1, 'hobbit');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: index_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.index_index_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: index index_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.index
    ADD CONSTRAINT index_name_key UNIQUE (name);


--
-- Name: index index_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.index
    ADD CONSTRAINT index_pkey PRIMARY KEY (index_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

