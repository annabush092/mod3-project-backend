--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO colesayer;

--
-- Name: moves; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE moves (
    id bigint NOT NULL,
    name character varying,
    flavor_text character varying
);


ALTER TABLE moves OWNER TO colesayer;

--
-- Name: moves_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE moves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE moves_id_seq OWNER TO colesayer;

--
-- Name: moves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE moves_id_seq OWNED BY moves.id;


--
-- Name: pokemon_moves; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE pokemon_moves (
    id bigint NOT NULL,
    pokemon_id integer,
    move_id integer
);


ALTER TABLE pokemon_moves OWNER TO colesayer;

--
-- Name: pokemon_moves_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE pokemon_moves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemon_moves_id_seq OWNER TO colesayer;

--
-- Name: pokemon_moves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE pokemon_moves_id_seq OWNED BY pokemon_moves.id;


--
-- Name: pokemon_stats; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE pokemon_stats (
    id bigint NOT NULL,
    base_stat integer,
    stat_id integer,
    pokemon_id integer
);


ALTER TABLE pokemon_stats OWNER TO colesayer;

--
-- Name: pokemon_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE pokemon_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemon_stats_id_seq OWNER TO colesayer;

--
-- Name: pokemon_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE pokemon_stats_id_seq OWNED BY pokemon_stats.id;


--
-- Name: pokemons; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE pokemons (
    id bigint NOT NULL,
    name character varying,
    front_default character varying,
    front_shiny character varying,
    back_default character varying,
    back_shiny character varying
);


ALTER TABLE pokemons OWNER TO colesayer;

--
-- Name: pokemons_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE pokemons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemons_id_seq OWNER TO colesayer;

--
-- Name: pokemons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE pokemons_id_seq OWNED BY pokemons.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO colesayer;

--
-- Name: stat_moves; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE stat_moves (
    id bigint NOT NULL,
    stat_id integer,
    move_id integer,
    stat_change integer
);


ALTER TABLE stat_moves OWNER TO colesayer;

--
-- Name: stat_moves_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE stat_moves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stat_moves_id_seq OWNER TO colesayer;

--
-- Name: stat_moves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE stat_moves_id_seq OWNED BY stat_moves.id;


--
-- Name: stats; Type: TABLE; Schema: public; Owner: colesayer
--

CREATE TABLE stats (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE stats OWNER TO colesayer;

--
-- Name: stats_id_seq; Type: SEQUENCE; Schema: public; Owner: colesayer
--

CREATE SEQUENCE stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stats_id_seq OWNER TO colesayer;

--
-- Name: stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colesayer
--

ALTER SEQUENCE stats_id_seq OWNED BY stats.id;


--
-- Name: moves id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY moves ALTER COLUMN id SET DEFAULT nextval('moves_id_seq'::regclass);


--
-- Name: pokemon_moves id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemon_moves ALTER COLUMN id SET DEFAULT nextval('pokemon_moves_id_seq'::regclass);


--
-- Name: pokemon_stats id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemon_stats ALTER COLUMN id SET DEFAULT nextval('pokemon_stats_id_seq'::regclass);


--
-- Name: pokemons id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemons ALTER COLUMN id SET DEFAULT nextval('pokemons_id_seq'::regclass);


--
-- Name: stat_moves id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY stat_moves ALTER COLUMN id SET DEFAULT nextval('stat_moves_id_seq'::regclass);


--
-- Name: stats id; Type: DEFAULT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY stats ALTER COLUMN id SET DEFAULT nextval('stats_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-10-24 18:16:34.09068	2017-10-24 18:16:34.09068
\.


--
-- Data for Name: moves; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY moves (id, name, flavor_text) FROM stdin;
1	Pound	The target is physically pounded with a long tail, a\nforeleg, or the like.
2	Karate Chop	The target is attacked with a sharp chop. Critical\nhits land more easily.
3	Double Slap	The target is slapped repeatedly, back and forth,\ntwo to five times in a row.
4	Comet Punch	The target is hit with a flurry of punches that strike\ntwo to five times in a row.
5	Mega Punch	The target is slugged by a punch thrown with\nmuscle-packed power.
6	Pay Day	Numerous coins are hurled at the target to inflict\ndamage. Money is earned after the battle.
7	Fire Punch	The target is punched with a fiery fist. This may also\nleave the target with a burn.
8	Ice Punch	The target is punched with an icy fist. This may also\nleave the target frozen.
9	Thunder Punch	The target is punched with an electrified fist.\nThis may also leave the target with paralysis.
10	Scratch	Hard, pointed, sharp claws rake the target to\ninflict damage.
11	Vice Grip	The target is gripped and squeezed from both sides\nto inflict damage.
12	Guillotine	A vicious, tearing attack with big pincers. The target\nfaints instantly if this attack hits.
13	Razor Wind	In this two-turn attack, blades of wind hit opposing\nPokémon on the second turn. Critical hits land\nmore easily.
14	Swords Dance	A frenetic dance to uplift the fighting spirit.\nThis sharply raises the user’s Attack stat.
15	Cut	The target is cut with a scythe or claw.
16	Gust	A gust of wind is whipped up by wings and launched\nat the target to inflict damage.
17	Wing Attack	The target is struck with large, imposing wings\nspread wide to inflict damage.
18	Whirlwind	The target is blown away, and a different Pokémon is\ndragged out. In the wild, this ends a battle against a\nsingle Pokémon.
19	Fly	The user soars and then strikes its target on the\nnext turn.
20	Bind	Things such as long bodies or tentacles are used to\nbind and squeeze the target for four to five turns.
21	Slam	The target is slammed with a long tail, vines, or the\nlike to inflict damage.
22	Vine Whip	The target is struck with slender, whiplike vines to\ninflict damage.
23	Stomp	The target is stomped with a big foot. This may also\nmake the target flinch.
24	Double Kick	The target is quickly kicked twice in succession\nusing both feet.
25	Mega Kick	The target is attacked by a kick launched with\nmuscle-packed power.
26	Jump Kick	The user jumps up high, then strikes with a kick.\nIf the kick misses, the user hurts itself.
27	Rolling Kick	The user lashes out with a quick, spinning kick.\nThis may also make the target flinch.
28	Sand Attack	Sand is hurled in the target’s face, reducing the\ntarget’s accuracy.
29	Headbutt	The user sticks out its head and attacks by charging\nstraight into the target. This may also make the\ntarget flinch.
30	Horn Attack	The target is jabbed with a sharply pointed horn to\ninflict damage.
31	Fury Attack	The target is jabbed repeatedly with a horn or beak\ntwo to five times in a row.
32	Horn Drill	The user stabs the target with a horn that rotates\nlike a drill. The target faints instantly if this\nattack hits.
33	Tackle	A physical attack in which the user charges and\nslams into the target with its whole body.
34	Body Slam	The user drops onto the target with its full body\nweight. This may also leave the target with paralysis.
35	Wrap	A long body, vines, or the like are used to wrap and \nsqueeze the target for four to five turns.
36	Take Down	A reckless, full-body charge attack for slamming into\nthe target. This also damages the user a little.
37	Thrash	The user rampages and attacks for two to three\nturns. The user then becomes confused.
38	Double-Edge	A reckless, life-risking tackle. This also damages the\nuser quite a lot.
39	Tail Whip	The user wags its tail cutely, making opposing\nPokémon less wary and lowering their Defense stat.
40	Poison Sting	The user stabs the target with a poisonous stinger.\nThis may also poison the target.
41	Twineedle	The user damages the target twice in succession\nby jabbing it with two spikes. This may also poison\nthe target.
42	Pin Missile	Sharp spikes are shot at the target in rapid\nsuccession. They hit two to five times in a row.
43	Leer	The user gives opposing Pokémon an intimidating\nleer that lowers the Defense stat.
44	Bite	The target is bitten with viciously sharp fangs.\nThis may also make the target flinch.
45	Growl	The user growls in an endearing way, making\nopposing Pokémon less wary. This lowers their\nAttack stat.
46	Roar	The target is scared off, and a different Pokémon is\ndragged out. In the wild, this ends a battle against a\nsingle Pokémon.
47	Sing	A soothing lullaby is sung in a calming voice that\nputs the target into a deep slumber.
48	Supersonic	The user generates odd sound waves from its body\nthat confuse the target.
49	Sonic Boom	The target is hit with a destructive shock wave that\nalways inflicts 20 HP damage.
50	Disable	For four turns, this move prevents the target from\nusing the move it last used.
51	Acid	The opposing Pokémon are attacked with a spray of\nharsh acid. This may also lower their Sp. Def stat.
52	Ember	The target is attacked with small flames. This may\nalso leave the target with a burn.
53	Flamethrower	The target is scorched with an intense blast of fire.\nThis may also leave the target with a burn.
54	Mist	The user cloaks itself and its allies in a white mist\nthat prevents any of their stats from being lowered\nfor five turns.
55	Water Gun	The target is blasted with a forceful shot of water.
56	Hydro Pump	The target is blasted by a huge volume of water\nlaunched under great pressure.
57	Surf	The user attacks everything around it by swamping\nits surroundings with a giant wave.
58	Ice Beam	The target is struck with an icy-cold beam of energy.\nThis may also leave the target frozen.
59	Blizzard	A howling blizzard is summoned to strike opposing\nPokémon. This may also leave the opposing\nPokémon frozen.
60	Psybeam	The target is attacked with a peculiar ray. This may\nalso leave the target confused.
61	Bubble Beam	A spray of bubbles is forcefully ejected at the\ntarget. This may also lower its Speed stat.
62	Aurora Beam	The target is hit with a rainbow-colored beam.\nThis may also lower the target’s Attack stat.
63	Hyper Beam	The target is attacked with a powerful beam.\nThe user can’t move on the next turn.
64	Peck	The target is jabbed with a sharply pointed beak\nor horn.
65	Drill Peck	A corkscrewing attack with a sharp beak acting as\na drill.
66	Submission	The user grabs the target and recklessly dives for\nthe ground. This also damages the user a little.
67	Low Kick	A powerful low kick that makes the target fall over.\nThe heavier the target, the greater the\nmove’s power.
68	Counter	A retaliation move that counters any physical attack,\ninflicting double the damage taken.
69	Seismic Toss	The target is thrown using the power of gravity.\nIt inflicts damage equal to the user’s level.
70	Strength	The target is slugged with a punch thrown at\nmaximum power.
71	Absorb	A nutrient-draining attack. The user’s HP is restored\nby half the damage taken by the target.
72	Mega Drain	A nutrient-draining attack. The user’s HP is restored\nby half the damage taken by the target.
73	Leech Seed	A seed is planted on the target. It steals some HP\nfrom the target every turn.
74	Growth	The user’s body grows all at once, raising the\nAttack and Sp. Atk stats.
75	Razor Leaf	Sharp-edged leaves are launched to slash at the\nopposing Pokémon. Critical hits land more easily.
76	Solar Beam	In this two-turn attack, the user gathers light, then\nblasts a bundled beam on the next turn.
77	Poison Powder	The user scatters a cloud of poisonous dust that\npoisons the target.
78	Stun Spore	The user scatters a cloud of numbing powder that\nparalyzes the target.
79	Sleep Powder	The user scatters a big cloud of sleep-inducing dust\naround the target.
80	Petal Dance	The user attacks the target by scattering petals for\ntwo to three turns. The user then becomes confused.
81	String Shot	The opposing Pokémon are bound with silk blown\nfrom the user’s mouth that harshly lowers the\nSpeed stat.
82	Dragon Rage	This attack hits the target with a shock wave of\npure rage. This attack always inflicts 40 HP damage.
83	Fire Spin	The target becomes trapped within a fierce vortex\nof fire that rages for four to five turns.
84	Thunder Shock	A jolt of electricity crashes down on the target to\ninflict damage. This may also leave the target\nwith paralysis.
85	Thunderbolt	A strong electric blast crashes down on the target.\nThis may also leave the target with paralysis.
86	Thunder Wave	The user launches a weak jolt of electricity that\nparalyzes the target.
87	Thunder	A wicked thunderbolt is dropped on the target to\ninflict damage. This may also leave the target\nwith paralysis.
88	Rock Throw	The user picks up and throws a small rock at the\ntarget to attack.
89	Earthquake	The user sets off an earthquake that strikes every\nPokémon around it.
90	Fissure	The user opens up a fissure in the ground and drops\nthe target in. The target faints instantly if this\nattack hits.
91	Dig	The user burrows, then attacks on the next turn.
92	Toxic	A move that leaves the target badly poisoned.\nIts poison damage worsens every turn.
93	Confusion	The target is hit by a weak telekinetic force.\nThis may also confuse the target.
94	Psychic	The target is hit by a strong telekinetic force.\nThis may also lower the target’s Sp. Def stat.
95	Hypnosis	The user employs hypnotic suggestion to make the\ntarget fall into a deep sleep.
96	Meditate	The user meditates to awaken the power deep\nwithin its body and raise its Attack stat.
97	Agility	The user relaxes and lightens its body to move\nfaster. This sharply raises the Speed stat.
98	Quick Attack	The user lunges at the target at a speed that makes\nit almost invisible. This move always goes first.
99	Rage	As long as this move is in use, the power of rage\nraises the Attack stat each time the user is hit\nin battle.
100	Teleport	Use it to flee from any wild Pokémon.
101	Night Shade	The user makes the target see a frightening mirage.\nIt inflicts damage equal to the user’s level.
102	Mimic	The user copies the target’s last move. The move\ncan be used during battle until the Pokémon is\nswitched out.
103	Screech	An earsplitting screech harshly lowers the target’s\nDefense stat.
104	Double Team	By moving rapidly, the user makes illusory copies of\nitself to raise its evasiveness.
105	Recover	Restoring its own cells, the user restores its own HP\nby half of its max HP.
106	Harden	The user stiffens all the muscles in its body to raise\nits Defense stat.
107	Minimize	The user compresses its body to make itself look\nsmaller, which sharply raises its evasiveness.
108	Smokescreen	The user releases an obscuring cloud of smoke or\nink. This lowers the target’s accuracy.
109	Confuse Ray	The target is exposed to a sinister ray that\ntriggers confusion.
110	Withdraw	The user withdraws its body into its hard shell,\nraising its Defense stat.
111	Defense Curl	The user curls up to conceal weak spots and raise\nits Defense stat.
112	Barrier	The user throws up a sturdy wall that sharply raises\nits Defense stat.
113	Light Screen	A wondrous wall of light is put up to reduce damage\nfrom special attacks for five turns.
114	Haze	The user creates a haze that eliminates every stat\nchange among all the Pokémon engaged in battle.
115	Reflect	A wondrous wall of light is put up to reduce damage\nfrom physical attacks for five turns.
116	Focus Energy	The user takes a deep breath and focuses so that\ncritical hits land more easily.
117	Bide	The user endures attacks for two turns, then strikes\nback to cause double the damage taken.
118	Metronome	The user waggles a finger and stimulates its brain\ninto randomly using nearly any move.
119	Mirror Move	The user counters the target by mimicking the\ntarget’s last move.
120	Self-Destruct	The user attacks everything around it by causing an\nexplosion. The user faints upon using this move.
121	Egg Bomb	A large egg is hurled at the target with maximum\nforce to inflict damage.
122	Lick	The target is licked with a long tongue, causing\ndamage. This may also leave the target\nwith paralysis.
123	Smog	The target is attacked with a discharge of filthy\ngases. This may also poison the target.
124	Sludge	Unsanitary sludge is hurled at the target. This may\nalso poison the target.
125	Bone Club	The user clubs the target with a bone. This may also\nmake the target flinch.
126	Fire Blast	The target is attacked with an intense blast of\nall-consuming fire. This may also leave the target\nwith a burn.
127	Waterfall	The user charges at the target and may make\nit flinch.
128	Clamp	The target is clamped and squeezed by the user’s\nvery thick and sturdy shell for four to five turns.
129	Swift	Star-shaped rays are shot at the opposing Pokémon.\nThis attack never misses.
130	Skull Bash	The user tucks in its head to raise its Defense\nstat on the first turn, then rams the target on the\nnext turn.
131	Spike Cannon	Sharp spikes are shot at the target in rapid\nsuccession. They hit two to five times in a row.
132	Constrict	The target is attacked with long, creeping tentacles,\nvines, or the like. This may also lower the target’s \nSpeed stat.
133	Amnesia	The user temporarily empties its mind to forget its\nconcerns. This sharply raises the user’s Sp. Def stat.
134	Kinesis	The user distracts the target by bending a spoon.\nThis lowers the target’s accuracy.
135	Soft-Boiled	The user restores its own HP by up to half of its\nmax HP.
136	High Jump Kick	The target is attacked with a knee kick from a jump.\nIf it misses, the user is hurt instead.
137	Glare	The user intimidates the target with the pattern on\nits belly to cause paralysis.
138	Dream Eater	The user eats the dreams of a sleeping target. It\nabsorbs half the damage caused to heal its own HP.
139	Poison Gas	A cloud of poison gas is sprayed in the face of\nopposing Pokémon, poisoning those hit.
140	Barrage	Round objects are hurled at the target to strike two\nto five times in a row.
141	Leech Life	The user drains the target’s blood. The user’s HP is\nrestored by half the damage taken by the target.
142	Lovely Kiss	With a scary face, the user tries to force a kiss on\nthe target. If it succeeds, the target falls asleep.
143	Sky Attack	A second-turn attack move where critical hits land\nmore easily. This may also make the target flinch.
144	Transform	The user transforms into a copy of the target right\ndown to having the same move set.
145	Bubble	A spray of countless bubbles is jetted at the\nopposing Pokémon. This may also lower their\nSpeed stat.
146	Dizzy Punch	The target is hit with rhythmically launched\npunches. This may also leave the target confused.
147	Spore	The user scatters bursts of spores that\ninduce sleep.
148	Flash	The user flashes a bright light that cuts the\ntarget’s accuracy.
149	Psywave	The target is attacked with an odd psychic wave.\nThe attack varies in intensity.
150	Splash	The user just flops and splashes around to no effect\nat all...
151	Acid Armor	The user alters its cellular structure to liquefy itself,\nsharply raising its Defense stat.
152	Crabhammer	The target is hammered with a large pincer. Critical\nhits land more easily.
153	Explosion	The user attacks everything around it by causing a\ntremendous explosion. The user faints upon using\nthis move.
154	Fury Swipes	The target is raked with sharp claws or scythes\nquickly two to five times in a row.
155	Bonemerang	The user throws the bone it holds. The bone loops\naround to hit the target twice—coming and going.
156	Rest	The user goes to sleep for two turns. This fully\nrestores the user’s HP and heals any\nstatus conditions.
157	Rock Slide	Large boulders are hurled at the opposing Pokémon\nto inflict damage. This may also make the opposing\nPokémon flinch.
158	Hyper Fang	The user bites hard on the target with its sharp\nfront fangs. This may also make the target flinch.
159	Sharpen	The user makes its edges more jagged, \nwhich raises its Attack stat.
160	Conversion	The user changes its type to become the same type\nas the move at the top of the list of moves it knows.
161	Tri Attack	The user strikes with a simultaneous three-beam\nattack. May also burn, freeze, or paralyze the target.
162	Super Fang	The user chomps hard on the target with its sharp\nfront fangs. This cuts the target’s HP in half.
163	Slash	The target is attacked with a slash of claws or\nblades. Critical hits land more easily.
164	Substitute	The user makes a copy of itself using some of its HP.\nThe copy serves as the user’s decoy.
165	Struggle	This attack is used in desperation only if the user\nhas no PP. It also damages the user a little.
166	Sketch	It enables the user to permanently learn the move\nlast used by the target. Once used,\nSketch disappears.
167	Triple Kick	A consecutive three-kick attack that becomes more\npowerful with each successive hit.
168	Thief	The user attacks and steals the target’s held item\nsimultaneously. The user can’t steal anything if it\nalready holds an item.
169	Spider Web	The user ensnares the target with thin, gooey silk\nso it can’t flee from battle.
170	Mind Reader	The user senses the target’s movements with its\nmind to ensure its next attack does not miss\nthe target.
171	Nightmare	A sleeping target sees a nightmare that inflicts some\ndamage every turn.
172	Flame Wheel	The user cloaks itself in fire and charges at the\ntarget. This may also leave the target with a burn.
173	Snore	This attack can be used only if the user is asleep.\nThe harsh noise may also make the target flinch.
174	Curse	A move that works differently for the Ghost type\nthan for all other types.
175	Flail	The user flails about aimlessly to attack. The less HP\nthe user has, the greater the move’s power.
176	Conversion 2	The user changes its type to make itself resistant to\nthe type of the attack the opponent used last.
177	Aeroblast	A vortex of air is shot at the target to inflict damage.\nCritical hits land more easily.
178	Cotton Spore	The user releases cotton-like spores that cling to\nthe opposing Pokémon, which harshly lowers their\nSpeed stat.
179	Reversal	An all-out attack that becomes more powerful the\nless HP the user has.
180	Spite	The user unleashes its grudge on the move last used\nby the target by cutting 4 PP from it.
181	Powder Snow	The user attacks with a chilling gust of powdery\nsnow. This may also freeze the opposing Pokémon.
182	Protect	Enables the user to evade all attacks. Its chance of\nfailing rises if it is used in succession.
183	Mach Punch	The user throws a punch at blinding speed. This\nmove always goes first.
184	Scary Face	The user frightens the target with a scary face to\nharshly lower its Speed stat.
185	Feint Attack	The user approaches the target disarmingly, then\nthrows a sucker punch. This attack never misses.
186	Sweet Kiss	The user kisses the target with a sweet, angelic\ncuteness that causes confusion.
187	Belly Drum	The user maximizes its Attack stat in exchange for\nHP equal to half its max HP.
188	Sludge Bomb	Unsanitary sludge is hurled at the target. This may\nalso poison the target.
189	Mud-Slap	The user hurls mud in the target’s face to inflict\ndamage and lower its accuracy.
190	Octazooka	The user attacks by spraying ink in the target’s face\nor eyes. This may also lower the target’s accuracy.
191	Spikes	The user lays a trap of spikes at the opposing\nteam’s feet. The trap hurts Pokémon that switch\ninto battle.
192	Zap Cannon	The user fires an electric blast like a cannon to inflict\ndamage and cause paralysis.
193	Foresight	Enables a Ghost-type target to be hit by Normal-\nand Fighting-type attacks. This also enables an\nevasive target to be hit.
194	Destiny Bond	After using this move, if the user faints, the\nPokémon that landed the knockout hit also faints.\nIts chance of failing rises if it is used in succession.
195	Perish Song	Any Pokémon that hears this song faints in three\nturns, unless it switches out of battle.
196	Icy Wind	The user attacks with a gust of chilled air. This also\nlowers the opposing Pokémon’s Speed stats.
197	Detect	Enables the user to evade all attacks. Its chance of\nfailing rises if it is used in succession.
198	Bone Rush	The user strikes the target with a hard bone two to\nfive times in a row.
199	Lock-On	The user takes sure aim at the target. This ensures\nthe next attack does not miss the target.
200	Outrage	The user rampages and attacks for two to three\nturns. The user then becomes confused.
201	Sandstorm	A five-turn sandstorm is summoned to hurt all\ncombatants except the Rock, Ground, and\nSteel types. It raises the Sp. Def stat of Rock types.
202	Giga Drain	A nutrient-draining attack. The user’s HP is restored\nby half the damage taken by the target.
203	Endure	The user endures any attack with at least 1 HP.\nIts chance of failing rises if it is used in succession.
204	Charm	The user gazes at the target rather charmingly,\nmaking it less wary. This harshly lowers its\nAttack stat.
205	Rollout	The user continually rolls into the target over five\nturns. It becomes more powerful each time it hits.
206	False Swipe	A restrained attack that prevents the target from\nfainting. The target is left with at least 1 HP.
207	Swagger	The user enrages and confuses the target. However,\nthis also sharply raises the target’s Attack stat.
208	Milk Drink	The user restores its own HP by up to half of its\nmax HP.
209	Spark	The user throws an electrically charged tackle at the\ntarget. This may also leave the target with paralysis.
210	Fury Cutter	The target is slashed with scythes or claws. This\nattack becomes more powerful if it hits\nin succession.
211	Steel Wing	The target is hit with wings of steel. This may also\nraise the user’s Defense stat.
212	Mean Look	The user pins the target with a dark, arresting look.\nThe target becomes unable to flee.
213	Attract	If it is the opposite gender of the user, the target\nbecomes infatuated and less likely to attack.
214	Sleep Talk	While it is asleep, the user randomly uses one of the\nmoves it knows.
215	Heal Bell	The user makes a soothing bell chime to heal the\nstatus conditions of all the party Pokémon.
216	Return	This full-power attack grows more powerful the\nmore the user likes its Trainer.
217	Present	The user attacks by giving the target a gift with a\nhidden trap. It restores HP sometimes, however.
218	Frustration	This full-power attack grows more powerful the\nless the user likes its Trainer.
219	Safeguard	The user creates a protective field that prevents\nstatus conditions for five turns.
220	Pain Split	The user adds its HP to the target’s HP, then equally\nshares the combined HP with the target.
221	Sacred Fire	The target is razed with a mystical fire of great\nintensity. This may also leave the target with a burn.
222	Magnitude	The user attacks everything around it with a\nground-shaking quake. Its power varies.
223	Dynamic Punch	The user punches the target with full, concentrated\npower. This confuses the target if it hits.
224	Megahorn	Using its tough and impressive horn, the user rams\ninto the target with no letup.
225	Dragon Breath	The user exhales a mighty gust that inflicts damage.\nThis may also leave the target with paralysis.
226	Baton Pass	The user switches places with a party Pokémon in\nwaiting and passes along any stat changes.
227	Encore	The user compels the target to keep using the move\nit encored for three turns.
228	Pursuit	The power of this attack move is doubled if it’s used\non a target that’s switching out of battle.
229	Rapid Spin	A spin attack that can also eliminate such moves as\nBind, Wrap, Leech Seed, and Spikes.
230	Sweet Scent	A sweet scent that harshly lowers opposing\nPokémon’s evasiveness.
231	Iron Tail	The target is slammed with a steel-hard tail.\nThis may also lower the target’s Defense stat.
232	Metal Claw	The target is raked with steel claws. This may also\nraise the user’s Attack stat.
233	Vital Throw	The user attacks last. In return, this throw move\nnever misses.
234	Morning Sun	The user restores its own HP. The amount of HP\nregained varies with the weather.
235	Synthesis	The user restores its own HP. The amount of HP\nregained varies with the weather.
236	Moonlight	The user restores its own HP. The amount of HP\nregained varies with the weather.
237	Hidden Power	A unique attack that varies in type depending on the\nPokémon using it.
238	Cross Chop	The user delivers a double chop with its forearms\ncrossed. Critical hits land more easily.
239	Twister	The user whips up a vicious tornado to tear at the\nopposing Pokémon. This may also make them flinch.
240	Rain Dance	The user summons a heavy rain that falls for five\nturns, powering up Water-type moves. It lowers\nthe power of Fire-type moves.
241	Sunny Day	The user intensifies the sun for five turns, powering\nup Fire-type moves. It lowers the power of\nWater-type moves.
242	Crunch	The user crunches up the target with sharp fangs.\nThis may also lower the target’s Defense stat.
243	Mirror Coat	A retaliation move that counters any special attack,\ninflicting double the damage taken.
244	Psych Up	The user hypnotizes itself into copying any stat\nchange made by the target.
245	Extreme Speed	The user charges the target at blinding speed.\nThis move always goes first.
246	Ancient Power	The user attacks with a prehistoric power.\nThis may also raise all the user’s stats at once.
247	Shadow Ball	The user hurls a shadowy blob at the target.\nThis may also lower the target’s Sp. Def stat.
248	Future Sight	Two turns after this move is used, a hunk of psychic\nenergy attacks the target.
249	Rock Smash	The user attacks with a punch. This may also lower\nthe target’s Defense stat.
250	Whirlpool	The user traps the target in a violent swirling\nwhirlpool for four to five turns.
251	Beat Up	The user gets all party Pokémon to attack the target.\nThe more party Pokémon, the greater the number\nof attacks.
252	Fake Out	This attack hits first and makes the target flinch.\nIt only works the first turn the user is in battle.
253	Uproar	The user attacks in an uproar for three turns.\nDuring that time, no Pokémon can fall asleep.
254	Stockpile	The user charges up power and raises both its\nDefense and Sp. Def stats. The move can be used\nthree times.
255	Spit Up	The power stored using the move Stockpile is\nreleased at once in an attack. The more power\nis stored, the greater the move’s power.
256	Swallow	The power stored using the move Stockpile is\nabsorbed by the user to heal its HP. Storing more\npower heals more HP.
257	Heat Wave	The user attacks by exhaling hot breath on the\nopposing Pokémon. This may also leave those\nPokémon with a burn.
258	Hail	The user summons a hailstorm lasting five turns.\nIt damages all Pokémon except the Ice type.
259	Torment	The user torments and enrages the target, making it\nincapable of using the same move twice in a row.
260	Flatter	Flattery is used to confuse the target. However,\nthis also raises the target’s Sp. Atk stat.
261	Will-O-Wisp	The user shoots a sinister, bluish-white flame at the\ntarget to inflict a burn.
262	Memento	The user faints when using this move. In return, this\nharshly lowers the target’s Attack and Sp. Atk stats.
263	Facade	This attack move doubles its power if the user is\npoisoned, burned, or paralyzed.
264	Focus Punch	The user focuses its mind before launching a punch.\nThis move fails if the user is hit before it is used.
265	Smelling Salts	This attack’s power is doubled when used on a\ntarget with paralysis. This also cures the target’s\nparalysis, however.
266	Follow Me	The user draws attention to itself, making all targets\ntake aim only at the user.
267	Nature Power	This attack makes use of nature’s power. Its\neffects vary depending on the user’s environment.
268	Charge	The user boosts the power of the Electric move it\nuses on the next turn. This also raises the user’s\nSp. Def stat.
269	Taunt	The target is taunted into a rage that allows it to use\nonly attack moves for three turns.
270	Helping Hand	The user assists an ally by boosting the power of\nthat ally’s attack.
271	Trick	The user catches the target off guard and swaps its\nheld item with its own.
272	Role Play	The user mimics the target completely, copying the\ntarget’s natural Ability.
273	Wish	One turn after this move is used, the user’s or its\nreplacement’s HP is restored by half the user’s\nmax HP.
274	Assist	The user hurriedly and randomly uses a move among\nthose known by ally Pokémon.
275	Ingrain	The user lays roots that restore its HP on every turn.\nBecause it’s rooted, it can’t switch out.
276	Superpower	The user attacks the target with great power.\nHowever, this also lowers the user’s Attack and\nDefense stats.
277	Magic Coat	A barrier reflects back to the target moves like\nLeech Seed and moves that damage status.
278	Recycle	The user recycles a held item that has been used in\nbattle so it can be used again.
279	Revenge	This attack move’s power is doubled if the user has\nbeen hurt by the opponent in the same turn.
280	Brick Break	The user attacks with a swift chop. It can also break\nbarriers, such as Light Screen and Reflect.
281	Yawn	The user lets loose a huge yawn that lulls the target\ninto falling asleep on the next turn.
282	Knock Off	The user slaps down the target’s held item, and that\nitem can’t be used in that battle. The move does\nmore damage if the target has a held item.
283	Endeavor	This attack move cuts down the target’s HP to equal\nthe user’s HP.
284	Eruption	The user attacks opposing Pokémon with explosive\nfury. The lower the user’s HP, the lower the\nmove’s power.
285	Skill Swap	The user employs its psychic power to exchange\nAbilities with the target.
286	Imprison	If opposing Pokémon know any move also known by\nthe user, they are prevented from using it.
287	Refresh	The user rests to cure itself of poisoning, a burn,\nor paralysis.
288	Grudge	If the user faints, the user’s grudge fully depletes\nthe PP of the opponent’s move that knocked it out.
289	Snatch	The user steals the effects of any attempts to use a\nhealing or stat-changing move.
290	Secret Power	The additional effects of this attack depend upon\nwhere it was used.
291	Dive	Diving on the first turn, the user floats up and\nattacks on the next turn.
292	Arm Thrust	The user lets loose a flurry of open-palmed arm\nthrusts that hit two to five times in a row.
293	Camouflage	The user’s type is changed depending on its\nenvironment, such as at water’s edge, in grass, or in\na cave.
294	Tail Glow	The user stares at flashing lights to focus its mind,\ndrastically raising its Sp. Atk stat.
295	Luster Purge	The user lets loose a damaging burst of light. This\nmay also lower the target’s Sp. Def stat.
296	Mist Ball	A mist-like flurry of down envelops and damages the\ntarget. This may also lower the target’s Sp. Atk stat.
297	Feather Dance	The user covers the target’s body with a mass of\ndown that harshly lowers its Attack stat.
298	Teeter Dance	The user performs a wobbly dance that confuses\nthe Pokémon around it.
299	Blaze Kick	The user launches a kick that lands a critical hit\nmore easily. This may also leave the target with\na burn.
300	Mud Sport	The user kicks up mud on the battlefield. This\nweakens Electric-type moves for five turns.
301	Ice Ball	The user attacks the target for five turns.\nThe move’s power increases each time it hits.
302	Needle Arm	The user attacks by wildly swinging its thorny arms.\nThis may also make the target flinch.
303	Slack Off	The user slacks off, restoring its own HP by up to\nhalf of its max HP.
304	Hyper Voice	The user lets loose a horribly echoing shout with\nthe power to inflict damage.
305	Poison Fang	The user bites the target with toxic fangs. This may\nalso leave the target badly poisoned.
306	Crush Claw	The user slashes the target with hard and sharp\nclaws. This may also lower the target’s Defense stat.
307	Blast Burn	The target is razed by a fiery explosion. The user\ncan’t move on the next turn.
308	Hydro Cannon	The target is hit with a watery blast. The user can’t\nmove on the next turn.
309	Meteor Mash	The target is hit with a hard punch fired like a\nmeteor. This may also raise the user’s Attack stat.
310	Astonish	The user attacks the target while shouting in a\nstartling fashion. This may also make the\ntarget flinch.
311	Weather Ball	This attack move varies in power and type\ndepending on the weather.
312	Aromatherapy	The user releases a soothing scent that heals all\nstatus conditions affecting the user’s party.
313	Fake Tears	The user feigns crying to fluster the target, harshly\nlowering its Sp. Def stat.
314	Air Cutter	The user launches razor-like wind to slash the\nopposing Pokémon. Critical hits land more easily.
315	Overheat	The user attacks the target at full power. The\nattack’s recoil harshly lowers the user’s Sp. Atk stat.
316	Odor Sleuth	Enables a Ghost-type target to be hit by Normal-\nand Fighting-type attacks. This also enables an\nevasive target to be hit.
317	Rock Tomb	Boulders are hurled at the target. This also lowers\nthe target’s Speed stat by preventing its movement.
318	Silver Wind	The target is attacked with powdery scales blown\nby the wind. This may also raise all the user’s stats.
319	Metal Sound	A horrible sound like scraping metal harshly lowers\nthe target’s Sp. Def stat.
320	Grass Whistle	The user plays a pleasant melody that lulls the\ntarget into a deep sleep.
321	Tickle	The user tickles the target into laughing, reducing its\nAttack and Defense stats.
322	Cosmic Power	The user absorbs a mystical power from space to\nraise its Defense and Sp. Def stats.
323	Water Spout	The user spouts water to damage opposing\nPokémon. The lower the user’s HP, the lower the\nmove’s power.
324	Signal Beam	The user attacks with a sinister beam of light.\nThis may also confuse the target.
325	Shadow Punch	The user throws a punch from the shadows. This\nattack never misses.
326	Extrasensory	The user attacks with an odd, unseeable power.\nThis may also make the target flinch.
327	Sky Uppercut	The user attacks the target with an uppercut thrown\nskyward with force.
328	Sand Tomb	The user traps the target inside a harshly raging\nsandstorm for four to five turns.
329	Sheer Cold	The target faints instantly. It’s less likely to hit the\ntarget if it’s used by Pokémon other than Ice types.
330	Muddy Water	The user attacks by shooting muddy water at the\nopposing Pokémon. This may also lower\ntheir accuracy.
331	Bullet Seed	The user forcefully shoots seeds at the target two\nto five times in a row.
332	Aerial Ace	The user confounds the target with speed, then\nslashes. This attack never misses.
333	Icicle Spear	The user launches sharp icicles at the target two to\nfive times in a row.
334	Iron Defense	The user hardens its body’s surface like iron,\nsharply raising its Defense stat.
335	Block	The user blocks the target’s way with arms spread\nwide to prevent escape.
336	Howl	The user howls loudly to raise its spirit, which raises\nits Attack stat.
337	Dragon Claw	The user slashes the target with huge sharp claws.
338	Frenzy Plant	The user slams the target with an enormous tree.\nThe user can’t move on the next turn.
339	Bulk Up	The user tenses its muscles to bulk up its body,\nraising both its Attack and Defense stats.
340	Bounce	The user bounces up high, then drops on the target\non the second turn. This may also leave the target\nwith paralysis.
341	Mud Shot	The user attacks by hurling a blob of mud at the\ntarget. This also lowers the target’s Speed stat.
342	Poison Tail	The user hits the target with its tail. This may also\npoison the target. Critical hits land more easily.
343	Covet	The user endearingly approaches the target, then\nsteals the target’s held item.
344	Volt Tackle	The user electrifies itself and charges the target.\nThis also damages the user quite a lot. This attack\nmay leave the target with paralysis.
345	Magical Leaf	The user scatters curious leaves that chase the\ntarget. This attack never misses.
346	Water Sport	The user soaks the battlefield with water. This\nweakens Fire-type moves for five turns.
347	Calm Mind	The user quietly focuses its mind and calms its\nspirit to raise its Sp. Atk and Sp. Def stats.
348	Leaf Blade	The user handles a sharp leaf like a sword and\nattacks by cutting its target. Critical hits land\nmore easily.
349	Dragon Dance	The user vigorously performs a mystic, powerful\ndance that raises its Attack and Speed stats.
350	Rock Blast	The user hurls hard rocks at the target. Two to five\nrocks are launched in a row.
351	Shock Wave	The user strikes the target with a quick jolt of\nelectricity. This attack never misses.
352	Water Pulse	The user attacks the target with a pulsing blast of\nwater. This may also confuse the target.
353	Doom Desire	Two turns after this move is used, a concentrated\nbundle of light blasts the target.\n
354	Psycho Boost	The user attacks the target at full power. The\nattack’s recoil harshly lowers the user’s\nSp. Atk stat.
355	Roost	The user lands and rests its body. It restores the\nuser’s HP by up to half of its max HP.
356	Gravity	Enables Flying-type Pokémon or Pokémon with the\nLevitate Ability to be hit by Ground-type moves.\nFlying moves can’t be used.
357	Miracle Eye	Enables a Dark-type target to be hit by\nPsychic-type attacks. This also enables an evasive\ntarget to be hit.
358	Wake-Up Slap	This attack inflicts big damage on a sleeping target.\nThis also wakes the target up, however.
359	Hammer Arm	The user swings and hits with its strong, heavy fist.\nIt lowers the user’s Speed, however.
360	Gyro Ball	The user tackles the target with a high-speed spin.\nThe slower the user compared to the target, the\ngreater the move’s power.
361	Healing Wish	The user faints. In return, the Pokémon taking its\nplace will have its HP restored and status\nconditions cured.
362	Brine	If the target’s HP is half or less, this attack will hit\nwith double the power.
363	Natural Gift	The user draws power to attack by using its held\nBerry. The Berry determines the move’s type\nand power.
364	Feint	This attack hits a target using a move such as\nProtect or Detect.\nThis also lifts the effects of those moves.
365	Pluck	The user pecks the target. If the target is holding a\nBerry, the user eats it and gains its effect.
366	Tailwind	The user whips up a turbulent whirlwind that ups\nthe Speed stat of the user and its allies for\nfour turns.
367	Acupressure	The user applies pressure to stress points, sharply\nboosting one of its or its allies’ stats.
368	Metal Burst	The user retaliates with much greater force against\nthe opponent that last inflicted damage on it.
369	U-turn	After making its attack, the user rushes back to\nswitch places with a party Pokémon in waiting.
370	Close Combat	The user fights the target up close without guarding\nitself. This also lowers the user’s Defense and\nSp. Def stats.
371	Payback	The user stores power, then attacks. If the user\nmoves after the target, this attack’s power will\nbe doubled.
372	Assurance	If the target has already taken some damage in the\nsame turn, this attack’s power is doubled.
373	Embargo	This move prevents the target from using its held\nitem for five turns. Its Trainer is also prevented from\nusing items on it.
374	Fling	The user flings its held item at the target to attack.\nThis move’s power and effects depend on the item.
375	Psycho Shift	Using its psychic power of suggestion, the user\ntransfers its status conditions to the target.
376	Trump Card	The fewer PP this move has, the greater its power.
377	Heal Block	For five turns, the user prevents the opposing team\nfrom using any moves, Abilities, or held items that\nrecover HP.
378	Wring Out	The user powerfully wrings the target. The more HP\nthe target has, the greater the move’s power.
379	Power Trick	The user employs its psychic power to switch its\nAttack stat with its Defense stat.
380	Gastro Acid	The user hurls up its stomach acids on the target.\nThe fluid eliminates the effect of the target’s Ability.
381	Lucky Chant	The user chants an incantation toward the sky,\npreventing opposing Pokémon from landing\ncritical hits for five turns.
382	Me First	The user cuts ahead of the target to copy and use\nthe target’s intended move with greater power.\nThis move fails if it isn’t used first.
383	Copycat	The user mimics the move used immediately before\nit. The move fails if no other move has been\nused yet.
384	Power Swap	The user employs its psychic power to switch\nchanges to its Attack and Sp. Atk stats with\nthe target.
385	Guard Swap	The user employs its psychic power to switch\nchanges to its Defense and Sp. Def stats with\nthe target.
386	Punishment	The more the target has powered up with stat\nchanges, the greater the move’s power.
387	Last Resort	This move can be used only after the user has used\nall the other moves it knows in the battle.
\.


--
-- Data for Name: pokemon_moves; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemon_moves (id, pokemon_id, move_id) FROM stdin;
\.


--
-- Data for Name: pokemon_stats; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemon_stats (id, base_stat, stat_id, pokemon_id) FROM stdin;
\.


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemons (id, name, front_default, front_shiny, back_default, back_shiny) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY schema_migrations (version) FROM stdin;
20171024145608
20171024145320
20171024145445
20171024145513
20171024145531
20171024145552
\.


--
-- Data for Name: stat_moves; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY stat_moves (id, stat_id, move_id, stat_change) FROM stdin;
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY stats (id, name) FROM stdin;
\.


--
-- Name: moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('moves_id_seq', 387, true);


--
-- Name: pokemon_moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemon_moves_id_seq', 1, false);


--
-- Name: pokemon_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemon_stats_id_seq', 1, false);


--
-- Name: pokemons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemons_id_seq', 1, false);


--
-- Name: stat_moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('stat_moves_id_seq', 1, false);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('stats_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: moves moves_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY moves
    ADD CONSTRAINT moves_pkey PRIMARY KEY (id);


--
-- Name: pokemon_moves pokemon_moves_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemon_moves
    ADD CONSTRAINT pokemon_moves_pkey PRIMARY KEY (id);


--
-- Name: pokemon_stats pokemon_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemon_stats
    ADD CONSTRAINT pokemon_stats_pkey PRIMARY KEY (id);


--
-- Name: pokemons pokemons_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY pokemons
    ADD CONSTRAINT pokemons_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stat_moves stat_moves_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY stat_moves
    ADD CONSTRAINT stat_moves_pkey PRIMARY KEY (id);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: colesayer
--

ALTER TABLE ONLY stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

