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
    name character varying NOT NULL,
    galaxy_description text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    contains_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname character varying(30)
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    moon_description text NOT NULL,
    moon_orbital_period integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    contains_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    moon_type_id integer NOT NULL
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
-- Name: moon_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_type (
    moon_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname character varying(30)
);


ALTER TABLE public.moon_type OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_type_moon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_type_moon_type_id_seq OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_type_moon_type_id_seq OWNED BY public.moon_type.moon_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    planet_orbital_period integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    contains_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_type_id integer NOT NULL,
    planet_description text
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname character varying(30)
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_description text NOT NULL,
    star_orbital_period integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    contains_life boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer,
    star_type_id integer NOT NULL
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
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    star_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname character varying(30)
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_type moon_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type ALTER COLUMN moon_type_id SET DEFAULT nextval('public.moon_type_moon_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Milkey Way', '170000 light years across', 200000000, true, 0, false, 1);
INSERT INTO public.galaxy VALUES (4, 'Canis Major dwarf', '17000 light years across', 1000000000, true, 52000, false, 2);
INSERT INTO public.galaxy VALUES (5, 'Sag DEG', '17000 light years across', 1000000000, true, 50000, false, 2);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cluud', '17000 light years across', 1000000000, true, 160000, false, 4);
INSERT INTO public.galaxy VALUES (7, 'Small Magellanic Cluud', '17000 light years across', 1000000000, true, 160000, false, 4);
INSERT INTO public.galaxy VALUES (8, 'Barnards Galaxy', '7000 light years across', 1000000000, true, 1600000, false, 1);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'spiral', NULL);
INSERT INTO public.galaxy_type VALUES (2, 'elliptical', NULL);
INSERT INTO public.galaxy_type VALUES (3, 'peculiar', NULL);
INSERT INTO public.galaxy_type VALUES (4, 'irregular', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (3, 'Delmos', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (4, 'Io', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (9, 'Hamalia', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (10, 'Elara', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (12, 'Sinope', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (13, 'Lysithea', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (14, 'Carme', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (15, 'Anake', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (16, 'Leda', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (18, 'Adrestea', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (19, 'Metis', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (21, 'Themisto', 1, 'small', 1, 40, true, 125000, true, 1);
INSERT INTO public.moon VALUES (17, 'Thebe', 1, 'small', 1, 40, true, 125000, true, 1);


--
-- Data for Name: moon_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_type VALUES (1, 'circular', NULL);
INSERT INTO public.moon_type VALUES (2, 'irregular', NULL);
INSERT INTO public.moon_type VALUES (3, 'triangular', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 2, 365, 90000, true, 90000000, true, 1, 'big');
INSERT INTO public.planet VALUES (1, 'Mercury', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (3, 'Venus', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (4, 'Mars', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (6, 'Saturn', 3, 365, 40, true, 93000000, true, 1, 'bbig');
INSERT INTO public.planet VALUES (7, 'Uranus', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (8, 'Neptune', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (9, 'Ceres', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (10, 'Pluto', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (11, 'Haumea', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (12, 'Makemake', 3, 365, 40, true, 93000000, true, 1, 'big');
INSERT INTO public.planet VALUES (13, 'Eris', 3, 365, 40, true, 93000000, true, 1, 'big');


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'rocky', NULL);
INSERT INTO public.planet_type VALUES (2, 'gas giant', NULL);
INSERT INTO public.planet_type VALUES (3, 'ice giant', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'sun', 'big', 150000, 90000, false, 90000000, true, 3, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'big', 150000, 90000, false, 90000000, true, 3, 1);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus and Toliman', 'big', 150000, 90000, false, 90000000, true, 3, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', 'big', 150000, 90000, false, 90000000, true, 3, 1);
INSERT INTO public.star VALUES (6, 'Wolf 359', 'big', 150000, 90000, false, 90000000, true, 3, 1);
INSERT INTO public.star VALUES (7, 'Sirius', 'big', 150000, 90000, false, 90000000, true, 3, 1);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES (1, 'solar type stars', NULL);
INSERT INTO public.star_type VALUES (2, 'hot blue stars', NULL);
INSERT INTO public.star_type VALUES (3, 'red dwarf stars', NULL);
INSERT INTO public.star_type VALUES (4, 'red giant stars', NULL);
INSERT INTO public.star_type VALUES (5, 'white dwarf stars', NULL);
INSERT INTO public.star_type VALUES (6, 'neutron stars and black holes', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_type_moon_type_id_seq', 35, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 3, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_type moon_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_pkey PRIMARY KEY (moon_type_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: galaxy un_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT un_galaxy_name UNIQUE (name);


--
-- Name: galaxy_type un_galaxy_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT un_galaxy_type_name UNIQUE (name);


--
-- Name: moon un_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT un_moon_name UNIQUE (name);


--
-- Name: moon_type un_moon_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT un_moon_type_name UNIQUE (name);


--
-- Name: planet un_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT un_planet_name UNIQUE (name);


--
-- Name: planet_type un_planet_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT un_planet_type_name UNIQUE (name);


--
-- Name: star un_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT un_star_name UNIQUE (name);


--
-- Name: star_type un_star_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT un_star_type_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_type FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon fk_moon_type_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_type_id FOREIGN KEY (moon_type_id) REFERENCES public.moon_type(moon_type_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_type_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_type_id FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_type_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_type_id FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- PostgreSQL database dump complete
--

