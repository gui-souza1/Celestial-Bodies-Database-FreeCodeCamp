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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    galaxy_id integer,
    name character varying(40) NOT NULL,
    token integer,
    age integer,
    distance numeric,
    description text,
    monitored boolean,
    endangered boolean
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    token integer,
    age integer,
    distance numeric,
    description text,
    monitored boolean,
    endangered boolean
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
    planet_id integer,
    name character varying(40) NOT NULL,
    token integer,
    age integer,
    distance numeric,
    description text,
    monitored boolean,
    endangered boolean
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
    star_id integer,
    name character varying(40) NOT NULL,
    token integer,
    age integer,
    distance numeric,
    description text,
    monitored boolean,
    endangered boolean
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
    galaxy_id integer,
    name character varying(40) NOT NULL,
    token integer,
    age integer,
    distance numeric,
    description text,
    monitored boolean,
    endangered boolean
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 2, 'EventHorizo', 301, 15000, 1000000, 'Supermassive blackhole', true, true);
INSERT INTO public.blackhole VALUES (2, 3, 'EAquirizo', 4301, 13500, 10000, 'Supermassive blackhole', true, true);
INSERT INTO public.blackhole VALUES (3, 2, 'EventHrtyuoo', 4311, 321000, 2340000, 'Supermassive blackhole', true, true);
INSERT INTO public.blackhole VALUES (4, 3, 'Erghjioon', 2351, 145000, 3520000, 'Supermassive blackhole', true, true);
INSERT INTO public.blackhole VALUES (5, 4, 'Noiueao', 3451, 134000, 11334500, 'Supermassive blackhole', true, true);
INSERT INTO public.blackhole VALUES (6, 5, 'Haertyu', 312451, 1124000, 15436500, 'Supermassive blackhole', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via lactea', 11, 4500, 0, 'also called blue dot', true, true);
INSERT INTO public.galaxy VALUES (2, 'magalhaes', 22, 5600, 2345, 'nearest galaxy from via lactea', true, false);
INSERT INTO public.galaxy VALUES (3, 'triangle', 33, 6900, 2340097, 'is triangle-shaped', true, true);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 44, 5700, 2600, 'one of the most beautiful', true, true);
INSERT INTO public.galaxy VALUES (5, 'Magnolia', 55, 2000, 3546758, 'one of the most young', true, true);
INSERT INTO public.galaxy VALUES (6, 'Gorgan', 66, 249080, 982541, 'lack of information', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Titan', 101, 4567, 1200.5, 'Large moon', true, false);
INSERT INTO public.moon VALUES (2, 2, 'freus', 120, 3467, 123432, 'cold moon', false, false);
INSERT INTO public.moon VALUES (3, 2, 'Europa', 201, 1600, 670.0, 'Moon of Jupiter with ice surface', true, true);
INSERT INTO public.moon VALUES (4, 3, 'Ganymede', 202, 1000, 2000.0, 'Largest moon in the Solar System', false, false);
INSERT INTO public.moon VALUES (5, 4, 'Callisto', 203, 2000, 1880.0, 'Moon with many craters', true, false);
INSERT INTO public.moon VALUES (7, 5, 'otian', 204, 4500, 1200.5, 'Large moon', true, true);
INSERT INTO public.moon VALUES (8, 6, 'Rhea', 205, 2500, 765.0, 'Second largest moon of Saturn', false, true);
INSERT INTO public.moon VALUES (9, 7, 'Iapetus', 206, 3000, 1450.0, 'Moon with unusual color variation', true, false);
INSERT INTO public.moon VALUES (10, 8, 'Enceladus', 207, 600, 500.0, 'Moon with icy geysers', true, true);
INSERT INTO public.moon VALUES (11, 9, 'Mimas', 208, 1300, 400.0, 'Moon with a large crater', false, false);
INSERT INTO public.moon VALUES (12, 10, 'Phoebe', 209, 5000, 2500.0, 'Irregularly shaped moon', true, true);
INSERT INTO public.moon VALUES (13, 11, 'Miranda', 210, 3500, 1300.0, 'Moon with diverse surface features', false, true);
INSERT INTO public.moon VALUES (14, 12, 'Ariel', 211, 4500, 1800.0, 'Moon with large canyons', true, false);
INSERT INTO public.moon VALUES (15, 13, 'Umbriel', 212, 2000, 2100.0, 'Moon with a dark surface', true, false);
INSERT INTO public.moon VALUES (16, 14, 'Titania', 213, 3000, 2100.0, 'Largest moon of Uranus', true, true);
INSERT INTO public.moon VALUES (17, 2, 'Io', 214, 3000, 600.0, 'Volcanically active moon', true, true);
INSERT INTO public.moon VALUES (30, 6, 'Rhea_2', 218, 2700, 765.0, 'Moon with bright surface', false, true);
INSERT INTO public.moon VALUES (31, 7, 'Iapetus_2', 219, 3200, 1450.0, 'Moon with dark and bright sides', true, false);
INSERT INTO public.moon VALUES (32, 8, 'Enceladus_2', 220, 700, 500.0, 'Moon with water vapor plumes', true, true);
INSERT INTO public.moon VALUES (33, 9, 'Mimas_2', 221, 1400, 400.0, 'Moon with crater called Herschel', false, false);
INSERT INTO public.moon VALUES (34, 10, 'Phoebe_2', 222, 5100, 2500.0, 'Outer moon with irregular orbit', true, true);
INSERT INTO public.moon VALUES (35, 11, 'Miranda_2', 223, 3600, 1300.0, 'Moon with dramatic cliffs', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'mercury', 1400, 1235, 287, 'nearest to sun', true, false);
INSERT INTO public.planet VALUES (2, 1, 'venus', 1500, 134523, 457, 'nearest to earth', true, false);
INSERT INTO public.planet VALUES (3, 1, 'earth', 1600, 4500, 0, 'our home', true, true);
INSERT INTO public.planet VALUES (4, 1, 'mars', 1700, 6700, 27624, 'we are researching', true, false);
INSERT INTO public.planet VALUES (5, 1, 'ceres', 1800, 5378, 972436, 'smallest one', true, true);
INSERT INTO public.planet VALUES (6, 1, 'jupiter', 1900, 27653, 908673, 'biggest', true, false);
INSERT INTO public.planet VALUES (7, 1, 'Saturn', 2000, 36527, 9276239, 'famous for its rings', true, false);
INSERT INTO public.planet VALUES (8, 1, 'uranus', 2100, 214344, 10899847, 'cold planet', true, true);
INSERT INTO public.planet VALUES (9, 1, 'neptune', 2200, 7372, 120998464, 'cold as uranus', true, false);
INSERT INTO public.planet VALUES (10, 1, 'pluton', 2300, 74372, 13298464, 'no agreement', true, false);
INSERT INTO public.planet VALUES (11, 2, 'yayris', 2400, 312455, 235667545, 'has amounts of water', true, true);
INSERT INTO public.planet VALUES (12, 3, 'macann', 2500, 214124, 124343, 'cold planet', false, false);
INSERT INTO public.planet VALUES (13, 4, 'durty', 2600, 872456245, 924727, 'ave rings like saturn', true, false);
INSERT INTO public.planet VALUES (14, 5, 'asdty', 2700, 6235326, 9284264, 'have amounts of gold', true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'sun', 77, 4603, 151, 'unique star', true, true);
INSERT INTO public.star VALUES (2, 2, 'orpheus', 88, 5600, 23431, 'have a twin', true, false);
INSERT INTO public.star VALUES (3, 3, 'monora', 99, 8900, 73932, 'its burning sulfur', true, false);
INSERT INTO public.star VALUES (4, 4, 'idoknus', 1100, 7654, 52418, 'lack of information', false, false);
INSERT INTO public.star VALUES (5, 5, 'yarvis', 1200, 45363, 43563, 'one of 4', true, true);
INSERT INTO public.star VALUES (6, 6, 'newphis', 1300, 3734, 235465, 'young star', true, false);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 35, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: blackhole unique_blackhole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: blackhole fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

