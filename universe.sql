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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass integer,
    diameter integer NOT NULL,
    type text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter integer NOT NULL,
    distance_from_earth integer,
    type text
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
    name character varying(100) NOT NULL,
    description text NOT NULL,
    planet_id integer,
    gravity numeric(10,10)
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
    name character varying(100) NOT NULL,
    has_atmosphere boolean NOT NULL,
    diameter integer NOT NULL,
    habitable_zone boolean NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter_km integer NOT NULL,
    surface_temp_c integer NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'blackhole1', 10000, 2000, 'supermassive');
INSERT INTO public.black_hole VALUES (2, 'blackhole2', 100700, 72000, 'supermassive');
INSERT INTO public.black_hole VALUES (3, 'blackhole3', 100700, 727000, 'supermassive');
INSERT INTO public.black_hole VALUES (4, 'blackhole4', 10070770, 7270008, 'supermassive');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_name_one', 10000, 5000, 'aa1');
INSERT INTO public.galaxy VALUES (2, 'galaxy_name_two', 100000, 50000, 'aa21');
INSERT INTO public.galaxy VALUES (3, 'galaxy_name_three', 1000000, 500000, 'aa213');
INSERT INTO public.galaxy VALUES (4, 'galaxy_name_four', 10000000, 5000000, 'aa2413');
INSERT INTO public.galaxy VALUES (5, 'galaxy_name_five', 100000000, 50000000, 'aa24vgv13');
INSERT INTO public.galaxy VALUES (6, 'galaxy_name_six', 1000000000, 500000000, 'aa2fdd4vgv13');
INSERT INTO public.galaxy VALUES (7, 'galaxy_name_seven', 13000, 570, 'aa2fddggfddd4vgv13');
INSERT INTO public.galaxy VALUES (8, 'galaxy_name_eight', 131000, 1570, 'aa2fddggfddd4gfdrtsvgv13');
INSERT INTO public.galaxy VALUES (9, 'galaxy_name_nine', 1311000, 11570, 'aa2fddggfddd4gfdrtjhfgdsvgv13');
INSERT INTO public.galaxy VALUES (10, 'galaxy_name_ten', 11311000, 181570, 'aa2fddggfddd4gfdrtfdfgdjhfgdsvgv13');
INSERT INTO public.galaxy VALUES (11, 'galaxy_name_eleven', 111311000, 1815870, 'aa2fddggfddd4gfdrtfdxdfsfsffgdjhfgdsvgv13');
INSERT INTO public.galaxy VALUES (12, 'galaxy_name_twelwe', 7000, 18145870, 'aa2fddggfddd4gfdrtfdxdfsfsffgdjhffdffdsgdsvgv13');
INSERT INTO public.galaxy VALUES (13, 'galaxy_name_thirteen', 71440, 1817870, 'aa2fddggfddd4gfdrtfdxdfsfsffgdjhffdfdsaaafdsgdsvgv13');
INSERT INTO public.galaxy VALUES (14, 'galaxy_name_fourteen', 711440, 18117870, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfdv13');
INSERT INTO public.galaxy VALUES (15, 'galaxy_name_fifteen', 711440, 18117870, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfdfdfdv13');
INSERT INTO public.galaxy VALUES (16, 'galaxy_name_sixteen', 7111440, 108117870, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfdfdfjkhjkhdv13');
INSERT INTO public.galaxy VALUES (17, 'galaxy_name_seventeen', 47440, 10785, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfghffgdsdfdfjkhjkhdv13');
INSERT INTO public.galaxy VALUES (18, 'galaxy_name_eighteen', 477440, 107785, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfghffgdsdfdjhjhj;hfjkhjkhdv13');
INSERT INTO public.galaxy VALUES (19, 'galaxy_name_nineteen', 4477440, 1087785, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfghffgdsdfdjhjhj;hcfxdxfjkhjkhdv13');
INSERT INTO public.galaxy VALUES (20, 'galaxy_name_twenty', 44477440, 21087785, 'aa2fddggfddd4gfdrtfdxdfsfsfhgfghffgdsdfdjhjhj;hcfxdxfjkhjk222hdv13');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', 'lalala 123', 1, 0.2200000000);
INSERT INTO public.moon VALUES (2, 'moon_2', 'lalala 1234', 2, 0.4200000000);
INSERT INTO public.moon VALUES (3, 'moon_3', 'lalala 12345', 3, 0.4420000000);
INSERT INTO public.moon VALUES (4, 'moon_4', 'lalalgga 12345', 4, 0.4700000000);
INSERT INTO public.moon VALUES (5, 'moon_5', 'lalalgga 123445', 5, 0.7470000000);
INSERT INTO public.moon VALUES (6, 'moon_6', 'lalalgga 12fff3445', 6, 0.7147000000);
INSERT INTO public.moon VALUES (7, 'moon_7', 'lalalgga 1fffff2fff3445', 7, 0.7144700000);
INSERT INTO public.moon VALUES (8, 'moon_8', 'lalalgga 1fffffffff2fff3445', 8, 0.7141470000);
INSERT INTO public.moon VALUES (9, 'moon_9', 'lalalgga 1fffffffffffff2fff3445', 9, 0.4714147000);
INSERT INTO public.moon VALUES (10, 'moon_10', 'lalalgga 1ffffffeeeeefffffff2fff3445', 10, 0.5471414700);
INSERT INTO public.moon VALUES (11, 'moon_11', 'lalalggafffffffff3445', 11, 0.7000000000);
INSERT INTO public.moon VALUES (12, 'moon_12', 'lalalggafffffffgggff3445', 12, 0.7700000000);
INSERT INTO public.moon VALUES (13, 'moon_13', 'lalalggafffffffgggggggff3445', 13, 0.7270000000);
INSERT INTO public.moon VALUES (14, 'moon_14', 'lalalggafffffffgggrrrrrggggff3445', 14, 0.7217000000);
INSERT INTO public.moon VALUES (15, 'moon_15', 'lalalggafffffffgggrrrrrrrrrrrrrggggff3445', 15, 0.7221700000);
INSERT INTO public.moon VALUES (16, 'moon_16', 'lalalggafffffffgggrrrrrrrrrrrttttrrggggff3445', 16, 0.1722170000);
INSERT INTO public.moon VALUES (17, 'moon_17', 'lalalggafffffffgggrrrrrrrrrrrtttttttttrrggggff3445', 17, 0.3172217000);
INSERT INTO public.moon VALUES (18, 'moon_18', 'lalalggafffffffgrrrrrr3445', 18, 0.3177221700);
INSERT INTO public.moon VALUES (19, 'moon_19', 'lalalggafffffffgtttttrrrrrr3445', 19, 0.3177222170);
INSERT INTO public.moon VALUES (20, 'moon_20', 'lttttt5', 20, 0.3177112222);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', true, 44444, true, 1);
INSERT INTO public.planet VALUES (2, 'planet_2', true, 444444, false, 2);
INSERT INTO public.planet VALUES (3, 'planet_3', false, 4444444, false, 3);
INSERT INTO public.planet VALUES (4, 'planet_4', false, 44444444, true, 4);
INSERT INTO public.planet VALUES (5, 'planet_5', true, 444444444, true, 5);
INSERT INTO public.planet VALUES (6, 'planet_6', true, 4744444, true, 6);
INSERT INTO public.planet VALUES (13, 'planet_13', true, 1020, true, 13);
INSERT INTO public.planet VALUES (14, 'planet_14', true, 10770, true, 14);
INSERT INTO public.planet VALUES (15, 'planet_15', true, 1807710, false, 15);
INSERT INTO public.planet VALUES (16, 'planet_16', false, 11710, true, 16);
INSERT INTO public.planet VALUES (17, 'planet_17', true, 131710, true, 17);
INSERT INTO public.planet VALUES (18, 'planet_18', true, 1351710, false, 18);
INSERT INTO public.planet VALUES (19, 'planet_19', true, 13517101, false, 19);
INSERT INTO public.planet VALUES (20, 'planet_20', true, 135127101, true, 20);
INSERT INTO public.planet VALUES (7, 'planet_7', true, 47144, true, 7);
INSERT INTO public.planet VALUES (8, 'planet_8', false, 478144, true, 8);
INSERT INTO public.planet VALUES (9, 'planet_9', false, 4781404, false, 9);
INSERT INTO public.planet VALUES (10, 'planet_10', false, 47801404, false, 10);
INSERT INTO public.planet VALUES (11, 'planet_11', false, 4787104, true, 11);
INSERT INTO public.planet VALUES (12, 'planet_12', false, 47871704, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', 2000, 588, 1);
INSERT INTO public.star VALUES (2, 'star_2', 20000, 5888, 2);
INSERT INTO public.star VALUES (3, 'star_3', 200000, 58888, 3);
INSERT INTO public.star VALUES (4, 'star_4', 2000000, 588888, 4);
INSERT INTO public.star VALUES (5, 'star_5', 20000000, 5888888, 5);
INSERT INTO public.star VALUES (6, 'star_6', 200000000, 58888888, 6);
INSERT INTO public.star VALUES (7, 'star_7', 10000, 7885, 7);
INSERT INTO public.star VALUES (8, 'star_8', 1010, 17885, 8);
INSERT INTO public.star VALUES (9, 'star_9', 11010, 178785, 9);
INSERT INTO public.star VALUES (10, 'star_10', 117010, 1787815, 10);
INSERT INTO public.star VALUES (11, 'star_11', 1170710, 17878195, 11);
INSERT INTO public.star VALUES (12, 'star_12', 11707109, 178781915, 12);
INSERT INTO public.star VALUES (13, 'star_13', 11, 15, 13);
INSERT INTO public.star VALUES (14, 'star_14', 101, 105, 14);
INSERT INTO public.star VALUES (15, 'star_15', 1001, 1005, 15);
INSERT INTO public.star VALUES (16, 'star_16', 10001, 10005, 16);
INSERT INTO public.star VALUES (17, 'star_17', 100010, 100005, 17);
INSERT INTO public.star VALUES (18, 'star_18', 1000110, 1000005, 18);
INSERT INTO public.star VALUES (19, 'star_19', 100030, 100035, 19);
INSERT INTO public.star VALUES (20, 'star_20', 10110, 10115, 20);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

