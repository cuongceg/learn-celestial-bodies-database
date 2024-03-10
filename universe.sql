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
    name character varying(20),
    have_sun boolean,
    galaxy_radius_km numeric(5,1) NOT NULL,
    shape text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer,
    moon_radius_km integer NOT NULL,
    circle integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_planet (
    moon_planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon_planet OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    planet_radius_km integer NOT NULL,
    star_id integer,
    alive boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    star_radius_km integer NOT NULL,
    galaxy_id integer,
    can_glow boolean,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Cuong', true, 400.2, 'circle');
INSERT INTO public.galaxy VALUES (2, 'Trang', true, 400.3, 'circle');
INSERT INTO public.galaxy VALUES (3, 'Trang', true, 400.4, 'circle');
INSERT INTO public.galaxy VALUES (4, 'Trang', true, 400.5, 'circle');
INSERT INTO public.galaxy VALUES (5, 'Trang', true, 400.6, 'circle');
INSERT INTO public.galaxy VALUES (6, 'Cuong', true, 5000.0, 'circle');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 100, 10);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 100, 10);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 100, 10);
INSERT INTO public.moon VALUES (4, 'moon4', 3, 100, 10);
INSERT INTO public.moon VALUES (5, 'moon5', 3, 100, 10);
INSERT INTO public.moon VALUES (6, 'moon6', 4, 100, 10);
INSERT INTO public.moon VALUES (7, 'moon7', 4, 100, 10);
INSERT INTO public.moon VALUES (8, 'moon8', 5, 100, 10);
INSERT INTO public.moon VALUES (9, 'moon9', 5, 100, 10);
INSERT INTO public.moon VALUES (10, 'moon10', 6, 100, 10);
INSERT INTO public.moon VALUES (11, 'mon11', 6, 100, 10);
INSERT INTO public.moon VALUES (12, 'moon12', 7, 100, 10);
INSERT INTO public.moon VALUES (13, 'moon13', 7, 200, 10);
INSERT INTO public.moon VALUES (14, 'moon14', 8, 200, 10);
INSERT INTO public.moon VALUES (15, 'moon15', 8, 200, 10);
INSERT INTO public.moon VALUES (16, 'moon16', 9, 200, 10);
INSERT INTO public.moon VALUES (17, 'moon17', 9, 200, 10);
INSERT INTO public.moon VALUES (18, 'moon18', 10, 400, 10);
INSERT INTO public.moon VALUES (19, 'moon19', 11, 400, 10);
INSERT INTO public.moon VALUES (20, 'moon20', 12, 400, 10);


--
-- Data for Name: moon_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_planet VALUES (1, 'moon1', 1);
INSERT INTO public.moon_planet VALUES (2, 'moon2', 2);
INSERT INTO public.moon_planet VALUES (3, 'moon3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 400, 1, true);
INSERT INTO public.planet VALUES (2, 'Earth2', 300, 1, true);
INSERT INTO public.planet VALUES (3, 'Earth2', 300, 2, true);
INSERT INTO public.planet VALUES (4, 'Earth3', 300, 2, true);
INSERT INTO public.planet VALUES (5, 'Earth2', 300, 2, true);
INSERT INTO public.planet VALUES (6, 'Earth3', 400, 3, true);
INSERT INTO public.planet VALUES (7, 'Earth4', 400, 3, true);
INSERT INTO public.planet VALUES (8, 'Earth4', 400, 4, true);
INSERT INTO public.planet VALUES (9, 'Earth4', 500, 4, true);
INSERT INTO public.planet VALUES (10, 'Earth5', 450, 5, true);
INSERT INTO public.planet VALUES (11, 'Earth6', 600, 6, true);
INSERT INTO public.planet VALUES (12, 'Earth7', 700, 6, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Earth', 200, 1, true, NULL);
INSERT INTO public.star VALUES (2, 'Mercury', 200, 2, true, NULL);
INSERT INTO public.star VALUES (3, 'Venus', 300, 3, true, NULL);
INSERT INTO public.star VALUES (4, 'Mars', 400, 4, true, NULL);
INSERT INTO public.star VALUES (5, 'Jupiter', 300, 5, true, NULL);
INSERT INTO public.star VALUES (6, 'Saturn', 0, 6, true, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_planet moon_planet_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_moon_id_key UNIQUE (moon_planet_id);


--
-- Name: moon_planet moon_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_pkey PRIMARY KEY (moon_planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

