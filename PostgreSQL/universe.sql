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
    name character varying(30) NOT NULL,
    cool_name text,
    age integer NOT NULL,
    size numeric,
    is_alive boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    is_alive boolean,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    size numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    is_alive boolean,
    age integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size numeric,
    is_alive boolean,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    cool_name text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: todas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.todas (
    is_alive boolean,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    size numeric,
    todas_id integer NOT NULL
);


ALTER TABLE public.todas OWNER TO freecodecamp;

--
-- Name: todas_todas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.todas_todas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todas_todas_id_seq OWNER TO freecodecamp;

--
-- Name: todas_todas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.todas_todas_id_seq OWNED BY public.todas.todas_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: todas todas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todas ALTER COLUMN todas_id SET DEFAULT nextval('public.todas_todas_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy1', 10, 100, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Galaxy2', 20, 200, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Galaxy3', 30, 300, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Galaxy4', 40, 400, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Galaxy5', 50, 500, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Galaxy6', 60, 600, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 'l_um', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, false, 'l_dois', 2, 2, NULL);
INSERT INTO public.moon VALUES (3, true, '_tres', 3, 3, NULL);
INSERT INTO public.moon VALUES (4, true, 'Moon1', 10, 100, NULL);
INSERT INTO public.moon VALUES (5, false, 'Moon2', 20, 200, NULL);
INSERT INTO public.moon VALUES (6, true, 'Moon3', 30, 300, NULL);
INSERT INTO public.moon VALUES (7, false, 'Moon4', 40, 400, NULL);
INSERT INTO public.moon VALUES (8, true, 'Moon5', 50, 500, NULL);
INSERT INTO public.moon VALUES (9, false, 'Moon6', 60, 600, NULL);
INSERT INTO public.moon VALUES (10, true, 'Moon7', 70, 700, NULL);
INSERT INTO public.moon VALUES (11, false, 'Moon8', 80, 800, NULL);
INSERT INTO public.moon VALUES (12, true, 'Moon9', 90, 900, NULL);
INSERT INTO public.moon VALUES (13, false, 'Moon10', 100, 1000, NULL);
INSERT INTO public.moon VALUES (14, true, 'Moon11', 110, 1100, NULL);
INSERT INTO public.moon VALUES (15, false, 'Moon12', 120, 1200, NULL);
INSERT INTO public.moon VALUES (16, true, 'Moon13', 130, 1300, NULL);
INSERT INTO public.moon VALUES (17, false, 'Moon14', 140, 1400, NULL);
INSERT INTO public.moon VALUES (18, true, 'Moon15', 150, 1500, NULL);
INSERT INTO public.moon VALUES (19, false, 'Moon16', 160, 1600, NULL);
INSERT INTO public.moon VALUES (20, true, 'Moon17', 170, 1700, NULL);
INSERT INTO public.moon VALUES (21, false, 'Moon18', 180, 1800, NULL);
INSERT INTO public.moon VALUES (22, true, 'Moon19', 190, 1900, NULL);
INSERT INTO public.moon VALUES (23, false, 'Moon20', 200, 2000, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 10, 'Planet1', 100, NULL);
INSERT INTO public.planet VALUES (2, false, 20, 'Planet2', 200, NULL);
INSERT INTO public.planet VALUES (3, true, 30, 'Planet3', 300, NULL);
INSERT INTO public.planet VALUES (4, false, 40, 'Planet4', 400, NULL);
INSERT INTO public.planet VALUES (5, true, 50, 'Planet5', 500, NULL);
INSERT INTO public.planet VALUES (6, false, 60, 'Planet6', 600, NULL);
INSERT INTO public.planet VALUES (7, true, 70, 'Planet7', 700, NULL);
INSERT INTO public.planet VALUES (8, false, 80, 'Planet8', 800, NULL);
INSERT INTO public.planet VALUES (9, true, 90, 'Planet9', 900, NULL);
INSERT INTO public.planet VALUES (10, false, 100, 'Planet10', 1000, NULL);
INSERT INTO public.planet VALUES (11, true, 110, 'Planet11', 1100, NULL);
INSERT INTO public.planet VALUES (12, false, 120, 'Planet12', 1200, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 100, true, 'Sun', 10, 'Star1', NULL);
INSERT INTO public.star VALUES (2, 200, false, 'Betelgeuse', 20, 'Star2', NULL);
INSERT INTO public.star VALUES (3, 300, true, 'Sirius', 30, 'Star3', NULL);
INSERT INTO public.star VALUES (4, 400, false, 'Alpha Centauri', 40, 'Star4', NULL);
INSERT INTO public.star VALUES (5, 500, true, 'Proxima Centauri', 50, 'Star5', NULL);
INSERT INTO public.star VALUES (6, 600, false, 'Tau Ceti', 60, 'Star6', NULL);


--
-- Data for Name: todas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.todas VALUES (true, 'Moon', 5, 0.055, 1);
INSERT INTO public.todas VALUES (false, 'Mars', 5, 0.815, 2);
INSERT INTO public.todas VALUES (true, 'Jupiter1', 5, 1, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: todas_todas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.todas_todas_id_seq', 3, true);


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
-- Name: todas todas_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todas
    ADD CONSTRAINT todas_name_key UNIQUE (name);


--
-- Name: todas todas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.todas
    ADD CONSTRAINT todas_pkey PRIMARY KEY (todas_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

