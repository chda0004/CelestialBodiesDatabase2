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
-- Name: emptytable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.emptytable (
    name character varying(30) NOT NULL,
    emptytable_id integer NOT NULL,
    three integer
);


ALTER TABLE public.emptytable OWNER TO freecodecamp;

--
-- Name: emptytable_emptytable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.emptytable_emptytable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emptytable_emptytable_id_seq OWNER TO freecodecamp;

--
-- Name: emptytable_emptytable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.emptytable_emptytable_id_seq OWNED BY public.emptytable.emptytable_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galacy_types character varying(30),
    description text,
    intvalue integer
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
    planet_id integer,
    weight numeric,
    number_of_stones integer
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
    star_id integer,
    has_life boolean,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_type character varying(30),
    star_material character varying(30)
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
-- Name: emptytable emptytable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.emptytable ALTER COLUMN emptytable_id SET DEFAULT nextval('public.emptytable_emptytable_id_seq'::regclass);


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
-- Data for Name: emptytable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.emptytable VALUES ('1', 1, NULL);
INSERT INTO public.emptytable VALUES ('2', 2, NULL);
INSERT INTO public.emptytable VALUES ('3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'firstGalaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'second galaxy', 'small galaxy', 'just a ggalaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'third galaxy', 'medium galaxy', 'just a ggalaxy', NULL);
INSERT INTO public.galaxy VALUES (7, 'fourth galaxy', 'big galaxy', 'just a ggalaxy', NULL);
INSERT INTO public.galaxy VALUES (8, 'fifth galaxy', 'small galaxy', 'just a ggalaxy', NULL);
INSERT INTO public.galaxy VALUES (9, 'sixth galaxy', 'mega galaxy', 'just a ggalaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (2, '2moon', 2, 15.6, 5100);
INSERT INTO public.moon VALUES (3, '3moon', 3, 35.6, 5300);
INSERT INTO public.moon VALUES (4, '4moon', 4, 45.6, 5040);
INSERT INTO public.moon VALUES (5, '5moon', 5, 6.6, 5500);
INSERT INTO public.moon VALUES (6, '7moon', 7, 57.6, 5700);
INSERT INTO public.moon VALUES (7, '8moon', 8, 58.6, 500);
INSERT INTO public.moon VALUES (8, '9moon', 1, 59.6, 5009);
INSERT INTO public.moon VALUES (9, '10moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (10, '11moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (11, '12moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (12, '13moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (13, '14moon', 1, 5.6, 500);
INSERT INTO public.moon VALUES (15, '15moon', 3, 35.6, 5300);
INSERT INTO public.moon VALUES (16, '16moon', 4, 45.6, 5040);
INSERT INTO public.moon VALUES (17, '17moon', 5, 6.6, 5500);
INSERT INTO public.moon VALUES (18, '18moon', 7, 57.6, 5700);
INSERT INTO public.moon VALUES (19, '19moon', 8, 58.6, 500);
INSERT INTO public.moon VALUES (20, '20moon', 1, 59.6, 5009);
INSERT INTO public.moon VALUES (21, '21moon', 1, 5.6, 500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Erde', 1, true, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, true);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, true);
INSERT INTO public.planet VALUES (4, 'Merkur', 1, false, true);
INSERT INTO public.planet VALUES (5, 'Uranus', 1, false, true);
INSERT INTO public.planet VALUES (6, 'Neptun', 1, false, true);
INSERT INTO public.planet VALUES (7, 'Pluto', 1, false, true);
INSERT INTO public.planet VALUES (8, 'Jupiter', 1, false, true);
INSERT INTO public.planet VALUES (9, 'Saturn', 1, false, true);
INSERT INTO public.planet VALUES (10, '1planet', 2, true, true);
INSERT INTO public.planet VALUES (11, '2planet', 8, true, true);
INSERT INTO public.planet VALUES (12, '3planet', 9, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'firstStar', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, '1Star', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, '2Star', 5, NULL, NULL);
INSERT INTO public.star VALUES (9, '3Star', 6, NULL, NULL);
INSERT INTO public.star VALUES (10, '4Star', 7, NULL, NULL);
INSERT INTO public.star VALUES (11, '5Star', 8, NULL, NULL);
INSERT INTO public.star VALUES (12, '6Star', 9, NULL, NULL);


--
-- Name: emptytable_emptytable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.emptytable_emptytable_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: emptytable emptytable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.emptytable
    ADD CONSTRAINT emptytable_name_key UNIQUE (name);


--
-- Name: emptytable emptytable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.emptytable
    ADD CONSTRAINT emptytable_pkey PRIMARY KEY (emptytable_id);


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

