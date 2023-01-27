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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (36, 2018, 'Final', 4, 2, 107, 106);
INSERT INTO public.games VALUES (37, 2018, 'Third Place', 2, 0, 109, 108);
INSERT INTO public.games VALUES (38, 2018, 'Semi-Final', 2, 1, 109, 107);
INSERT INTO public.games VALUES (39, 2018, 'Semi-Final', 1, 0, 108, 106);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 3, 2, 110, 107);
INSERT INTO public.games VALUES (41, 2018, 'Quarter-Final', 2, 0, 111, 109);
INSERT INTO public.games VALUES (42, 2018, 'Quarter-Final', 2, 1, 112, 108);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 2, 0, 113, 106);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 1, 114, 109);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 1, 0, 115, 111);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 3, 2, 116, 108);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 0, 117, 112);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 2, 1, 118, 107);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 2, 1, 119, 110);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 2, 1, 120, 113);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 4, 3, 121, 106);
INSERT INTO public.games VALUES (52, 2014, 'Final', 1, 0, 121, 122);
INSERT INTO public.games VALUES (53, 2014, 'Third Place', 3, 0, 112, 123);
INSERT INTO public.games VALUES (54, 2014, 'Semi-Final', 1, 0, 123, 121);
INSERT INTO public.games VALUES (55, 2014, 'Semi-Final', 7, 1, 112, 122);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 124, 123);
INSERT INTO public.games VALUES (57, 2014, 'Quarter-Final', 1, 0, 108, 121);
INSERT INTO public.games VALUES (58, 2014, 'Quarter-Final', 2, 1, 114, 112);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 1, 0, 106, 122);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 125, 112);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 0, 113, 114);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 0, 126, 106);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 2, 1, 127, 122);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 117, 123);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 2, 1, 128, 124);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 1, 0, 115, 121);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 2, 1, 129, 108);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (106, 'France');
INSERT INTO public.teams VALUES (107, 'Croatia');
INSERT INTO public.teams VALUES (108, 'Belgium');
INSERT INTO public.teams VALUES (109, 'England');
INSERT INTO public.teams VALUES (110, 'Russia');
INSERT INTO public.teams VALUES (111, 'Sweden');
INSERT INTO public.teams VALUES (112, 'Brazil');
INSERT INTO public.teams VALUES (113, 'Uruguay');
INSERT INTO public.teams VALUES (114, 'Colombia');
INSERT INTO public.teams VALUES (115, 'Switzerland');
INSERT INTO public.teams VALUES (116, 'Japan');
INSERT INTO public.teams VALUES (117, 'Mexico');
INSERT INTO public.teams VALUES (118, 'Denmark');
INSERT INTO public.teams VALUES (119, 'Spain');
INSERT INTO public.teams VALUES (120, 'Portugal');
INSERT INTO public.teams VALUES (121, 'Argentina');
INSERT INTO public.teams VALUES (122, 'Germany');
INSERT INTO public.teams VALUES (123, 'Netherlands');
INSERT INTO public.teams VALUES (124, 'Costa Rica');
INSERT INTO public.teams VALUES (125, 'Chile');
INSERT INTO public.teams VALUES (126, 'Nigeria');
INSERT INTO public.teams VALUES (127, 'Algeria');
INSERT INTO public.teams VALUES (128, 'Greece');
INSERT INTO public.teams VALUES (129, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 67, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 129, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_team_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_name UNIQUE (name);


--
-- Name: games games_opponent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

