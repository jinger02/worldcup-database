--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';


ALTER DATABASE worldcup OWNER TO postgres;

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
-- Name: games; Type: TABLE; Schema: public; Owner: maryjane
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO maryjane;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: maryjane
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO maryjane;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maryjane
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: maryjane
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO maryjane;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: maryjane
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO maryjane;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maryjane
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: maryjane
--

INSERT INTO public.games VALUES (899, 2018, 'Final', 126, 127, 4, 2);
INSERT INTO public.games VALUES (900, 2018, 'Third Place', 128, 129, 2, 0);
INSERT INTO public.games VALUES (901, 2018, 'Semi-Final', 127, 129, 2, 1);
INSERT INTO public.games VALUES (902, 2018, 'Semi-Final', 126, 128, 1, 0);
INSERT INTO public.games VALUES (903, 2018, 'Quarter-Final', 127, 130, 3, 2);
INSERT INTO public.games VALUES (904, 2018, 'Quarter-Final', 129, 131, 2, 0);
INSERT INTO public.games VALUES (905, 2018, 'Quarter-Final', 128, 132, 2, 1);
INSERT INTO public.games VALUES (906, 2018, 'Quarter-Final', 126, 133, 2, 0);
INSERT INTO public.games VALUES (907, 2018, 'Eighth-Final', 129, 134, 2, 1);
INSERT INTO public.games VALUES (908, 2018, 'Eighth-Final', 131, 135, 1, 0);
INSERT INTO public.games VALUES (909, 2018, 'Eighth-Final', 128, 136, 3, 2);
INSERT INTO public.games VALUES (910, 2018, 'Eighth-Final', 132, 137, 2, 0);
INSERT INTO public.games VALUES (911, 2018, 'Eighth-Final', 127, 138, 2, 1);
INSERT INTO public.games VALUES (912, 2018, 'Eighth-Final', 130, 139, 2, 1);
INSERT INTO public.games VALUES (913, 2018, 'Eighth-Final', 133, 140, 2, 1);
INSERT INTO public.games VALUES (914, 2018, 'Eighth-Final', 126, 141, 4, 3);
INSERT INTO public.games VALUES (915, 2014, 'Final', 142, 141, 1, 0);
INSERT INTO public.games VALUES (916, 2014, 'Third Place', 143, 132, 3, 0);
INSERT INTO public.games VALUES (917, 2014, 'Semi-Final', 141, 143, 1, 0);
INSERT INTO public.games VALUES (918, 2014, 'Semi-Final', 142, 132, 7, 1);
INSERT INTO public.games VALUES (919, 2014, 'Quarter-Final', 143, 144, 1, 0);
INSERT INTO public.games VALUES (920, 2014, 'Quarter-Final', 141, 128, 1, 0);
INSERT INTO public.games VALUES (921, 2014, 'Quarter-Final', 132, 134, 2, 1);
INSERT INTO public.games VALUES (922, 2014, 'Quarter-Final', 142, 126, 1, 0);
INSERT INTO public.games VALUES (923, 2014, 'Eighth-Final', 132, 145, 2, 1);
INSERT INTO public.games VALUES (924, 2014, 'Eighth-Final', 134, 133, 2, 0);
INSERT INTO public.games VALUES (925, 2014, 'Eighth-Final', 126, 146, 2, 0);
INSERT INTO public.games VALUES (926, 2014, 'Eighth-Final', 142, 147, 2, 1);
INSERT INTO public.games VALUES (927, 2014, 'Eighth-Final', 143, 137, 2, 1);
INSERT INTO public.games VALUES (928, 2014, 'Eighth-Final', 144, 148, 2, 1);
INSERT INTO public.games VALUES (929, 2014, 'Eighth-Final', 141, 135, 1, 0);
INSERT INTO public.games VALUES (930, 2014, 'Eighth-Final', 128, 149, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: maryjane
--

INSERT INTO public.teams VALUES (126, 'France');
INSERT INTO public.teams VALUES (127, 'Croatia');
INSERT INTO public.teams VALUES (128, 'Belgium');
INSERT INTO public.teams VALUES (129, 'England');
INSERT INTO public.teams VALUES (130, 'Russia');
INSERT INTO public.teams VALUES (131, 'Sweden');
INSERT INTO public.teams VALUES (132, 'Brazil');
INSERT INTO public.teams VALUES (133, 'Uruguay');
INSERT INTO public.teams VALUES (134, 'Colombia');
INSERT INTO public.teams VALUES (135, 'Switzerland');
INSERT INTO public.teams VALUES (136, 'Japan');
INSERT INTO public.teams VALUES (137, 'Mexico');
INSERT INTO public.teams VALUES (138, 'Denmark');
INSERT INTO public.teams VALUES (139, 'Spain');
INSERT INTO public.teams VALUES (140, 'Portugal');
INSERT INTO public.teams VALUES (141, 'Argentina');
INSERT INTO public.teams VALUES (142, 'Germany');
INSERT INTO public.teams VALUES (143, 'Netherlands');
INSERT INTO public.teams VALUES (144, 'Costa Rica');
INSERT INTO public.teams VALUES (145, 'Chile');
INSERT INTO public.teams VALUES (146, 'Nigeria');
INSERT INTO public.teams VALUES (147, 'Algeria');
INSERT INTO public.teams VALUES (148, 'Greece');
INSERT INTO public.teams VALUES (149, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryjane
--

SELECT pg_catalog.setval('public.games_game_id_seq', 930, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maryjane
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 149, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: maryjane
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

