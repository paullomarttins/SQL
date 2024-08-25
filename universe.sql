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
    name character varying(30) NOT NULL,
    description text,
    galaxy_type integer,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    moon_type integer,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_type integer,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30),
    satellite_types integer,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    star_type integer,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer NOT NULL,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'Home Galaxy', 1, 13.6, 26000);
INSERT INTO public.galaxy VALUES (2, 'Orion', 'Galaxy orion', 1, 13.6, 24000);
INSERT INTO public.galaxy VALUES (3, 'Sargitario', 'Galaxy Blue', 1, 13.6, 27000);
INSERT INTO public.galaxy VALUES (4, 'molestie.', 'mollis. Duissit', 2, 305.0, 106);
INSERT INTO public.galaxy VALUES (5, 'sapien', 'euismod in, dolor. Fusce', 2, 429.0, 102);
INSERT INTO public.galaxy VALUES (6, 'ultrices', 'commodo at,', 0, 420.0, 100);
INSERT INTO public.galaxy VALUES (7, 'molestie', 'nisi aodiosemper cursus.', 4, 860.0, 190);
INSERT INTO public.galaxy VALUES (8, 'eget,', 'Aliquam', 1, 818.0, 124);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 'Saletile natural da Terra', 1, 13.6, 384, 1);
INSERT INTO public.moon VALUES (78, 'lacus.', NULL, 3, 141.0, 454, 63);
INSERT INTO public.moon VALUES (79, 'molestie_39', NULL, 1, 103.0, 268, 63);
INSERT INTO public.moon VALUES (80, 'odio.', NULL, 1, 147.0, 271, 63);
INSERT INTO public.moon VALUES (81, 'malesuada', NULL, 1, 153.0, 458, 63);
INSERT INTO public.moon VALUES (82, 'cursus', NULL, 2, 197.0, 446, 63);
INSERT INTO public.moon VALUES (83, 'lorem,', NULL, 0, 111.0, 240, 63);
INSERT INTO public.moon VALUES (72, 'ac', NULL, 3, 199.0, 399, 51);
INSERT INTO public.moon VALUES (29, 'molestie.', 'mollis. Duis sit', 2, 305.0, 106, 7);
INSERT INTO public.moon VALUES (30, 'sapien', 'euismod in, dolor. Fusce', 2, 429.0, 102, 8);
INSERT INTO public.moon VALUES (31, 'ultrices', 'commodo at,', 0, 420.0, 100, 9);
INSERT INTO public.moon VALUES (32, 'molestie', 'nisi a odio semper cursus.', 4, 860.0, 190, 10);
INSERT INTO public.moon VALUES (33, 'eget,', 'Aliquam', 1, 818.0, 124, 11);
INSERT INTO public.moon VALUES (64, 'faucibus', NULL, 1, 148.0, 346, 50);
INSERT INTO public.moon VALUES (65, 'a,', NULL, 2, 156.0, 347, 50);
INSERT INTO public.moon VALUES (66, 'non', NULL, 1, 116.0, 214, 50);
INSERT INTO public.moon VALUES (67, 'primis', NULL, 0, 170.0, 402, 50);
INSERT INTO public.moon VALUES (68, 'dolor', NULL, 3, 132.0, 284, 50);
INSERT INTO public.moon VALUES (69, 'viverra.', NULL, 1, 168.0, 387, 50);
INSERT INTO public.moon VALUES (70, 'rutrum', NULL, 4, 181.0, 379, 50);
INSERT INTO public.moon VALUES (71, 'tortor', NULL, 1, 183.0, 264, 58);
INSERT INTO public.moon VALUES (73, 'quam,', NULL, 2, 112.0, 406, 58);
INSERT INTO public.moon VALUES (74, 'vulputate', NULL, 1, 137.0, 412, 58);
INSERT INTO public.moon VALUES (75, 'pharetra', NULL, 0, 119.0, 467, 58);
INSERT INTO public.moon VALUES (76, 'eros.', NULL, 2, 197.0, 388, 58);
INSERT INTO public.moon VALUES (77, 'eget_37,', NULL, 1, 185.0, 239, 58);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 'Home Planet', 2, 13.6, 0, true, true, 2);
INSERT INTO public.planet VALUES (7, 'molestie.', 'mollis. Duis sit', 2, 305.0, 106, false, false, 3);
INSERT INTO public.planet VALUES (8, 'sapien', 'euismod in, dolor.Fusce', 2, 429.0, 102, true, false, 4);
INSERT INTO public.planet VALUES (9, 'ultrices', 'commodo at,', 0, 420.0, 100, false, true, 5);
INSERT INTO public.planet VALUES (10, 'molestie', 'nisi a odio semper cursus.', 4, 860.0, 190, false, true, 6);
INSERT INTO public.planet VALUES (11, 'eget,', 'Aliquam', 1, 818.0, 124, true, false, 7);
INSERT INTO public.planet VALUES (46, 'convallis', NULL, 0, 146.0, 258, true, true, 5);
INSERT INTO public.planet VALUES (47, 'a', NULL, 1, 187.0, 464, false, true, 3);
INSERT INTO public.planet VALUES (48, 'dictum', NULL, 2, 130.0, 332, true, false, 7);
INSERT INTO public.planet VALUES (49, 'sit', NULL, 2, 163.0, 471, false, true, 7);
INSERT INTO public.planet VALUES (50, 'nisi.', NULL, 0, 198.0, 289, true, true, 7);
INSERT INTO public.planet VALUES (51, 'at', NULL, 1, 113.0, 377, true, false, 7);
INSERT INTO public.planet VALUES (52, 'eu', NULL, 2, 114.0, 291, true, true, 7);
INSERT INTO public.planet VALUES (53, 'nuncyg', NULL, 1, 102.0, 346, false, false, 7);
INSERT INTO public.planet VALUES (54, 'augue', NULL, 2, 120.0, 469, false, true, 7);
INSERT INTO public.planet VALUES (55, 'penatibus', NULL, 3, 182.0, 313, true, true, 7);
INSERT INTO public.planet VALUES (56, 'accumsan', NULL, 2, 196.0, 273, true, false, 6);
INSERT INTO public.planet VALUES (57, 'turpis', NULL, 1, 146.0, 231, true, false, 6);
INSERT INTO public.planet VALUES (58, 'iaculis', NULL, 2, 188.0, 215, true, true, 6);
INSERT INTO public.planet VALUES (59, 'semper,', NULL, 2, 149.0, 396, false, true, 6);
INSERT INTO public.planet VALUES (60, 'vulputate,', NULL, 3, 104.0, 364, true, true, 6);
INSERT INTO public.planet VALUES (61, 'Nullam', NULL, 2, 191.0, 481, false, true, 6);
INSERT INTO public.planet VALUES (62, 'nunc', NULL, 1, 149.0, 475, true, true, 6);
INSERT INTO public.planet VALUES (63, 'elit', NULL, 1, 105.0, 458, true, false, 6);
INSERT INTO public.planet VALUES (64, 'parturient', NULL, 1, 150.0, 487, true, false, 6);
INSERT INTO public.planet VALUES (65, 'tellus', NULL, 3, 190.0, 354, true, false, 6);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'nisi.', 2, 197);
INSERT INTO public.satellite VALUES (2, 'dolor', 3, 189);
INSERT INTO public.satellite VALUES (3, 'Sed', 2, 195);
INSERT INTO public.satellite VALUES (4, 'urna.', 1, 160);
INSERT INTO public.satellite VALUES (5, 'pede', 1, 149);
INSERT INTO public.satellite VALUES (6, 'tellus.', 2, 176);
INSERT INTO public.satellite VALUES (7, 'quis', 0, 185);
INSERT INTO public.satellite VALUES (8, 'aliquet', 1, 160);
INSERT INTO public.satellite VALUES (9, 'vestibulum', 1, 130);
INSERT INTO public.satellite VALUES (10, 'pharetra.', 2, 162);
INSERT INTO public.satellite VALUES (11, 'non,', 1, 185);
INSERT INTO public.satellite VALUES (12, 'egestas', 3, 119);
INSERT INTO public.satellite VALUES (13, 'ultricies', 4, 114);
INSERT INTO public.satellite VALUES (14, 'Cras', 2, 132);
INSERT INTO public.satellite VALUES (15, 'Quisque', 2, 121);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sol', 'Home Galaxy', 5, 13.6, 26000, 1);
INSERT INTO public.star VALUES (3, 'molestie.', 'mollis. Duis sit', 2, 305.0, 106, 8);
INSERT INTO public.star VALUES (4, 'sapien', 'euismod in, dolor. Fusce', 2, 429.0, 102, 2);
INSERT INTO public.star VALUES (5, 'ultrices', 'commodo at,', 0, 420.0, 100, 3);
INSERT INTO public.star VALUES (6, 'molestie', 'nisi a odio semper cursus.', 4, 860.0, 190, 7);
INSERT INTO public.star VALUES (7, 'eget,', 'Aliquam', 1, 818.0, 124, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 83, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 65, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


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
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

