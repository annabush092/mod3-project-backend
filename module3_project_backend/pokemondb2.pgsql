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
401	Aqua Tail	The user attacks by swinging its tail as if it were a\nvicious wave in a raging storm.
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
388	Worry Seed	A seed that causes worry is planted on the target.\nIt prevents sleep by making the target’s\nAbility Insomnia.
389	Sucker Punch	This move enables the user to attack first. This move\nfails if the target is not readying an attack.
390	Toxic Spikes	The user lays a trap of poison spikes at the feet of\nthe opposing team. The spikes will poison opposing\nPokémon that switch into battle.
391	Heart Swap	The user employs its psychic power to switch stat\nchanges with the target.
392	Aqua Ring	The user envelops itself in a veil made of water.\nIt regains some HP every turn.
393	Magnet Rise	The user levitates using electrically generated\nmagnetism for five turns.
394	Flare Blitz	The user cloaks itself in fire and charges the target.\nThis also damages the user quite a lot. This attack\nmay leave the target with a burn.
395	Force Palm	The target is attacked with a shock wave. This may\nalso leave the target with paralysis.
396	Aura Sphere	The user lets loose a blast of aura power from deep\nwithin its body at the target. This attack\nnever misses.
397	Rock Polish	The user polishes its body to reduce drag.\nThis can sharply raise the Speed stat.
398	Poison Jab	The target is stabbed with a tentacle or arm steeped\nin poison. This may also poison the target.
399	Dark Pulse	The user releases a horrible aura imbued with dark\nthoughts. This may also make the target flinch.
400	Night Slash	The user slashes the target the instant an\nopportunity arises. Critical hits land more easily.
402	Seed Bomb	The user slams a barrage of hard-shelled seeds\ndown on the target from above.
403	Air Slash	The user attacks with a blade of air that slices even\nthe sky. This may also make the target flinch.
404	X-Scissor	The user slashes at the target by crossing its\nscythes or claws as if they were a pair of scissors.
405	Bug Buzz	The user generates a damaging sound wave by\nvibration. This may also lower the target’s\nSp. Def stat.
406	Dragon Pulse	The target is attacked with a shock wave generated\nby the user’s gaping mouth.
407	Dragon Rush	The user tackles the target while exhibiting\noverwhelming menace. This may also make the\ntarget flinch.
408	Power Gem	The user attacks with a ray of light that sparkles as\nif it were made of gemstones.
409	Drain Punch	An energy-draining punch. The user’s HP is restored\nby half the damage taken by the target.
410	Vacuum Wave	The user whirls its fists to send a wave of pure\nvacuum at the target. This move always goes first.
411	Focus Blast	The user heightens its mental focus and unleashes\nits power. This may also lower the target’s \nSp. Def stat.
412	Energy Ball	The user draws power from nature and fires it at the\ntarget. This may also lower the target’s Sp. Def stat.
413	Brave Bird	The user tucks in its wings and charges from a low\naltitude. This also damages the user quite a lot.
414	Earth Power	The user makes the ground under the target erupt\nwith power. This may also lower the target’s \nSp. Def stat.
415	Switcheroo	The user trades held items with the target faster\nthan the eye can follow.
416	Giga Impact	The user charges at the target using every bit of its\npower. The user can’t move on the next turn.
417	Nasty Plot	The user stimulates its brain by thinking bad\nthoughts. This sharply raises the user’s Sp. Atk stat.
418	Bullet Punch	The user strikes the target with tough punches as\nfast as bullets. This move always goes first.
419	Avalanche	The power of this attack move is doubled if the user\nhas been hurt by the target in the same turn.
420	Ice Shard	The user flash-freezes chunks of ice and hurls them\nat the target. This move always goes first.
421	Shadow Claw	The user slashes with a sharp claw made from\nshadows. Critical hits land more easily.
422	Thunder Fang	The user bites with electrified fangs. This may also\nmake the target flinch or leave it with paralysis.
423	Ice Fang	The user bites with cold-infused fangs. This may\nalso make the target flinch or leave it frozen.
424	Fire Fang	The user bites with flame-cloaked fangs. This may\nalso make the target flinch or leave it with a burn.
425	Shadow Sneak	The user extends its shadow and attacks the target\nfrom behind. This move always goes first.
426	Mud Bomb	The user launches a hard-packed mud ball to attack.\nThis may also lower the target’s accuracy.
427	Psycho Cut	The user tears at the target with blades formed by\npsychic power. Critical hits land more easily.
428	Zen Headbutt	The user focuses its willpower to its head and\nattacks the target. This may also make the\ntarget flinch.
429	Mirror Shot	The user lets loose a flash of energy at the target\nfrom its polished body. This may also lower the\ntarget’s accuracy.
430	Flash Cannon	The user gathers all its light energy and releases it\nall at once. This may also lower the target’s\nSp. Def stat.
431	Rock Climb	The user attacks the target by smashing into it with\nincredible force. This may also confuse the target.
432	Defog	A strong wind blows away the target’s barriers such\nas Reflect or Light Screen. This also lowers the\ntarget’s evasiveness.
433	Trick Room	The user creates a bizarre area in which slower\nPokémon get to move first for five turns.
434	Draco Meteor	Comets are summoned down from the sky onto the\ntarget. The attack’s recoil harshly lowers the user’s\nSp. Atk stat.
435	Discharge	The user strikes everything around it by letting loose\na flare of electricity. This may also cause paralysis.
436	Lava Plume	The user torches everything around it in an inferno\nof scarlet flames. This may also leave those it hits\nwith a burn.
437	Leaf Storm	The user whips up a storm of leaves around the\ntarget. The attack’s recoil harshly lowers the user’s\nSp. Atk stat.
438	Power Whip	The user violently whirls its vines, tentacles, or the \nlike to harshly lash the target.
439	Rock Wrecker	The user launches a huge boulder at the target to\nattack. The user can’t move on the next turn.
440	Cross Poison	A slashing attack with a poisonous blade that may\nalso poison the target. Critical hits land more easily.
441	Gunk Shot	The user shoots filthy garbage at the target to\nattack. This may also poison the target.
442	Iron Head	The user slams the target with its steel-hard head.\nThis may also make the target flinch.
443	Magnet Bomb	The user launches steel bombs that stick to the\ntarget. This attack never misses.
444	Stone Edge	The user stabs the target from below with\nsharpened stones. Critical hits land more easily.
445	Captivate	If any opposing Pokémon is the opposite gender of\nthe user, it is charmed, which harshly lowers its\nSp. Atk stat.
446	Stealth Rock	The user lays a trap of levitating stones around the\nopposing team. The trap hurts opposing Pokémon\nthat switch into battle.
447	Grass Knot	The user snares the target with grass and trips it.\nThe heavier the target, the greater the\nmove’s power.
448	Chatter	The user attacks the target with sound waves of\ndeafening chatter. This confuses the target.
449	Judgment	The user releases countless shots of light at the\ntarget. This move’s type varies depending on the\nkind of Plate the user is holding.
450	Bug Bite	The user bites the target. If the target is holding a\nBerry, the user eats it and gains its effect.
451	Charge Beam	The user attacks with an electric charge. The user\nmay use any remaining electricity to raise its\nSp. Atk stat.
452	Wood Hammer	The user slams its rugged body into the target to\nattack. This also damages the user quite a lot.
453	Aqua Jet	The user lunges at the target at a speed that makes\nit almost invisible. This move always goes first.
454	Attack Order	The user calls out its underlings to pummel the\ntarget. Critical hits land more easily.
455	Defend Order	The user calls out its underlings to shield its body,\nraising its Defense and Sp. Def stats.
500	Defend Order	The user calls out its underlings to shield its body,\nraising its Defense and Sp. Def stats.
501	Heal Order	The user calls out its underlings to heal it. The user\nregains up to half of its max HP.
502	Head Smash	The user attacks the target with a hazardous,\nfull-power headbutt. This also damages the\nuser terribly.
503	Double Hit	The user slams the target with a long tail, vines, or a\ntentacle. The target is hit twice in a row.
504	Roar of Time	The user blasts the target with power that distorts\neven time. The user can’t move on the next turn.
505	Spacial Rend	The user tears the target along with the space\naround it. Critical hits land more easily.
506	Lunar Dance	The user faints. In return, the Pokémon taking its\nplace will have its status and HP fully restored.
507	Crush Grip	The target is crushed with great force. The more HP\nthe target has left, the greater this move’s power.
508	Magma Storm	The target becomes trapped within a maelstrom of\nfire that rages for four to five turns.
509	Dark Void	Opposing Pokémon are dragged into a world of total\ndarkness that makes them sleep.
510	Seed Flare	The user emits a shock wave from its body to attack\nits target. This may also harshly lower the target’s\nSp. Def stat.
511	Ominous Wind	The user blasts the target with a gust of repulsive\nwind. This may also raise all the user’s stats at once.
512	Shadow Force	The user disappears, then strikes the target on the\nnext turn. This move hits even if the target\nprotects itself.
513	Hone Claws	The user sharpens its claws to boost its Attack stat\nand accuracy.
514	Wide Guard	The user and its allies are protected from\nwide-ranging attacks for one turn.
515	Guard Split	The user employs its psychic power to average its\nDefense and Sp. Def stats with those of the target.
516	Power Split	The user employs its psychic power to average its\nAttack and Sp. Atk stats with those of the target.
517	Wonder Room	The user creates a bizarre area in which Pokémon’s\nDefense and Sp. Def stats are swapped for\nfive turns.
518	Psyshock	The user materializes an odd psychic wave to attack\nthe target. This attack does physical damage.
519	Venoshock	The user drenches the target in a special poisonous\nliquid. This move’s power is doubled if the target\nis poisoned.
520	Autotomize	The user sheds part of its body to make itself lighter\nand sharply raise its Speed stat.
521	Rage Powder	The user scatters a cloud of irritating powder to\ndraw attention to itself. Opponents aim only at\nthe user.
522	Telekinesis	The user makes the target float with its psychic\npower. The target is easier to hit for three turns.
523	Magic Room	The user creates a bizarre area in which Pokémon’s\nheld items lose their effects for five turns.
524	Smack Down	The user throws a stone or similar projectile to\nattack an opponent. A flying Pokémon will fall to the\nground when it’s hit.
525	Storm Throw	The user strikes the target with a fierce blow. This\nattack always results in a critical hit.
526	Flame Burst	The user attacks the target with a bursting flame.\nThe bursting flame damages Pokémon next to the\ntarget as well.
527	Sludge Wave	The user strikes everything around it by swamping\nthe area with a giant sludge wave. This may also\npoison those hit.
528	Quiver Dance	The user lightly performs a beautiful, mystic dance.\nThis boosts the user’s Sp. Atk, Sp. Def, and\nSpeed stats.
529	Heavy Slam	The user slams into the target with its heavy body.\nThe more the user outweighs the target, the greater\nthe move’s power.
530	Synchronoise	Using an odd shock wave, the user inflicts damage\non any Pokémon of the same type in the area\naround it.
531	Electro Ball	The user hurls an electric orb at the target. The\nfaster the user is than the target, the greater the\nmove’s power.
532	Soak	The user shoots a torrent of water at the target and\nchanges the target’s type to Water.
533	Flame Charge	Cloaking itself in flame, the user attacks. Then,\nbuilding up more power, the user raises its\nSpeed stat.
534	Coil	The user coils up and concentrates. This raises its\nAttack and Defense stats as well as its accuracy.
535	Low Sweep	The user makes a swift attack on the target’s legs,\nwhich lowers the target’s Speed stat.
536	Acid Spray	The user spits fluid that works to melt the target.\nThis harshly lowers the target’s Sp. Def stat.
537	Foul Play	The user turns the target’s power against it. The\nhigher the target’s Attack stat, the greater the\nmove’s power.
538	Simple Beam	The user’s mysterious psychic wave changes the\ntarget’s Ability to Simple.
539	Entrainment	The user dances with an odd rhythm that compels\nthe target to mimic it, making the target’s Ability\nthe same as the user’s.
540	After You	The user helps the target and makes it use its move\nright after the user.
541	Round	The user attacks the target with a song. Others can\njoin in the Round to increase the power of\nthe attack.
542	Echoed Voice	The user attacks the target with an echoing voice.\nIf this move is used every turn, its power\nis increased.
543	Chip Away	Looking for an opening, the user strikes consistently.\nThe target’s stat changes don’t affect this\nattack’s damage.
544	Clear Smog	The user attacks by throwing a clump of special\nmud. All stat changes are returned to normal.
545	Stored Power	The user attacks the target with stored power. The\nmore the user’s stats are raised, the greater the\nmove’s power.
546	Quick Guard	The user protects itself and its allies from\npriority moves.
547	Ally Switch	The user teleports using a strange power and\nswitches places with one of its allies.
548	Scald	The user shoots boiling hot water at its target.\nThis may also leave the target with a burn.
549	Shell Smash	The user breaks its shell, which lowers Defense and\nSp. Def stats but sharply raises its Attack, Sp. Atk,\nand Speed stats.
550	Heal Pulse	The user emits a healing pulse that restores the\ntarget’s HP by up to half of its max HP.
551	Hex	This relentless attack does massive damage to a\ntarget affected by status conditions.
552	Sky Drop	The user takes the target into the sky, then drops it\nduring the next turn. The target cannot attack while\nin the sky.
553	Shift Gear	The user rotates its gears, raising its Attack stat and\nsharply raising its Speed stat.
554	Circle Throw	The target is thrown, and a different Pokémon is\ndragged out. In the wild, this ends a battle against\na single Pokémon.
555	Incinerate	The user attacks opposing Pokémon with fire.\nIf a Pokémon is holding a certain item, such as a\nBerry, the item becomes burned up and unusable.
556	Quash	The user suppresses the target and makes its move\ngo last.
557	Acrobatics	The user nimbly strikes the target. If the user is not\nholding an item, this attack inflicts massive damage.
558	Reflect Type	The user reflects the target’s type, making it the\nsame type as the target.
559	Retaliate	The user gets revenge for a fainted ally. If an ally\nfainted in the previous turn, this move’s power\nis increased.
560	Final Gambit	The user risks everything to attack its target. The\nuser faints but does damage equal to its HP.
561	Bestow	The user passes its held item to the target when the\ntarget isn’t holding an item.
562	Inferno	The user attacks by engulfing the target in an\nintense fire. This leaves the target with a burn.
563	Water Pledge	A column of water strikes the target. When combined\nwith its fire equivalent, its power increases and a\nrainbow appears.
564	Fire Pledge	A column of fire hits the target. When used with its\ngrass equivalent, its power increases and a vast sea\nof fire appears.
565	Grass Pledge	A column of grass hits the target. When used with\nits water equivalent, its power increases and a vast\nswamp appears.
566	Volt Switch	After making its attack, the user rushes back to\nswitch places with a party Pokémon in waiting.
567	Struggle Bug	While resisting, the user attacks the opposing\nPokémon. This lowers the Sp. Atk stat of those hit.
568	Bulldoze	The user strikes everything around it by stomping\ndown on the ground. This lowers the Speed stat of\nthose hit.
569	Frost Breath	The user blows its cold breath on the target. This\nattack always results in a critical hit.
570	Dragon Tail	The target is knocked away, and a different Pokémon\nis dragged out. In the wild, this ends a battle against\na single Pokémon.
571	Work Up	The user is roused, and its Attack and Sp. Atk\nstats increase.
572	Electroweb	The user attacks and captures opposing Pokémon\nusing an electric net. This lowers their Speed stat.
573	Wild Charge	The user shrouds itself in electricity and smashes\ninto its target. This also damages the user a little.
574	Drill Run	The user crashes into its target while rotating its\nbody like a drill. Critical hits land more easily.
575	Dual Chop	The user attacks its target by hitting it with brutal\nstrikes. The target is hit twice in a row.
576	Heart Stamp	The user unleashes a vicious blow after its cute act\nmakes the target less wary. This may also make the\ntarget flinch.
577	Horn Leech	The user drains the target’s energy with its horns.\nThe user’s HP is restored by half the damage taken\nby the target.
578	Sacred Sword	The user attacks by slicing with a long horn. The\ntarget’s stat changes don’t affect this\nattack’s damage.
579	Razor Shell	The user cuts its target with sharp shells. This may\nalso lower the target’s Defense stat.
580	Heat Crash	The user slams its target with its flame-covered\nbody. The more the user outweighs the target, the\ngreater the move’s power.
581	Leaf Tornado	The user attacks its target by encircling it in sharp\nleaves. This attack may also lower the\ntarget’s accuracy.
582	Steamroller	The user crushes its target by rolling over the target\nwith its rolled-up body. This may also make the\ntarget flinch.
583	Cotton Guard	The user protects itself by wrapping its body in soft\ncotton, which drastically raises the user’s\nDefense stat.
584	Night Daze	The user lets loose a pitch-black shock wave at its\ntarget. This may also lower the target’s accuracy.
585	Psystrike	The user materializes an odd psychic wave to attack\nthe target. This attack does physical damage.
586	Tail Slap	The user attacks by striking the target with its hard\ntail. It hits the target two to five times in a row.
587	Hurricane	The user attacks by wrapping its opponent in a\nfierce wind that flies up into the sky. This may also\nconfuse the target.
588	Head Charge	The user charges its head into its target, using its\npowerful guard hair. This also damages the user\na little.
589	Gear Grind	The user attacks by throwing steel gears at its\ntarget twice.
590	Searing Shot	The user torches everything around it in an inferno\nof scarlet flames. This may also leave those it hits\nwith a burn.
591	Techno Blast	The user fires a beam of light at its target. The\nmove’s type changes depending on the Drive the\nuser holds.
592	Relic Song	The user sings an ancient song and attacks by\nappealing to the hearts of the listening opposing\nPokémon. This may also induce sleep.
593	Secret Sword	The user cuts with its long horn. The odd power\ncontained in the horn does physical damage to\nthe target.
594	Glaciate	The user attacks by blowing freezing cold air at\nopposing Pokémon. This lowers their Speed stat.
595	Bolt Strike	The user surrounds itself with a great amount of\nelectricity and charges its target. This may also\nleave the target with paralysis.
596	Blue Flare	The user attacks by engulfing the target in an\nintense, yet beautiful, blue flame. This may also leave\nthe target with a burn.
597	Fiery Dance	Cloaked in flames, the user dances and flaps its\nwings. This may also raise the user’s Sp. Atk stat.
598	Freeze Shock	On the second turn, the user hits the target with\nelectrically charged ice. This may also leave the\ntarget with paralysis.
599	Ice Burn	On the second turn, an ultracold, freezing wind\nsurrounds the target. This may leave the target with\na burn.
600	Snarl	The user yells as if it’s ranting about something,\nwhich lowers the Sp. Atk stat of opposing Pokémon.
601	Icicle Crash	The user attacks by harshly dropping large icicles\nonto the target. This may also make the target flinch.
602	V-create	With a hot flame on its forehead, the user hurls itself\nat its target. This lowers the user’s Defense, Sp. Def,\nand Speed stats.
603	Fusion Flare	The user brings down a giant flame. This move’s\npower is increased when influenced by an enormous\nlightning bolt.
604	Fusion Bolt	The user throws down a giant lightning bolt. This\nmove’s power is increased when influenced by an\nenormous flame.
605	Flying Press	The user dives down onto the target from the sky.\nThis move is Fighting and Flying type simultaneously.
606	Mat Block	Using a pulled-up mat as a shield, the user protects\nitself and its allies from damaging moves. This does\nnot stop status moves.
607	Belch	The user lets out a damaging belch at the target.\nThe user must eat a held Berry to use this move.
608	Rototiller	Tilling the soil, the user makes it easier for plants to\ngrow. This raises the Attack and Sp. Atk stats of\nGrass-type Pokémon.
609	Sticky Web	The user weaves a sticky net around the opposing\nteam, which lowers their Speed stat upon switching\ninto battle.
610	Fell Stinger	When the user knocks out a target with this move,\nthe user’s Attack stat rises drastically.
611	Phantom Force	The user vanishes somewhere, then strikes the\ntarget on the next turn. This move hits even if the\ntarget protects itself.
612	Trick-or-Treat	The user takes the target trick-or-treating.\nThis adds Ghost type to the target’s type.
613	Noble Roar	Letting out a noble roar, the user intimidates the\ntarget and lowers its Attack and Sp. Atk stats.
614	Ion Deluge	The user disperses electrically charged particles,\nwhich changes Normal-type moves to\nElectric-type moves.
615	Parabolic Charge	The user attacks everything around it. The user’s HP\nis restored by half the damage taken by those hit.
616	Forest’s Curse	The user puts a forest curse on the target.\nThe target is now Grass type as well.
617	Petal Blizzard	The user stirs up a violent petal blizzard and attacks\neverything around it.
618	Freeze-Dry	The user rapidly cools the target. This may also\nleave the target frozen. This move is super effective\non Water types.
619	Disarming Voice	Letting out a charming cry, the user does emotional\ndamage to opposing Pokémon. This attack\nnever misses.
620	Parting Shot	With a parting threat, the user lowers the target’s\nAttack and Sp. Atk stats. Then it switches with a\nparty Pokémon.
621	Topsy-Turvy	All stat changes affecting the target turn\ntopsy-turvy and become the opposite of what\nthey were.
622	Draining Kiss	The user steals the target’s HP with a kiss. The\nuser’s HP is restored by over half of the damage\ntaken by the target.
623	Crafty Shield	The user protects itself and its allies from status\nmoves with a mysterious power. This does not stop\nmoves that do damage.
624	Flower Shield	The user raises the Defense stat of all Grass-type\nPokémon in battle with a mysterious power.
625	Grassy Terrain	The user turns the ground to grass for five turns.\nThis restores the HP of Pokémon on the ground a\nlittle every turn and powers up Grass type-moves.
626	Misty Terrain	This protects Pokémon on the ground from status\nconditions and halves damage from Dragon-type\nmoves for five turns.
627	Electrify	If the target is electrified before it uses a move\nduring that turn, the target’s move becomes\nElectric type.
628	Play Rough	The user plays rough with the target and attacks it.\nThis may also lower the target’s Attack stat.
629	Fairy Wind	The user stirs up a fairy wind and strikes the target\nwith it.
630	Moonblast	Borrowing the power of the moon, the user attacks\nthe target. This may also lower the target’s\nSp. Atk stat.
631	Boomburst	The user attacks everything around it with the\ndestructive power of a terrible, explosive sound.
632	Fairy Lock	By locking down the battlefield, the user keeps all\nPokémon from fleeing during the next turn.
633	King’s Shield	The user takes a defensive stance while it protects\nitself from damage. It also harshly lowers the Attack\nstat of any attacker who makes direct contact.
634	Play Nice	The user and the target become friends, and the\ntarget loses its will to fight. This lowers the target’s\nAttack stat.
635	Confide	The user tells the target a secret, and the target\nloses its ability to concentrate. This lowers\nthe target’s Sp. Atk stat.
636	Diamond Storm	The user whips up a storm of diamonds to damage\nopposing Pokémon. This may also sharply raise the\nuser’s Defense stat.
637	Steam Eruption	The user immerses the target in superheated steam.\nThis may also leave the target with a burn.
638	Hyperspace Hole	Using a hyperspace hole, the user appears right\nnext to the target and strikes. This also hits a target\nusing a move such as Protect or Detect.
639	Water Shuriken	The user hits the target with throwing stars two to\nfive times in a row. This move always goes first.
640	Mystical Fire	The user attacks by breathing a special, hot fire.\nThis also lowers the target’s Sp. Atk stat.
641	Spiky Shield	In addition to protecting the user from attacks, this\nmove also damages any attacker who makes\ndirect contact.
642	Aromatic Mist	The user raises the Sp. Def stat of an ally Pokémon\nby using a mysterious aroma.
643	Eerie Impulse	The user’s body generates an eerie impulse.\nExposing the target to it harshly lowers the target’s\nSp. Atk stat.
644	Venom Drench	Opposing Pokémon are drenched in an odd\npoisonous liquid. This lowers the Attack, Sp. Atk, and\nSpeed stats of a poisoned target.
645	Powder	The user covers the target in a combustible powder.\nIf the target uses a Fire-type move, the powder\nexplodes and damages the target.
646	Geomancy	The user absorbs energy and sharply raises its\nSp. Atk, Sp. Def, and Speed stats on the next turn.
647	Magnetic Flux	The user manipulates magnetic fields, which raises\nthe Defense and Sp. Def stats of ally Pokémon with\nthe Plus or Minus Ability.
648	Happy Hour	Using Happy Hour doubles the amount of prize\nmoney received after battle.
649	Electric Terrain	The user electrifies the ground for five turns,\npowering up Electric-type moves. Pokémon on the\nground no longer fall asleep.
650	Dazzling Gleam	The user damages opposing Pokémon by emitting a\npowerful flash.
651	Celebrate	The Pokémon congratulates you on your special day!
652	Hold Hands	The user and an ally hold hands. This makes them\nvery happy.
653	Baby-Doll Eyes	The user stares at the target with its baby-doll\neyes, which lowers its Attack stat. This move always\ngoes first.
654	Nuzzle	The user attacks by nuzzling its electrified cheeks\nagainst the target. This also leaves the target\nwith paralysis.
655	Hold Back	The user holds back when it attacks, and the target\nis left with at least 1 HP.
656	Infestation	The target is infested and attacked for four to five\nturns. The target can’t flee during this time.
657	Power-Up Punch	Striking opponents over and over makes the user’s\nfists harder. Hitting a target raises the Attack stat.
658	Oblivion Wing	The user absorbs its target’s HP. The user’s HP is\nrestored by over half of the damage taken by\nthe target.
659	Thousand Arrows	This move also hits opposing Pokémon that are in\nthe air. Those Pokémon are knocked down to\nthe ground.
660	Thousand Waves	The user attacks with a wave that crawls along the\nground. Those hit can’t flee from battle.
661	Land’s Wrath	The user gathers the energy of the land and focuses\nthat power on opposing Pokémon to damage them.
662	Light of Ruin	Drawing power from the Eternal Flower, the user\nfires a powerful beam of light. This also damages the\nuser quite a lot.
663	Origin Pulse	The user attacks opposing Pokémon with countless\nbeams of light that glow a deep and brilliant blue.
664	Precipice Blades	The user attacks opposing Pokémon by manifesting\nthe power of the land in fearsome blades of stone.
665	Dragon Ascent	After soaring upward, the user attacks its target by\ndropping out of the sky at high speeds. But it lowers\nits own Defense and Sp. Def stats in the process.
666	Hyperspace Fury	Using its many arms, the user unleashes a barrage of\nattacks that ignore the effects of moves like Protect\nand Detect. But the user’s Defense stat falls.
667	Breakneck Blitz	The user builds up its momentum using its Z-Power\nand crashes into the target at full speed. The power\nvaries, depending on the original move.
668	Breakneck Blitz	Dummy Data
669	All-Out Pummeling	The user rams an energy orb created by its Z-Power\ninto the target with full force. The power varies,\ndepending on the original move.
670	All-Out Pummeling	Dummy Data
671	Supersonic Skystrike	The user soars up with its Z-Power and plummets\ntoward the target at full speed. The power varies,\ndepending on the original move.
672	Supersonic Skystrike	Dummy Data
673	Acid Downpour	The user creates a poisonous swamp using its\nZ-Power and sinks the target into it at full force.\nThe power varies, depending on the original move.
674	Acid Downpour	Dummy Data
675	Tectonic Rage	The user burrows deep into the ground and slams\ninto the target with the full force of its Z-Power.\nThe power varies, depending on the original move.
676	Tectonic Rage	Dummy Data
677	Continental Crush	The user summons a huge rock mountain using its\nZ-Power and drops it onto the target with full force.\nThe power varies, depending on the original move.
678	Continental Crush	Dummy Data
679	Savage Spin-Out	The user binds the target with full force with\nthreads of silk that the user spits using its Z-Power.\nThe power varies, depending on the original move.
680	Savage Spin-Out	Dummy Data
681	Never-Ending Nightmare	Deep-seated grudges summoned by the user’s\nZ-Power trap the target. The power varies,\ndepending on the original move.
682	Never-Ending Nightmare	Dummy Data
683	Corkscrew Crash	The user spins very fast and rams into the target\nwith the full force of its Z-Power. The power varies,\ndepending on the original move.
684	Corkscrew Crash	Dummy Data
685	Inferno Overdrive	The user breathes a stream of intense fire toward\nthe target with the full force of its Z-Power.\nThe power varies depending on the original move.
686	Inferno Overdrive	Dummy Data
687	Hydro Vortex	The user creates a huge whirling current using\nits Z-Power to swallow the target with full force.\nThe power varies, depending on the original move.
688	Hydro Vortex	Dummy Data
689	Bloom Doom	The user collects energy from plants using its\nZ-Power and attacks the target with full force.\nThe power varies, depending on the original move.
690	Bloom Doom	Dummy Data
691	Gigavolt Havoc	The user hits the target with a powerful electric\ncurrent collected by its Z-Power. The power varies,\ndepending on the original move.
692	Gigavolt Havoc	Dummy Data
693	Shattered Psyche	The user controls the target with its Z-Power and\nhurts the target with full force. The power varies,\ndepending on the original move.
694	Shattered Psyche	Dummy Data
695	Subzero Slammer	The user dramatically drops the temperature using\nits Z-Power and freezes the target with full force.\nThe power varies, depending on the original move.
696	Subzero Slammer	Dummy Data
697	Devastating Drake	The user materializes its aura using its Z-Power and\nattacks the target with full force. The power varies,\ndepending on the original move.
698	Devastating Drake	Dummy Data
699	Black Hole Eclipse	The user gathers dark energy using its Z-Power\nand sucks the target into it. The power varies,\ndepending on the original move.
700	Black Hole Eclipse	Dummy Data
701	Twinkle Tackle	The user creates a very charming space using its\nZ-Power and totally toys with the target. The power\nvaries, depending on the original move.
702	Twinkle Tackle	Dummy Data
703	Catastropika	The user, Pikachu, surrounds itself with the\nmaximum amount of electricity using its Z-Power\nand pounces on its target with full force.
704	Shore Up	The user regains up to half of its max HP. It restores\nmore HP in a sandstorm.
705	First Impression	Although this move has great power, it only works\nthe first turn the user is in battle.
706	Baneful Bunker	In addition to protecting the user from attacks, this\nmove also poisons any attacker that makes\ndirect contact.
707	Spirit Shackle	The user attacks while simultaneously stitching the\ntarget’s shadow to the ground to prevent the target\nfrom escaping.
708	Darkest Lariat	The user swings both arms and hits the target.\nThe target’s stat changes don’t affect this\nattack’s damage.
709	Sparkling Aria	The user bursts into song, emitting many bubbles.\nAny Pokémon suffering from a burn will be healed\nby the touch of these bubbles.
710	Ice Hammer	The user swings and hits with its strong, heavy fist.\nIt lowers the user’s Speed, however.
711	Floral Healing	The user restores the target’s HP by up to half of its\nmax HP. It restores more HP when the terrain\nis grass.
712	High Horsepower	The user fiercely attacks the target using its\nentire body.
713	Strength Sap	The user restores its HP by the same amount as the\ntarget’s Attack stat. It also lowers the target’s\nAttack stat.
714	Solar Blade	In this two-turn attack, the user gathers light and\nfills a blade with the light’s energy, attacking the\ntarget on the next turn.
715	Leafage	The user attacks by pelting the target with leaves.
716	Spotlight	The user shines a spotlight on the target so that\nonly the target will be attacked during the turn.
717	Toxic Thread	The user shoots poisonous threads to poison the\ntarget and lower the target’s Speed stat.
718	Laser Focus	The user concentrates intensely. The attack on the\nnext turn always results in a critical hit.
719	Gear Up	The user engages its gears to raise the Attack and\nSp. Atk stats of ally Pokémon with the Plus or\nMinus Ability.
720	Throat Chop	The user attacks the target’s throat, and the\nresultant suffering prevents the target from using\nmoves that emit sound for two turns.
721	Pollen Puff	The user attacks the enemy with a pollen puff that\nexplodes. If the target is an ally, it gives the ally a\npollen puff that restores its HP instead.
722	Anchor Shot	The user entangles the target with its anchor chain\nwhile attacking. The target becomes unable to flee.
723	Psychic Terrain	This protects Pokémon on the ground from priority\nmoves and powers up Psychic-type moves for\nfive turns.
724	Lunge	The user makes a lunge at the target, attacking with\nfull force. This also lowers the target’s Attack stat.
725	Fire Lash	The user strikes the target with a burning lash. This\nalso lowers the target’s Defense stat.
726	Power Trip	The user boasts its strength and attacks the target.\nThe more the user’s stats are raised, the greater the\nmove’s power.
727	Burn Up	To inflict massive damage, the user burns itself out.\nAfter using this move, the user will no longer be\nFire type.
728	Speed Swap	The user exchanges Speed stats with the target.
729	Smart Strike	The user stabs the target with a sharp horn. This\nattack never misses.
730	Purify	The user heals the target’s status condition. If the\nmove succeeds, it also restores the user’s own HP.
731	Revelation Dance	The user attacks the target by dancing very hard.\nThe user’s type determines the type of this move.
732	Core Enforcer	If the Pokémon the user has inflicted damage on\nhave already used their moves, this move eliminates\nthe effect of the target’s Ability.
733	Trop Kick	The user lands an intense kick of tropical origins on\nthe target. This also lowers the target’s Attack stat.
734	Instruct	The user instructs the target to use the target’s last\nmove again.
735	Beak Blast	The user first heats up its beak, and then it attacks\nthe target. Making direct contact with the Pokémon\nwhile it’s heating up its beak results in a burn.
736	Clanging Scales	The user rubs the scales on its entire body and\nmakes a huge noise to attack the opposing Pokémon.\nThe user’s Defense stat goes down after the attack.
737	Dragon Hammer	The user uses its body like a hammer to attack the\ntarget and inflict damage.
738	Brutal Swing	The user swings its body around violently to inflict\ndamage on everything in its vicinity.
739	Aurora Veil	This move reduces damage from physical and\nspecial moves for five turns. This can be used only\nin a hailstorm.
740	Sinister Arrow Raid	The user, Decidueye, creates countless arrows\nusing its Z-Power and shoots the target with\nfull force.
741	Malicious Moonsault	The user, Incineroar, strengthens its body using\nits Z-Power and crashes into the target with\nfull force.
742	Oceanic Operetta	The user, Primarina, summons a massive amount of \nwater using its Z-Power and attacks the target with \nfull force.
743	Guardian of Alola	The user, the Land Spirit Pokémon, obtains Alola’s\nenergy using its Z-Power and attacks the target with\nfull force. This reduces the target’s HP greatly.
744	Soul-Stealing 7-Star Strike	After obtaining Z-Power, the user, Marshadow,\npunches and kicks the target consecutively\nwith full force.
745	Stoked Sparksurfer	After obtaining Z-Power, the user, Alolan Raichu,\nattacks the target with full force. This move leaves\nthe target with paralysis.
\.


--
-- Data for Name: pokemon_moves; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemon_moves (id, pokemon_id, move_id) FROM stdin;
1	1	13
2	1	14
3	1	15
4	1	20
5	1	22
6	1	29
7	1	33
8	1	34
9	1	36
10	1	38
11	1	45
12	1	70
13	1	72
14	1	73
15	1	74
16	1	75
17	1	76
18	1	77
19	1	79
20	1	80
21	1	81
22	1	92
23	1	99
24	1	102
25	1	104
26	1	111
27	1	113
28	1	115
29	1	117
30	1	124
31	1	130
32	1	133
33	1	148
34	1	156
35	1	164
36	1	173
37	1	174
38	1	182
39	1	188
40	1	189
41	1	202
42	1	203
43	1	204
44	1	207
45	1	210
46	1	213
47	1	214
48	1	216
49	1	218
50	1	219
51	1	230
52	1	235
53	1	237
54	1	241
55	1	249
56	1	263
57	1	267
58	1	275
59	1	282
60	1	290
61	1	320
62	1	331
63	1	345
64	1	363
65	1	388
66	1	402
67	1	412
68	1	437
69	1	438
70	1	445
71	1	447
72	1	520
73	1	526
74	1	580
75	1	590
76	2	14
77	2	15
78	2	20
79	2	22
80	2	29
81	2	33
82	2	34
83	2	36
84	2	38
85	2	45
86	2	70
87	2	72
88	2	73
89	2	74
90	2	75
91	2	76
92	2	77
93	2	79
94	2	81
95	2	92
96	2	99
97	2	102
98	2	104
99	2	111
100	2	113
101	2	115
102	2	117
103	2	148
104	2	156
105	2	164
106	2	173
107	2	174
108	2	182
109	2	188
110	2	189
111	2	202
112	2	203
113	2	207
114	2	210
115	2	213
116	2	214
117	2	216
118	2	218
119	2	219
120	2	230
121	2	235
122	2	237
123	2	241
124	2	249
125	2	263
126	2	267
127	2	282
128	2	290
129	2	331
130	2	363
131	2	388
132	2	402
133	2	412
134	2	445
135	2	447
136	2	520
137	2	526
138	2	590
139	3	14
140	3	15
141	3	20
142	3	22
143	3	29
144	3	33
145	3	34
146	3	36
147	3	38
148	3	45
149	3	46
150	3	63
151	3	70
152	3	72
153	3	73
154	3	74
155	3	75
156	3	76
157	3	77
158	3	79
159	3	80
160	3	81
161	3	89
162	3	92
163	3	99
164	3	102
165	3	104
166	3	111
167	3	113
168	3	115
169	3	117
170	3	148
171	3	156
172	3	164
173	3	173
174	3	174
175	3	182
176	3	188
177	3	189
178	3	200
179	3	202
180	3	203
181	3	207
182	3	210
183	3	213
184	3	214
185	3	216
186	3	218
187	3	219
188	3	230
189	3	235
190	3	237
191	3	241
192	3	249
193	3	263
194	3	267
195	3	282
196	3	290
197	3	331
198	3	335
199	3	338
200	3	363
201	3	388
202	3	402
203	3	412
204	3	416
205	3	431
206	3	445
207	3	447
208	3	520
209	3	523
210	3	526
211	3	572
212	3	590
213	4	5
214	4	7
215	4	9
216	4	10
217	4	14
218	4	15
219	4	25
220	4	29
221	4	34
222	4	36
223	4	38
224	4	43
225	4	44
226	4	45
227	4	52
228	4	53
229	4	66
230	4	68
231	4	69
232	4	70
233	4	82
234	4	83
235	4	91
236	4	92
237	4	99
238	4	102
239	4	104
240	4	108
241	4	111
242	4	115
243	4	117
244	4	126
245	4	129
246	4	130
247	4	156
248	4	157
249	4	163
250	4	164
251	4	173
252	4	174
253	4	182
254	4	184
255	4	187
256	4	189
257	4	200
258	4	203
259	4	207
260	4	210
261	4	213
262	4	214
263	4	216
264	4	218
265	4	223
266	4	225
267	4	231
268	4	232
269	4	237
270	4	241
271	4	242
272	4	246
273	4	249
274	4	251
275	4	257
276	4	261
277	4	263
278	4	264
279	4	280
280	4	290
281	4	314
282	4	315
283	4	317
284	4	332
285	4	337
286	4	349
287	4	363
288	4	374
289	4	394
290	4	406
291	4	407
292	4	421
293	4	424
294	4	445
295	4	510
296	4	517
297	4	519
298	4	526
299	4	590
300	4	612
301	5	5
302	5	7
303	5	9
304	5	10
305	5	14
306	5	15
307	5	25
308	5	29
309	5	34
310	5	36
311	5	38
312	5	43
313	5	45
314	5	52
315	5	53
316	5	66
317	5	68
318	5	69
319	5	70
320	5	82
321	5	83
322	5	91
323	5	92
324	5	99
325	5	102
326	5	104
327	5	108
328	5	111
329	5	115
330	5	117
331	5	126
332	5	129
333	5	130
334	5	156
335	5	157
336	5	163
337	5	164
338	5	173
339	5	174
340	5	182
341	5	184
342	5	189
343	5	200
344	5	203
345	5	207
346	5	210
347	5	213
348	5	214
349	5	216
350	5	218
351	5	223
352	5	225
353	5	231
354	5	232
355	5	237
356	5	241
357	5	249
358	5	257
359	5	261
360	5	263
361	5	264
362	5	280
363	5	290
364	5	315
365	5	317
366	5	332
367	5	337
368	5	363
369	5	374
370	5	406
371	5	421
372	5	424
373	5	445
374	5	510
375	5	517
376	5	519
377	5	526
378	5	590
379	5	612
380	6	5
381	6	7
382	6	9
383	6	10
384	6	14
385	6	15
386	6	17
387	6	19
388	6	25
389	6	29
390	6	34
391	6	36
392	6	38
393	6	43
394	6	45
395	6	46
396	6	52
397	6	53
398	6	63
399	6	66
400	6	68
401	6	69
402	6	70
403	6	76
404	6	82
405	6	83
406	6	89
407	6	90
408	6	91
409	6	92
410	6	99
411	6	102
412	6	104
413	6	108
414	6	111
415	6	115
416	6	117
417	6	126
418	6	129
419	6	130
420	6	156
421	6	157
422	6	163
423	6	164
424	6	173
425	6	174
426	6	182
427	6	184
428	6	189
429	6	200
430	6	201
431	6	203
432	6	207
433	6	210
434	6	211
435	6	213
436	6	214
437	6	216
438	6	218
439	6	223
440	6	225
441	6	231
442	6	232
443	6	237
444	6	239
445	6	241
446	6	249
447	6	257
448	6	261
449	6	263
450	6	264
451	6	280
452	6	290
453	6	307
454	6	314
455	6	315
456	6	317
457	6	332
458	6	337
459	6	355
460	6	363
461	6	366
462	6	374
463	6	394
464	6	403
465	6	406
466	6	411
467	6	416
468	6	421
469	6	424
470	6	432
471	6	445
472	6	507
473	6	510
474	6	517
475	6	519
476	6	523
477	6	525
478	6	526
479	6	590
480	6	612
481	6	693
482	7	5
483	7	8
484	7	25
485	7	29
486	7	33
487	7	34
488	7	36
489	7	38
490	7	39
491	7	44
492	7	54
493	7	55
494	7	56
495	7	57
496	7	58
497	7	59
498	7	61
499	7	66
500	7	68
501	7	69
502	7	70
503	7	91
504	7	92
505	7	93
506	7	99
507	7	102
508	7	104
509	7	110
510	7	111
511	7	114
512	7	115
513	7	117
514	7	127
515	7	130
516	7	145
517	7	156
518	7	164
519	7	173
520	7	174
521	7	175
522	7	182
523	7	189
524	7	193
525	7	196
526	7	203
527	7	205
528	7	207
529	7	213
530	7	214
531	7	216
532	7	218
533	7	223
534	7	229
535	7	231
536	7	237
537	7	240
538	7	243
539	7	249
540	7	250
541	7	252
542	7	258
543	7	263
544	7	264
545	7	280
546	7	281
547	7	287
548	7	290
549	7	291
550	7	300
551	7	317
552	7	323
553	7	330
554	7	334
555	7	352
556	7	360
557	7	362
558	7	363
559	7	374
560	7	392
561	7	396
562	7	401
563	7	406
564	7	428
565	7	445
566	7	453
567	7	503
568	7	518
569	7	526
570	7	590
571	7	612
572	8	5
573	8	8
574	8	25
575	8	29
576	8	33
577	8	34
578	8	36
579	8	38
580	8	39
581	8	44
582	8	55
583	8	56
584	8	57
585	8	58
586	8	59
587	8	61
588	8	66
589	8	68
590	8	69
591	8	70
592	8	91
593	8	92
594	8	99
595	8	102
596	8	104
597	8	110
598	8	111
599	8	115
600	8	117
601	8	127
602	8	130
603	8	145
604	8	156
605	8	164
606	8	173
607	8	174
608	8	182
609	8	189
610	8	196
611	8	203
612	8	205
613	8	207
614	8	213
615	8	214
616	8	216
617	8	218
618	8	223
619	8	229
620	8	231
621	8	237
622	8	240
623	8	249
624	8	250
625	8	258
626	8	263
627	8	264
628	8	280
629	8	290
630	8	291
631	8	317
632	8	334
633	8	352
634	8	360
635	8	362
636	8	363
637	8	374
638	8	401
639	8	406
640	8	428
641	8	445
642	8	503
643	8	518
644	8	526
645	8	590
646	8	612
647	9	5
648	9	8
649	9	25
650	9	29
651	9	33
652	9	34
653	9	36
654	9	38
655	9	39
656	9	44
657	9	46
658	9	55
659	9	56
660	9	57
661	9	58
662	9	59
663	9	61
664	9	63
665	9	66
666	9	68
667	9	69
668	9	70
669	9	89
670	9	90
671	9	91
672	9	92
673	9	99
674	9	102
675	9	104
676	9	110
677	9	111
678	9	115
679	9	117
680	9	127
681	9	130
682	9	145
683	9	156
684	9	157
685	9	164
686	9	173
687	9	174
688	9	182
689	9	189
690	9	196
691	9	200
692	9	203
693	9	205
694	9	207
695	9	213
696	9	214
697	9	216
698	9	218
699	9	223
700	9	229
701	9	231
702	9	237
703	9	240
704	9	249
705	9	250
706	9	258
707	9	263
708	9	264
709	9	280
710	9	290
711	9	291
712	9	308
713	9	317
714	9	324
715	9	334
716	9	352
717	9	360
718	9	362
719	9	363
720	9	374
721	9	399
722	9	401
723	9	406
724	9	411
725	9	416
726	9	419
727	9	428
728	9	430
729	9	431
730	9	445
731	9	503
732	9	518
733	9	523
734	9	525
735	9	526
736	9	590
737	9	612
738	10	33
739	10	81
740	10	173
741	10	450
742	10	527
743	11	81
744	11	106
745	11	334
746	11	450
747	11	527
748	12	13
749	12	16
750	12	18
751	12	36
752	12	38
753	12	48
754	12	60
755	12	63
756	12	72
757	12	76
758	12	77
759	12	78
760	12	79
761	12	81
762	12	92
763	12	93
764	12	94
765	12	99
766	12	100
767	12	102
768	12	104
769	12	115
770	12	117
771	12	129
772	12	138
773	12	148
774	12	149
775	12	156
776	12	164
777	12	168
778	12	171
779	12	173
780	12	174
781	12	182
782	12	202
783	12	203
784	12	207
785	12	213
786	12	214
787	12	216
788	12	218
789	12	219
790	12	230
791	12	237
792	12	239
793	12	240
794	12	241
795	12	244
796	12	247
797	12	263
798	12	285
799	12	290
800	12	314
801	12	318
802	12	324
803	12	332
804	12	355
805	12	363
806	12	366
807	12	369
808	12	403
809	12	405
810	12	412
811	12	416
812	12	432
813	12	445
814	12	450
815	12	512
816	12	522
817	12	527
818	12	590
819	12	611
820	13	40
821	13	81
822	13	450
823	13	527
824	14	81
825	14	106
826	14	334
827	14	450
828	14	527
829	15	14
830	15	15
831	15	31
832	15	36
833	15	38
834	15	41
835	15	42
836	15	63
837	15	72
838	15	76
839	15	81
840	15	92
841	15	97
842	15	99
843	15	102
844	15	104
845	15	115
846	15	116
847	15	117
848	15	129
849	15	130
850	15	148
851	15	156
852	15	164
853	15	168
854	15	173
855	15	174
856	15	182
857	15	188
858	15	202
859	15	203
860	15	206
861	15	207
862	15	210
863	15	213
864	15	214
865	15	216
866	15	218
867	15	228
868	15	230
869	15	237
870	15	241
871	15	249
872	15	263
873	15	280
874	15	282
875	15	283
876	15	290
877	15	314
878	15	318
879	15	332
880	15	355
881	15	363
882	15	366
883	15	369
884	15	371
885	15	372
886	15	390
887	15	398
888	15	404
889	15	416
890	15	432
891	15	445
892	15	450
893	15	512
894	15	522
895	15	527
896	15	529
897	15	565
898	15	590
899	15	611
900	15	693
901	16	13
902	16	16
903	16	17
904	16	18
905	16	19
906	16	28
907	16	33
908	16	36
909	16	38
910	16	92
911	16	97
912	16	98
913	16	99
914	16	102
915	16	104
916	16	115
917	16	117
918	16	119
919	16	129
920	16	143
921	16	156
922	16	164
923	16	168
924	16	173
925	16	174
926	16	182
927	16	185
928	16	189
929	16	193
930	16	197
931	16	203
932	16	207
933	16	211
934	16	213
935	16	214
936	16	216
937	16	218
938	16	228
939	16	237
940	16	239
941	16	240
942	16	241
943	16	253
944	16	257
945	16	263
946	16	290
947	16	297
948	16	314
949	16	332
950	16	355
951	16	363
952	16	365
953	16	366
954	16	369
955	16	403
956	16	413
957	16	432
958	16	445
959	16	526
960	16	542
961	16	590
962	17	13
963	17	16
964	17	17
965	17	18
966	17	19
967	17	28
968	17	33
969	17	36
970	17	38
971	17	92
972	17	97
973	17	98
974	17	99
975	17	102
976	17	104
977	17	115
978	17	117
979	17	119
980	17	129
981	17	143
982	17	156
983	17	164
984	17	168
985	17	173
986	17	174
987	17	182
988	17	189
989	17	197
990	17	203
991	17	207
992	17	211
993	17	213
994	17	214
995	17	216
996	17	218
997	17	237
998	17	239
999	17	240
1000	17	241
1001	17	253
1002	17	257
1003	17	263
1004	17	290
1005	17	297
1006	17	314
1007	17	332
1008	17	355
1009	17	363
1010	17	365
1011	17	366
1012	17	369
1013	17	403
1014	17	432
1015	17	445
1016	17	526
1017	17	542
1018	17	590
1019	18	13
1020	18	16
1021	18	17
1022	18	18
1023	18	19
1024	18	28
1025	18	33
1026	18	36
1027	18	38
1028	18	63
1029	18	92
1030	18	97
1031	18	98
1032	18	99
1033	18	102
1034	18	104
1035	18	115
1036	18	117
1037	18	119
1038	18	129
1039	18	143
1040	18	156
1041	18	164
1042	18	168
1043	18	173
1044	18	174
1045	18	182
1046	18	189
1047	18	197
1048	18	203
1049	18	207
1050	18	211
1051	18	213
1052	18	214
1053	18	216
1054	18	218
1055	18	237
1056	18	239
1057	18	240
1058	18	241
1059	18	253
1060	18	257
1061	18	263
1062	18	290
1063	18	297
1064	18	314
1065	18	332
1066	18	355
1067	18	363
1068	18	365
1069	18	366
1070	18	369
1071	18	403
1072	18	416
1073	18	432
1074	18	445
1075	18	526
1076	18	542
1077	18	590
1078	19	15
1079	19	29
1080	19	33
1081	19	34
1082	19	36
1083	19	38
1084	19	39
1085	19	44
1086	19	55
1087	19	58
1088	19	59
1089	19	61
1090	19	68
1091	19	85
1092	19	86
1093	19	87
1094	19	91
1095	19	92
1096	19	98
1097	19	99
1098	19	102
1099	19	103
1100	19	104
1101	19	111
1102	19	116
1103	19	117
1104	19	129
1105	19	130
1106	19	154
1107	19	156
1108	19	158
1109	19	162
1110	19	164
1111	19	168
1112	19	172
1113	19	173
1114	19	174
1115	19	179
1116	19	182
1117	19	189
1118	19	196
1119	19	203
1120	19	207
1121	19	213
1122	19	214
1123	19	216
1124	19	218
1125	19	228
1126	19	231
1127	19	237
1128	19	240
1129	19	241
1130	19	242
1131	19	247
1132	19	249
1133	19	253
1134	19	263
1135	19	269
1136	19	279
1137	19	283
1138	19	290
1139	19	343
1140	19	351
1141	19	363
1142	19	365
1143	19	369
1144	19	372
1145	19	382
1146	19	387
1147	19	389
1148	19	428
1149	19	445
1150	19	447
1151	19	451
1152	19	514
1153	19	515
1154	19	526
1155	19	528
1156	19	590
1157	20	14
1158	20	15
1159	20	29
1160	20	33
1161	20	34
1162	20	36
1163	20	38
1164	20	39
1165	20	44
1166	20	46
1167	20	55
1168	20	58
1169	20	59
1170	20	61
1171	20	63
1172	20	68
1173	20	70
1174	20	85
1175	20	86
1176	20	87
1177	20	91
1178	20	92
1179	20	98
1180	20	99
1181	20	102
1182	20	104
1183	20	111
1184	20	116
1185	20	117
1186	20	129
1187	20	130
1188	20	156
1189	20	158
1190	20	162
1191	20	164
1192	20	168
1193	20	173
1194	20	174
1195	20	182
1196	20	184
1197	20	189
1198	20	196
1199	20	203
1200	20	207
1201	20	213
1202	20	214
1203	20	216
1204	20	218
1205	20	228
1206	20	231
1207	20	237
1208	20	240
1209	20	241
1210	20	242
1211	20	247
1212	20	249
1213	20	253
1214	20	263
1215	20	269
1216	20	283
1217	20	290
1218	20	343
1219	20	351
1220	20	363
1221	20	365
1222	20	369
1223	20	372
1224	20	387
1225	20	389
1226	20	416
1227	20	428
1228	20	445
1229	20	447
1230	20	451
1231	20	514
1232	20	526
1233	20	528
1234	20	590
1235	21	13
1236	21	18
1237	21	19
1238	21	31
1239	21	36
1240	21	38
1241	21	43
1242	21	45
1243	21	64
1244	21	65
1245	21	92
1246	21	97
1247	21	98
1248	21	99
1249	21	102
1250	21	104
1251	21	116
1252	21	117
1253	21	119
1254	21	129
1255	21	143
1256	21	156
1257	21	161
1258	21	164
1259	21	168
1260	21	173
1261	21	174
1262	21	182
1263	21	184
1264	21	185
1265	21	189
1266	21	197
1267	21	203
1268	21	206
1269	21	207
1270	21	211
1271	21	213
1272	21	214
1273	21	216
1274	21	218
1275	21	228
1276	21	237
1277	21	239
1278	21	240
1279	21	241
1280	21	253
1281	21	257
1282	21	263
1283	21	290
1284	21	297
1285	21	310
1286	21	314
1287	21	332
1288	21	355
1289	21	363
1290	21	365
1291	21	366
1292	21	369
1293	21	372
1294	21	432
1295	21	445
1296	21	526
1297	21	529
1298	21	590
1299	22	13
1300	22	18
1301	22	19
1302	22	31
1303	22	36
1304	22	38
1305	22	43
1306	22	45
1307	22	63
1308	22	64
1309	22	65
1310	22	92
1311	22	97
1312	22	99
1313	22	102
1314	22	104
1315	22	116
1316	22	117
1317	22	119
1318	22	129
1319	22	143
1320	22	156
1321	22	164
1322	22	168
1323	22	173
1324	22	174
1325	22	182
1326	22	189
1327	22	197
1328	22	203
1329	22	206
1330	22	207
1331	22	211
1332	22	213
1333	22	214
1334	22	216
1335	22	218
1336	22	228
1337	22	237
1338	22	239
1339	22	240
1340	22	241
1341	22	253
1342	22	257
1343	22	263
1344	22	290
1345	22	314
1346	22	332
1347	22	355
1348	22	363
1349	22	365
1350	22	366
1351	22	369
1352	22	372
1353	22	416
1354	22	432
1355	22	445
1356	22	526
1357	22	529
1358	22	590
1359	23	20
1360	23	21
1361	23	29
1362	23	34
1363	23	35
1364	23	36
1365	23	38
1366	23	40
1367	23	43
1368	23	44
1369	23	50
1370	23	51
1371	23	70
1372	23	72
1373	23	89
1374	23	90
1375	23	91
1376	23	92
1377	23	99
1378	23	102
1379	23	103
1380	23	104
1381	23	114
1382	23	117
1383	23	130
1384	23	137
1385	23	156
1386	23	157
1387	23	164
1388	23	168
1389	23	173
1390	23	174
1391	23	180
1392	23	182
1393	23	184
1394	23	188
1395	23	202
1396	23	203
1397	23	207
1398	23	213
1399	23	214
1400	23	216
1401	23	218
1402	23	228
1403	23	231
1404	23	237
1405	23	240
1406	23	241
1407	23	242
1408	23	251
1409	23	254
1410	23	255
1411	23	256
1412	23	259
1413	23	263
1414	23	289
1415	23	290
1416	23	305
1417	23	317
1418	23	342
1419	23	363
1420	23	371
1421	23	380
1422	23	389
1423	23	398
1424	23	399
1425	23	401
1426	23	402
1427	23	415
1428	23	426
1429	23	441
1430	23	445
1431	23	523
1432	23	562
1433	23	590
1434	23	611
1435	23	693
1436	24	20
1437	24	29
1438	24	34
1439	24	35
1440	24	36
1441	24	38
1442	24	40
1443	24	43
1444	24	44
1445	24	51
1446	24	63
1447	24	70
1448	24	72
1449	24	89
1450	24	90
1451	24	91
1452	24	92
1453	24	99
1454	24	102
1455	24	103
1456	24	104
1457	24	114
1458	24	117
1459	24	130
1460	24	137
1461	24	156
1462	24	157
1463	24	164
1464	24	168
1465	24	173
1466	24	174
1467	24	180
1468	24	182
1469	24	188
1470	24	202
1471	24	203
1472	24	207
1473	24	213
1474	24	214
1475	24	216
1476	24	218
1477	24	231
1478	24	237
1479	24	240
1480	24	241
1481	24	242
1482	24	254
1483	24	255
1484	24	256
1485	24	259
1486	24	263
1487	24	289
1488	24	290
1489	24	317
1490	24	363
1491	24	371
1492	24	380
1493	24	398
1494	24	399
1495	24	401
1496	24	402
1497	24	416
1498	24	422
1499	24	423
1500	24	424
1501	24	426
1502	24	441
1503	24	445
1504	24	523
1505	24	525
1506	24	562
1507	24	590
1508	24	611
1509	24	693
1510	25	5
1511	25	6
1512	25	9
1513	25	21
1514	25	25
1515	25	29
1516	25	34
1517	25	36
1518	25	38
1519	25	39
1520	25	45
1521	25	57
1522	25	66
1523	25	68
1524	25	69
1525	25	70
1526	25	84
1527	25	85
1528	25	86
1529	25	87
1530	25	91
1531	25	92
1532	25	97
1533	25	98
1534	25	99
1535	25	102
1536	25	104
1537	25	111
1538	25	113
1539	25	115
1540	25	117
1541	25	129
1542	25	130
1543	25	148
1544	25	156
1545	25	164
1546	25	173
1547	25	174
1548	25	182
1549	25	189
1550	25	192
1551	25	197
1552	25	203
1553	25	205
1554	25	207
1555	25	209
1556	25	213
1557	25	214
1558	25	216
1559	25	218
1560	25	223
1561	25	231
1562	25	237
1563	25	240
1564	25	249
1565	25	263
1566	25	264
1567	25	270
1568	25	280
1569	25	282
1570	25	290
1571	25	324
1572	25	343
1573	25	351
1574	25	363
1575	25	364
1576	25	374
1577	25	393
1578	25	435
1579	25	445
1580	25	447
1581	25	451
1582	25	521
1583	25	527
1584	25	528
1585	25	589
1586	25	590
1587	25	609
1588	26	5
1589	26	6
1590	26	9
1591	26	25
1592	26	29
1593	26	34
1594	26	36
1595	26	38
1596	26	39
1597	26	45
1598	26	63
1599	26	66
1600	26	68
1601	26	69
1602	26	70
1603	26	84
1604	26	85
1605	26	86
1606	26	87
1607	26	91
1608	26	92
1609	26	98
1610	26	99
1611	26	102
1612	26	104
1613	26	111
1614	26	113
1615	26	115
1616	26	117
1617	26	129
1618	26	130
1619	26	148
1620	26	156
1621	26	164
1622	26	168
1623	26	173
1624	26	174
1625	26	182
1626	26	189
1627	26	192
1628	26	197
1629	26	203
1630	26	205
1631	26	207
1632	26	213
1633	26	214
1634	26	216
1635	26	218
1636	26	223
1637	26	231
1638	26	237
1639	26	240
1640	26	249
1641	26	263
1642	26	264
1643	26	270
1644	26	280
1645	26	282
1646	26	290
1647	26	324
1648	26	343
1649	26	351
1650	26	363
1651	26	374
1652	26	393
1653	26	411
1654	26	416
1655	26	445
1656	26	447
1657	26	451
1658	26	521
1659	26	527
1660	26	528
1661	26	590
1662	27	10
1663	27	14
1664	27	15
1665	27	28
1666	27	29
1667	27	34
1668	27	36
1669	27	38
1670	27	40
1671	27	66
1672	27	68
1673	27	69
1674	27	70
1675	27	89
1676	27	90
1677	27	91
1678	27	92
1679	27	99
1680	27	102
1681	27	104
1682	27	111
1683	27	117
1684	27	129
1685	27	130
1686	27	154
1687	27	156
1688	27	157
1689	27	162
1690	27	163
1691	27	164
1692	27	168
1693	27	173
1694	27	174
1695	27	175
1696	27	182
1697	27	189
1698	27	197
1699	27	201
1700	27	203
1701	27	205
1702	27	207
1703	27	210
1704	27	213
1705	27	214
1706	27	216
1707	27	218
1708	27	219
1709	27	222
1710	27	223
1711	27	229
1712	27	231
1713	27	232
1714	27	237
1715	27	241
1716	27	249
1717	27	263
1718	27	264
1719	27	280
1720	27	282
1721	27	290
1722	27	306
1723	27	317
1724	27	328
1725	27	332
1726	27	341
1727	27	343
1728	27	360
1729	27	363
1730	27	374
1731	27	398
1732	27	400
1733	27	404
1734	27	414
1735	27	421
1736	27	431
1737	27	445
1738	27	446
1739	27	523
1740	27	563
1741	27	590
1742	28	10
1743	28	14
1744	28	15
1745	28	28
1746	28	29
1747	28	34
1748	28	36
1749	28	38
1750	28	40
1751	28	63
1752	28	66
1753	28	68
1754	28	69
1755	28	70
1756	28	89
1757	28	90
1758	28	91
1759	28	92
1760	28	99
1761	28	102
1762	28	104
1763	28	111
1764	28	117
1765	28	129
1766	28	130
1767	28	154
1768	28	156
1769	28	157
1770	28	162
1771	28	163
1772	28	164
1773	28	168
1774	28	173
1775	28	174
1776	28	182
1777	28	189
1778	28	197
1779	28	201
1780	28	203
1781	28	205
1782	28	207
1783	28	210
1784	28	213
1785	28	214
1786	28	216
1787	28	218
1788	28	219
1789	28	222
1790	28	223
1791	28	229
1792	28	231
1793	28	237
1794	28	241
1795	28	249
1796	28	263
1797	28	264
1798	28	280
1799	28	282
1800	28	290
1801	28	306
1802	28	317
1803	28	328
1804	28	332
1805	28	343
1806	28	360
1807	28	363
1808	28	374
1809	28	398
1810	28	404
1811	28	411
1812	28	414
1813	28	416
1814	28	421
1815	28	431
1816	28	444
1817	28	445
1818	28	446
1819	28	523
1820	28	590
1821	29	10
1822	29	15
1823	29	24
1824	29	29
1825	29	33
1826	29	34
1827	29	36
1828	29	38
1829	29	39
1830	29	40
1831	29	44
1832	29	45
1833	29	48
1834	29	50
1835	29	58
1836	29	59
1837	29	68
1838	29	70
1839	29	85
1840	29	87
1841	29	91
1842	29	92
1843	29	99
1844	29	102
1845	29	104
1846	29	111
1847	29	115
1848	29	116
1849	29	117
1850	29	130
1851	29	154
1852	29	156
1853	29	162
1854	29	164
1855	29	168
1856	29	173
1857	29	174
1858	29	182
1859	29	188
1860	29	189
1861	29	197
1862	29	203
1863	29	204
1864	29	207
1865	29	213
1866	29	214
1867	29	216
1868	29	218
1869	29	228
1870	29	231
1871	29	237
1872	29	240
1873	29	241
1874	29	242
1875	29	249
1876	29	251
1877	29	260
1878	29	263
1879	29	270
1880	29	290
1881	29	305
1882	29	332
1883	29	342
1884	29	351
1885	29	352
1886	29	363
1887	29	390
1888	29	398
1889	29	421
1890	29	445
1891	29	590
1892	29	599
1893	30	10
1894	30	15
1895	30	24
1896	30	29
1897	30	32
1898	30	33
1899	30	34
1900	30	36
1901	30	38
1902	30	39
1903	30	40
1904	30	44
1905	30	45
1906	30	55
1907	30	58
1908	30	59
1909	30	61
1910	30	68
1911	30	70
1912	30	85
1913	30	87
1914	30	91
1915	30	92
1916	30	99
1917	30	102
1918	30	104
1919	30	111
1920	30	115
1921	30	117
1922	30	130
1923	30	154
1924	30	156
1925	30	162
1926	30	164
1927	30	168
1928	30	173
1929	30	174
1930	30	182
1931	30	188
1932	30	189
1933	30	197
1934	30	203
1935	30	207
1936	30	213
1937	30	214
1938	30	216
1939	30	218
1940	30	231
1941	30	237
1942	30	240
1943	30	241
1944	30	242
1945	30	249
1946	30	260
1947	30	263
1948	30	270
1949	30	290
1950	30	305
1951	30	332
1952	30	351
1953	30	352
1954	30	363
1955	30	390
1956	30	398
1957	30	421
1958	30	445
1959	30	590
1960	31	5
1961	31	6
1962	31	7
1963	31	8
1964	31	9
1965	31	10
1966	31	15
1967	31	24
1968	31	25
1969	31	29
1970	31	32
1971	31	33
1972	31	34
1973	31	36
1974	31	38
1975	31	39
1976	31	40
1977	31	46
1978	31	53
1979	31	55
1980	31	57
1981	31	58
1982	31	59
1983	31	61
1984	31	63
1985	31	66
1986	31	68
1987	31	69
1988	31	70
1989	31	85
1990	31	87
1991	31	89
1992	31	90
1993	31	91
1994	31	92
1995	31	99
1996	31	102
1997	31	104
1998	31	111
1999	31	115
2000	31	117
2001	31	126
2002	31	130
2003	31	156
2004	31	157
2005	31	162
2006	31	164
2007	31	168
2008	31	173
2009	31	174
2010	31	182
2011	31	188
2012	31	189
2013	31	196
2014	31	197
2015	31	200
2016	31	201
2017	31	203
2018	31	207
2019	31	210
2020	31	213
2021	31	214
2022	31	216
2023	31	218
2024	31	223
2025	31	231
2026	31	237
2027	31	240
2028	31	241
2029	31	247
2030	31	249
2031	31	250
2032	31	253
2033	31	259
2034	31	263
2035	31	264
2036	31	269
2037	31	270
2038	31	276
2039	31	280
2040	31	290
2041	31	317
2042	31	332
2043	31	351
2044	31	352
2045	31	363
2046	31	374
2047	31	398
2048	31	401
2049	31	406
2050	31	411
2051	31	414
2052	31	416
2053	31	419
2054	31	421
2055	31	431
2056	31	444
2057	31	445
2058	31	446
2059	31	510
2060	31	511
2061	31	523
2062	31	525
2063	31	529
2064	31	590
2065	31	612
2066	32	15
2067	32	24
2068	32	29
2069	32	30
2070	32	31
2071	32	32
2072	32	33
2073	32	34
2074	32	36
2075	32	38
2076	32	40
2077	32	43
2078	32	48
2079	32	50
2080	32	58
2081	32	59
2082	32	64
2083	32	68
2084	32	70
2085	32	85
2086	32	87
2087	32	91
2088	32	92
2089	32	93
2090	32	99
2091	32	102
2092	32	104
2093	32	111
2094	32	115
2095	32	116
2096	32	117
2097	32	130
2098	32	133
2099	32	156
2100	32	162
2101	32	164
2102	32	168
2103	32	173
2104	32	174
2105	32	182
2106	32	188
2107	32	189
2108	32	197
2109	32	203
2110	32	207
2111	32	213
2112	32	214
2113	32	216
2114	32	218
2115	32	231
2116	32	237
2117	32	240
2118	32	241
2119	32	249
2120	32	251
2121	32	260
2122	32	263
2123	32	270
2124	32	290
2125	32	342
2126	32	351
2127	32	352
2128	32	363
2129	32	389
2130	32	390
2131	32	398
2132	32	421
2133	32	445
2134	32	529
2135	32	590
2136	32	599
2137	32	684
2138	33	15
2139	33	24
2140	33	29
2141	33	30
2142	33	31
2143	33	32
2144	33	33
2145	33	34
2146	33	36
2147	33	38
2148	33	40
2149	33	43
2150	33	55
2151	33	58
2152	33	59
2153	33	61
2154	33	64
2155	33	68
2156	33	70
2157	33	85
2158	33	87
2159	33	91
2160	33	92
2161	33	99
2162	33	102
2163	33	104
2164	33	111
2165	33	115
2166	33	116
2167	33	117
2168	33	130
2169	33	156
2170	33	162
2171	33	164
2172	33	168
2173	33	173
2174	33	174
2175	33	182
2176	33	188
2177	33	189
2178	33	197
2179	33	203
2180	33	207
2181	33	213
2182	33	214
2183	33	216
2184	33	218
2185	33	231
2186	33	237
2187	33	240
2188	33	241
2189	33	249
2190	33	260
2191	33	263
2192	33	270
2193	33	290
2194	33	351
2195	33	352
2196	33	363
2197	33	389
2198	33	390
2199	33	398
2200	33	421
2201	33	445
2202	33	529
2203	33	590
2204	33	684
2205	34	5
2206	34	6
2207	34	7
2208	34	8
2209	34	9
2210	34	15
2211	34	24
2212	34	25
2213	34	29
2214	34	30
2215	34	32
2216	34	33
2217	34	34
2218	34	36
2219	34	37
2220	34	38
2221	34	40
2222	34	46
2223	34	53
2224	34	55
2225	34	57
2226	34	58
2227	34	59
2228	34	61
2229	34	63
2230	34	64
2231	34	66
2232	34	68
2233	34	69
2234	34	70
2235	34	85
2236	34	87
2237	34	89
2238	34	90
2239	34	91
2240	34	92
2241	34	99
2242	34	102
2243	34	104
2244	34	111
2245	34	115
2246	34	116
2247	34	117
2248	34	126
2249	34	130
2250	34	156
2251	34	157
2252	34	162
2253	34	164
2254	34	168
2255	34	173
2256	34	174
2257	34	182
2258	34	188
2259	34	189
2260	34	196
2261	34	197
2262	34	200
2263	34	201
2264	34	203
2265	34	207
2266	34	210
2267	34	213
2268	34	214
2269	34	216
2270	34	218
2271	34	223
2272	34	224
2273	34	231
2274	34	237
2275	34	240
2276	34	241
2277	34	247
2278	34	249
2279	34	250
2280	34	253
2281	34	259
2282	34	263
2283	34	264
2284	34	269
2285	34	270
2286	34	276
2287	34	280
2288	34	290
2289	34	317
2290	34	351
2291	34	352
2292	34	363
2293	34	374
2294	34	389
2295	34	398
2296	34	401
2297	34	406
2298	34	411
2299	34	414
2300	34	416
2301	34	419
2302	34	421
2303	34	431
2304	34	444
2305	34	445
2306	34	446
2307	34	510
2308	34	511
2309	34	523
2310	34	525
2311	34	529
2312	34	590
2313	34	612
2314	34	684
2315	35	1
2316	35	3
2317	35	5
2318	35	7
2319	35	8
2320	35	9
2321	35	25
2322	35	29
2323	35	34
2324	35	36
2325	35	38
2326	35	45
2327	35	47
2328	35	53
2329	35	55
2330	35	58
2331	35	59
2332	35	61
2333	35	66
2334	35	68
2335	35	69
2336	35	70
2337	35	76
2338	35	85
2339	35	86
2340	35	87
2341	35	91
2342	35	92
2343	35	94
2344	35	99
2345	35	100
2346	35	102
2347	35	104
2348	35	107
2349	35	111
2350	35	113
2351	35	115
2352	35	117
2353	35	118
2354	35	126
2355	35	130
2356	35	135
2357	35	138
2358	35	148
2359	35	149
2360	35	156
2361	35	161
2362	35	164
2363	35	171
2364	35	173
2365	35	174
2366	35	182
2367	35	189
2368	35	192
2369	35	196
2370	35	197
2371	35	203
2372	35	205
2373	35	207
2374	35	213
2375	35	214
2376	35	215
2377	35	216
2378	35	218
2379	35	219
2380	35	223
2381	35	227
2382	35	231
2383	35	236
2384	35	237
2385	35	240
2386	35	241
2387	35	244
2388	35	247
2389	35	249
2390	35	263
2391	35	264
2392	35	266
2393	35	270
2394	35	271
2395	35	272
2396	35	277
2397	35	278
2398	35	280
2399	35	282
2400	35	283
2401	35	289
2402	35	290
2403	35	304
2404	35	309
2405	35	322
2406	35	324
2407	35	340
2408	35	343
2409	35	347
2410	35	351
2411	35	352
2412	35	356
2413	35	358
2414	35	361
2415	35	363
2416	35	374
2417	35	381
2418	35	387
2419	35	409
2420	35	428
2421	35	445
2422	35	446
2423	35	447
2424	35	451
2425	35	500
2426	35	510
2427	35	514
2428	35	516
2429	35	526
2430	35	574
2431	35	585
2432	35	590
2433	35	605
2434	35	612
2435	35	671
2436	36	3
2437	36	5
2438	36	7
2439	36	8
2440	36	9
2441	36	25
2442	36	29
2443	36	34
2444	36	36
2445	36	38
2446	36	47
2447	36	53
2448	36	55
2449	36	58
2450	36	59
2451	36	61
2452	36	63
2453	36	66
2454	36	68
2455	36	69
2456	36	70
2457	36	76
2458	36	85
2459	36	86
2460	36	87
2461	36	91
2462	36	92
2463	36	94
2464	36	99
2465	36	100
2466	36	102
2467	36	104
2468	36	107
2469	36	111
2470	36	113
2471	36	115
2472	36	117
2473	36	118
2474	36	126
2475	36	130
2476	36	135
2477	36	138
2478	36	148
2479	36	149
2480	36	156
2481	36	161
2482	36	164
2483	36	171
2484	36	173
2485	36	174
2486	36	182
2487	36	189
2488	36	192
2489	36	196
2490	36	197
2491	36	203
2492	36	205
2493	36	207
2494	36	213
2495	36	214
2496	36	215
2497	36	216
2498	36	218
2499	36	219
2500	36	223
2501	36	231
2502	36	236
2503	36	237
2504	36	240
2505	36	241
2506	36	244
2507	36	247
2508	36	249
2509	36	263
2510	36	264
2511	36	270
2512	36	271
2513	36	272
2514	36	277
2515	36	278
2516	36	280
2517	36	282
2518	36	283
2519	36	289
2520	36	290
2521	36	304
2522	36	324
2523	36	340
2524	36	343
2525	36	347
2526	36	351
2527	36	352
2528	36	356
2529	36	363
2530	36	374
2531	36	387
2532	36	409
2533	36	411
2534	36	416
2535	36	428
2536	36	445
2537	36	446
2538	36	447
2539	36	451
2540	36	510
2541	36	514
2542	36	526
2543	36	574
2544	36	590
2545	36	605
2546	36	612
2547	36	671
2548	37	29
2549	37	34
2550	37	36
2551	37	38
2552	37	39
2553	37	46
2554	37	50
2555	37	52
2556	37	53
2557	37	83
2558	37	91
2559	37	92
2560	37	95
2561	37	98
2562	37	99
2563	37	102
2564	37	104
2565	37	109
2566	37	115
2567	37	117
2568	37	126
2569	37	129
2570	37	130
2571	37	156
2572	37	164
2573	37	173
2574	37	174
2575	37	175
2576	37	180
2577	37	182
2578	37	185
2579	37	203
2580	37	207
2581	37	213
2582	37	214
2583	37	216
2584	37	218
2585	37	219
2586	37	220
2587	37	231
2588	37	237
2589	37	241
2590	37	244
2591	37	257
2592	37	261
2593	37	263
2594	37	272
2595	37	286
2596	37	288
2597	37	290
2598	37	315
2599	37	326
2600	37	336
2601	37	343
2602	37	363
2603	37	371
2604	37	384
2605	37	394
2606	37	399
2607	37	412
2608	37	428
2609	37	445
2610	37	506
2611	37	510
2612	37	517
2613	37	541
2614	37	590
2615	37	608
2616	38	29
2617	38	34
2618	38	36
2619	38	38
2620	38	39
2621	38	46
2622	38	52
2623	38	53
2624	38	63
2625	38	76
2626	38	83
2627	38	91
2628	38	92
2629	38	98
2630	38	99
2631	38	102
2632	38	104
2633	38	109
2634	38	115
2635	38	117
2636	38	126
2637	38	129
2638	38	130
2639	38	138
2640	38	156
2641	38	164
2642	38	173
2643	38	174
2644	38	180
2645	38	182
2646	38	203
2647	38	207
2648	38	213
2649	38	214
2650	38	216
2651	38	218
2652	38	219
2653	38	220
2654	38	231
2655	38	237
2656	38	241
2657	38	244
2658	38	257
2659	38	261
2660	38	263
2661	38	272
2662	38	286
2663	38	290
2664	38	315
2665	38	343
2666	38	347
2667	38	363
2668	38	371
2669	38	399
2670	38	412
2671	38	416
2672	38	417
2673	38	428
2674	38	445
2675	38	510
2676	38	590
2677	39	1
2678	39	3
2679	39	5
2680	39	7
2681	39	8
2682	39	9
2683	39	25
2684	39	29
2685	39	34
2686	39	36
2687	39	38
2688	39	47
2689	39	50
2690	39	53
2691	39	55
2692	39	58
2693	39	59
2694	39	61
2695	39	66
2696	39	68
2697	39	69
2698	39	70
2699	39	76
2700	39	85
2701	39	86
2702	39	87
2703	39	91
2704	39	92
2705	39	94
2706	39	99
2707	39	100
2708	39	102
2709	39	104
2710	39	111
2711	39	113
2712	39	115
2713	39	117
2714	39	126
2715	39	130
2716	39	138
2717	39	148
2718	39	149
2719	39	156
2720	39	161
2721	39	164
2722	39	171
2723	39	173
2724	39	174
2725	39	182
2726	39	189
2727	39	192
2728	39	196
2729	39	197
2730	39	203
2731	39	205
2732	39	207
2733	39	213
2734	39	214
2735	39	215
2736	39	216
2737	39	218
2738	39	219
2739	39	220
2740	39	223
2741	39	237
2742	39	240
2743	39	241
2744	39	244
2745	39	247
2746	39	254
2747	39	255
2748	39	256
2749	39	263
2750	39	264
2751	39	270
2752	39	272
2753	39	277
2754	39	278
2755	39	280
2756	39	282
2757	39	283
2758	39	289
2759	39	290
2760	39	304
2761	39	340
2762	39	343
2763	39	351
2764	39	352
2765	39	356
2766	39	358
2767	39	360
2768	39	363
2769	39	374
2770	39	387
2771	39	409
2772	39	445
2773	39	446
2774	39	447
2775	39	451
2776	39	510
2777	39	514
2778	39	526
2779	39	528
2780	39	574
2781	39	589
2782	39	590
2783	39	605
2784	39	612
2785	40	3
2786	40	5
2787	40	7
2788	40	8
2789	40	9
2790	40	25
2791	40	29
2792	40	34
2793	40	36
2794	40	38
2795	40	47
2796	40	50
2797	40	53
2798	40	55
2799	40	58
2800	40	59
2801	40	61
2802	40	63
2803	40	66
2804	40	68
2805	40	69
2806	40	70
2807	40	76
2808	40	85
2809	40	86
2810	40	87
2811	40	91
2812	40	92
2813	40	94
2814	40	99
2815	40	100
2816	40	102
2817	40	104
2818	40	111
2819	40	113
2820	40	115
2821	40	117
2822	40	126
2823	40	130
2824	40	138
2825	40	148
2826	40	149
2827	40	156
2828	40	161
2829	40	164
2830	40	171
2831	40	173
2832	40	174
2833	40	182
2834	40	189
2835	40	192
2836	40	196
2837	40	197
2838	40	203
2839	40	205
2840	40	207
2841	40	213
2842	40	214
2843	40	215
2844	40	216
2845	40	218
2846	40	219
2847	40	220
2848	40	223
2849	40	237
2850	40	240
2851	40	241
2852	40	244
2853	40	247
2854	40	263
2855	40	264
2856	40	270
2857	40	272
2858	40	277
2859	40	278
2860	40	280
2861	40	282
2862	40	283
2863	40	289
2864	40	290
2865	40	304
2866	40	340
2867	40	343
2868	40	351
2869	40	352
2870	40	356
2871	40	360
2872	40	363
2873	40	374
2874	40	387
2875	40	409
2876	40	411
2877	40	416
2878	40	445
2879	40	446
2880	40	447
2881	40	451
2882	40	510
2883	40	514
2884	40	526
2885	40	528
2886	40	583
2887	40	590
2888	40	605
2889	40	612
2890	41	13
2891	41	16
2892	41	17
2893	41	18
2894	41	19
2895	41	36
2896	41	38
2897	41	44
2898	41	48
2899	41	71
2900	41	72
2901	41	92
2902	41	95
2903	41	98
2904	41	99
2905	41	102
2906	41	104
2907	41	109
2908	41	114
2909	41	117
2910	41	129
2911	41	141
2912	41	156
2913	41	162
2914	41	164
2915	41	168
2916	41	173
2917	41	174
2918	41	182
2919	41	185
2920	41	188
2921	41	197
2922	41	202
2923	41	203
2924	41	207
2925	41	211
2926	41	212
2927	41	213
2928	41	214
2929	41	216
2930	41	218
2931	41	228
2932	41	237
2933	41	239
2934	41	240
2935	41	241
2936	41	247
2937	41	253
2938	41	257
2939	41	259
2940	41	263
2941	41	269
2942	41	289
2943	41	290
2944	41	305
2945	41	310
2946	41	314
2947	41	332
2948	41	355
2949	41	363
2950	41	365
2951	41	366
2952	41	369
2953	41	371
2954	41	403
2955	41	413
2956	41	417
2957	41	428
2958	41	432
2959	41	445
2960	41	501
2961	41	512
2962	41	590
2963	41	599
2964	42	13
2965	42	17
2966	42	18
2967	42	19
2968	42	36
2969	42	38
2970	42	44
2971	42	48
2972	42	63
2973	42	71
2974	42	72
2975	42	92
2976	42	99
2977	42	102
2978	42	103
2979	42	104
2980	42	109
2981	42	114
2982	42	117
2983	42	129
2984	42	141
2985	42	156
2986	42	162
2987	42	164
2988	42	168
2989	42	173
2990	42	174
2991	42	182
2992	42	188
2993	42	197
2994	42	202
2995	42	203
2996	42	207
2997	42	211
2998	42	212
2999	42	213
3000	42	214
3001	42	216
3002	42	218
3003	42	237
3004	42	239
3005	42	240
3006	42	241
3007	42	247
3008	42	253
3009	42	257
3010	42	259
3011	42	263
3012	42	269
3013	42	289
3014	42	290
3015	42	305
3016	42	310
3017	42	314
3018	42	332
3019	42	355
3020	42	363
3021	42	365
3022	42	366
3023	42	369
3024	42	371
3025	42	403
3026	42	416
3027	42	428
3028	42	432
3029	42	445
3030	42	501
3031	42	512
3032	42	590
3033	43	14
3034	43	15
3035	43	36
3036	43	38
3037	43	51
3038	43	71
3039	43	72
3040	43	74
3041	43	75
3042	43	76
3043	43	77
3044	43	78
3045	43	79
3046	43	80
3047	43	92
3048	43	99
3049	43	102
3050	43	104
3051	43	115
3052	43	117
3053	43	148
3054	43	156
3055	43	164
3056	43	173
3057	43	174
3058	43	175
3059	43	182
3060	43	188
3061	43	202
3062	43	203
3063	43	204
3064	43	207
3065	43	213
3066	43	214
3067	43	216
3068	43	218
3069	43	230
3070	43	235
3071	43	236
3072	43	237
3073	43	241
3074	43	263
3075	43	267
3076	43	275
3077	43	290
3078	43	298
3079	43	321
3080	43	331
3081	43	363
3082	43	380
3083	43	381
3084	43	388
3085	43	402
3086	43	412
3087	43	445
3088	43	447
3089	43	580
3090	43	585
3091	43	590
3092	43	605
3093	43	611
3094	44	14
3095	44	15
3096	44	36
3097	44	38
3098	44	51
3099	44	71
3100	44	72
3101	44	74
3102	44	76
3103	44	77
3104	44	78
3105	44	79
3106	44	80
3107	44	92
3108	44	99
3109	44	102
3110	44	104
3111	44	115
3112	44	117
3113	44	148
3114	44	156
3115	44	164
3116	44	173
3117	44	174
3118	44	182
3119	44	188
3120	44	202
3121	44	203
3122	44	207
3123	44	213
3124	44	214
3125	44	216
3126	44	218
3127	44	230
3128	44	235
3129	44	236
3130	44	237
3131	44	241
3132	44	263
3133	44	267
3134	44	290
3135	44	331
3136	44	363
3137	44	374
3138	44	380
3139	44	381
3140	44	388
3141	44	402
3142	44	409
3143	44	412
3144	44	445
3145	44	447
3146	44	572
3147	44	580
3148	44	590
3149	44	605
3150	44	611
3151	45	14
3152	45	15
3153	45	34
3154	45	36
3155	45	38
3156	45	51
3157	45	63
3158	45	71
3159	45	72
3160	45	76
3161	45	77
3162	45	78
3163	45	79
3164	45	80
3165	45	92
3166	45	99
3167	45	102
3168	45	104
3169	45	115
3170	45	117
3171	45	148
3172	45	156
3173	45	164
3174	45	173
3175	45	174
3176	45	182
3177	45	188
3178	45	202
3179	45	203
3180	45	207
3181	45	213
3182	45	214
3183	45	216
3184	45	218
3185	45	219
3186	45	230
3187	45	235
3188	45	237
3189	45	241
3190	45	263
3191	45	267
3192	45	290
3193	45	312
3194	45	331
3195	45	363
3196	45	374
3197	45	380
3198	45	388
3199	45	402
3200	45	409
3201	45	412
3202	45	416
3203	45	445
3204	45	447
3205	45	572
3206	45	590
3207	45	605
3208	45	611
3209	46	10
3210	46	14
3211	46	15
3212	46	34
3213	46	36
3214	46	38
3215	46	60
3216	46	68
3217	46	71
3218	46	72
3219	46	73
3220	46	74
3221	46	76
3222	46	77
3223	46	78
3224	46	81
3225	46	91
3226	46	92
3227	46	97
3228	46	99
3229	46	102
3230	46	103
3231	46	104
3232	46	113
3233	46	115
3234	46	117
3235	46	130
3236	46	141
3237	46	147
3238	46	148
3239	46	156
3240	46	163
3241	46	164
3242	46	168
3243	46	173
3244	46	174
3245	46	175
3246	46	182
3247	46	188
3248	46	202
3249	46	203
3250	46	206
3251	46	207
3252	46	210
3253	46	213
3254	46	214
3255	46	216
3256	46	218
3257	46	228
3258	46	230
3259	46	232
3260	46	235
3261	46	237
3262	46	241
3263	46	249
3264	46	263
3265	46	267
3266	46	280
3267	46	282
3268	46	290
3269	46	312
3270	46	331
3271	46	332
3272	46	363
3273	46	388
3274	46	402
3275	46	404
3276	46	412
3277	46	440
3278	46	445
3279	46	447
3280	46	450
3281	46	522
3282	46	563
3283	46	565
3284	46	590
3285	47	10
3286	47	14
3287	47	15
3288	47	34
3289	47	36
3290	47	38
3291	47	63
3292	47	68
3293	47	71
3294	47	72
3295	47	74
3296	47	76
3297	47	77
3298	47	78
3299	47	81
3300	47	91
3301	47	92
3302	47	99
3303	47	102
3304	47	104
3305	47	113
3306	47	115
3307	47	117
3308	47	130
3309	47	141
3310	47	147
3311	47	148
3312	47	156
3313	47	163
3314	47	164
3315	47	168
3316	47	173
3317	47	174
3318	47	182
3319	47	188
3320	47	202
3321	47	203
3322	47	206
3323	47	207
3324	47	210
3325	47	213
3326	47	214
3327	47	216
3328	47	218
3329	47	230
3330	47	235
3331	47	237
3332	47	241
3333	47	249
3334	47	263
3335	47	267
3336	47	280
3337	47	282
3338	47	290
3339	47	312
3340	47	331
3341	47	332
3342	47	363
3343	47	388
3344	47	402
3345	47	404
3346	47	412
3347	47	416
3348	47	440
3349	47	445
3350	47	447
3351	47	450
3352	47	522
3353	47	590
3354	48	33
3355	48	36
3356	48	38
3357	48	48
3358	48	50
3359	48	60
3360	48	72
3361	48	76
3362	48	77
3363	48	78
3364	48	79
3365	48	81
3366	48	92
3367	48	93
3368	48	94
3369	48	97
3370	48	99
3371	48	102
3372	48	103
3373	48	104
3374	48	115
3375	48	117
3376	48	129
3377	48	141
3378	48	148
3379	48	149
3380	48	156
3381	48	164
3382	48	168
3383	48	173
3384	48	174
3385	48	182
3386	48	188
3387	48	193
3388	48	202
3389	48	203
3390	48	207
3391	48	213
3392	48	214
3393	48	216
3394	48	218
3395	48	226
3396	48	230
3397	48	234
3398	48	237
3399	48	241
3400	48	263
3401	48	285
3402	48	290
3403	48	305
3404	48	324
3405	48	363
3406	48	390
3407	48	428
3408	48	445
3409	48	450
3410	48	522
3411	48	590
3412	48	611
3413	49	13
3414	49	16
3415	49	18
3416	49	33
3417	49	36
3418	49	38
3419	49	48
3420	49	50
3421	49	60
3422	49	63
3423	49	72
3424	49	76
3425	49	77
3426	49	78
3427	49	79
3428	49	81
3429	49	92
3430	49	93
3431	49	94
3432	49	99
3433	49	100
3434	49	102
3435	49	104
3436	49	115
3437	49	117
3438	49	129
3439	49	141
3440	49	148
3441	49	149
3442	49	156
3443	49	164
3444	49	168
3445	49	173
3446	49	174
3447	49	182
3448	49	188
3449	49	193
3450	49	202
3451	49	203
3452	49	207
3453	49	213
3454	49	214
3455	49	216
3456	49	218
3457	49	230
3458	49	237
3459	49	239
3460	49	241
3461	49	263
3462	49	285
3463	49	290
3464	49	305
3465	49	314
3466	49	318
3467	49	324
3468	49	332
3469	49	355
3470	49	363
3471	49	366
3472	49	369
3473	49	405
3474	49	412
3475	49	416
3476	49	428
3477	49	432
3478	49	445
3479	49	450
3480	49	512
3481	49	522
3482	49	590
3483	49	611
3484	50	10
3485	50	15
3486	50	28
3487	50	29
3488	50	34
3489	50	36
3490	50	38
3491	50	45
3492	50	89
3493	50	90
3494	50	91
3495	50	92
3496	50	99
3497	50	102
3498	50	103
3499	50	104
3500	50	117
3501	50	154
3502	50	156
3503	50	157
3504	50	163
3505	50	164
3506	50	168
3507	50	173
3508	50	174
3509	50	179
3510	50	182
3511	50	185
3512	50	188
3513	50	189
3514	50	201
3515	50	203
3516	50	207
3517	50	213
3518	50	214
3519	50	216
3520	50	218
3521	50	222
3522	50	228
3523	50	237
3524	50	241
3525	50	246
3526	50	249
3527	50	251
3528	50	253
3529	50	262
3530	50	263
3531	50	290
3532	50	310
3533	50	317
3534	50	332
3535	50	363
3536	50	389
3537	50	414
3538	50	421
3539	50	426
3540	50	445
3541	50	446
3542	50	515
3543	50	523
3544	50	590
3545	51	10
3546	51	15
3547	51	28
3548	51	34
3549	51	36
3550	51	38
3551	51	45
3552	51	63
3553	51	89
3554	51	90
3555	51	91
3556	51	92
3557	51	99
3558	51	102
3559	51	104
3560	51	117
3561	51	154
3562	51	156
3563	51	157
3564	51	161
3565	51	163
3566	51	164
3567	51	168
3568	51	173
3569	51	174
3570	51	182
3571	51	188
3572	51	189
3573	51	201
3574	51	203
3575	51	207
3576	51	213
3577	51	214
3578	51	216
3579	51	218
3580	51	222
3581	51	237
3582	51	241
3583	51	249
3584	51	253
3585	51	263
3586	51	290
3587	51	310
3588	51	317
3589	51	328
3590	51	332
3591	51	363
3592	51	389
3593	51	400
3594	51	414
3595	51	416
3596	51	421
3597	51	426
3598	51	444
3599	51	445
3600	51	446
3601	51	523
3602	51	563
3603	51	590
3604	52	6
3605	52	10
3606	52	15
3607	52	29
3608	52	34
3609	52	36
3610	52	38
3611	52	39
3612	52	44
3613	52	45
3614	52	55
3615	52	61
3616	52	85
3617	52	87
3618	52	91
3619	52	92
3620	52	95
3621	52	99
3622	52	102
3623	52	103
3624	52	104
3625	52	111
3626	52	117
3627	52	129
3628	52	130
3629	52	133
3630	52	138
3631	52	148
3632	52	154
3633	52	156
3634	52	163
3635	52	164
3636	52	168
3637	52	171
3638	52	173
3639	52	174
3640	52	175
3641	52	180
3642	52	182
3643	52	185
3644	52	189
3645	52	192
3646	52	196
3647	52	197
3648	52	203
3649	52	204
3650	52	207
3651	52	213
3652	52	214
3653	52	216
3654	52	218
3655	52	231
3656	52	237
3657	52	240
3658	52	241
3659	52	244
3660	52	247
3661	52	252
3662	52	253
3663	52	259
3664	52	263
3665	52	269
3666	52	274
3667	52	282
3668	52	289
3669	52	290
3670	52	304
3671	52	316
3672	52	332
3673	52	343
3674	52	351
3675	52	352
3676	52	363
3677	52	364
3678	52	369
3679	52	371
3680	52	372
3681	52	386
3682	52	387
3683	52	399
3684	52	400
3685	52	402
3686	52	417
3687	52	421
3688	52	441
3689	52	445
3690	52	514
3691	52	526
3692	52	590
3693	53	6
3694	53	10
3695	53	15
3696	53	29
3697	53	34
3698	53	36
3699	53	38
3700	53	44
3701	53	45
3702	53	46
3703	53	55
3704	53	61
3705	53	63
3706	53	85
3707	53	87
3708	53	91
3709	53	92
3710	53	99
3711	53	102
3712	53	103
3713	53	104
3714	53	111
3715	53	117
3716	53	129
3717	53	130
3718	53	138
3719	53	148
3720	53	154
3721	53	156
3722	53	163
3723	53	164
3724	53	168
3725	53	171
3726	53	173
3727	53	174
3728	53	180
3729	53	182
3730	53	185
3731	53	189
3732	53	192
3733	53	196
3734	53	197
3735	53	203
3736	53	207
3737	53	213
3738	53	214
3739	53	216
3740	53	218
3741	53	231
3742	53	237
3743	53	240
3744	53	241
3745	53	244
3746	53	247
3747	53	252
3748	53	253
3749	53	259
3750	53	263
3751	53	269
3752	53	282
3753	53	289
3754	53	290
3755	53	304
3756	53	332
3757	53	343
3758	53	351
3759	53	352
3760	53	363
3761	53	364
3762	53	369
3763	53	371
3764	53	372
3765	53	373
3766	53	387
3767	53	399
3768	53	400
3769	53	402
3770	53	408
3771	53	415
3772	53	416
3773	53	417
3774	53	421
3775	53	441
3776	53	445
3777	53	514
3778	53	526
3779	53	583
3780	53	590
3781	54	5
3782	54	6
3783	54	8
3784	54	10
3785	54	25
3786	54	29
3787	54	34
3788	54	36
3789	54	38
3790	54	39
3791	54	50
3792	54	55
3793	54	56
3794	54	57
3795	54	58
3796	54	59
3797	54	60
3798	54	61
3799	54	66
3800	54	68
3801	54	69
3802	54	70
3803	54	91
3804	54	92
3805	54	93
3806	54	94
3807	54	95
3808	54	99
3809	54	102
3810	54	103
3811	54	104
3812	54	109
3813	54	113
3814	54	117
3815	54	127
3816	54	129
3817	54	130
3818	54	133
3819	54	148
3820	54	154
3821	54	156
3822	54	164
3823	54	173
3824	54	174
3825	54	182
3826	54	189
3827	54	193
3828	54	196
3829	54	203
3830	54	207
3831	54	213
3832	54	214
3833	54	216
3834	54	218
3835	54	223
3836	54	227
3837	54	231
3838	54	237
3839	54	238
3840	54	240
3841	54	244
3842	54	248
3843	54	249
3844	54	250
3845	54	258
3846	54	263
3847	54	264
3848	54	272
3849	54	280
3850	54	281
3851	54	287
3852	54	290
3853	54	291
3854	54	324
3855	54	332
3856	54	346
3857	54	347
3858	54	352
3859	54	362
3860	54	363
3861	54	374
3862	54	388
3863	54	401
3864	54	421
3865	54	426
3866	54	428
3867	54	445
3868	54	503
3869	54	590
3870	54	612
3871	55	5
3872	55	6
3873	55	8
3874	55	10
3875	55	25
3876	55	29
3877	55	34
3878	55	36
3879	55	38
3880	55	39
3881	55	50
3882	55	55
3883	55	56
3884	55	57
3885	55	58
3886	55	59
3887	55	61
3888	55	63
3889	55	66
3890	55	67
3891	55	68
3892	55	69
3893	55	70
3894	55	91
3895	55	92
3896	55	93
3897	55	94
3898	55	99
3899	55	102
3900	55	103
3901	55	104
3902	55	113
3903	55	117
3904	55	127
3905	55	129
3906	55	130
3907	55	133
3908	55	148
3909	55	154
3910	55	156
3911	55	164
3912	55	173
3913	55	174
3914	55	182
3915	55	189
3916	55	196
3917	55	203
3918	55	207
3919	55	210
3920	55	213
3921	55	214
3922	55	216
3923	55	218
3924	55	223
3925	55	231
3926	55	237
3927	55	240
3928	55	244
3929	55	249
3930	55	250
3931	55	258
3932	55	263
3933	55	264
3934	55	272
3935	55	280
3936	55	290
3937	55	291
3938	55	324
3939	55	332
3940	55	346
3941	55	347
3942	55	352
3943	55	362
3944	55	363
3945	55	374
3946	55	382
3947	55	388
3948	55	401
3949	55	411
3950	55	416
3951	55	421
3952	55	428
3953	55	431
3954	55	445
3955	55	453
3956	55	503
3957	55	590
3958	55	612
3959	56	2
3960	56	5
3961	56	6
3962	56	7
3963	56	8
3964	56	9
3965	56	10
3966	56	25
3967	56	29
3968	56	34
3969	56	36
3970	56	37
3971	56	38
3972	56	43
3973	56	66
3974	56	67
3975	56	68
3976	56	69
3977	56	70
3978	56	85
3979	56	87
3980	56	89
3981	56	91
3982	56	92
3983	56	96
3984	56	99
3985	56	102
3986	56	103
3987	56	104
3988	56	111
3989	56	116
3990	56	117
3991	56	118
3992	56	129
3993	56	130
3994	56	154
3995	56	156
3996	56	157
3997	56	164
3998	56	168
3999	56	173
4000	56	174
4001	56	179
4002	56	180
4003	56	182
4004	56	189
4005	56	193
4006	56	197
4007	56	200
4008	56	203
4009	56	207
4010	56	213
4011	56	214
4012	56	216
4013	56	218
4014	56	223
4015	56	227
4016	56	228
4017	56	231
4018	56	237
4019	56	238
4020	56	240
4021	56	241
4022	56	244
4023	56	249
4024	56	251
4025	56	253
4026	56	263
4027	56	264
4028	56	265
4029	56	269
4030	56	270
4031	56	272
4032	56	279
4033	56	280
4034	56	283
4035	56	290
4036	56	315
4037	56	317
4038	56	332
4039	56	339
4040	56	343
4041	56	363
4042	56	369
4043	56	370
4044	56	371
4045	56	372
4046	56	374
4047	56	386
4048	56	398
4049	56	400
4050	56	402
4051	56	410
4052	56	411
4053	56	431
4054	56	441
4055	56	445
4056	56	512
4057	56	514
4058	56	515
4059	56	523
4060	56	526
4061	56	530
4062	56	590
4063	56	612
4064	56	681
4065	56	707
4066	57	2
4067	57	5
4068	57	6
4069	57	7
4070	57	8
4071	57	9
4072	57	10
4073	57	25
4074	57	29
4075	57	34
4076	57	36
4077	57	37
4078	57	38
4079	57	43
4080	57	63
4081	57	66
4082	57	67
4083	57	68
4084	57	69
4085	57	70
4086	57	85
4087	57	87
4088	57	89
4089	57	91
4090	57	92
4091	57	99
4092	57	102
4093	57	103
4094	57	104
4095	57	111
4096	57	116
4097	57	117
4098	57	118
4099	57	129
4100	57	130
4101	57	154
4102	57	156
4103	57	157
4104	57	164
4105	57	168
4106	57	173
4107	57	174
4108	57	180
4109	57	182
4110	57	189
4111	57	197
4112	57	200
4113	57	203
4114	57	207
4115	57	213
4116	57	214
4117	57	216
4118	57	218
4119	57	223
4120	57	228
4121	57	231
4122	57	237
4123	57	238
4124	57	240
4125	57	241
4126	57	244
4127	57	249
4128	57	253
4129	57	263
4130	57	264
4131	57	269
4132	57	270
4133	57	272
4134	57	280
4135	57	283
4136	57	290
4137	57	315
4138	57	317
4139	57	332
4140	57	339
4141	57	343
4142	57	363
4143	57	369
4144	57	370
4145	57	371
4146	57	372
4147	57	374
4148	57	386
4149	57	398
4150	57	402
4151	57	410
4152	57	411
4153	57	416
4154	57	431
4155	57	441
4156	57	444
4157	57	445
4158	57	512
4159	57	514
4160	57	515
4161	57	523
4162	57	526
4163	57	530
4164	57	590
4165	57	612
4166	57	707
4167	58	24
4168	58	29
4169	58	34
4170	58	36
4171	58	37
4172	58	38
4173	58	43
4174	58	44
4175	58	46
4176	58	52
4177	58	53
4178	58	70
4179	58	82
4180	58	83
4181	58	91
4182	58	92
4183	58	97
4184	58	99
4185	58	102
4186	58	104
4187	58	115
4188	58	117
4189	58	126
4190	58	129
4191	58	130
4192	58	156
4193	58	164
4194	58	168
4195	58	172
4196	58	173
4197	58	174
4198	58	179
4199	58	182
4200	58	189
4201	58	200
4202	58	203
4203	58	207
4204	58	213
4205	58	214
4206	58	216
4207	58	218
4208	58	219
4209	58	225
4210	58	231
4211	58	234
4212	58	237
4213	58	241
4214	58	242
4215	58	249
4216	58	257
4217	58	261
4218	58	263
4219	58	270
4220	58	290
4221	58	315
4222	58	316
4223	58	332
4224	58	336
4225	58	343
4226	58	363
4227	58	370
4228	58	394
4229	58	424
4230	58	445
4231	58	510
4232	58	514
4233	58	528
4234	58	555
4235	58	590
4236	58	682
4237	59	29
4238	59	34
4239	59	36
4240	59	38
4241	59	43
4242	59	44
4243	59	46
4244	59	52
4245	59	53
4246	59	63
4247	59	70
4248	59	76
4249	59	82
4250	59	91
4251	59	92
4252	59	99
4253	59	100
4254	59	102
4255	59	104
4256	59	115
4257	59	117
4258	59	126
4259	59	129
4260	59	130
4261	59	156
4262	59	164
4263	59	168
4264	59	172
4265	59	173
4266	59	174
4267	59	182
4268	59	189
4269	59	200
4270	59	203
4271	59	207
4272	59	213
4273	59	214
4274	59	216
4275	59	218
4276	59	219
4277	59	225
4278	59	231
4279	59	237
4280	59	241
4281	59	245
4282	59	249
4283	59	257
4284	59	261
4285	59	263
4286	59	270
4287	59	290
4288	59	315
4289	59	316
4290	59	332
4291	59	343
4292	59	363
4293	59	406
4294	59	416
4295	59	422
4296	59	424
4297	59	431
4298	59	442
4299	59	445
4300	59	510
4301	59	514
4302	59	523
4303	59	528
4304	59	555
4305	59	590
4306	60	3
4307	60	29
4308	60	34
4309	60	36
4310	60	38
4311	60	54
4312	60	55
4313	60	56
4314	60	57
4315	60	58
4316	60	59
4317	60	61
4318	60	91
4319	60	92
4320	60	94
4321	60	95
4322	60	99
4323	60	102
4324	60	104
4325	60	111
4326	60	114
4327	60	117
4328	60	127
4329	60	130
4330	60	133
4331	60	145
4332	60	149
4333	60	150
4334	60	156
4335	60	164
4336	60	168
4337	60	170
4338	60	173
4339	60	174
4340	60	182
4341	60	187
4342	60	196
4343	60	203
4344	60	207
4345	60	213
4346	60	214
4347	60	216
4348	60	218
4349	60	227
4350	60	237
4351	60	240
4352	60	250
4353	60	258
4354	60	263
4355	60	270
4356	60	283
4357	60	287
4358	60	290
4359	60	291
4360	60	301
4361	60	341
4362	60	346
4363	60	352
4364	60	358
4365	60	363
4366	60	426
4367	60	445
4368	60	503
4369	60	590
4370	61	3
4371	61	5
4372	61	8
4373	61	25
4374	61	29
4375	61	34
4376	61	36
4377	61	38
4378	61	55
4379	61	56
4380	61	57
4381	61	58
4382	61	59
4383	61	61
4384	61	66
4385	61	68
4386	61	69
4387	61	70
4388	61	89
4389	61	90
4390	61	91
4391	61	92
4392	61	94
4393	61	95
4394	61	99
4395	61	102
4396	61	104
4397	61	111
4398	61	117
4399	61	118
4400	61	127
4401	61	130
4402	61	133
4403	61	145
4404	61	149
4405	61	156
4406	61	164
4407	61	168
4408	61	173
4409	61	174
4410	61	182
4411	61	187
4412	61	189
4413	61	196
4414	61	197
4415	61	203
4416	61	207
4417	61	213
4418	61	214
4419	61	216
4420	61	218
4421	61	237
4422	61	240
4423	61	249
4424	61	250
4425	61	258
4426	61	263
4427	61	264
4428	61	270
4429	61	280
4430	61	283
4431	61	290
4432	61	291
4433	61	341
4434	61	346
4435	61	352
4436	61	358
4437	61	363
4438	61	374
4439	61	426
4440	61	445
4441	61	503
4442	61	523
4443	61	590
4444	61	612
4445	62	3
4446	62	5
4447	62	8
4448	62	25
4449	62	29
4450	62	34
4451	62	36
4452	62	38
4453	62	55
4454	62	57
4455	62	58
4456	62	59
4457	62	61
4458	62	63
4459	62	66
4460	62	68
4461	62	69
4462	62	70
4463	62	89
4464	62	90
4465	62	91
4466	62	92
4467	62	94
4468	62	95
4469	62	99
4470	62	102
4471	62	104
4472	62	111
4473	62	117
4474	62	118
4475	62	127
4476	62	130
4477	62	149
4478	62	156
4479	62	157
4480	62	164
4481	62	168
4482	62	170
4483	62	173
4484	62	174
4485	62	182
4486	62	189
4487	62	196
4488	62	197
4489	62	203
4490	62	207
4491	62	213
4492	62	214
4493	62	216
4494	62	218
4495	62	223
4496	62	237
4497	62	240
4498	62	249
4499	62	250
4500	62	258
4501	62	263
4502	62	264
4503	62	270
4504	62	280
4505	62	283
4506	62	290
4507	62	291
4508	62	317
4509	62	339
4510	62	352
4511	62	363
4512	62	371
4513	62	374
4514	62	398
4515	62	410
4516	62	411
4517	62	416
4518	62	431
4519	62	445
4520	62	503
4521	62	509
4522	62	523
4523	62	526
4524	62	590
4525	62	612
4526	63	5
4527	63	7
4528	63	8
4529	63	9
4530	63	25
4531	63	29
4532	63	34
4533	63	36
4534	63	38
4535	63	66
4536	63	68
4537	63	69
4538	63	86
4539	63	92
4540	63	94
4541	63	99
4542	63	100
4543	63	102
4544	63	104
4545	63	112
4546	63	113
4547	63	115
4548	63	117
4549	63	118
4550	63	130
4551	63	138
4552	63	148
4553	63	149
4554	63	156
4555	63	161
4556	63	164
4557	63	168
4558	63	171
4559	63	173
4560	63	174
4561	63	182
4562	63	192
4563	63	203
4564	63	207
4565	63	213
4566	63	214
4567	63	216
4568	63	218
4569	63	219
4570	63	223
4571	63	227
4572	63	231
4573	63	237
4574	63	240
4575	63	241
4576	63	244
4577	63	247
4578	63	259
4579	63	263
4580	63	264
4581	63	269
4582	63	271
4583	63	272
4584	63	277
4585	63	278
4586	63	282
4587	63	285
4588	63	289
4589	63	290
4590	63	324
4591	63	347
4592	63	351
4593	63	356
4594	63	363
4595	63	373
4596	63	374
4597	63	375
4598	63	379
4599	63	385
4600	63	409
4601	63	412
4602	63	428
4603	63	433
4604	63	445
4605	63	447
4606	63	451
4607	63	502
4608	63	590
4609	63	605
4610	64	5
4611	64	7
4612	64	8
4613	64	9
4614	64	25
4615	64	29
4616	64	34
4617	64	36
4618	64	38
4619	64	50
4620	64	60
4621	64	66
4622	64	68
4623	64	69
4624	64	86
4625	64	91
4626	64	92
4627	64	93
4628	64	94
4629	64	99
4630	64	100
4631	64	102
4632	64	104
4633	64	105
4634	64	113
4635	64	115
4636	64	117
4637	64	118
4638	64	130
4639	64	134
4640	64	138
4641	64	148
4642	64	149
4643	64	156
4644	64	161
4645	64	164
4646	64	168
4647	64	171
4648	64	173
4649	64	174
4650	64	182
4651	64	192
4652	64	203
4653	64	207
4654	64	213
4655	64	214
4656	64	216
4657	64	218
4658	64	219
4659	64	223
4660	64	231
4661	64	237
4662	64	240
4663	64	241
4664	64	244
4665	64	247
4666	64	248
4667	64	259
4668	64	263
4669	64	264
4670	64	269
4671	64	271
4672	64	272
4673	64	277
4674	64	278
4675	64	282
4676	64	285
4677	64	289
4678	64	290
4679	64	324
4680	64	347
4681	64	351
4682	64	356
4683	64	357
4684	64	363
4685	64	373
4686	64	374
4687	64	409
4688	64	412
4689	64	427
4690	64	428
4691	64	433
4692	64	445
4693	64	447
4694	64	451
4695	64	502
4696	64	590
4697	64	605
4698	65	5
4699	65	7
4700	65	8
4701	65	9
4702	65	25
4703	65	29
4704	65	34
4705	65	36
4706	65	38
4707	65	50
4708	65	60
4709	65	63
4710	65	66
4711	65	68
4712	65	69
4713	65	86
4714	65	91
4715	65	92
4716	65	93
4717	65	94
4718	65	99
4719	65	100
4720	65	102
4721	65	104
4722	65	105
4723	65	113
4724	65	115
4725	65	117
4726	65	118
4727	65	130
4728	65	134
4729	65	138
4730	65	148
4731	65	149
4732	65	156
4733	65	161
4734	65	164
4735	65	168
4736	65	171
4737	65	173
4738	65	174
4739	65	182
4740	65	192
4741	65	203
4742	65	207
4743	65	213
4744	65	214
4745	65	216
4746	65	218
4747	65	219
4748	65	223
4749	65	231
4750	65	237
4751	65	240
4752	65	241
4753	65	244
4754	65	247
4755	65	248
4756	65	259
4757	65	263
4758	65	264
4759	65	269
4760	65	271
4761	65	272
4762	65	277
4763	65	278
4764	65	282
4765	65	285
4766	65	289
4767	65	290
4768	65	324
4769	65	347
4770	65	351
4771	65	356
4772	65	357
4773	65	363
4774	65	373
4775	65	374
4776	65	409
4777	65	411
4778	65	412
4779	65	416
4780	65	427
4781	65	428
4782	65	433
4783	65	445
4784	65	447
4785	65	451
4786	65	502
4787	65	590
4788	65	605
4789	66	2
4790	66	5
4791	66	7
4792	66	8
4793	66	9
4794	66	25
4795	66	27
4796	66	29
4797	66	34
4798	66	36
4799	66	38
4800	66	43
4801	66	53
4802	66	66
4803	66	67
4804	66	68
4805	66	69
4806	66	70
4807	66	89
4808	66	90
4809	66	91
4810	66	92
4811	66	96
4812	66	99
4813	66	102
4814	66	104
4815	66	113
4816	66	116
4817	66	117
4818	66	118
4819	66	126
4820	66	130
4821	66	156
4822	66	157
4823	66	164
4824	66	168
4825	66	173
4826	66	174
4827	66	182
4828	66	184
4829	66	189
4830	66	193
4831	66	197
4832	66	203
4833	66	207
4834	66	213
4835	66	214
4836	66	216
4837	66	218
4838	66	223
4839	66	227
4840	66	233
4841	66	237
4842	66	238
4843	66	240
4844	66	241
4845	66	249
4846	66	263
4847	66	264
4848	66	265
4849	66	270
4850	66	272
4851	66	276
4852	66	279
4853	66	280
4854	66	282
4855	66	290
4856	66	317
4857	66	321
4858	66	339
4859	66	358
4860	66	363
4861	66	370
4862	66	371
4863	66	374
4864	66	379
4865	66	398
4866	66	410
4867	66	411
4868	66	418
4869	66	431
4870	66	445
4871	66	501
4872	66	510
4873	66	514
4874	66	523
4875	66	526
4876	66	530
4877	66	590
4878	66	612
4879	67	2
4880	67	5
4881	67	7
4882	67	8
4883	67	9
4884	67	25
4885	67	29
4886	67	34
4887	67	36
4888	67	38
4889	67	43
4890	67	53
4891	67	66
4892	67	67
4893	67	68
4894	67	69
4895	67	70
4896	67	89
4897	67	90
4898	67	91
4899	67	92
4900	67	99
4901	67	102
4902	67	104
4903	67	113
4904	67	116
4905	67	117
4906	67	118
4907	67	126
4908	67	130
4909	67	156
4910	67	157
4911	67	164
4912	67	168
4913	67	173
4914	67	174
4915	67	182
4916	67	184
4917	67	189
4918	67	193
4919	67	197
4920	67	203
4921	67	207
4922	67	213
4923	67	214
4924	67	216
4925	67	218
4926	67	223
4927	67	233
4928	67	237
4929	67	238
4930	67	240
4931	67	241
4932	67	249
4933	67	263
4934	67	264
4935	67	270
4936	67	272
4937	67	276
4938	67	279
4939	67	280
4940	67	282
4941	67	290
4942	67	317
4943	67	339
4944	67	358
4945	67	363
4946	67	371
4947	67	374
4948	67	398
4949	67	410
4950	67	411
4951	67	431
4952	67	445
4953	67	510
4954	67	514
4955	67	523
4956	67	526
4957	67	530
4958	67	590
4959	67	612
4960	68	2
4961	68	5
4962	68	7
4963	68	8
4964	68	9
4965	68	25
4966	68	29
4967	68	34
4968	68	36
4969	68	38
4970	68	43
4971	68	53
4972	68	63
4973	68	66
4974	68	67
4975	68	68
4976	68	69
4977	68	70
4978	68	89
4979	68	90
4980	68	91
4981	68	92
4982	68	99
4983	68	102
4984	68	104
4985	68	113
4986	68	116
4987	68	117
4988	68	118
4989	68	126
4990	68	130
4991	68	156
4992	68	157
4993	68	164
4994	68	168
4995	68	173
4996	68	174
4997	68	182
4998	68	184
4999	68	189
5000	68	193
5001	68	197
5002	68	203
5003	68	207
5004	68	213
5005	68	214
5006	68	216
5007	68	218
5008	68	223
5009	68	233
5010	68	237
5011	68	238
5012	68	240
5013	68	241
5014	68	249
5015	68	263
5016	68	264
5017	68	270
5018	68	272
5019	68	276
5020	68	279
5021	68	280
5022	68	282
5023	68	290
5024	68	317
5025	68	339
5026	68	358
5027	68	363
5028	68	371
5029	68	374
5030	68	398
5031	68	410
5032	68	411
5033	68	416
5034	68	431
5035	68	444
5036	68	445
5037	68	510
5038	68	514
5039	68	523
5040	68	526
5041	68	530
5042	68	590
5043	68	612
5044	69	14
5045	69	15
5046	69	20
5047	69	21
5048	69	22
5049	69	35
5050	69	36
5051	69	38
5052	69	51
5053	69	72
5054	69	74
5055	69	75
5056	69	76
5057	69	77
5058	69	78
5059	69	79
5060	69	92
5061	69	99
5062	69	102
5063	69	104
5064	69	115
5065	69	117
5066	69	141
5067	69	148
5068	69	156
5069	69	164
5070	69	168
5071	69	173
5072	69	174
5073	69	182
5074	69	188
5075	69	202
5076	69	203
5077	69	207
5078	69	213
5079	69	214
5080	69	216
5081	69	218
5082	69	227
5083	69	230
5084	69	235
5085	69	237
5086	69	241
5087	69	263
5088	69	267
5089	69	275
5090	69	282
5091	69	290
5092	69	311
5093	69	321
5094	69	331
5095	69	345
5096	69	363
5097	69	378
5098	69	380
5099	69	388
5100	69	389
5101	69	398
5102	69	402
5103	69	412
5104	69	438
5105	69	445
5106	69	447
5107	69	562
5108	69	590
5109	69	611
5110	70	14
5111	70	15
5112	70	20
5113	70	21
5114	70	22
5115	70	35
5116	70	36
5117	70	38
5118	70	51
5119	70	72
5120	70	74
5121	70	75
5122	70	76
5123	70	77
5124	70	78
5125	70	79
5126	70	92
5127	70	99
5128	70	102
5129	70	104
5130	70	115
5131	70	117
5132	70	148
5133	70	156
5134	70	164
5135	70	168
5136	70	173
5137	70	174
5138	70	182
5139	70	188
5140	70	202
5141	70	203
5142	70	207
5143	70	213
5144	70	214
5145	70	216
5146	70	218
5147	70	230
5148	70	235
5149	70	237
5150	70	241
5151	70	263
5152	70	267
5153	70	282
5154	70	290
5155	70	331
5156	70	363
5157	70	378
5158	70	380
5159	70	388
5160	70	389
5161	70	398
5162	70	402
5163	70	412
5164	70	445
5165	70	447
5166	70	450
5167	70	590
5168	70	611
5169	71	14
5170	71	15
5171	71	20
5172	71	22
5173	71	34
5174	71	35
5175	71	36
5176	71	38
5177	71	51
5178	71	63
5179	71	72
5180	71	75
5181	71	76
5182	71	77
5183	71	78
5184	71	79
5185	71	92
5186	71	99
5187	71	102
5188	71	104
5189	71	115
5190	71	117
5191	71	148
5192	71	156
5193	71	164
5194	71	168
5195	71	173
5196	71	174
5197	71	182
5198	71	188
5199	71	202
5200	71	203
5201	71	207
5202	71	213
5203	71	214
5204	71	216
5205	71	218
5206	71	230
5207	71	235
5208	71	237
5209	71	241
5210	71	254
5211	71	255
5212	71	256
5213	71	263
5214	71	267
5215	71	282
5216	71	290
5217	71	331
5218	71	348
5219	71	363
5220	71	380
5221	71	388
5222	71	389
5223	71	398
5224	71	402
5225	71	412
5226	71	416
5227	71	437
5228	71	445
5229	71	447
5230	71	450
5231	71	536
5232	71	590
5233	71	611
5234	72	14
5235	72	15
5236	72	20
5237	72	35
5238	72	36
5239	72	38
5240	72	40
5241	72	48
5242	72	51
5243	72	55
5244	72	56
5245	72	57
5246	72	58
5247	72	59
5248	72	61
5249	72	62
5250	72	72
5251	72	92
5252	72	99
5253	72	102
5254	72	103
5255	72	104
5256	72	109
5257	72	112
5258	72	114
5259	72	115
5260	72	117
5261	72	127
5262	72	130
5263	72	132
5264	72	145
5265	72	156
5266	72	164
5267	72	168
5268	72	173
5269	72	174
5270	72	182
5271	72	188
5272	72	196
5273	72	202
5274	72	203
5275	72	207
5276	72	213
5277	72	214
5278	72	216
5279	72	218
5280	72	219
5281	72	229
5282	72	237
5283	72	240
5284	72	243
5285	72	250
5286	72	258
5287	72	263
5288	72	277
5289	72	282
5290	72	290
5291	72	291
5292	72	321
5293	72	330
5294	72	352
5295	72	362
5296	72	363
5297	72	367
5298	72	371
5299	72	378
5300	72	390
5301	72	392
5302	72	398
5303	72	445
5304	72	503
5305	72	506
5306	72	590
5307	72	605
5308	72	611
5309	73	14
5310	73	15
5311	73	20
5312	73	35
5313	73	36
5314	73	38
5315	73	40
5316	73	48
5317	73	51
5318	73	55
5319	73	56
5320	73	57
5321	73	58
5322	73	59
5323	73	61
5324	73	63
5325	73	72
5326	73	92
5327	73	99
5328	73	102
5329	73	103
5330	73	104
5331	73	112
5332	73	115
5333	73	117
5334	73	127
5335	73	130
5336	73	132
5337	73	156
5338	73	164
5339	73	168
5340	73	173
5341	73	174
5342	73	182
5343	73	188
5344	73	196
5345	73	202
5346	73	203
5347	73	207
5348	73	213
5349	73	214
5350	73	216
5351	73	218
5352	73	219
5353	73	237
5354	73	240
5355	73	250
5356	73	258
5357	73	263
5358	73	277
5359	73	282
5360	73	290
5361	73	291
5362	73	352
5363	73	362
5364	73	363
5365	73	371
5366	73	378
5367	73	390
5368	73	398
5369	73	416
5370	73	445
5371	73	503
5372	73	506
5373	73	513
5374	73	590
5375	73	605
5376	73	611
5377	74	5
5378	74	7
5379	74	9
5380	74	29
5381	74	33
5382	74	34
5383	74	36
5384	74	38
5385	74	53
5386	74	66
5387	74	68
5388	74	69
5389	74	70
5390	74	88
5391	74	89
5392	74	90
5393	74	91
5394	74	92
5395	74	99
5396	74	102
5397	74	104
5398	74	106
5399	74	111
5400	74	117
5401	74	118
5402	74	120
5403	74	126
5404	74	153
5405	74	156
5406	74	157
5407	74	164
5408	74	173
5409	74	174
5410	74	175
5411	74	182
5412	74	189
5413	74	201
5414	74	203
5415	74	205
5416	74	207
5417	74	213
5418	74	214
5419	74	216
5420	74	218
5421	74	222
5422	74	223
5423	74	237
5424	74	241
5425	74	246
5426	74	249
5427	74	263
5428	74	264
5429	74	267
5430	74	276
5431	74	280
5432	74	290
5433	74	300
5434	74	317
5435	74	334
5436	74	335
5437	74	350
5438	74	359
5439	74	360
5440	74	363
5441	74	374
5442	74	389
5443	74	397
5444	74	414
5445	74	431
5446	74	444
5447	74	445
5448	74	446
5449	74	510
5450	74	523
5451	74	590
5452	74	612
5453	75	5
5454	75	7
5455	75	9
5456	75	29
5457	75	33
5458	75	34
5459	75	36
5460	75	38
5461	75	53
5462	75	66
5463	75	68
5464	75	69
5465	75	70
5466	75	88
5467	75	89
5468	75	90
5469	75	91
5470	75	92
5471	75	99
5472	75	102
5473	75	104
5474	75	106
5475	75	111
5476	75	117
5477	75	118
5478	75	120
5479	75	126
5480	75	153
5481	75	156
5482	75	157
5483	75	164
5484	75	173
5485	75	174
5486	75	182
5487	75	189
5488	75	201
5489	75	203
5490	75	205
5491	75	207
5492	75	213
5493	75	214
5494	75	216
5495	75	218
5496	75	222
5497	75	223
5498	75	237
5499	75	241
5500	75	246
5501	75	249
5502	75	263
5503	75	264
5504	75	267
5505	75	276
5506	75	280
5507	75	290
5508	75	300
5509	75	317
5510	75	334
5511	75	335
5512	75	350
5513	75	360
5514	75	363
5515	75	374
5516	75	389
5517	75	397
5518	75	414
5519	75	431
5520	75	444
5521	75	445
5522	75	446
5523	75	510
5524	75	523
5525	75	590
5526	75	612
5527	76	5
5528	76	7
5529	76	9
5530	76	25
5531	76	29
5532	76	33
5533	76	34
5534	76	36
5535	76	38
5536	76	46
5537	76	53
5538	76	63
5539	76	66
5540	76	68
5541	76	69
5542	76	70
5543	76	88
5544	76	89
5545	76	90
5546	76	91
5547	76	92
5548	76	99
5549	76	102
5550	76	104
5551	76	106
5552	76	111
5553	76	117
5554	76	118
5555	76	120
5556	76	126
5557	76	153
5558	76	156
5559	76	157
5560	76	164
5561	76	173
5562	76	174
5563	76	182
5564	76	189
5565	76	201
5566	76	203
5567	76	205
5568	76	207
5569	76	210
5570	76	213
5571	76	214
5572	76	216
5573	76	218
5574	76	222
5575	76	223
5576	76	237
5577	76	241
5578	76	246
5579	76	249
5580	76	263
5581	76	264
5582	76	267
5583	76	276
5584	76	280
5585	76	290
5586	76	300
5587	76	317
5588	76	334
5589	76	335
5590	76	350
5591	76	360
5592	76	363
5593	76	374
5594	76	389
5595	76	397
5596	76	411
5597	76	414
5598	76	416
5599	76	431
5600	76	442
5601	76	444
5602	76	445
5603	76	446
5604	76	510
5605	76	523
5606	76	537
5607	76	590
5608	76	612
5609	77	23
5610	77	24
5611	77	29
5612	77	32
5613	77	33
5614	77	34
5615	77	36
5616	77	37
5617	77	38
5618	77	39
5619	77	45
5620	77	52
5621	77	53
5622	77	67
5623	77	70
5624	77	76
5625	77	83
5626	77	92
5627	77	95
5628	77	97
5629	77	98
5630	77	99
5631	77	102
5632	77	104
5633	77	115
5634	77	117
5635	77	126
5636	77	129
5637	77	130
5638	77	156
5639	77	164
5640	77	172
5641	77	173
5642	77	174
5643	77	182
5644	77	203
5645	77	204
5646	77	207
5647	77	213
5648	77	214
5649	77	216
5650	77	218
5651	77	231
5652	77	234
5653	77	237
5654	77	241
5655	77	257
5656	77	261
5657	77	263
5658	77	290
5659	77	315
5660	77	340
5661	77	363
5662	77	394
5663	77	445
5664	77	502
5665	77	510
5666	77	517
5667	77	528
5668	77	590
5669	78	23
5670	78	29
5671	78	31
5672	78	32
5673	78	33
5674	78	34
5675	78	36
5676	78	38
5677	78	39
5678	78	45
5679	78	52
5680	78	53
5681	78	63
5682	78	67
5683	78	70
5684	78	76
5685	78	83
5686	78	92
5687	78	97
5688	78	98
5689	78	99
5690	78	102
5691	78	104
5692	78	115
5693	78	117
5694	78	126
5695	78	129
5696	78	130
5697	78	156
5698	78	164
5699	78	172
5700	78	173
5701	78	174
5702	78	182
5703	78	203
5704	78	207
5705	78	213
5706	78	214
5707	78	216
5708	78	218
5709	78	224
5710	78	231
5711	78	237
5712	78	241
5713	78	257
5714	78	261
5715	78	263
5716	78	290
5717	78	315
5718	78	340
5719	78	363
5720	78	394
5721	78	398
5722	78	416
5723	78	445
5724	78	510
5725	78	517
5726	78	528
5727	78	529
5728	78	590
5729	78	684
5730	79	6
5731	79	23
5732	79	29
5733	79	33
5734	79	34
5735	79	36
5736	79	38
5737	79	45
5738	79	50
5739	79	53
5740	79	55
5741	79	57
5742	79	58
5743	79	59
5744	79	61
5745	79	70
5746	79	86
5747	79	89
5748	79	90
5749	79	91
5750	79	92
5751	79	93
5752	79	94
5753	79	99
5754	79	100
5755	79	102
5756	79	104
5757	79	113
5758	79	115
5759	79	117
5760	79	126
5761	79	129
5762	79	130
5763	79	133
5764	79	138
5765	79	148
5766	79	149
5767	79	156
5768	79	161
5769	79	164
5770	79	171
5771	79	173
5772	79	174
5773	79	182
5774	79	187
5775	79	189
5776	79	192
5777	79	196
5778	79	203
5779	79	207
5780	79	213
5781	79	214
5782	79	216
5783	79	218
5784	79	219
5785	79	231
5786	79	237
5787	79	240
5788	79	241
5789	79	244
5790	79	247
5791	79	248
5792	79	250
5793	79	258
5794	79	263
5795	79	271
5796	79	277
5797	79	278
5798	79	281
5799	79	285
5800	79	290
5801	79	291
5802	79	300
5803	79	303
5804	79	324
5805	79	335
5806	79	347
5807	79	352
5808	79	362
5809	79	363
5810	79	382
5811	79	401
5812	79	428
5813	79	433
5814	79	445
5815	79	447
5816	79	503
5817	79	505
5818	79	510
5819	79	523
5820	79	562
5821	79	590
5822	80	5
5823	80	6
5824	80	8
5825	80	25
5826	80	29
5827	80	33
5828	80	34
5829	80	36
5830	80	38
5831	80	45
5832	80	50
5833	80	53
5834	80	55
5835	80	57
5836	80	58
5837	80	59
5838	80	61
5839	80	63
5840	80	66
5841	80	68
5842	80	69
5843	80	70
5844	80	86
5845	80	89
5846	80	90
5847	80	91
5848	80	92
5849	80	93
5850	80	94
5851	80	99
5852	80	100
5853	80	102
5854	80	104
5855	80	110
5856	80	113
5857	80	115
5858	80	117
5859	80	126
5860	80	129
5861	80	130
5862	80	133
5863	80	138
5864	80	148
5865	80	149
5866	80	156
5867	80	161
5868	80	164
5869	80	171
5870	80	173
5871	80	174
5872	80	182
5873	80	189
5874	80	192
5875	80	196
5876	80	203
5877	80	207
5878	80	210
5879	80	213
5880	80	214
5881	80	216
5882	80	218
5883	80	219
5884	80	223
5885	80	231
5886	80	237
5887	80	240
5888	80	241
5889	80	244
5890	80	247
5891	80	249
5892	80	250
5893	80	258
5894	80	263
5895	80	264
5896	80	271
5897	80	277
5898	80	278
5899	80	280
5900	80	281
5901	80	285
5902	80	290
5903	80	291
5904	80	303
5905	80	324
5906	80	332
5907	80	334
5908	80	335
5909	80	347
5910	80	352
5911	80	362
5912	80	363
5913	80	374
5914	80	401
5915	80	409
5916	80	411
5917	80	416
5918	80	419
5919	80	428
5920	80	433
5921	80	445
5922	80	447
5923	80	503
5924	80	505
5925	80	510
5926	80	523
5927	80	590
5928	81	33
5929	81	36
5930	81	38
5931	81	48
5932	81	49
5933	81	84
5934	81	85
5935	81	86
5936	81	87
5937	81	92
5938	81	99
5939	81	100
5940	81	102
5941	81	103
5942	81	104
5943	81	113
5944	81	115
5945	81	117
5946	81	129
5947	81	148
5948	81	153
5949	81	156
5950	81	164
5951	81	173
5952	81	174
5953	81	182
5954	81	192
5955	81	199
5956	81	203
5957	81	205
5958	81	207
5959	81	209
5960	81	214
5961	81	216
5962	81	218
5963	81	237
5964	81	240
5965	81	241
5966	81	244
5967	81	263
5968	81	277
5969	81	278
5970	81	290
5971	81	319
5972	81	324
5973	81	334
5974	81	351
5975	81	356
5976	81	360
5977	81	363
5978	81	393
5979	81	429
5980	81	430
5981	81	435
5982	81	443
5983	81	451
5984	81	521
5985	81	527
5986	81	528
5987	81	590
5988	82	33
5989	82	36
5990	82	38
5991	82	48
5992	82	49
5993	82	63
5994	82	84
5995	82	85
5996	82	86
5997	82	87
5998	82	92
5999	82	99
6000	82	100
6001	82	102
6002	82	103
6003	82	104
6004	82	113
6005	82	115
6006	82	117
6007	82	129
6008	82	148
6009	82	153
6010	82	156
6011	82	161
6012	82	164
6013	82	173
6014	82	174
6015	82	182
6016	82	192
6017	82	199
6018	82	203
6019	82	205
6020	82	207
6021	82	209
6022	82	214
6023	82	216
6024	82	218
6025	82	237
6026	82	240
6027	82	241
6028	82	244
6029	82	263
6030	82	277
6031	82	278
6032	82	290
6033	82	319
6034	82	324
6035	82	334
6036	82	351
6037	82	356
6038	82	360
6039	82	363
6040	82	393
6041	82	416
6042	82	429
6043	82	430
6044	82	435
6045	82	443
6046	82	451
6047	82	521
6048	82	527
6049	82	528
6050	82	590
6051	82	604
6052	83	13
6053	83	14
6054	83	15
6055	83	16
6056	83	18
6057	83	19
6058	83	28
6059	83	29
6060	83	31
6061	83	34
6062	83	36
6063	83	38
6064	83	43
6065	83	64
6066	83	92
6067	83	97
6068	83	98
6069	83	99
6070	83	102
6071	83	104
6072	83	115
6073	83	117
6074	83	119
6075	83	129
6076	83	130
6077	83	143
6078	83	156
6079	83	163
6080	83	164
6081	83	168
6082	83	173
6083	83	174
6084	83	175
6085	83	182
6086	83	189
6087	83	193
6088	83	197
6089	83	203
6090	83	206
6091	83	207
6092	83	210
6093	83	211
6094	83	213
6095	83	214
6096	83	216
6097	83	218
6098	83	231
6099	83	237
6100	83	239
6101	83	241
6102	83	244
6103	83	253
6104	83	257
6105	83	263
6106	83	270
6107	83	279
6108	83	282
6109	83	290
6110	83	297
6111	83	314
6112	83	332
6113	83	343
6114	83	348
6115	83	355
6116	83	363
6117	83	364
6118	83	365
6119	83	366
6120	83	369
6121	83	376
6122	83	387
6123	83	398
6124	83	400
6125	83	403
6126	83	413
6127	83	432
6128	83	445
6129	83	512
6130	83	514
6131	83	526
6132	83	590
6133	83	693
6134	84	14
6135	84	18
6136	84	19
6137	84	26
6138	84	31
6139	84	34
6140	84	36
6141	84	37
6142	84	38
6143	84	45
6144	84	48
6145	84	64
6146	84	65
6147	84	92
6148	84	97
6149	84	98
6150	84	99
6151	84	102
6152	84	104
6153	84	114
6154	84	115
6155	84	117
6156	84	119
6157	84	129
6158	84	130
6159	84	143
6160	84	156
6161	84	161
6162	84	164
6163	84	168
6164	84	173
6165	84	174
6166	84	175
6167	84	182
6168	84	185
6169	84	189
6170	84	203
6171	84	207
6172	84	211
6173	84	213
6174	84	214
6175	84	216
6176	84	218
6177	84	228
6178	84	237
6179	84	241
6180	84	253
6181	84	263
6182	84	282
6183	84	283
6184	84	290
6185	84	314
6186	84	332
6187	84	355
6188	84	363
6189	84	365
6190	84	367
6191	84	372
6192	84	413
6193	84	445
6194	84	526
6195	84	590
6196	85	14
6197	85	18
6198	85	19
6199	85	26
6200	85	31
6201	85	34
6202	85	36
6203	85	37
6204	85	38
6205	85	45
6206	85	63
6207	85	64
6208	85	65
6209	85	92
6210	85	97
6211	85	98
6212	85	99
6213	85	102
6214	85	104
6215	85	115
6216	85	117
6217	85	129
6218	85	130
6219	85	143
6220	85	156
6221	85	161
6222	85	164
6223	85	168
6224	85	173
6225	85	174
6226	85	182
6227	85	189
6228	85	203
6229	85	207
6230	85	211
6231	85	213
6232	85	214
6233	85	216
6234	85	218
6235	85	228
6236	85	237
6237	85	241
6238	85	253
6239	85	259
6240	85	263
6241	85	269
6242	85	282
6243	85	283
6244	85	290
6245	85	314
6246	85	332
6247	85	355
6248	85	363
6249	85	365
6250	85	367
6251	85	371
6252	85	416
6253	85	445
6254	85	526
6255	85	590
6256	86	6
6257	86	21
6258	86	29
6259	86	32
6260	86	34
6261	86	36
6262	86	38
6263	86	45
6264	86	50
6265	86	55
6266	86	57
6267	86	58
6268	86	59
6269	86	61
6270	86	62
6271	86	64
6272	86	70
6273	86	92
6274	86	99
6275	86	102
6276	86	104
6277	86	117
6278	86	122
6279	86	127
6280	86	130
6281	86	156
6282	86	164
6283	86	168
6284	86	173
6285	86	174
6286	86	182
6287	86	195
6288	86	196
6289	86	203
6290	86	207
6291	86	213
6292	86	214
6293	86	216
6294	86	218
6295	86	219
6296	86	227
6297	86	231
6298	86	237
6299	86	240
6300	86	250
6301	86	252
6302	86	254
6303	86	255
6304	86	256
6305	86	258
6306	86	263
6307	86	290
6308	86	291
6309	86	324
6310	86	333
6311	86	346
6312	86	352
6313	86	362
6314	86	363
6315	86	374
6316	86	392
6317	86	401
6318	86	420
6319	86	445
6320	86	453
6321	86	529
6322	86	562
6323	86	590
6324	86	684
6325	87	6
6326	87	29
6327	87	32
6328	87	34
6329	87	36
6330	87	38
6331	87	45
6332	87	55
6333	87	57
6334	87	58
6335	87	59
6336	87	61
6337	87	62
6338	87	63
6339	87	70
6340	87	92
6341	87	99
6342	87	102
6343	87	104
6344	87	117
6345	87	127
6346	87	130
6347	87	156
6348	87	164
6349	87	168
6350	87	173
6351	87	174
6352	87	182
6353	87	196
6354	87	203
6355	87	207
6356	87	213
6357	87	214
6358	87	216
6359	87	218
6360	87	219
6361	87	227
6362	87	231
6363	87	237
6364	87	240
6365	87	250
6366	87	258
6367	87	263
6368	87	290
6369	87	291
6370	87	324
6371	87	329
6372	87	352
6373	87	362
6374	87	363
6375	87	374
6376	87	392
6377	87	401
6378	87	416
6379	87	419
6380	87	420
6381	87	445
6382	87	453
6383	87	524
6384	87	529
6385	87	590
6386	87	684
6387	88	1
6388	88	7
6389	88	8
6390	88	9
6391	88	34
6392	88	50
6393	88	53
6394	88	70
6395	88	72
6396	88	85
6397	88	87
6398	88	91
6399	88	92
6400	88	99
6401	88	102
6402	88	103
6403	88	104
6404	88	106
6405	88	107
6406	88	114
6407	88	117
6408	88	120
6409	88	122
6410	88	124
6411	88	126
6412	88	139
6413	88	151
6414	88	153
6415	88	156
6416	88	157
6417	88	164
6418	88	168
6419	88	173
6420	88	174
6421	88	182
6422	88	184
6423	88	188
6424	88	189
6425	88	192
6426	88	202
6427	88	203
6428	88	207
6429	88	212
6430	88	213
6431	88	214
6432	88	216
6433	88	218
6434	88	220
6435	88	223
6436	88	237
6437	88	240
6438	88	241
6439	88	247
6440	88	254
6441	88	255
6442	88	256
6443	88	259
6444	88	262
6445	88	263
6446	88	269
6447	88	286
6448	88	290
6449	88	317
6450	88	325
6451	88	351
6452	88	363
6453	88	371
6454	88	374
6455	88	398
6456	88	425
6457	88	426
6458	88	441
6459	88	445
6460	88	510
6461	88	562
6462	88	590
6463	88	611
6464	88	612
6465	89	1
6466	89	7
6467	89	8
6468	89	9
6469	89	34
6470	89	50
6471	89	53
6472	89	63
6473	89	70
6474	89	72
6475	89	85
6476	89	87
6477	89	91
6478	89	92
6479	89	99
6480	89	102
6481	89	103
6482	89	104
6483	89	106
6484	89	107
6485	89	117
6486	89	120
6487	89	124
6488	89	126
6489	89	139
6490	89	151
6491	89	153
6492	89	156
6493	89	157
6494	89	164
6495	89	168
6496	89	173
6497	89	174
6498	89	182
6499	89	188
6500	89	189
6501	89	192
6502	89	202
6503	89	203
6504	89	207
6505	89	213
6506	89	214
6507	89	216
6508	89	218
6509	89	220
6510	89	223
6511	89	237
6512	89	240
6513	89	241
6514	89	247
6515	89	249
6516	89	259
6517	89	262
6518	89	263
6519	89	264
6520	89	269
6521	89	280
6522	89	290
6523	89	317
6524	89	335
6525	89	351
6526	89	363
6527	89	371
6528	89	374
6529	89	398
6530	89	399
6531	89	411
6532	89	416
6533	89	426
6534	89	441
6535	89	445
6536	89	510
6537	89	562
6538	89	590
6539	89	599
6540	89	611
6541	89	612
6542	90	33
6543	90	36
6544	90	38
6545	90	41
6546	90	43
6547	90	48
6548	90	55
6549	90	56
6550	90	57
6551	90	58
6552	90	59
6553	90	61
6554	90	62
6555	90	92
6556	90	99
6557	90	100
6558	90	102
6559	90	103
6560	90	104
6561	90	110
6562	90	112
6563	90	115
6564	90	117
6565	90	120
6566	90	128
6567	90	129
6568	90	153
6569	90	156
6570	90	161
6571	90	164
6572	90	173
6573	90	174
6574	90	182
6575	90	196
6576	90	203
6577	90	207
6578	90	213
6579	90	214
6580	90	216
6581	90	218
6582	90	229
6583	90	237
6584	90	240
6585	90	250
6586	90	258
6587	90	263
6588	90	290
6589	90	291
6590	90	333
6591	90	334
6592	90	341
6593	90	350
6594	90	352
6595	90	362
6596	90	363
6597	90	371
6598	90	392
6599	90	419
6600	90	420
6601	90	445
6602	90	504
6603	90	534
6604	90	590
6605	91	36
6606	91	38
6607	91	48
6608	91	55
6609	91	56
6610	91	57
6611	91	58
6612	91	59
6613	91	61
6614	91	62
6615	91	63
6616	91	92
6617	91	99
6618	91	100
6619	91	102
6620	91	104
6621	91	110
6622	91	115
6623	91	117
6624	91	120
6625	91	128
6626	91	129
6627	91	131
6628	91	153
6629	91	156
6630	91	161
6631	91	164
6632	91	173
6633	91	174
6634	91	182
6635	91	191
6636	91	196
6637	91	203
6638	91	207
6639	91	213
6640	91	214
6641	91	216
6642	91	218
6643	91	237
6644	91	240
6645	91	250
6646	91	258
6647	91	259
6648	91	263
6649	91	290
6650	91	291
6651	91	324
6652	91	334
6653	91	352
6654	91	362
6655	91	363
6656	91	371
6657	91	390
6658	91	398
6659	91	416
6660	91	419
6661	91	445
6662	91	504
6663	91	524
6664	91	556
6665	91	590
6666	91	684
6667	92	7
6668	92	8
6669	92	9
6670	92	50
6671	92	72
6672	92	85
6673	92	87
6674	92	92
6675	92	94
6676	92	95
6677	92	99
6678	92	101
6679	92	102
6680	92	104
6681	92	109
6682	92	114
6683	92	117
6684	92	120
6685	92	122
6686	92	123
6687	92	138
6688	92	149
6689	92	153
6690	92	156
6691	92	164
6692	92	168
6693	92	171
6694	92	173
6695	92	174
6696	92	180
6697	92	182
6698	92	184
6699	92	188
6700	92	192
6701	92	194
6702	92	195
6703	92	196
6704	92	202
6705	92	203
6706	92	207
6707	92	212
6708	92	213
6709	92	214
6710	92	216
6711	92	218
6712	92	220
6713	92	237
6714	92	240
6715	92	241
6716	92	244
6717	92	247
6718	92	253
6719	92	259
6720	92	261
6721	92	263
6722	92	269
6723	92	271
6724	92	282
6725	92	285
6726	92	288
6727	92	289
6728	92	290
6729	92	310
6730	92	363
6731	92	371
6732	92	373
6733	92	389
6734	92	399
6735	92	412
6736	92	433
6737	92	445
6738	92	506
6739	92	513
6740	92	590
6741	92	605
6742	92	611
6743	93	7
6744	93	8
6745	93	9
6746	93	72
6747	93	85
6748	93	87
6749	93	92
6750	93	94
6751	93	95
6752	93	99
6753	93	101
6754	93	102
6755	93	104
6756	93	109
6757	93	117
6758	93	120
6759	93	122
6760	93	138
6761	93	149
6762	93	153
6763	93	156
6764	93	164
6765	93	168
6766	93	171
6767	93	173
6768	93	174
6769	93	180
6770	93	182
6771	93	188
6772	93	192
6773	93	194
6774	93	196
6775	93	202
6776	93	203
6777	93	207
6778	93	212
6779	93	213
6780	93	214
6781	93	216
6782	93	218
6783	93	220
6784	93	237
6785	93	240
6786	93	241
6787	93	244
6788	93	247
6789	93	253
6790	93	259
6791	93	261
6792	93	263
6793	93	269
6794	93	271
6795	93	282
6796	93	285
6797	93	289
6798	93	290
6799	93	325
6800	93	363
6801	93	371
6802	93	373
6803	93	374
6804	93	389
6805	93	398
6806	93	399
6807	93	412
6808	93	421
6809	93	433
6810	93	445
6811	93	506
6812	93	590
6813	93	605
6814	93	611
6815	94	5
6816	94	7
6817	94	8
6818	94	9
6819	94	25
6820	94	29
6821	94	34
6822	94	36
6823	94	38
6824	94	63
6825	94	66
6826	94	68
6827	94	69
6828	94	70
6829	94	72
6830	94	85
6831	94	87
6832	94	92
6833	94	94
6834	94	95
6835	94	99
6836	94	101
6837	94	102
6838	94	104
6839	94	109
6840	94	117
6841	94	118
6842	94	120
6843	94	122
6844	94	130
6845	94	138
6846	94	149
6847	94	153
6848	94	156
6849	94	164
6850	94	168
6851	94	171
6852	94	173
6853	94	174
6854	94	180
6855	94	182
6856	94	188
6857	94	192
6858	94	194
6859	94	196
6860	94	202
6861	94	203
6862	94	207
6863	94	212
6864	94	213
6865	94	214
6866	94	216
6867	94	218
6868	94	220
6869	94	223
6870	94	237
6871	94	240
6872	94	241
6873	94	244
6874	94	247
6875	94	249
6876	94	253
6877	94	259
6878	94	261
6879	94	263
6880	94	264
6881	94	269
6882	94	271
6883	94	272
6884	94	280
6885	94	282
6886	94	285
6887	94	289
6888	94	290
6889	94	325
6890	94	363
6891	94	371
6892	94	373
6893	94	374
6894	94	389
6895	94	398
6896	94	399
6897	94	409
6898	94	411
6899	94	412
6900	94	416
6901	94	421
6902	94	433
6903	94	445
6904	94	506
6905	94	590
6906	94	605
6907	94	611
6908	94	612
6909	95	20
6910	95	21
6911	95	29
6912	95	33
6913	95	34
6914	95	36
6915	95	38
6916	95	46
6917	95	70
6918	95	88
6919	95	89
6920	95	90
6921	95	91
6922	95	92
6923	95	99
6924	95	102
6925	95	103
6926	95	104
6927	95	106
6928	95	111
6929	95	117
6930	95	120
6931	95	130
6932	95	153
6933	95	156
6934	95	157
6935	95	164
6936	95	173
6937	95	174
6938	95	175
6939	95	182
6940	95	189
6941	95	201
6942	95	203
6943	95	205
6944	95	207
6945	95	213
6946	95	214
6947	95	216
6948	95	218
6949	95	225
6950	95	231
6951	95	237
6952	95	239
6953	95	241
6954	95	244
6955	95	246
6956	95	249
6957	95	259
6958	95	263
6959	95	267
6960	95	269
6961	95	290
6962	95	300
6963	95	317
6964	95	328
6965	95	335
6966	95	350
6967	95	360
6968	95	363
6969	95	371
6970	95	397
6971	95	406
6972	95	414
6973	95	430
6974	95	431
6975	95	442
6976	95	444
6977	95	445
6978	95	446
6979	95	523
6980	95	525
6981	95	563
6982	95	590
6983	95	693
6984	96	1
6985	96	5
6986	96	7
6987	96	8
6988	96	9
6989	96	25
6990	96	29
6991	96	34
6992	96	36
6993	96	38
6994	96	50
6995	96	60
6996	96	66
6997	96	67
6998	96	68
6999	96	69
7000	96	86
7001	96	92
7002	96	93
7003	96	94
7004	96	95
7005	96	96
7006	96	99
7007	96	100
7008	96	102
7009	96	104
7010	96	112
7011	96	113
7012	96	115
7013	96	117
7014	96	118
7015	96	130
7016	96	138
7017	96	139
7018	96	148
7019	96	149
7020	96	156
7021	96	161
7022	96	164
7023	96	168
7024	96	171
7025	96	173
7026	96	174
7027	96	182
7028	96	192
7029	96	203
7030	96	207
7031	96	213
7032	96	214
7033	96	216
7034	96	218
7035	96	219
7036	96	223
7037	96	237
7038	96	240
7039	96	241
7040	96	244
7041	96	247
7042	96	248
7043	96	259
7044	96	260
7045	96	263
7046	96	264
7047	96	269
7048	96	271
7049	96	272
7050	96	274
7051	96	277
7052	96	278
7053	96	280
7054	96	285
7055	96	289
7056	96	290
7057	96	324
7058	96	347
7059	96	363
7060	96	374
7061	96	385
7062	96	409
7063	96	417
7064	96	427
7065	96	428
7066	96	433
7067	96	445
7068	96	447
7069	96	590
7070	96	605
7071	96	612
7072	97	1
7073	97	5
7074	97	7
7075	97	8
7076	97	9
7077	97	25
7078	97	29
7079	97	34
7080	97	36
7081	97	38
7082	97	50
7083	97	60
7084	97	63
7085	97	66
7086	97	67
7087	97	68
7088	97	69
7089	97	86
7090	97	92
7091	97	93
7092	97	94
7093	97	95
7094	97	96
7095	97	99
7096	97	100
7097	97	102
7098	97	104
7099	97	113
7100	97	115
7101	97	117
7102	97	118
7103	97	130
7104	97	138
7105	97	139
7106	97	148
7107	97	149
7108	97	156
7109	97	161
7110	97	164
7111	97	168
7112	97	171
7113	97	173
7114	97	174
7115	97	182
7116	97	192
7117	97	203
7118	97	207
7119	97	213
7120	97	214
7121	97	216
7122	97	218
7123	97	219
7124	97	223
7125	97	237
7126	97	240
7127	97	241
7128	97	244
7129	97	247
7130	97	248
7131	97	259
7132	97	263
7133	97	264
7134	97	269
7135	97	271
7136	97	272
7137	97	277
7138	97	278
7139	97	280
7140	97	285
7141	97	289
7142	97	290
7143	97	324
7144	97	347
7145	97	363
7146	97	374
7147	97	409
7148	97	411
7149	97	415
7150	97	416
7151	97	417
7152	97	428
7153	97	433
7154	97	445
7155	97	447
7156	97	590
7157	97	605
7158	97	612
7159	98	11
7160	98	12
7161	98	14
7162	98	15
7163	98	21
7164	98	23
7165	98	34
7166	98	36
7167	98	38
7168	98	43
7169	98	55
7170	98	57
7171	98	58
7172	98	59
7173	98	61
7174	98	70
7175	98	91
7176	98	92
7177	98	97
7178	98	99
7179	98	102
7180	98	104
7181	98	106
7182	98	114
7183	98	117
7184	98	133
7185	98	145
7186	98	152
7187	98	156
7188	98	157
7189	98	164
7190	98	168
7191	98	173
7192	98	174
7193	98	175
7194	98	182
7195	98	189
7196	98	196
7197	98	203
7198	98	206
7199	98	207
7200	98	210
7201	98	213
7202	98	214
7203	98	216
7204	98	218
7205	98	232
7206	98	237
7207	98	240
7208	98	246
7209	98	249
7210	98	250
7211	98	258
7212	98	263
7213	98	276
7214	98	280
7215	98	282
7216	98	290
7217	98	291
7218	98	300
7219	98	317
7220	98	321
7221	98	334
7222	98	341
7223	98	352
7224	98	362
7225	98	363
7226	98	374
7227	98	404
7228	98	445
7229	98	502
7230	98	503
7231	98	590
7232	99	11
7233	99	12
7234	99	14
7235	99	15
7236	99	21
7237	99	23
7238	99	34
7239	99	36
7240	99	38
7241	99	43
7242	99	55
7243	99	57
7244	99	58
7245	99	59
7246	99	61
7247	99	63
7248	99	70
7249	99	91
7250	99	92
7251	99	99
7252	99	102
7253	99	104
7254	99	106
7255	99	117
7256	99	145
7257	99	152
7258	99	156
7259	99	157
7260	99	164
7261	99	168
7262	99	173
7263	99	174
7264	99	175
7265	99	182
7266	99	189
7267	99	196
7268	99	203
7269	99	206
7270	99	207
7271	99	210
7272	99	213
7273	99	214
7274	99	216
7275	99	218
7276	99	232
7277	99	237
7278	99	240
7279	99	246
7280	99	249
7281	99	250
7282	99	258
7283	99	263
7284	99	276
7285	99	280
7286	99	282
7287	99	290
7288	99	291
7289	99	300
7290	99	317
7291	99	334
7292	99	341
7293	99	352
7294	99	362
7295	99	363
7296	99	374
7297	99	404
7298	99	416
7299	99	445
7300	99	503
7301	99	511
7302	99	590
7303	100	29
7304	100	33
7305	100	36
7306	100	49
7307	100	85
7308	100	86
7309	100	87
7310	100	92
7311	100	99
7312	100	100
7313	100	102
7314	100	103
7315	100	104
7316	100	113
7317	100	115
7318	100	117
7319	100	120
7320	100	129
7321	100	148
7322	100	153
7323	100	156
7324	100	164
7325	100	168
7326	100	173
7327	100	174
7328	100	182
7329	100	192
7330	100	203
7331	100	205
7332	100	207
7333	100	209
7334	100	214
7335	100	216
7336	100	218
7337	100	237
7338	100	240
7339	100	243
7340	100	259
7341	100	263
7342	100	268
7343	100	269
7344	100	277
7345	100	290
7346	100	324
7347	100	351
7348	100	360
7349	100	363
7350	100	389
7351	100	393
7352	100	435
7353	100	451
7354	100	521
7355	100	528
7356	100	590
7357	100	598
7358	101	29
7359	101	33
7360	101	36
7361	101	49
7362	101	63
7363	101	85
7364	101	86
7365	101	87
7366	101	92
7367	101	99
7368	101	100
7369	101	102
7370	101	103
7371	101	104
7372	101	113
7373	101	115
7374	101	117
7375	101	120
7376	101	129
7377	101	130
7378	101	148
7379	101	153
7380	101	156
7381	101	164
7382	101	168
7383	101	173
7384	101	174
7385	101	182
7386	101	192
7387	101	203
7388	101	205
7389	101	207
7390	101	209
7391	101	214
7392	101	216
7393	101	218
7394	101	237
7395	101	240
7396	101	243
7397	101	259
7398	101	263
7399	101	268
7400	101	269
7401	101	277
7402	101	290
7403	101	324
7404	101	351
7405	101	360
7406	101	363
7407	101	389
7408	101	393
7409	101	416
7410	101	435
7411	101	451
7412	101	521
7413	101	528
7414	101	590
7415	101	598
7416	101	602
7417	102	14
7418	102	36
7419	102	38
7420	102	70
7421	102	72
7422	102	73
7423	102	76
7424	102	77
7425	102	78
7426	102	79
7427	102	92
7428	102	93
7429	102	94
7430	102	95
7431	102	99
7432	102	100
7433	102	102
7434	102	104
7435	102	113
7436	102	115
7437	102	117
7438	102	120
7439	102	121
7440	102	138
7441	102	140
7442	102	148
7443	102	149
7444	102	153
7445	102	156
7446	102	164
7447	102	168
7448	102	171
7449	102	173
7450	102	174
7451	102	182
7452	102	188
7453	102	202
7454	102	203
7455	102	205
7456	102	207
7457	102	213
7458	102	214
7459	102	216
7460	102	218
7461	102	235
7462	102	236
7463	102	237
7464	102	241
7465	102	244
7466	102	246
7467	102	253
7468	102	263
7469	102	267
7470	102	275
7471	102	285
7472	102	290
7473	102	326
7474	102	331
7475	102	335
7476	102	356
7477	102	363
7478	102	381
7479	102	384
7480	102	388
7481	102	402
7482	102	412
7483	102	433
7484	102	437
7485	102	445
7486	102	447
7487	102	516
7488	102	580
7489	102	590
7490	102	611
7491	103	14
7492	103	23
7493	103	29
7494	103	36
7495	103	38
7496	103	63
7497	103	67
7498	103	70
7499	103	72
7500	103	76
7501	103	92
7502	103	93
7503	103	94
7504	103	95
7505	103	99
7506	103	100
7507	103	102
7508	103	104
7509	103	113
7510	103	115
7511	103	117
7512	103	120
7513	103	121
7514	103	138
7515	103	140
7516	103	148
7517	103	149
7518	103	153
7519	103	156
7520	103	164
7521	103	168
7522	103	171
7523	103	173
7524	103	174
7525	103	182
7526	103	188
7527	103	202
7528	103	203
7529	103	205
7530	103	207
7531	103	213
7532	103	214
7533	103	216
7534	103	218
7535	103	235
7536	103	237
7537	103	241
7538	103	244
7539	103	246
7540	103	263
7541	103	267
7542	103	285
7543	103	290
7544	103	331
7545	103	335
7546	103	356
7547	103	363
7548	103	388
7549	103	402
7550	103	412
7551	103	416
7552	103	428
7553	103	433
7554	103	437
7555	103	445
7556	103	447
7557	103	452
7558	103	590
7559	103	611
7560	104	5
7561	104	7
7562	104	9
7563	104	14
7564	104	24
7565	104	25
7566	104	29
7567	104	34
7568	104	36
7569	104	37
7570	104	38
7571	104	39
7572	104	43
7573	104	45
7574	104	53
7575	104	55
7576	104	58
7577	104	59
7578	104	61
7579	104	66
7580	104	67
7581	104	68
7582	104	69
7583	104	70
7584	104	89
7585	104	90
7586	104	91
7587	104	92
7588	104	99
7589	104	102
7590	104	103
7591	104	104
7592	104	116
7593	104	117
7594	104	125
7595	104	126
7596	104	130
7597	104	155
7598	104	156
7599	104	157
7600	104	164
7601	104	168
7602	104	173
7603	104	174
7604	104	182
7605	104	187
7606	104	189
7607	104	195
7608	104	196
7609	104	197
7610	104	198
7611	104	201
7612	104	203
7613	104	206
7614	104	207
7615	104	210
7616	104	213
7617	104	214
7618	104	216
7619	104	218
7620	104	223
7621	104	231
7622	104	237
7623	104	241
7624	104	246
7625	104	249
7626	104	253
7627	104	263
7628	104	264
7629	104	280
7630	104	282
7631	104	283
7632	104	290
7633	104	317
7634	104	332
7635	104	334
7636	104	363
7637	104	374
7638	104	414
7639	104	431
7640	104	442
7641	104	445
7642	104	446
7643	104	510
7644	104	514
7645	104	523
7646	104	590
7647	104	612
7648	104	693
7649	104	707
7650	105	5
7651	105	7
7652	105	9
7653	105	14
7654	105	25
7655	105	29
7656	105	34
7657	105	36
7658	105	37
7659	105	38
7660	105	39
7661	105	43
7662	105	45
7663	105	53
7664	105	55
7665	105	58
7666	105	59
7667	105	61
7668	105	63
7669	105	66
7670	105	67
7671	105	68
7672	105	69
7673	105	70
7674	105	89
7675	105	90
7676	105	91
7677	105	92
7678	105	99
7679	105	102
7680	105	104
7681	105	116
7682	105	117
7683	105	125
7684	105	126
7685	105	130
7686	105	155
7687	105	156
7688	105	157
7689	105	164
7690	105	168
7691	105	173
7692	105	174
7693	105	182
7694	105	189
7695	105	196
7696	105	197
7697	105	198
7698	105	200
7699	105	201
7700	105	203
7701	105	206
7702	105	207
7703	105	210
7704	105	213
7705	105	214
7706	105	216
7707	105	218
7708	105	223
7709	105	231
7710	105	237
7711	105	241
7712	105	249
7713	105	253
7714	105	263
7715	105	264
7716	105	280
7717	105	282
7718	105	283
7719	105	290
7720	105	317
7721	105	332
7722	105	334
7723	105	363
7724	105	374
7725	105	411
7726	105	414
7727	105	416
7728	105	431
7729	105	442
7730	105	444
7731	105	445
7732	105	446
7733	105	510
7734	105	514
7735	105	523
7736	105	590
7737	105	612
7738	105	693
7739	105	707
7740	106	5
7741	106	24
7742	106	25
7743	106	26
7744	106	27
7745	106	29
7746	106	34
7747	106	36
7748	106	38
7749	106	66
7750	106	67
7751	106	68
7752	106	69
7753	106	70
7754	106	89
7755	106	92
7756	106	96
7757	106	99
7758	106	102
7759	106	104
7760	106	116
7761	106	117
7762	106	118
7763	106	129
7764	106	130
7765	106	136
7766	106	156
7767	106	157
7768	106	164
7769	106	168
7770	106	170
7771	106	173
7772	106	174
7773	106	179
7774	106	182
7775	106	189
7776	106	193
7777	106	197
7778	106	203
7779	106	207
7780	106	213
7781	106	214
7782	106	216
7783	106	218
7784	106	223
7785	106	237
7786	106	240
7787	106	241
7788	106	249
7789	106	263
7790	106	264
7791	106	270
7792	106	272
7793	106	276
7794	106	279
7795	106	280
7796	106	282
7797	106	290
7798	106	299
7799	106	317
7800	106	339
7801	106	340
7802	106	343
7803	106	363
7804	106	364
7805	106	370
7806	106	374
7807	106	389
7808	106	398
7809	106	410
7810	106	411
7811	106	431
7812	106	444
7813	106	445
7814	106	514
7815	106	523
7816	106	526
7817	106	590
7818	106	612
7819	107	4
7820	107	5
7821	107	7
7822	107	8
7823	107	9
7824	107	25
7825	107	29
7826	107	34
7827	107	36
7828	107	38
7829	107	66
7830	107	67
7831	107	68
7832	107	69
7833	107	70
7834	107	89
7835	107	92
7836	107	97
7837	107	99
7838	107	102
7839	107	104
7840	107	117
7841	107	118
7842	107	129
7843	107	130
7844	107	156
7845	107	157
7846	107	164
7847	107	168
7848	107	173
7849	107	174
7850	107	182
7851	107	183
7852	107	189
7853	107	197
7854	107	203
7855	107	207
7856	107	213
7857	107	214
7858	107	216
7859	107	218
7860	107	223
7861	107	228
7862	107	237
7863	107	240
7864	107	241
7865	107	249
7866	107	263
7867	107	264
7868	107	270
7869	107	272
7870	107	279
7871	107	280
7872	107	290
7873	107	317
7874	107	327
7875	107	339
7876	107	343
7877	107	363
7878	107	364
7879	107	370
7880	107	374
7881	107	409
7882	107	410
7883	107	411
7884	107	418
7885	107	431
7886	107	444
7887	107	445
7888	107	501
7889	107	514
7890	107	523
7891	107	526
7892	107	590
7893	107	612
7894	108	5
7895	108	7
7896	108	8
7897	108	9
7898	108	14
7899	108	15
7900	108	20
7901	108	21
7902	108	23
7903	108	25
7904	108	29
7905	108	34
7906	108	35
7907	108	36
7908	108	38
7909	108	48
7910	108	50
7911	108	53
7912	108	55
7913	108	57
7914	108	58
7915	108	59
7916	108	61
7917	108	63
7918	108	66
7919	108	68
7920	108	69
7921	108	70
7922	108	76
7923	108	85
7924	108	87
7925	108	89
7926	108	90
7927	108	91
7928	108	92
7929	108	99
7930	108	102
7931	108	103
7932	108	104
7933	108	111
7934	108	117
7935	108	122
7936	108	126
7937	108	130
7938	108	133
7939	108	138
7940	108	156
7941	108	157
7942	108	164
7943	108	168
7944	108	171
7945	108	173
7946	108	174
7947	108	182
7948	108	187
7949	108	189
7950	108	196
7951	108	201
7952	108	203
7953	108	205
7954	108	207
7955	108	213
7956	108	214
7957	108	216
7958	108	218
7959	108	222
7960	108	223
7961	108	231
7962	108	237
7963	108	240
7964	108	241
7965	108	244
7966	108	247
7967	108	249
7968	108	250
7969	108	263
7970	108	264
7971	108	265
7972	108	280
7973	108	282
7974	108	287
7975	108	290
7976	108	317
7977	108	330
7978	108	351
7979	108	352
7980	108	359
7981	108	363
7982	108	374
7983	108	378
7984	108	382
7985	108	401
7986	108	416
7987	108	428
7988	108	431
7989	108	438
7990	108	445
7991	108	510
7992	108	514
7993	108	523
7994	108	525
7995	108	526
7996	108	562
7997	108	590
7998	108	612
7999	108	693
8000	109	33
8001	109	53
8002	109	60
8003	109	85
8004	109	87
8005	109	92
8006	109	99
8007	109	102
8008	109	103
8009	109	104
8010	109	108
8011	109	114
8012	109	117
8013	109	120
8014	109	123
8015	109	124
8016	109	126
8017	109	139
8018	109	148
8019	109	149
8020	109	153
8021	109	156
8022	109	164
8023	109	168
8024	109	173
8025	109	174
8026	109	180
8027	109	182
8028	109	188
8029	109	192
8030	109	194
8031	109	203
8032	109	205
8033	109	207
8034	109	213
8035	109	214
8036	109	216
8037	109	218
8038	109	220
8039	109	237
8040	109	240
8041	109	241
8042	109	247
8043	109	253
8044	109	254
8045	109	255
8046	109	256
8047	109	259
8048	109	261
8049	109	262
8050	109	263
8051	109	269
8052	109	288
8053	109	290
8054	109	351
8055	109	360
8056	109	363
8057	109	371
8058	109	372
8059	109	390
8060	109	399
8061	109	445
8062	109	510
8063	109	562
8064	109	590
8065	109	611
8066	110	33
8067	110	53
8068	110	63
8069	110	85
8070	110	87
8071	110	92
8072	110	99
8073	110	102
8074	110	104
8075	110	108
8076	110	114
8077	110	117
8078	110	120
8079	110	123
8080	110	124
8081	110	126
8082	110	139
8083	110	148
8084	110	153
8085	110	156
8086	110	164
8087	110	168
8088	110	173
8089	110	174
8090	110	180
8091	110	182
8092	110	188
8093	110	192
8094	110	194
8095	110	203
8096	110	205
8097	110	207
8098	110	213
8099	110	214
8100	110	216
8101	110	218
8102	110	220
8103	110	237
8104	110	240
8105	110	241
8106	110	247
8107	110	253
8108	110	259
8109	110	261
8110	110	262
8111	110	263
8112	110	269
8113	110	290
8114	110	351
8115	110	360
8116	110	363
8117	110	371
8118	110	372
8119	110	399
8120	110	416
8121	110	445
8122	110	510
8123	110	562
8124	110	590
8125	110	611
8126	111	14
8127	111	23
8128	111	29
8129	111	30
8130	111	31
8131	111	32
8132	111	34
8133	111	36
8134	111	37
8135	111	38
8136	111	39
8137	111	43
8138	111	46
8139	111	53
8140	111	58
8141	111	59
8142	111	68
8143	111	70
8144	111	85
8145	111	87
8146	111	89
8147	111	90
8148	111	91
8149	111	92
8150	111	99
8151	111	102
8152	111	104
8153	111	117
8154	111	126
8155	111	130
8156	111	156
8157	111	157
8158	111	164
8159	111	168
8160	111	173
8161	111	174
8162	111	179
8163	111	180
8164	111	182
8165	111	184
8166	111	189
8167	111	192
8168	111	196
8169	111	201
8170	111	203
8171	111	205
8172	111	207
8173	111	213
8174	111	214
8175	111	216
8176	111	218
8177	111	222
8178	111	224
8179	111	228
8180	111	231
8181	111	237
8182	111	240
8183	111	241
8184	111	242
8185	111	246
8186	111	249
8187	111	253
8188	111	263
8189	111	276
8190	111	283
8191	111	290
8192	111	306
8193	111	317
8194	111	350
8195	111	351
8196	111	363
8197	111	368
8198	111	371
8199	111	397
8200	111	398
8201	111	401
8202	111	406
8203	111	407
8204	111	414
8205	111	422
8206	111	423
8207	111	424
8208	111	431
8209	111	444
8210	111	445
8211	111	446
8212	111	510
8213	111	523
8214	111	529
8215	111	563
8216	111	590
8217	111	684
8218	112	5
8219	112	6
8220	112	7
8221	112	8
8222	112	9
8223	112	14
8224	112	15
8225	112	23
8226	112	25
8227	112	29
8228	112	30
8229	112	31
8230	112	32
8231	112	34
8232	112	36
8233	112	38
8234	112	39
8235	112	43
8236	112	46
8237	112	53
8238	112	55
8239	112	57
8240	112	58
8241	112	59
8242	112	61
8243	112	63
8244	112	66
8245	112	68
8246	112	69
8247	112	70
8248	112	85
8249	112	87
8250	112	89
8251	112	90
8252	112	91
8253	112	92
8254	112	99
8255	112	102
8256	112	104
8257	112	117
8258	112	126
8259	112	130
8260	112	156
8261	112	157
8262	112	164
8263	112	168
8264	112	173
8265	112	174
8266	112	180
8267	112	182
8268	112	184
8269	112	189
8270	112	192
8271	112	196
8272	112	200
8273	112	201
8274	112	203
8275	112	205
8276	112	207
8277	112	210
8278	112	213
8279	112	214
8280	112	216
8281	112	218
8282	112	223
8283	112	224
8284	112	231
8285	112	237
8286	112	240
8287	112	241
8288	112	246
8289	112	249
8290	112	250
8291	112	253
8292	112	263
8293	112	264
8294	112	276
8295	112	280
8296	112	283
8297	112	290
8298	112	317
8299	112	335
8300	112	350
8301	112	351
8302	112	359
8303	112	363
8304	112	371
8305	112	374
8306	112	397
8307	112	398
8308	112	401
8309	112	406
8310	112	411
8311	112	414
8312	112	416
8313	112	419
8314	112	421
8315	112	431
8316	112	444
8317	112	445
8318	112	446
8319	112	510
8320	112	523
8321	112	525
8322	112	529
8323	112	590
8324	112	612
8325	112	684
8326	112	693
8327	113	1
8328	113	3
8329	113	5
8330	113	7
8331	113	8
8332	113	9
8333	113	25
8334	113	29
8335	113	34
8336	113	36
8337	113	38
8338	113	39
8339	113	45
8340	113	47
8341	113	53
8342	113	55
8343	113	58
8344	113	59
8345	113	61
8346	113	63
8347	113	66
8348	113	68
8349	113	69
8350	113	70
8351	113	76
8352	113	85
8353	113	86
8354	113	87
8355	113	89
8356	113	92
8357	113	94
8358	113	99
8359	113	100
8360	113	102
8361	113	104
8362	113	107
8363	113	111
8364	113	113
8365	113	115
8366	113	117
8367	113	118
8368	113	121
8369	113	126
8370	113	130
8371	113	135
8372	113	138
8373	113	148
8374	113	149
8375	113	156
8376	113	157
8377	113	161
8378	113	164
8379	113	173
8380	113	174
8381	113	182
8382	113	189
8383	113	192
8384	113	196
8385	113	201
8386	113	203
8387	113	205
8388	113	207
8389	113	213
8390	113	214
8391	113	215
8392	113	216
8393	113	217
8394	113	218
8395	113	219
8396	113	223
8397	113	231
8398	113	237
8399	113	240
8400	113	241
8401	113	244
8402	113	247
8403	113	249
8404	113	258
8405	113	263
8406	113	264
8407	113	270
8408	113	278
8409	113	280
8410	113	283
8411	113	285
8412	113	287
8413	113	289
8414	113	290
8415	113	304
8416	113	312
8417	113	317
8418	113	343
8419	113	347
8420	113	351
8421	113	352
8422	113	356
8423	113	361
8424	113	363
8425	113	374
8426	113	387
8427	113	409
8428	113	416
8429	113	426
8430	113	428
8431	113	431
8432	113	445
8433	113	446
8434	113	447
8435	113	451
8436	113	505
8437	113	510
8438	113	514
8439	113	516
8440	113	523
8441	113	526
8442	113	528
8443	113	590
8444	113	605
8445	113	612
8446	114	14
8447	114	15
8448	114	20
8449	114	21
8450	114	22
8451	114	29
8452	114	34
8453	114	36
8454	114	38
8455	114	63
8456	114	71
8457	114	72
8458	114	73
8459	114	74
8460	114	76
8461	114	77
8462	114	78
8463	114	79
8464	114	92
8465	114	93
8466	114	99
8467	114	102
8468	114	104
8469	114	115
8470	114	117
8471	114	130
8472	114	132
8473	114	133
8474	114	148
8475	114	156
8476	114	164
8477	114	168
8478	114	173
8479	114	174
8480	114	175
8481	114	182
8482	114	188
8483	114	202
8484	114	203
8485	114	207
8486	114	213
8487	114	214
8488	114	216
8489	114	218
8490	114	220
8491	114	230
8492	114	235
8493	114	237
8494	114	241
8495	114	244
8496	114	246
8497	114	249
8498	114	263
8499	114	267
8500	114	275
8501	114	282
8502	114	283
8503	114	290
8504	114	321
8505	114	331
8506	114	351
8507	114	363
8508	114	378
8509	114	384
8510	114	388
8511	114	402
8512	114	412
8513	114	416
8514	114	437
8515	114	438
8516	114	445
8517	114	447
8518	114	580
8519	114	590
8520	114	611
8521	115	4
8522	115	5
8523	115	7
8524	115	8
8525	115	9
8526	115	15
8527	115	23
8528	115	25
8529	115	29
8530	115	34
8531	115	36
8532	115	38
8533	115	39
8534	115	43
8535	115	44
8536	115	46
8537	115	50
8538	115	53
8539	115	55
8540	115	57
8541	115	58
8542	115	59
8543	115	61
8544	115	63
8545	115	66
8546	115	67
8547	115	68
8548	115	69
8549	115	70
8550	115	76
8551	115	85
8552	115	87
8553	115	89
8554	115	90
8555	115	91
8556	115	92
8557	115	99
8558	115	102
8559	115	104
8560	115	116
8561	115	117
8562	115	126
8563	115	130
8564	115	146
8565	115	156
8566	115	157
8567	115	164
8568	115	168
8569	115	173
8570	115	174
8571	115	179
8572	115	180
8573	115	182
8574	115	189
8575	115	192
8576	115	193
8577	115	196
8578	115	200
8579	115	201
8580	115	203
8581	115	207
8582	115	210
8583	115	213
8584	115	214
8585	115	216
8586	115	218
8587	115	219
8588	115	223
8589	115	231
8590	115	237
8591	115	240
8592	115	241
8593	115	242
8594	115	247
8595	115	249
8596	115	250
8597	115	252
8598	115	253
8599	115	258
8600	115	263
8601	115	264
8602	115	270
8603	115	280
8604	115	283
8605	115	290
8606	115	306
8607	115	317
8608	115	332
8609	115	343
8610	115	351
8611	115	352
8612	115	359
8613	115	363
8614	115	374
8615	115	376
8616	115	389
8617	115	401
8618	115	409
8619	115	411
8620	115	416
8621	115	419
8622	115	421
8623	115	431
8624	115	445
8625	115	509
8626	115	510
8627	115	514
8628	115	523
8629	115	526
8630	115	590
8631	115	612
8632	116	13
8633	116	29
8634	116	36
8635	116	38
8636	116	43
8637	116	50
8638	116	55
8639	116	56
8640	116	57
8641	116	58
8642	116	59
8643	116	61
8644	116	62
8645	116	82
8646	116	92
8647	116	97
8648	116	99
8649	116	102
8650	116	104
8651	116	108
8652	116	116
8653	116	117
8654	116	127
8655	116	129
8656	116	130
8657	116	145
8658	116	150
8659	116	156
8660	116	164
8661	116	173
8662	116	174
8663	116	175
8664	116	182
8665	116	190
8666	116	196
8667	116	200
8668	116	203
8669	116	207
8670	116	213
8671	116	214
8672	116	216
8673	116	218
8674	116	225
8675	116	237
8676	116	239
8677	116	240
8678	116	250
8679	116	258
8680	116	263
8681	116	290
8682	116	291
8683	116	324
8684	116	330
8685	116	340
8686	116	349
8687	116	352
8688	116	362
8689	116	363
8690	116	406
8691	116	430
8692	116	445
8693	116	503
8694	116	590
8695	117	29
8696	117	36
8697	117	38
8698	117	43
8699	117	55
8700	117	56
8701	117	57
8702	117	58
8703	117	59
8704	117	61
8705	117	63
8706	117	92
8707	117	97
8708	117	99
8709	117	102
8710	117	104
8711	117	108
8712	117	116
8713	117	117
8714	117	127
8715	117	129
8716	117	130
8717	117	145
8718	117	156
8719	117	164
8720	117	173
8721	117	174
8722	117	182
8723	117	196
8724	117	200
8725	117	203
8726	117	207
8727	117	213
8728	117	214
8729	117	216
8730	117	218
8731	117	225
8732	117	237
8733	117	239
8734	117	240
8735	117	250
8736	117	258
8737	117	263
8738	117	290
8739	117	291
8740	117	324
8741	117	340
8742	117	349
8743	117	352
8744	117	362
8745	117	363
8746	117	406
8747	117	416
8748	117	430
8749	117	445
8750	117	503
8751	117	590
8752	118	30
8753	118	31
8754	118	32
8755	118	34
8756	118	36
8757	118	38
8758	118	39
8759	118	48
8760	118	55
8761	118	56
8762	118	57
8763	118	58
8764	118	59
8765	118	60
8766	118	61
8767	118	64
8768	118	92
8769	118	97
8770	118	99
8771	118	102
8772	118	104
8773	118	114
8774	118	117
8775	118	127
8776	118	129
8777	118	130
8778	118	156
8779	118	164
8780	118	173
8781	118	174
8782	118	175
8783	118	182
8784	118	189
8785	118	196
8786	118	203
8787	118	207
8788	118	210
8789	118	213
8790	118	214
8791	118	216
8792	118	218
8793	118	224
8794	118	237
8795	118	240
8796	118	250
8797	118	258
8798	118	263
8799	118	282
8800	118	290
8801	118	291
8802	118	300
8803	118	324
8804	118	340
8805	118	341
8806	118	346
8807	118	352
8808	118	363
8809	118	392
8810	118	398
8811	118	401
8812	118	445
8813	118	503
8814	118	529
8815	118	590
8816	118	684
8817	119	30
8818	119	31
8819	119	32
8820	119	36
8821	119	38
8822	119	39
8823	119	48
8824	119	55
8825	119	57
8826	119	58
8827	119	59
8828	119	61
8829	119	63
8830	119	64
8831	119	92
8832	119	97
8833	119	99
8834	119	102
8835	119	104
8836	119	117
8837	119	127
8838	119	129
8839	119	130
8840	119	156
8841	119	164
8842	119	173
8843	119	174
8844	119	175
8845	119	182
8846	119	189
8847	119	196
8848	119	203
8849	119	207
8850	119	210
8851	119	213
8852	119	214
8853	119	216
8854	119	218
8855	119	224
8856	119	237
8857	119	240
8858	119	250
8859	119	258
8860	119	263
8861	119	282
8862	119	290
8863	119	291
8864	119	324
8865	119	340
8866	119	346
8867	119	352
8868	119	363
8869	119	392
8870	119	398
8871	119	401
8872	119	416
8873	119	445
8874	119	503
8875	119	529
8876	119	590
8877	119	684
8878	120	33
8879	120	36
8880	120	38
8881	120	48
8882	120	55
8883	120	56
8884	120	57
8885	120	58
8886	120	59
8887	120	61
8888	120	62
8889	120	85
8890	120	86
8891	120	87
8892	120	92
8893	120	94
8894	120	99
8895	120	100
8896	120	102
8897	120	104
8898	120	105
8899	120	106
8900	120	107
8901	120	109
8902	120	112
8903	120	113
8904	120	115
8905	120	117
8906	120	127
8907	120	129
8908	120	130
8909	120	148
8910	120	149
8911	120	156
8912	120	161
8913	120	164
8914	120	173
8915	120	174
8916	120	182
8917	120	192
8918	120	196
8919	120	203
8920	120	205
8921	120	207
8922	120	213
8923	120	214
8924	120	216
8925	120	218
8926	120	220
8927	120	229
8928	120	237
8929	120	239
8930	120	240
8931	120	244
8932	120	250
8933	120	258
8934	120	263
8935	120	277
8936	120	278
8937	120	290
8938	120	291
8939	120	293
8940	120	322
8941	120	324
8942	120	352
8943	120	356
8944	120	360
8945	120	362
8946	120	363
8947	120	408
8948	120	430
8949	120	503
8950	120	513
8951	120	590
8952	120	605
8953	121	33
8954	121	36
8955	121	38
8956	121	55
8957	121	56
8958	121	57
8959	121	58
8960	121	59
8961	121	61
8962	121	63
8963	121	85
8964	121	86
8965	121	87
8966	121	92
8967	121	94
8968	121	99
8969	121	100
8970	121	102
8971	121	104
8972	121	105
8973	121	106
8974	121	109
8975	121	113
8976	121	115
8977	121	117
8978	121	127
8979	121	129
8980	121	130
8981	121	138
8982	121	148
8983	121	149
8984	121	156
8985	121	161
8986	121	164
8987	121	171
8988	121	173
8989	121	174
8990	121	182
8991	121	192
8992	121	196
8993	121	203
8994	121	205
8995	121	207
8996	121	213
8997	121	214
8998	121	216
8999	121	218
9000	121	220
9001	121	229
9002	121	237
9003	121	239
9004	121	240
9005	121	244
9006	121	250
9007	121	258
9008	121	263
9009	121	271
9010	121	277
9011	121	278
9012	121	285
9013	121	290
9014	121	291
9015	121	324
9016	121	352
9017	121	356
9018	121	360
9019	121	362
9020	121	363
9021	121	416
9022	121	419
9023	121	430
9024	121	433
9025	121	447
9026	121	503
9027	121	590
9028	121	605
9029	121	671
9030	122	3
9031	122	5
9032	122	7
9033	122	8
9034	122	9
9035	122	25
9036	122	29
9037	122	34
9038	122	36
9039	122	38
9040	122	60
9041	122	63
9042	122	66
9043	122	68
9044	122	69
9045	122	76
9046	122	85
9047	122	86
9048	122	87
9049	122	92
9050	122	93
9051	122	94
9052	122	95
9053	122	96
9054	122	99
9055	122	100
9056	122	102
9057	122	104
9058	122	109
9059	122	112
9060	122	113
9061	122	115
9062	122	117
9063	122	118
9064	122	130
9065	122	138
9066	122	148
9067	122	149
9068	122	156
9069	122	164
9070	122	168
9071	122	171
9072	122	173
9073	122	174
9074	122	182
9075	122	189
9076	122	192
9077	122	196
9078	122	203
9079	122	207
9080	122	213
9081	122	214
9082	122	216
9083	122	218
9084	122	219
9085	122	223
9086	122	226
9087	122	227
9088	122	237
9089	122	240
9090	122	241
9091	122	244
9092	122	247
9093	122	248
9094	122	252
9095	122	259
9096	122	263
9097	122	264
9098	122	269
9099	122	270
9100	122	271
9101	122	272
9102	122	277
9103	122	278
9104	122	280
9105	122	285
9106	122	289
9107	122	290
9108	122	298
9109	122	324
9110	122	332
9111	122	334
9112	122	343
9113	122	345
9114	122	347
9115	122	351
9116	122	358
9117	122	363
9118	122	371
9119	122	374
9120	122	383
9121	122	384
9122	122	385
9123	122	409
9124	122	411
9125	122	412
9126	122	416
9127	122	417
9128	122	428
9129	122	433
9130	122	445
9131	122	447
9132	122	451
9133	122	501
9134	122	581
9135	122	590
9136	122	605
9137	122	611
9138	122	612
9139	123	13
9140	123	14
9141	123	15
9142	123	17
9143	123	29
9144	123	36
9145	123	38
9146	123	43
9147	123	63
9148	123	68
9149	123	92
9150	123	97
9151	123	98
9152	123	99
9153	123	102
9154	123	104
9155	123	113
9156	123	116
9157	123	117
9158	123	129
9159	123	130
9160	123	156
9161	123	163
9162	123	164
9163	123	168
9164	123	173
9165	123	174
9166	123	179
9167	123	182
9168	123	197
9169	123	203
9170	123	206
9171	123	207
9172	123	210
9173	123	211
9174	123	213
9175	123	214
9176	123	216
9177	123	218
9178	123	219
9179	123	226
9180	123	228
9181	123	237
9182	123	240
9183	123	241
9184	123	249
9185	123	263
9186	123	280
9187	123	282
9188	123	290
9189	123	318
9190	123	332
9191	123	355
9192	123	363
9193	123	364
9194	123	366
9195	123	369
9196	123	400
9197	123	403
9198	123	404
9199	123	405
9200	123	410
9201	123	416
9202	123	432
9203	123	445
9204	123	450
9205	123	501
9206	123	522
9207	123	590
9208	123	693
9209	124	1
9210	124	3
9211	124	5
9212	124	8
9213	124	25
9214	124	29
9215	124	34
9216	124	36
9217	124	37
9218	124	38
9219	124	55
9220	124	58
9221	124	59
9222	124	61
9223	124	63
9224	124	66
9225	124	68
9226	124	69
9227	124	92
9228	124	94
9229	124	99
9230	124	100
9231	124	102
9232	124	104
9233	124	113
9234	124	115
9235	124	117
9236	124	118
9237	124	122
9238	124	130
9239	124	138
9240	124	142
9241	124	148
9242	124	149
9243	124	156
9244	124	164
9245	124	168
9246	124	171
9247	124	173
9248	124	174
9249	124	181
9250	124	182
9251	124	189
9252	124	195
9253	124	196
9254	124	203
9255	124	207
9256	124	212
9257	124	213
9258	124	214
9259	124	215
9260	124	216
9261	124	218
9262	124	223
9263	124	230
9264	124	237
9265	124	240
9266	124	244
9267	124	247
9268	124	258
9269	124	259
9270	124	263
9271	124	264
9272	124	269
9273	124	270
9274	124	271
9275	124	272
9276	124	277
9277	124	278
9278	124	280
9279	124	285
9280	124	290
9281	124	304
9282	124	313
9283	124	324
9284	124	343
9285	124	347
9286	124	352
9287	124	358
9288	124	363
9289	124	371
9290	124	374
9291	124	378
9292	124	409
9293	124	411
9294	124	412
9295	124	416
9296	124	419
9297	124	428
9298	124	433
9299	124	445
9300	124	447
9301	124	524
9302	124	531
9303	124	577
9304	124	590
9305	124	612
9306	124	694
9307	125	5
9308	125	7
9309	125	8
9310	125	9
9311	125	25
9312	125	29
9313	125	34
9314	125	36
9315	125	38
9316	125	43
9317	125	63
9318	125	66
9319	125	67
9320	125	68
9321	125	69
9322	125	70
9323	125	84
9324	125	85
9325	125	86
9326	125	87
9327	125	92
9328	125	94
9329	125	98
9330	125	99
9331	125	100
9332	125	102
9333	125	103
9334	125	104
9335	125	113
9336	125	115
9337	125	117
9338	125	118
9339	125	129
9340	125	130
9341	125	148
9342	125	149
9343	125	156
9344	125	164
9345	125	168
9346	125	173
9347	125	174
9348	125	182
9349	125	189
9350	125	192
9351	125	197
9352	125	203
9353	125	207
9354	125	213
9355	125	214
9356	125	216
9357	125	218
9358	125	223
9359	125	231
9360	125	237
9361	125	240
9362	125	249
9363	125	263
9364	125	264
9365	125	270
9366	125	280
9367	125	290
9368	125	324
9369	125	343
9370	125	351
9371	125	363
9372	125	374
9373	125	393
9374	125	411
9375	125	416
9376	125	431
9377	125	435
9378	125	445
9379	125	451
9380	125	521
9381	125	527
9382	125	528
9383	125	530
9384	125	590
9385	125	612
9386	126	5
9387	126	7
9388	126	9
9389	126	25
9390	126	29
9391	126	34
9392	126	36
9393	126	38
9394	126	43
9395	126	52
9396	126	53
9397	126	63
9398	126	66
9399	126	67
9400	126	68
9401	126	69
9402	126	70
9403	126	83
9404	126	92
9405	126	94
9406	126	99
9407	126	100
9408	126	102
9409	126	104
9410	126	108
9411	126	109
9412	126	117
9413	126	118
9414	126	123
9415	126	126
9416	126	130
9417	126	149
9418	126	156
9419	126	164
9420	126	168
9421	126	173
9422	126	174
9423	126	182
9424	126	185
9425	126	189
9426	126	197
9427	126	203
9428	126	207
9429	126	213
9430	126	214
9431	126	216
9432	126	218
9433	126	223
9434	126	231
9435	126	237
9436	126	241
9437	126	249
9438	126	257
9439	126	261
9440	126	263
9441	126	264
9442	126	270
9443	126	280
9444	126	290
9445	126	315
9446	126	343
9447	126	363
9448	126	374
9449	126	411
9450	126	416
9451	126	431
9452	126	436
9453	126	445
9454	126	510
9455	126	530
9456	126	590
9457	126	612
9458	127	11
9459	127	12
9460	127	14
9461	127	15
9462	127	20
9463	127	29
9464	127	31
9465	127	34
9466	127	36
9467	127	37
9468	127	38
9469	127	63
9470	127	66
9471	127	69
9472	127	70
9473	127	81
9474	127	89
9475	127	91
9476	127	92
9477	127	98
9478	127	99
9479	127	102
9480	127	104
9481	127	106
9482	127	116
9483	127	117
9484	127	156
9485	127	157
9486	127	163
9487	127	164
9488	127	168
9489	127	173
9490	127	174
9491	127	175
9492	127	182
9493	127	185
9494	127	203
9495	127	206
9496	127	207
9497	127	210
9498	127	213
9499	127	214
9500	127	216
9501	127	218
9502	127	233
9503	127	237
9504	127	240
9505	127	241
9506	127	249
9507	127	263
9508	127	264
9509	127	276
9510	127	279
9511	127	280
9512	127	282
9513	127	290
9514	127	317
9515	127	334
9516	127	339
9517	127	363
9518	127	364
9519	127	370
9520	127	374
9521	127	382
9522	127	404
9523	127	411
9524	127	416
9525	127	431
9526	127	444
9527	127	445
9528	127	446
9529	127	450
9530	127	522
9531	127	523
9532	127	590
9533	127	693
9534	128	23
9535	128	29
9536	128	30
9537	128	32
9538	128	33
9539	128	34
9540	128	36
9541	128	37
9542	128	38
9543	128	39
9544	128	43
9545	128	53
9546	128	57
9547	128	58
9548	128	59
9549	128	63
9550	128	70
9551	128	76
9552	128	85
9553	128	87
9554	128	89
9555	128	90
9556	128	92
9557	128	99
9558	128	102
9559	128	104
9560	128	117
9561	128	126
9562	128	130
9563	128	156
9564	128	157
9565	128	164
9566	128	173
9567	128	174
9568	128	180
9569	128	182
9570	128	184
9571	128	192
9572	128	196
9573	128	200
9574	128	201
9575	128	203
9576	128	207
9577	128	213
9578	128	214
9579	128	216
9580	128	218
9581	128	228
9582	128	231
9583	128	237
9584	128	240
9585	128	241
9586	128	249
9587	128	250
9588	128	253
9589	128	263
9590	128	270
9591	128	272
9592	128	283
9593	128	290
9594	128	317
9595	128	351
9596	128	352
9597	128	363
9598	128	371
9599	128	416
9600	128	428
9601	128	431
9602	128	442
9603	128	444
9604	128	445
9605	128	510
9606	128	514
9607	128	523
9608	128	526
9609	128	528
9610	128	590
9611	128	684
9612	129	33
9613	129	150
9614	129	175
9615	129	340
9616	130	29
9617	130	33
9618	130	34
9619	130	36
9620	130	37
9621	130	38
9622	130	43
9623	130	44
9624	130	46
9625	130	53
9626	130	55
9627	130	56
9628	130	57
9629	130	58
9630	130	59
9631	130	61
9632	130	63
9633	130	70
9634	130	82
9635	130	85
9636	130	86
9637	130	87
9638	130	89
9639	130	92
9640	130	99
9641	130	102
9642	130	104
9643	130	115
9644	130	117
9645	130	126
9646	130	127
9647	130	130
9648	130	156
9649	130	164
9650	130	173
9651	130	174
9652	130	180
9653	130	182
9654	130	184
9655	130	192
9656	130	196
9657	130	200
9658	130	201
9659	130	203
9660	130	207
9661	130	213
9662	130	214
9663	130	216
9664	130	218
9665	130	225
9666	130	231
9667	130	237
9668	130	239
9669	130	240
9670	130	242
9671	130	249
9672	130	250
9673	130	253
9674	130	258
9675	130	259
9676	130	263
9677	130	269
9678	130	290
9679	130	291
9680	130	340
9681	130	349
9682	130	352
9683	130	362
9684	130	363
9685	130	371
9686	130	399
9687	130	401
9688	130	406
9689	130	416
9690	130	419
9691	130	423
9692	130	442
9693	130	444
9694	130	445
9695	130	503
9696	130	510
9697	130	523
9698	130	525
9699	130	542
9700	130	590
9701	130	693
9702	131	29
9703	131	32
9704	131	34
9705	131	36
9706	131	38
9707	131	45
9708	131	46
9709	131	47
9710	131	54
9711	131	55
9712	131	56
9713	131	57
9714	131	58
9715	131	59
9716	131	61
9717	131	62
9718	131	63
9719	131	70
9720	131	76
9721	131	82
9722	131	85
9723	131	87
9724	131	90
9725	131	92
9726	131	94
9727	131	99
9728	131	102
9729	131	104
9730	131	109
9731	131	115
9732	131	117
9733	131	127
9734	131	130
9735	131	138
9736	131	149
9737	131	156
9738	131	164
9739	131	171
9740	131	173
9741	131	174
9742	131	182
9743	131	192
9744	131	193
9745	131	195
9746	131	196
9747	131	200
9748	131	203
9749	131	207
9750	131	213
9751	131	214
9752	131	215
9753	131	216
9754	131	218
9755	131	219
9756	131	225
9757	131	231
9758	131	237
9759	131	240
9760	131	246
9761	131	248
9762	131	249
9763	131	250
9764	131	258
9765	131	263
9766	131	287
9767	131	290
9768	131	291
9769	131	304
9770	131	321
9771	131	324
9772	131	329
9773	131	335
9774	131	349
9775	131	351
9776	131	352
9777	131	362
9778	131	363
9779	131	401
9780	131	406
9781	131	416
9782	131	419
9783	131	420
9784	131	428
9785	131	442
9786	131	445
9787	131	523
9788	131	524
9789	131	529
9790	131	573
9791	131	590
9792	131	684
9793	132	144
9794	133	28
9795	133	29
9796	133	33
9797	133	34
9798	133	36
9799	133	38
9800	133	39
9801	133	44
9802	133	45
9803	133	91
9804	133	92
9805	133	98
9806	133	99
9807	133	102
9808	133	104
9809	133	115
9810	133	116
9811	133	117
9812	133	129
9813	133	130
9814	133	156
9815	133	164
9816	133	173
9817	133	174
9818	133	175
9819	133	182
9820	133	189
9821	133	197
9822	133	203
9823	133	204
9824	133	207
9825	133	213
9826	133	214
9827	133	215
9828	133	216
9829	133	218
9830	133	226
9831	133	231
9832	133	237
9833	133	240
9834	133	241
9835	133	247
9836	133	263
9837	133	270
9838	133	273
9839	133	281
9840	133	287
9841	133	290
9842	133	304
9843	133	313
9844	133	321
9845	133	343
9846	133	363
9847	133	376
9848	133	387
9849	133	445
9850	133	500
9851	133	514
9852	133	526
9853	133	590
9854	133	608
9855	134	28
9856	134	29
9857	134	33
9858	134	34
9859	134	36
9860	134	38
9861	134	39
9862	134	44
9863	134	46
9864	134	54
9865	134	55
9866	134	56
9867	134	57
9868	134	58
9869	134	59
9870	134	61
9871	134	62
9872	134	63
9873	134	70
9874	134	91
9875	134	92
9876	134	98
9877	134	99
9878	134	102
9879	134	104
9880	134	114
9881	134	115
9882	134	117
9883	134	127
9884	134	129
9885	134	130
9886	134	151
9887	134	156
9888	134	164
9889	134	173
9890	134	174
9891	134	182
9892	134	189
9893	134	196
9894	134	197
9895	134	203
9896	134	207
9897	134	213
9898	134	214
9899	134	215
9900	134	216
9901	134	218
9902	134	231
9903	134	237
9904	134	240
9905	134	241
9906	134	247
9907	134	249
9908	134	250
9909	134	258
9910	134	263
9911	134	270
9912	134	290
9913	134	291
9914	134	304
9915	134	324
9916	134	330
9917	134	343
9918	134	352
9919	134	362
9920	134	363
9921	134	387
9922	134	392
9923	134	401
9924	134	416
9925	134	445
9926	134	503
9927	134	514
9928	134	526
9929	134	590
9930	134	608
9931	135	24
9932	135	28
9933	135	29
9934	135	33
9935	135	34
9936	135	36
9937	135	38
9938	135	39
9939	135	42
9940	135	46
9941	135	63
9942	135	70
9943	135	84
9944	135	85
9945	135	86
9946	135	87
9947	135	91
9948	135	92
9949	135	97
9950	135	98
9951	135	99
9952	135	102
9953	135	104
9954	135	113
9955	135	115
9956	135	117
9957	135	129
9958	135	130
9959	135	148
9960	135	156
9961	135	164
9962	135	173
9963	135	174
9964	135	182
9965	135	189
9966	135	192
9967	135	197
9968	135	203
9969	135	207
9970	135	213
9971	135	214
9972	135	215
9973	135	216
9974	135	218
9975	135	231
9976	135	237
9977	135	240
9978	135	241
9979	135	247
9980	135	249
9981	135	263
9982	135	270
9983	135	290
9984	135	304
9985	135	324
9986	135	343
9987	135	351
9988	135	363
9989	135	387
9990	135	393
9991	135	416
9992	135	422
9993	135	435
9994	135	445
9995	135	451
9996	135	514
9997	135	521
9998	135	526
9999	135	528
10000	135	590
10001	135	608
10002	136	28
10003	136	29
10004	136	33
10005	136	34
10006	136	36
10007	136	38
10008	136	39
10009	136	43
10010	136	44
10011	136	46
10012	136	52
10013	136	53
10014	136	63
10015	136	70
10016	136	83
10017	136	91
10018	136	92
10019	136	98
10020	136	99
10021	136	102
10022	136	104
10023	136	115
10024	136	117
10025	136	123
10026	136	126
10027	136	129
10028	136	130
10029	136	156
10030	136	164
10031	136	173
10032	136	174
10033	136	182
10034	136	184
10035	136	189
10036	136	192
10037	136	197
10038	136	203
10039	136	207
10040	136	213
10041	136	214
10042	136	215
10043	136	216
10044	136	218
10045	136	231
10046	136	237
10047	136	240
10048	136	241
10049	136	247
10050	136	249
10051	136	257
10052	136	261
10053	136	263
10054	136	270
10055	136	276
10056	136	290
10057	136	304
10058	136	315
10059	136	343
10060	136	363
10061	136	387
10062	136	394
10063	136	416
10064	136	424
10065	136	436
10066	136	445
10067	136	510
10068	136	514
10069	136	526
10070	136	590
10071	136	608
10072	137	33
10073	137	36
10074	137	38
10075	137	58
10076	137	59
10077	137	60
10078	137	63
10079	137	76
10080	137	85
10081	137	86
10082	137	87
10083	137	92
10084	137	94
10085	137	97
10086	137	99
10087	137	100
10088	137	102
10089	137	104
10090	137	105
10091	137	115
10092	137	117
10093	137	129
10094	137	130
10095	137	138
10096	137	148
10097	137	149
10098	137	156
10099	137	159
10100	137	160
10101	137	161
10102	137	164
10103	137	168
10104	137	171
10105	137	173
10106	137	174
10107	137	176
10108	137	182
10109	137	192
10110	137	196
10111	137	199
10112	137	203
10113	137	207
10114	137	214
10115	137	216
10116	137	218
10117	137	220
10118	137	231
10119	137	237
10120	137	240
10121	137	241
10122	137	244
10123	137	247
10124	137	263
10125	137	271
10126	137	277
10127	137	278
10128	137	290
10129	137	324
10130	137	332
10131	137	351
10132	137	356
10133	137	363
10134	137	387
10135	137	393
10136	137	416
10137	137	428
10138	137	433
10139	137	435
10140	137	451
10141	137	527
10142	137	590
10143	138	20
10144	138	21
10145	138	29
10146	138	30
10147	138	34
10148	138	36
10149	138	38
10150	138	43
10151	138	44
10152	138	48
10153	138	55
10154	138	56
10155	138	57
10156	138	58
10157	138	59
10158	138	61
10159	138	62
10160	138	92
10161	138	99
10162	138	102
10163	138	104
10164	138	110
10165	138	114
10166	138	115
10167	138	117
10168	138	127
10169	138	131
10170	138	132
10171	138	156
10172	138	157
10173	138	164
10174	138	168
10175	138	173
10176	138	174
10177	138	182
10178	138	191
10179	138	196
10180	138	201
10181	138	203
10182	138	205
10183	138	207
10184	138	213
10185	138	214
10186	138	216
10187	138	218
10188	138	237
10189	138	240
10190	138	246
10191	138	249
10192	138	250
10193	138	258
10194	138	263
10195	138	282
10196	138	290
10197	138	291
10198	138	317
10199	138	321
10200	138	330
10201	138	334
10202	138	341
10203	138	350
10204	138	352
10205	138	360
10206	138	362
10207	138	363
10208	138	378
10209	138	390
10210	138	397
10211	138	414
10212	138	445
10213	138	446
10214	138	503
10215	138	504
10216	138	513
10217	138	590
10218	139	20
10219	139	29
10220	139	30
10221	139	32
10222	139	34
10223	139	36
10224	139	38
10225	139	43
10226	139	44
10227	139	55
10228	139	56
10229	139	57
10230	139	58
10231	139	59
10232	139	61
10233	139	63
10234	139	66
10235	139	69
10236	139	92
10237	139	99
10238	139	102
10239	139	104
10240	139	110
10241	139	115
10242	139	117
10243	139	127
10244	139	130
10245	139	131
10246	139	132
10247	139	156
10248	139	157
10249	139	164
10250	139	168
10251	139	173
10252	139	174
10253	139	182
10254	139	196
10255	139	201
10256	139	203
10257	139	205
10258	139	207
10259	139	213
10260	139	214
10261	139	216
10262	139	218
10263	139	237
10264	139	240
10265	139	246
10266	139	249
10267	139	250
10268	139	258
10269	139	263
10270	139	282
10271	139	290
10272	139	291
10273	139	317
10274	139	321
10275	139	334
10276	139	341
10277	139	350
10278	139	352
10279	139	360
10280	139	362
10281	139	363
10282	139	397
10283	139	414
10284	139	416
10285	139	431
10286	139	444
10287	139	445
10288	139	446
10289	139	503
10290	139	504
10291	139	590
10292	140	10
10293	140	28
10294	140	34
10295	140	36
10296	140	38
10297	140	43
10298	140	55
10299	140	56
10300	140	57
10301	140	58
10302	140	59
10303	140	61
10304	140	62
10305	140	71
10306	140	72
10307	140	91
10308	140	92
10309	140	99
10310	140	102
10311	140	103
10312	140	104
10313	140	106
10314	140	109
10315	140	115
10316	140	117
10317	140	127
10318	140	156
10319	140	157
10320	140	163
10321	140	164
10322	140	168
10323	140	173
10324	140	174
10325	140	175
10326	140	182
10327	140	189
10328	140	193
10329	140	196
10330	140	201
10331	140	202
10332	140	203
10333	140	205
10334	140	207
10335	140	213
10336	140	214
10337	140	216
10338	140	218
10339	140	229
10340	140	237
10341	140	240
10342	140	246
10343	140	249
10344	140	250
10345	140	258
10346	140	263
10347	140	282
10348	140	290
10349	140	317
10350	140	319
10351	140	332
10352	140	334
10353	140	341
10354	140	352
10355	140	362
10356	140	363
10357	140	378
10358	140	397
10359	140	414
10360	140	445
10361	140	446
10362	140	453
10363	140	503
10364	140	590
10365	141	10
10366	141	13
10367	141	14
10368	141	15
10369	141	25
10370	141	28
10371	141	29
10372	141	34
10373	141	36
10374	141	38
10375	141	43
10376	141	55
10377	141	56
10378	141	57
10379	141	58
10380	141	59
10381	141	61
10382	141	63
10383	141	66
10384	141	67
10385	141	69
10386	141	71
10387	141	72
10388	141	91
10389	141	92
10390	141	99
10391	141	102
10392	141	104
10393	141	106
10394	141	115
10395	141	117
10396	141	127
10397	141	130
10398	141	156
10399	141	157
10400	141	163
10401	141	164
10402	141	168
10403	141	173
10404	141	174
10405	141	182
10406	141	189
10407	141	196
10408	141	201
10409	141	202
10410	141	203
10411	141	205
10412	141	207
10413	141	210
10414	141	213
10415	141	214
10416	141	216
10417	141	218
10418	141	237
10419	141	240
10420	141	246
10421	141	249
10422	141	250
10423	141	258
10424	141	263
10425	141	267
10426	141	276
10427	141	280
10428	141	282
10429	141	290
10430	141	291
10431	141	317
10432	141	319
10433	141	332
10434	141	334
10435	141	341
10436	141	352
10437	141	362
10438	141	363
10439	141	364
10440	141	378
10441	141	397
10442	141	400
10443	141	401
10444	141	404
10445	141	414
10446	141	416
10447	141	431
10448	141	444
10449	141	445
10450	141	446
10451	141	453
10452	141	503
10453	141	590
10454	142	13
10455	142	17
10456	142	18
10457	142	19
10458	142	29
10459	142	36
10460	142	38
10461	142	44
10462	142	46
10463	142	48
10464	142	53
10465	142	63
10466	142	70
10467	142	82
10468	142	89
10469	142	92
10470	142	97
10471	142	99
10472	142	102
10473	142	104
10474	142	115
10475	142	117
10476	142	126
10477	142	129
10478	142	143
10479	142	156
10480	142	157
10481	142	164
10482	142	168
10483	142	173
10484	142	174
10485	142	182
10486	142	184
10487	142	193
10488	142	197
10489	142	201
10490	142	203
10491	142	207
10492	142	211
10493	142	213
10494	142	214
10495	142	216
10496	142	218
10497	142	225
10498	142	228
10499	142	231
10500	142	237
10501	142	239
10502	142	240
10503	142	241
10504	142	242
10505	142	246
10506	142	249
10507	142	257
10508	142	259
10509	142	263
10510	142	269
10511	142	290
10512	142	314
10513	142	317
10514	142	332
10515	142	337
10516	142	355
10517	142	363
10518	142	366
10519	142	371
10520	142	372
10521	142	397
10522	142	401
10523	142	406
10524	142	414
10525	142	416
10526	142	422
10527	142	423
10528	142	424
10529	142	432
10530	142	442
10531	142	444
10532	142	445
10533	142	446
10534	142	507
10535	142	510
10536	142	523
10537	142	590
10538	142	693
10539	143	5
10540	143	6
10541	143	7
10542	143	8
10543	143	9
10544	143	18
10545	143	25
10546	143	29
10547	143	33
10548	143	34
10549	143	36
10550	143	38
10551	143	53
10552	143	55
10553	143	57
10554	143	58
10555	143	59
10556	143	61
10557	143	63
10558	143	66
10559	143	68
10560	143	69
10561	143	70
10562	143	76
10563	143	85
10564	143	87
10565	143	89
10566	143	90
10567	143	92
10568	143	94
10569	143	99
10570	143	102
10571	143	104
10572	143	106
10573	143	111
10574	143	115
10575	143	117
10576	143	118
10577	143	120
10578	143	122
10579	143	126
10580	143	130
10581	143	133
10582	143	149
10583	143	156
10584	143	157
10585	143	164
10586	143	173
10587	143	174
10588	143	182
10589	143	187
10590	143	189
10591	143	192
10592	143	196
10593	143	200
10594	143	201
10595	143	203
10596	143	204
10597	143	205
10598	143	207
10599	143	213
10600	143	214
10601	143	216
10602	143	218
10603	143	223
10604	143	228
10605	143	237
10606	143	240
10607	143	241
10608	143	242
10609	143	244
10610	143	247
10611	143	249
10612	143	250
10613	143	263
10614	143	264
10615	143	276
10616	143	278
10617	143	280
10618	143	281
10619	143	290
10620	143	304
10621	143	317
10622	143	335
10623	143	343
10624	143	351
10625	143	352
10626	143	363
10627	143	374
10628	143	387
10629	143	402
10630	143	411
10631	143	416
10632	143	428
10633	143	431
10634	143	441
10635	143	442
10636	143	445
10637	143	510
10638	143	514
10639	143	523
10640	143	526
10641	143	528
10642	143	562
10643	143	590
10644	143	612
10645	143	667
10646	144	13
10647	144	16
10648	144	18
10649	144	19
10650	144	36
10651	144	38
10652	144	46
10653	144	54
10654	144	55
10655	144	58
10656	144	59
10657	144	61
10658	144	63
10659	144	64
10660	144	92
10661	144	97
10662	144	99
10663	144	102
10664	144	104
10665	144	115
10666	144	117
10667	144	129
10668	144	143
10669	144	156
10670	144	164
10671	144	170
10672	144	173
10673	144	174
10674	144	181
10675	144	182
10676	144	189
10677	144	196
10678	144	197
10679	144	201
10680	144	203
10681	144	207
10682	144	211
10683	144	214
10684	144	216
10685	144	218
10686	144	237
10687	144	239
10688	144	240
10689	144	241
10690	144	246
10691	144	249
10692	144	258
10693	144	263
10694	144	290
10695	144	314
10696	144	324
10697	144	329
10698	144	332
10699	144	352
10700	144	355
10701	144	363
10702	144	365
10703	144	366
10704	144	369
10705	144	416
10706	144	419
10707	144	420
10708	144	432
10709	144	507
10710	144	524
10711	144	542
10712	144	573
10713	144	590
10714	144	694
10715	145	13
10716	145	18
10717	145	19
10718	145	36
10719	145	38
10720	145	46
10721	145	63
10722	145	64
10723	145	65
10724	145	84
10725	145	85
10726	145	86
10727	145	87
10728	145	92
10729	145	97
10730	145	99
10731	145	102
10732	145	104
10733	145	113
10734	145	115
10735	145	117
10736	145	129
10737	145	143
10738	145	148
10739	145	156
10740	145	164
10741	145	173
10742	145	174
10743	145	182
10744	145	189
10745	145	192
10746	145	197
10747	145	201
10748	145	203
10749	145	207
10750	145	211
10751	145	214
10752	145	216
10753	145	218
10754	145	237
10755	145	239
10756	145	240
10757	145	241
10758	145	246
10759	145	249
10760	145	257
10761	145	263
10762	145	268
10763	145	290
10764	145	314
10765	145	324
10766	145	332
10767	145	351
10768	145	355
10769	145	363
10770	145	365
10771	145	366
10772	145	369
10773	145	416
10774	145	432
10775	145	435
10776	145	451
10777	145	507
10778	145	521
10779	145	528
10780	145	590
10781	145	602
10782	146	13
10783	146	17
10784	146	18
10785	146	19
10786	146	36
10787	146	38
10788	146	43
10789	146	46
10790	146	52
10791	146	53
10792	146	63
10793	146	64
10794	146	76
10795	146	83
10796	146	92
10797	146	97
10798	146	99
10799	146	102
10800	146	104
10801	146	115
10802	146	117
10803	146	126
10804	146	129
10805	146	143
10806	146	156
10807	146	164
10808	146	173
10809	146	174
10810	146	182
10811	146	189
10812	146	197
10813	146	201
10814	146	203
10815	146	207
10816	146	211
10817	146	214
10818	146	216
10819	146	218
10820	146	219
10821	146	237
10822	146	239
10823	146	240
10824	146	241
10825	146	246
10826	146	249
10827	146	257
10828	146	261
10829	146	263
10830	146	290
10831	146	314
10832	146	315
10833	146	332
10834	146	355
10835	146	363
10836	146	365
10837	146	366
10838	146	369
10839	146	403
10840	146	416
10841	146	432
10842	146	507
10843	146	510
10844	146	542
10845	146	590
10846	146	682
10847	147	20
10848	147	21
10849	147	29
10850	147	34
10851	147	35
10852	147	36
10853	147	38
10854	147	43
10855	147	48
10856	147	53
10857	147	54
10858	147	55
10859	147	57
10860	147	58
10861	147	59
10862	147	61
10863	147	63
10864	147	82
10865	147	85
10866	147	86
10867	147	87
10868	147	92
10869	147	97
10870	147	99
10871	147	102
10872	147	104
10873	147	113
10874	147	114
10875	147	115
10876	147	117
10877	147	126
10878	147	127
10879	147	129
10880	147	130
10881	147	156
10882	147	164
10883	147	173
10884	147	174
10885	147	182
10886	147	192
10887	147	196
10888	147	197
10889	147	200
10890	147	203
10891	147	207
10892	147	213
10893	147	214
10894	147	216
10895	147	218
10896	147	219
10897	147	225
10898	147	231
10899	147	237
10900	147	239
10901	147	240
10902	147	241
10903	147	245
10904	147	250
10905	147	258
10906	147	263
10907	147	290
10908	147	349
10909	147	351
10910	147	352
10911	147	363
10912	147	401
10913	147	406
10914	147	407
10915	147	434
10916	147	445
10917	147	453
10918	147	510
10919	147	525
10920	147	590
10921	147	693
10922	148	20
10923	148	21
10924	148	29
10925	148	32
10926	148	34
10927	148	35
10928	148	36
10929	148	38
10930	148	43
10931	148	53
10932	148	55
10933	148	57
10934	148	58
10935	148	59
10936	148	61
10937	148	63
10938	148	82
10939	148	85
10940	148	86
10941	148	87
10942	148	92
10943	148	97
10944	148	99
10945	148	102
10946	148	104
10947	148	113
10948	148	115
10949	148	117
10950	148	126
10951	148	127
10952	148	129
10953	148	130
10954	148	156
10955	148	164
10956	148	173
10957	148	174
10958	148	182
10959	148	192
10960	148	196
10961	148	197
10962	148	200
10963	148	203
10964	148	207
10965	148	213
10966	148	214
10967	148	216
10968	148	218
10969	148	219
10970	148	225
10971	148	231
10972	148	237
10973	148	239
10974	148	240
10975	148	241
10976	148	250
10977	148	258
10978	148	263
10979	148	290
10980	148	349
10981	148	351
10982	148	352
10983	148	363
10984	148	401
10985	148	406
10986	148	407
10987	148	434
10988	148	445
10989	148	510
10990	148	525
10991	148	590
10992	148	693
10993	149	7
10994	149	8
10995	149	9
10996	149	13
10997	149	15
10998	149	17
10999	149	19
11000	149	20
11001	149	21
11002	149	29
11003	149	32
11004	149	34
11005	149	35
11006	149	36
11007	149	38
11008	149	43
11009	149	46
11010	149	53
11011	149	55
11012	149	57
11013	149	58
11014	149	59
11015	149	61
11016	149	63
11017	149	70
11018	149	82
11019	149	85
11020	149	86
11021	149	87
11022	149	89
11023	149	92
11024	149	97
11025	149	99
11026	149	102
11027	149	104
11028	149	113
11029	149	115
11030	149	117
11031	149	126
11032	149	127
11033	149	129
11034	149	130
11035	149	156
11036	149	157
11037	149	164
11038	149	173
11039	149	174
11040	149	182
11041	149	189
11042	149	192
11043	149	196
11044	149	197
11045	149	200
11046	149	201
11047	149	203
11048	149	207
11049	149	210
11050	149	211
11051	149	213
11052	149	214
11053	149	216
11054	149	218
11055	149	219
11056	149	223
11057	149	225
11058	149	231
11059	149	237
11060	149	239
11061	149	240
11062	149	241
11063	149	249
11064	149	250
11065	149	257
11066	149	258
11067	149	263
11068	149	264
11069	149	276
11070	149	280
11071	149	290
11072	149	291
11073	149	314
11074	149	317
11075	149	332
11076	149	337
11077	149	349
11078	149	351
11079	149	352
11080	149	355
11081	149	363
11082	149	366
11083	149	374
11084	149	401
11085	149	406
11086	149	407
11087	149	411
11088	149	416
11089	149	432
11090	149	434
11091	149	442
11092	149	444
11093	149	445
11094	149	507
11095	149	510
11096	149	523
11097	149	525
11098	149	542
11099	149	590
11100	149	612
11101	149	693
11102	150	5
11103	150	6
11104	150	7
11105	150	8
11106	150	9
11107	150	25
11108	150	29
11109	150	34
11110	150	36
11111	150	38
11112	150	50
11113	150	53
11114	150	54
11115	150	55
11116	150	58
11117	150	59
11118	150	61
11119	150	63
11120	150	66
11121	150	67
11122	150	68
11123	150	69
11124	150	70
11125	150	76
11126	150	85
11127	150	86
11128	150	87
11129	150	89
11130	150	92
11131	150	93
11132	150	94
11133	150	99
11134	150	100
11135	150	102
11136	150	104
11137	150	105
11138	150	112
11139	150	113
11140	150	115
11141	150	117
11142	150	118
11143	150	120
11144	150	126
11145	150	129
11146	150	130
11147	150	133
11148	150	138
11149	150	148
11150	150	149
11151	150	156
11152	150	157
11153	150	161
11154	150	164
11155	150	171
11156	150	173
11157	150	174
11158	150	182
11159	150	189
11160	150	192
11161	150	196
11162	150	197
11163	150	201
11164	150	203
11165	150	207
11166	150	214
11167	150	216
11168	150	218
11169	150	219
11170	150	223
11171	150	231
11172	150	237
11173	150	240
11174	150	241
11175	150	244
11176	150	247
11177	150	248
11178	150	249
11179	150	258
11180	150	259
11181	150	261
11182	150	263
11183	150	264
11184	150	269
11185	150	271
11186	150	272
11187	150	277
11188	150	278
11189	150	280
11190	150	285
11191	150	289
11192	150	290
11193	150	291
11194	150	317
11195	150	324
11196	150	332
11197	150	339
11198	150	347
11199	150	351
11200	150	352
11201	150	356
11202	150	357
11203	150	363
11204	150	373
11205	150	374
11206	150	382
11207	150	384
11208	150	385
11209	150	396
11210	150	398
11211	150	401
11212	150	409
11213	150	411
11214	150	412
11215	150	416
11216	150	419
11217	150	427
11218	150	428
11219	150	431
11220	150	433
11221	150	444
11222	150	447
11223	150	451
11224	150	510
11225	150	523
11226	150	540
11227	150	590
11228	150	612
11229	150	673
11230	150	693
11231	126	5
11232	126	7
11233	126	9
11234	126	25
11235	126	29
11236	126	34
11237	126	36
11238	126	38
11239	126	43
11240	126	52
11241	126	53
11242	126	63
11243	126	66
11244	126	67
11245	126	68
11246	126	69
11247	126	70
11248	126	83
11249	126	92
11250	126	94
11251	126	99
11252	126	100
11253	126	102
11254	126	104
11255	126	108
11256	126	109
11257	126	117
11258	126	118
11259	126	123
11260	126	126
11261	126	130
11262	126	149
11263	126	156
11264	126	164
11265	126	168
11266	126	173
11267	126	174
11268	126	182
11269	126	185
11270	126	189
11271	126	197
11272	126	203
11273	126	207
11274	126	213
11275	126	214
11276	126	216
11277	126	218
11278	126	223
11279	126	231
11280	126	237
11281	126	241
11282	126	249
11283	126	257
11284	126	261
11285	126	263
11286	126	264
11287	126	270
11288	126	280
11289	126	290
11290	126	315
11291	126	343
11292	126	363
11293	126	374
11294	126	411
11295	126	416
11296	126	431
11297	126	436
11298	126	445
11299	126	510
11300	126	530
11301	126	590
11302	126	612
11303	127	11
11304	127	12
11305	127	14
11306	127	15
11307	127	20
11308	127	29
11309	127	31
11310	127	34
11311	127	36
11312	127	37
11313	127	38
11314	127	63
11315	127	66
11316	127	69
11317	127	70
11318	127	81
11319	127	89
11320	127	91
11321	127	92
11322	127	98
11323	127	99
11324	127	102
11325	127	104
11326	127	106
11327	127	116
11328	127	117
11329	127	156
11330	127	157
11331	127	163
11332	127	164
11333	127	168
11334	127	173
11335	127	174
11336	127	175
11337	127	182
11338	127	185
11339	127	203
11340	127	206
11341	127	207
11342	127	210
11343	127	213
11344	127	214
11345	127	216
11346	127	218
11347	127	233
11348	127	237
11349	127	240
11350	127	241
11351	127	249
11352	127	263
11353	127	264
11354	127	276
11355	127	279
11356	127	280
11357	127	282
11358	127	290
11359	127	317
11360	127	334
11361	127	339
11362	127	363
11363	127	364
11364	127	370
11365	127	374
11366	127	382
11367	127	404
11368	127	411
11369	127	416
11370	127	431
11371	127	444
11372	127	445
11373	127	446
11374	127	450
11375	127	522
11376	127	523
11377	127	590
11378	127	693
11379	128	23
11380	128	29
11381	128	30
11382	128	32
11383	128	33
11384	128	34
11385	128	36
11386	128	37
11387	128	38
11388	128	39
11389	128	43
11390	128	53
11391	128	57
11392	128	58
11393	128	59
11394	128	63
11395	128	70
11396	128	76
11397	128	85
11398	128	87
11399	128	89
11400	128	90
11401	128	92
11402	128	99
11403	128	102
11404	128	104
11405	128	117
11406	128	126
11407	128	130
11408	128	156
11409	128	157
11410	128	164
11411	128	173
11412	128	174
11413	128	180
11414	128	182
11415	128	184
11416	128	192
11417	128	196
11418	128	200
11419	128	201
11420	128	203
11421	128	207
11422	128	213
11423	128	214
11424	128	216
11425	128	218
11426	128	228
11427	128	231
11428	128	237
11429	128	240
11430	128	241
11431	128	249
11432	128	250
11433	128	253
11434	128	263
11435	128	270
11436	128	272
11437	128	283
11438	128	290
11439	128	317
11440	128	351
11441	128	352
11442	128	363
11443	128	371
11444	128	416
11445	128	428
11446	128	431
11447	128	442
11448	128	444
11449	128	445
11450	128	510
11451	128	514
11452	128	523
11453	128	526
11454	128	528
11455	128	590
11456	128	684
11457	129	33
11458	129	150
11459	129	175
11460	129	340
11461	130	29
11462	130	33
11463	130	34
11464	130	36
11465	130	37
11466	130	38
11467	130	43
11468	130	44
11469	130	46
11470	130	53
11471	130	55
11472	130	56
11473	130	57
11474	130	58
11475	130	59
11476	130	61
11477	130	63
11478	130	70
11479	130	82
11480	130	85
11481	130	86
11482	130	87
11483	130	89
11484	130	92
11485	130	99
11486	130	102
11487	130	104
11488	130	115
11489	130	117
11490	130	126
11491	130	127
11492	130	130
11493	130	156
11494	130	164
11495	130	173
11496	130	174
11497	130	180
11498	130	182
11499	130	184
11500	130	192
11501	130	196
11502	130	200
11503	130	201
11504	130	203
11505	130	207
11506	130	213
11507	130	214
11508	130	216
11509	130	218
11510	130	225
11511	130	231
11512	130	237
11513	130	239
11514	130	240
11515	130	242
11516	130	249
11517	130	250
11518	130	253
11519	130	258
11520	130	259
11521	130	263
11522	130	269
11523	130	290
11524	130	291
11525	130	340
11526	130	349
11527	130	352
11528	130	362
11529	130	363
11530	130	371
11531	130	399
11532	130	401
11533	130	406
11534	130	416
11535	130	419
11536	130	423
11537	130	442
11538	130	444
11539	130	445
11540	130	503
11541	130	510
11542	130	523
11543	130	525
11544	130	542
11545	130	590
11546	130	693
11547	131	29
11548	131	32
11549	131	34
11550	131	36
11551	131	38
11552	131	45
11553	131	46
11554	131	47
11555	131	54
11556	131	55
11557	131	56
11558	131	57
11559	131	58
11560	131	59
11561	131	61
11562	131	62
11563	131	63
11564	131	70
11565	131	76
11566	131	82
11567	131	85
11568	131	87
11569	131	90
11570	131	92
11571	131	94
11572	131	99
11573	131	102
11574	131	104
11575	131	109
11576	131	115
11577	131	117
11578	131	127
11579	131	130
11580	131	138
11581	131	149
11582	131	156
11583	131	164
11584	131	171
11585	131	173
11586	131	174
11587	131	182
11588	131	192
11589	131	193
11590	131	195
11591	131	196
11592	131	200
11593	131	203
11594	131	207
11595	131	213
11596	131	214
11597	131	215
11598	131	216
11599	131	218
11600	131	219
11601	131	225
11602	131	231
11603	131	237
11604	131	240
11605	131	246
11606	131	248
11607	131	249
11608	131	250
11609	131	258
11610	131	263
11611	131	287
11612	131	290
11613	131	291
11614	131	304
11615	131	321
11616	131	324
11617	131	329
11618	131	335
11619	131	349
11620	131	351
11621	131	352
11622	131	362
11623	131	363
11624	131	401
11625	131	406
11626	131	416
11627	131	419
11628	131	420
11629	131	428
11630	131	442
11631	131	445
11632	131	523
11633	131	524
11634	131	529
11635	131	573
11636	131	590
11637	131	684
11638	132	144
11639	133	28
11640	133	29
11641	133	33
11642	133	34
11643	133	36
11644	133	38
11645	133	39
11646	133	44
11647	133	45
11648	133	91
11649	133	92
11650	133	98
11651	133	99
11652	133	102
11653	133	104
11654	133	115
11655	133	116
11656	133	117
11657	133	129
11658	133	130
11659	133	156
11660	133	164
11661	133	173
11662	133	174
11663	133	175
11664	133	182
11665	133	189
11666	133	197
11667	133	203
11668	133	204
11669	133	207
11670	133	213
11671	133	214
11672	133	215
11673	133	216
11674	133	218
11675	133	226
11676	133	231
11677	133	237
11678	133	240
11679	133	241
11680	133	247
11681	133	263
11682	133	270
11683	133	273
11684	133	281
11685	133	287
11686	133	290
11687	133	304
11688	133	313
11689	133	321
11690	133	343
11691	133	363
11692	133	376
11693	133	387
11694	133	445
11695	133	500
11696	133	514
11697	133	526
11698	133	590
11699	133	608
11700	134	28
11701	134	29
11702	134	33
11703	134	34
11704	134	36
11705	134	38
11706	134	39
11707	134	44
11708	134	46
11709	134	54
11710	134	55
11711	134	56
11712	134	57
11713	134	58
11714	134	59
11715	134	61
11716	134	62
11717	134	63
11718	134	70
11719	134	91
11720	134	92
11721	134	98
11722	134	99
11723	134	102
11724	134	104
11725	134	114
11726	134	115
11727	134	117
11728	134	127
11729	134	129
11730	134	130
11731	134	151
11732	134	156
11733	134	164
11734	134	173
11735	134	174
11736	134	182
11737	134	189
11738	134	196
11739	134	197
11740	134	203
11741	134	207
11742	134	213
11743	134	214
11744	134	215
11745	134	216
11746	134	218
11747	134	231
11748	134	237
11749	134	240
11750	134	241
11751	134	247
11752	134	249
11753	134	250
11754	134	258
11755	134	263
11756	134	270
11757	134	290
11758	134	291
11759	134	304
11760	134	324
11761	134	330
11762	134	343
11763	134	352
11764	134	362
11765	134	363
11766	134	387
11767	134	392
11768	134	401
11769	134	416
11770	134	445
11771	134	503
11772	134	514
11773	134	526
11774	134	590
11775	134	608
11776	135	24
11777	135	28
11778	135	29
11779	135	33
11780	135	34
11781	135	36
11782	135	38
11783	135	39
11784	135	42
11785	135	46
11786	135	63
11787	135	70
11788	135	84
11789	135	85
11790	135	86
11791	135	87
11792	135	91
11793	135	92
11794	135	97
11795	135	98
11796	135	99
11797	135	102
11798	135	104
11799	135	113
11800	135	115
11801	135	117
11802	135	129
11803	135	130
11804	135	148
11805	135	156
11806	135	164
11807	135	173
11808	135	174
11809	135	182
11810	135	189
11811	135	192
11812	135	197
11813	135	203
11814	135	207
11815	135	213
11816	135	214
11817	135	215
11818	135	216
11819	135	218
11820	135	231
11821	135	237
11822	135	240
11823	135	241
11824	135	247
11825	135	249
11826	135	263
11827	135	270
11828	135	290
11829	135	304
11830	135	324
11831	135	343
11832	135	351
11833	135	363
11834	135	387
11835	135	393
11836	135	416
11837	135	422
11838	135	435
11839	135	445
11840	135	451
11841	135	514
11842	135	521
11843	135	526
11844	135	528
11845	135	590
11846	135	608
11847	136	28
11848	136	29
11849	136	33
11850	136	34
11851	136	36
11852	136	38
11853	136	39
11854	136	43
11855	136	44
11856	136	46
11857	136	52
11858	136	53
11859	136	63
11860	136	70
11861	136	83
11862	136	91
11863	136	92
11864	136	98
11865	136	99
11866	136	102
11867	136	104
11868	136	115
11869	136	117
11870	136	123
11871	136	126
11872	136	129
11873	136	130
11874	136	156
11875	136	164
11876	136	173
11877	136	174
11878	136	182
11879	136	184
11880	136	189
11881	136	192
11882	136	197
11883	136	203
11884	136	207
11885	136	213
11886	136	214
11887	136	215
11888	136	216
11889	136	218
11890	136	231
11891	136	237
11892	136	240
11893	136	241
11894	136	247
11895	136	249
11896	136	257
11897	136	261
11898	136	263
11899	136	270
11900	136	276
11901	136	290
11902	136	304
11903	136	315
11904	136	343
11905	136	363
11906	136	387
11907	136	394
11908	136	416
11909	136	424
11910	136	436
11911	136	445
11912	136	510
11913	136	514
11914	136	526
11915	136	590
11916	136	608
11917	137	33
11918	137	36
11919	137	38
11920	137	58
11921	137	59
11922	137	60
11923	137	63
11924	137	76
11925	137	85
11926	137	86
11927	137	87
11928	137	92
11929	137	94
11930	137	97
11931	137	99
11932	137	100
11933	137	102
11934	137	104
11935	137	105
11936	137	115
11937	137	117
11938	137	129
11939	137	130
11940	137	138
11941	137	148
11942	137	149
11943	137	156
11944	137	159
11945	137	160
11946	137	161
11947	137	164
11948	137	168
11949	137	171
11950	137	173
11951	137	174
11952	137	176
11953	137	182
11954	137	192
11955	137	196
11956	137	199
11957	137	203
11958	137	207
11959	137	214
11960	137	216
11961	137	218
11962	137	220
11963	137	231
11964	137	237
11965	137	240
11966	137	241
11967	137	244
11968	137	247
11969	137	263
11970	137	271
11971	137	277
11972	137	278
11973	137	290
11974	137	324
11975	137	332
11976	137	351
11977	137	356
11978	137	363
11979	137	387
11980	137	393
11981	137	416
11982	137	428
11983	137	433
11984	137	435
11985	137	451
11986	137	527
11987	137	590
11988	138	20
11989	138	21
11990	138	29
11991	138	30
11992	138	34
11993	138	36
11994	138	38
11995	138	43
11996	138	44
11997	138	48
11998	138	55
11999	138	56
12000	138	57
12001	138	58
12002	138	59
12003	138	61
12004	138	62
12005	138	92
12006	138	99
12007	138	102
12008	138	104
12009	138	110
12010	138	114
12011	138	115
12012	138	117
12013	138	127
12014	138	131
12015	138	132
12016	138	156
12017	138	157
12018	138	164
12019	138	168
12020	138	173
12021	138	174
12022	138	182
12023	138	191
12024	138	196
12025	138	201
12026	138	203
12027	138	205
12028	138	207
12029	138	213
12030	138	214
12031	138	216
12032	138	218
12033	138	237
12034	138	240
12035	138	246
12036	138	249
12037	138	250
12038	138	258
12039	138	263
12040	138	282
12041	138	290
12042	138	291
12043	138	317
12044	138	321
12045	138	330
12046	138	334
12047	138	341
12048	138	350
12049	138	352
12050	138	360
12051	138	362
12052	138	363
12053	138	378
12054	138	390
12055	138	397
12056	138	414
12057	138	445
12058	138	446
12059	138	503
12060	138	504
12061	138	513
12062	138	590
12063	139	20
12064	139	29
12065	139	30
12066	139	32
12067	139	34
12068	139	36
12069	139	38
12070	139	43
12071	139	44
12072	139	55
12073	139	56
12074	139	57
12075	139	58
12076	139	59
12077	139	61
12078	139	63
12079	139	66
12080	139	69
12081	139	92
12082	139	99
12083	139	102
12084	139	104
12085	139	110
12086	139	115
12087	139	117
12088	139	127
12089	139	130
12090	139	131
12091	139	132
12092	139	156
12093	139	157
12094	139	164
12095	139	168
12096	139	173
12097	139	174
12098	139	182
12099	139	196
12100	139	201
12101	139	203
12102	139	205
12103	139	207
12104	139	213
12105	139	214
12106	139	216
12107	139	218
12108	139	237
12109	139	240
12110	139	246
12111	139	249
12112	139	250
12113	139	258
12114	139	263
12115	139	282
12116	139	290
12117	139	291
12118	139	317
12119	139	321
12120	139	334
12121	139	341
12122	139	350
12123	139	352
12124	139	360
12125	139	362
12126	139	363
12127	139	397
12128	139	414
12129	139	416
12130	139	431
12131	139	444
12132	139	445
12133	139	446
12134	139	503
12135	139	504
12136	139	590
12137	140	10
12138	140	28
12139	140	34
12140	140	36
12141	140	38
12142	140	43
12143	140	55
12144	140	56
12145	140	57
12146	140	58
12147	140	59
12148	140	61
12149	140	62
12150	140	71
12151	140	72
12152	140	91
12153	140	92
12154	140	99
12155	140	102
12156	140	103
12157	140	104
12158	140	106
12159	140	109
12160	140	115
12161	140	117
12162	140	127
12163	140	156
12164	140	157
12165	140	163
12166	140	164
12167	140	168
12168	140	173
12169	140	174
12170	140	175
12171	140	182
12172	140	189
12173	140	193
12174	140	196
12175	140	201
12176	140	202
12177	140	203
12178	140	205
12179	140	207
12180	140	213
12181	140	214
12182	140	216
12183	140	218
12184	140	229
12185	140	237
12186	140	240
12187	140	246
12188	140	249
12189	140	250
12190	140	258
12191	140	263
12192	140	282
12193	140	290
12194	140	317
12195	140	319
12196	140	332
12197	140	334
12198	140	341
12199	140	352
12200	140	362
12201	140	363
12202	140	378
12203	140	397
12204	140	414
12205	140	445
12206	140	446
12207	140	453
12208	140	503
12209	140	590
12210	141	10
12211	141	13
12212	141	14
12213	141	15
12214	141	25
12215	141	28
12216	141	29
12217	141	34
12218	141	36
12219	141	38
12220	141	43
12221	141	55
12222	141	56
12223	141	57
12224	141	58
12225	141	59
12226	141	61
12227	141	63
12228	141	66
12229	141	67
12230	141	69
12231	141	71
12232	141	72
12233	141	91
12234	141	92
12235	141	99
12236	141	102
12237	141	104
12238	141	106
12239	141	115
12240	141	117
12241	141	127
12242	141	130
12243	141	156
12244	141	157
12245	141	163
12246	141	164
12247	141	168
12248	141	173
12249	141	174
12250	141	182
12251	141	189
12252	141	196
12253	141	201
12254	141	202
12255	141	203
12256	141	205
12257	141	207
12258	141	210
12259	141	213
12260	141	214
12261	141	216
12262	141	218
12263	141	237
12264	141	240
12265	141	246
12266	141	249
12267	141	250
12268	141	258
12269	141	263
12270	141	267
12271	141	276
12272	141	280
12273	141	282
12274	141	290
12275	141	291
12276	141	317
12277	141	319
12278	141	332
12279	141	334
12280	141	341
12281	141	352
12282	141	362
12283	141	363
12284	141	364
12285	141	378
12286	141	397
12287	141	400
12288	141	401
12289	141	404
12290	141	414
12291	141	416
12292	141	431
12293	141	444
12294	141	445
12295	141	446
12296	141	453
12297	141	503
12298	141	590
12299	142	13
12300	142	17
12301	142	18
12302	142	19
12303	142	29
12304	142	36
12305	142	38
12306	142	44
12307	142	46
12308	142	48
12309	142	53
12310	142	63
12311	142	70
12312	142	82
12313	142	89
12314	142	92
12315	142	97
12316	142	99
12317	142	102
12318	142	104
12319	142	115
12320	142	117
12321	142	126
12322	142	129
12323	142	143
12324	142	156
12325	142	157
12326	142	164
12327	142	168
12328	142	173
12329	142	174
12330	142	182
12331	142	184
12332	142	193
12333	142	197
12334	142	201
12335	142	203
12336	142	207
12337	142	211
12338	142	213
12339	142	214
12340	142	216
12341	142	218
12342	142	225
12343	142	228
12344	142	231
12345	142	237
12346	142	239
12347	142	240
12348	142	241
12349	142	242
12350	142	246
12351	142	249
12352	142	257
12353	142	259
12354	142	263
12355	142	269
12356	142	290
12357	142	314
12358	142	317
12359	142	332
12360	142	337
12361	142	355
12362	142	363
12363	142	366
12364	142	371
12365	142	372
12366	142	397
12367	142	401
12368	142	406
12369	142	414
12370	142	416
12371	142	422
12372	142	423
12373	142	424
12374	142	432
12375	142	442
12376	142	444
12377	142	445
12378	142	446
12379	142	507
12380	142	510
12381	142	523
12382	142	590
12383	142	693
12384	143	5
12385	143	6
12386	143	7
12387	143	8
12388	143	9
12389	143	18
12390	143	25
12391	143	29
12392	143	33
12393	143	34
12394	143	36
12395	143	38
12396	143	53
12397	143	55
12398	143	57
12399	143	58
12400	143	59
12401	143	61
12402	143	63
12403	143	66
12404	143	68
12405	143	69
12406	143	70
12407	143	76
12408	143	85
12409	143	87
12410	143	89
12411	143	90
12412	143	92
12413	143	94
12414	143	99
12415	143	102
12416	143	104
12417	143	106
12418	143	111
12419	143	115
12420	143	117
12421	143	118
12422	143	120
12423	143	122
12424	143	126
12425	143	130
12426	143	133
12427	143	149
12428	143	156
12429	143	157
12430	143	164
12431	143	173
12432	143	174
12433	143	182
12434	143	187
12435	143	189
12436	143	192
12437	143	196
12438	143	200
12439	143	201
12440	143	203
12441	143	204
12442	143	205
12443	143	207
12444	143	213
12445	143	214
12446	143	216
12447	143	218
12448	143	223
12449	143	228
12450	143	237
12451	143	240
12452	143	241
12453	143	242
12454	143	244
12455	143	247
12456	143	249
12457	143	250
12458	143	263
12459	143	264
12460	143	276
12461	143	278
12462	143	280
12463	143	281
12464	143	290
12465	143	304
12466	143	317
12467	143	335
12468	143	343
12469	143	351
12470	143	352
12471	143	363
12472	143	374
12473	143	387
12474	143	402
12475	143	411
12476	143	416
12477	143	428
12478	143	431
12479	143	441
12480	143	442
12481	143	445
12482	143	510
12483	143	514
12484	143	523
12485	143	526
12486	143	528
12487	143	562
12488	143	590
12489	143	612
12490	143	667
12491	144	13
12492	144	16
12493	144	18
12494	144	19
12495	144	36
12496	144	38
12497	144	46
12498	144	54
12499	144	55
12500	144	58
12501	144	59
12502	144	61
12503	144	63
12504	144	64
12505	144	92
12506	144	97
12507	144	99
12508	144	102
12509	144	104
12510	144	115
12511	144	117
12512	144	129
12513	144	143
12514	144	156
12515	144	164
12516	144	170
12517	144	173
12518	144	174
12519	144	181
12520	144	182
12521	144	189
12522	144	196
12523	144	197
12524	144	201
12525	144	203
12526	144	207
12527	144	211
12528	144	214
12529	144	216
12530	144	218
12531	144	237
12532	144	239
12533	144	240
12534	144	241
12535	144	246
12536	144	249
12537	144	258
12538	144	263
12539	144	290
12540	144	314
12541	144	324
12542	144	329
12543	144	332
12544	144	352
12545	144	355
12546	144	363
12547	144	365
12548	144	366
12549	144	369
12550	144	416
12551	144	419
12552	144	420
12553	144	432
12554	144	507
12555	144	524
12556	144	542
12557	144	573
12558	144	590
12559	144	694
12560	145	13
12561	145	18
12562	145	19
12563	145	36
12564	145	38
12565	145	46
12566	145	63
12567	145	64
12568	145	65
12569	145	84
12570	145	85
12571	145	86
12572	145	87
12573	145	92
12574	145	97
12575	145	99
12576	145	102
12577	145	104
12578	145	113
12579	145	115
12580	145	117
12581	145	129
12582	145	143
12583	145	148
12584	145	156
12585	145	164
12586	145	173
12587	145	174
12588	145	182
12589	145	189
12590	145	192
12591	145	197
12592	145	201
12593	145	203
12594	145	207
12595	145	211
12596	145	214
12597	145	216
12598	145	218
12599	145	237
12600	145	239
12601	145	240
12602	145	241
12603	145	246
12604	145	249
12605	145	257
12606	145	263
12607	145	268
12608	145	290
12609	145	314
12610	145	324
12611	145	332
12612	145	351
12613	145	355
12614	145	363
12615	145	365
12616	145	366
12617	145	369
12618	145	416
12619	145	432
12620	145	435
12621	145	451
12622	145	507
12623	145	521
12624	145	528
12625	145	590
12626	145	602
12627	146	13
12628	146	17
12629	146	18
12630	146	19
12631	146	36
12632	146	38
12633	146	43
12634	146	46
12635	146	52
12636	146	53
12637	146	63
12638	146	64
12639	146	76
12640	146	83
12641	146	92
12642	146	97
12643	146	99
12644	146	102
12645	146	104
12646	146	115
12647	146	117
12648	146	126
12649	146	129
12650	146	143
12651	146	156
12652	146	164
12653	146	173
12654	146	174
12655	146	182
12656	146	189
12657	146	197
12658	146	201
12659	146	203
12660	146	207
12661	146	211
12662	146	214
12663	146	216
12664	146	218
12665	146	219
12666	146	237
12667	146	239
12668	146	240
12669	146	241
12670	146	246
12671	146	249
12672	146	257
12673	146	261
12674	146	263
12675	146	290
12676	146	314
12677	146	315
12678	146	332
12679	146	355
12680	146	363
12681	146	365
12682	146	366
12683	146	369
12684	146	403
12685	146	416
12686	146	432
12687	146	507
12688	146	510
12689	146	542
12690	146	590
12691	146	682
12692	147	20
12693	147	21
12694	147	29
12695	147	34
12696	147	35
12697	147	36
12698	147	38
12699	147	43
12700	147	48
12701	147	53
12702	147	54
12703	147	55
12704	147	57
12705	147	58
12706	147	59
12707	147	61
12708	147	63
12709	147	82
12710	147	85
12711	147	86
12712	147	87
12713	147	92
12714	147	97
12715	147	99
12716	147	102
12717	147	104
12718	147	113
12719	147	114
12720	147	115
12721	147	117
12722	147	126
12723	147	127
12724	147	129
12725	147	130
12726	147	156
12727	147	164
12728	147	173
12729	147	174
12730	147	182
12731	147	192
12732	147	196
12733	147	197
12734	147	200
12735	147	203
12736	147	207
12737	147	213
12738	147	214
12739	147	216
12740	147	218
12741	147	219
12742	147	225
12743	147	231
12744	147	237
12745	147	239
12746	147	240
12747	147	241
12748	147	245
12749	147	250
12750	147	258
12751	147	263
12752	147	290
12753	147	349
12754	147	351
12755	147	352
12756	147	363
12757	147	401
12758	147	406
12759	147	407
12760	147	434
12761	147	445
12762	147	453
12763	147	510
12764	147	525
12765	147	590
12766	147	693
12767	148	20
12768	148	21
12769	148	29
12770	148	32
12771	148	34
12772	148	35
12773	148	36
12774	148	38
12775	148	43
12776	148	53
12777	148	55
12778	148	57
12779	148	58
12780	148	59
12781	148	61
12782	148	63
12783	148	82
12784	148	85
12785	148	86
12786	148	87
12787	148	92
12788	148	97
12789	148	99
12790	148	102
12791	148	104
12792	148	113
12793	148	115
12794	148	117
12795	148	126
12796	148	127
12797	148	129
12798	148	130
12799	148	156
12800	148	164
12801	148	173
12802	148	174
12803	148	182
12804	148	192
12805	148	196
12806	148	197
12807	148	200
12808	148	203
12809	148	207
12810	148	213
12811	148	214
12812	148	216
12813	148	218
12814	148	219
12815	148	225
12816	148	231
12817	148	237
12818	148	239
12819	148	240
12820	148	241
12821	148	250
12822	148	258
12823	148	263
12824	148	290
12825	148	349
12826	148	351
12827	148	352
12828	148	363
12829	148	401
12830	148	406
12831	148	407
12832	148	434
12833	148	445
12834	148	510
12835	148	525
12836	148	590
12837	148	693
12838	149	7
12839	149	8
12840	149	9
12841	149	13
12842	149	15
12843	149	17
12844	149	19
12845	149	20
12846	149	21
12847	149	29
12848	149	32
12849	149	34
12850	149	35
12851	149	36
12852	149	38
12853	149	43
12854	149	46
12855	149	53
12856	149	55
12857	149	57
12858	149	58
12859	149	59
12860	149	61
12861	149	63
12862	149	70
12863	149	82
12864	149	85
12865	149	86
12866	149	87
12867	149	89
12868	149	92
12869	149	97
12870	149	99
12871	149	102
12872	149	104
12873	149	113
12874	149	115
12875	149	117
12876	149	126
12877	149	127
12878	149	129
12879	149	130
12880	149	156
12881	149	157
12882	149	164
12883	149	173
12884	149	174
12885	149	182
12886	149	189
12887	149	192
12888	149	196
12889	149	197
12890	149	200
12891	149	201
12892	149	203
12893	149	207
12894	149	210
12895	149	211
12896	149	213
12897	149	214
12898	149	216
12899	149	218
12900	149	219
12901	149	223
12902	149	225
12903	149	231
12904	149	237
12905	149	239
12906	149	240
12907	149	241
12908	149	249
12909	149	250
12910	149	257
12911	149	258
12912	149	263
12913	149	264
12914	149	276
12915	149	280
12916	149	290
12917	149	291
12918	149	314
12919	149	317
12920	149	332
12921	149	337
12922	149	349
12923	149	351
12924	149	352
12925	149	355
12926	149	363
12927	149	366
12928	149	374
12929	149	401
12930	149	406
12931	149	407
12932	149	411
12933	149	416
12934	149	432
12935	149	434
12936	149	442
12937	149	444
12938	149	445
12939	149	507
12940	149	510
12941	149	523
12942	149	525
12943	149	542
12944	149	590
12945	149	612
12946	149	693
12947	150	5
12948	150	6
12949	150	7
12950	150	8
12951	150	9
12952	150	25
12953	150	29
12954	150	34
12955	150	36
12956	150	38
12957	150	50
12958	150	53
12959	150	54
12960	150	55
12961	150	58
12962	150	59
12963	150	61
12964	150	63
12965	150	66
12966	150	67
12967	150	68
12968	150	69
12969	150	70
12970	150	76
12971	150	85
12972	150	86
12973	150	87
12974	150	89
12975	150	92
12976	150	93
12977	150	94
12978	150	99
12979	150	100
12980	150	102
12981	150	104
12982	150	105
12983	150	112
12984	150	113
12985	150	115
12986	150	117
12987	150	118
12988	150	120
12989	150	126
12990	150	129
12991	150	130
12992	150	133
12993	150	138
12994	150	148
12995	150	149
12996	150	156
12997	150	157
12998	150	161
12999	150	164
13000	150	171
13001	150	173
13002	150	174
13003	150	182
13004	150	189
13005	150	192
13006	150	196
13007	150	197
13008	150	201
13009	150	203
13010	150	207
13011	150	214
13012	150	216
13013	150	218
13014	150	219
13015	150	223
13016	150	231
13017	150	237
13018	150	240
13019	150	241
13020	150	244
13021	150	247
13022	150	248
13023	150	249
13024	150	258
13025	150	259
13026	150	261
13027	150	263
13028	150	264
13029	150	269
13030	150	271
13031	150	272
13032	150	277
13033	150	278
13034	150	280
13035	150	285
13036	150	289
13037	150	290
13038	150	291
13039	150	317
13040	150	324
13041	150	332
13042	150	339
13043	150	347
13044	150	351
13045	150	352
13046	150	356
13047	150	357
13048	150	363
13049	150	373
13050	150	374
13051	150	382
13052	150	384
13053	150	385
13054	150	396
13055	150	398
13056	150	401
13057	150	409
13058	150	411
13059	150	412
13060	150	416
13061	150	419
13062	150	427
13063	150	428
13064	150	431
13065	150	433
13066	150	444
13067	150	447
13068	150	451
13069	150	510
13070	150	523
13071	150	540
13072	150	590
13073	150	612
13074	150	673
13075	150	693
13076	151	1
13077	151	5
13078	151	6
13079	151	7
13080	151	8
13081	151	9
13082	151	13
13083	151	14
13084	151	15
13085	151	18
13086	151	19
13087	151	20
13088	151	25
13089	151	29
13090	151	32
13091	151	34
13092	151	36
13093	151	38
13094	151	46
13095	151	53
13096	151	55
13097	151	57
13098	151	58
13099	151	59
13100	151	61
13101	151	63
13102	151	66
13103	151	67
13104	151	68
13105	151	69
13106	151	70
13107	151	72
13108	151	76
13109	151	81
13110	151	82
13111	151	85
13112	151	86
13113	151	87
13114	151	89
13115	151	90
13116	151	91
13117	151	92
13118	151	94
13119	151	95
13120	151	99
13121	151	100
13122	151	101
13123	151	102
13124	151	104
13125	151	111
13126	151	112
13127	151	113
13128	151	115
13129	151	117
13130	151	118
13131	151	120
13132	151	121
13133	151	126
13134	151	127
13135	151	129
13136	151	130
13137	151	133
13138	151	135
13139	151	138
13140	151	141
13141	151	143
13142	151	144
13143	151	148
13144	151	149
13145	151	153
13146	151	156
13147	151	157
13148	151	161
13149	151	162
13150	151	164
13151	151	168
13152	151	171
13153	151	173
13154	151	174
13155	151	180
13156	151	182
13157	151	185
13158	151	188
13159	151	189
13160	151	192
13161	151	196
13162	151	197
13163	151	200
13164	151	201
13165	151	202
13166	151	203
13167	151	205
13168	151	206
13169	151	207
13170	151	210
13171	151	211
13172	151	213
13173	151	214
13174	151	215
13175	151	216
13176	151	218
13177	151	219
13178	151	220
13179	151	223
13180	151	225
13181	151	226
13182	151	230
13183	151	231
13184	151	235
13185	151	237
13186	151	239
13187	151	240
13188	151	241
13189	151	244
13190	151	246
13191	151	247
13192	151	249
13193	151	250
13194	151	252
13195	151	253
13196	151	257
13197	151	258
13198	151	259
13199	151	261
13200	151	263
13201	151	264
13202	151	267
13203	151	269
13204	151	270
13205	151	271
13206	151	272
13207	151	276
13208	151	277
13209	151	278
13210	151	280
13211	151	282
13212	151	283
13213	151	285
13214	151	289
13215	151	290
13216	151	291
13217	151	304
13218	151	314
13219	151	315
13220	151	317
13221	151	318
13222	151	324
13223	151	331
13224	151	332
13225	151	334
13226	151	335
13227	151	337
13228	151	339
13229	151	340
13230	151	343
13231	151	347
13232	151	351
13233	151	352
13234	151	355
13235	151	356
13236	151	360
13237	151	362
13238	151	363
13239	151	365
13240	151	366
13241	151	369
13242	151	371
13243	151	373
13244	151	374
13245	151	380
13246	151	382
13247	151	387
13248	151	388
13249	151	389
13250	151	393
13251	151	396
13252	151	397
13253	151	398
13254	151	399
13255	151	401
13256	151	402
13257	151	404
13258	151	406
13259	151	409
13260	151	410
13261	151	411
13262	151	412
13263	151	414
13264	151	416
13265	151	417
13266	151	419
13267	151	421
13268	151	428
13269	151	430
13270	151	431
13271	151	432
13272	151	433
13273	151	441
13274	151	442
13275	151	444
13276	151	445
13277	151	446
13278	151	447
13279	151	450
13280	151	451
13281	151	502
13282	151	503
13283	151	507
13284	151	510
13285	151	511
13286	151	512
13287	151	513
13288	151	514
13289	151	521
13290	151	522
13291	151	523
13292	151	524
13293	151	525
13294	151	526
13295	151	527
13296	151	528
13297	151	529
13298	151	530
13299	151	555
13300	151	590
13301	151	605
13302	151	611
13303	151	612
13304	151	684
13305	151	693
13306	151	694
\.


--
-- Data for Name: pokemon_stats; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemon_stats (id, base_stat, stat_id, pokemon_id) FROM stdin;
1	45	6	1
2	65	5	1
3	65	4	1
4	49	3	1
5	49	2	1
6	45	1	1
7	60	6	2
8	80	5	2
9	80	4	2
10	63	3	2
11	62	2	2
12	60	1	2
13	80	6	3
14	100	5	3
15	100	4	3
16	83	3	3
17	82	2	3
18	80	1	3
19	65	6	4
20	50	5	4
21	60	4	4
22	43	3	4
23	52	2	4
24	39	1	4
25	80	6	5
26	65	5	5
27	80	4	5
28	58	3	5
29	64	2	5
30	58	1	5
31	100	6	6
32	85	5	6
33	109	4	6
34	78	3	6
35	84	2	6
36	78	1	6
37	43	6	7
38	64	5	7
39	50	4	7
40	65	3	7
41	48	2	7
42	44	1	7
43	58	6	8
44	80	5	8
45	65	4	8
46	80	3	8
47	63	2	8
48	59	1	8
49	78	6	9
50	105	5	9
51	85	4	9
52	100	3	9
53	83	2	9
54	79	1	9
55	45	6	10
56	20	5	10
57	20	4	10
58	35	3	10
59	30	2	10
60	45	1	10
61	30	6	11
62	25	5	11
63	25	4	11
64	55	3	11
65	20	2	11
66	50	1	11
67	70	6	12
68	80	5	12
69	90	4	12
70	50	3	12
71	45	2	12
72	60	1	12
73	50	6	13
74	20	5	13
75	20	4	13
76	30	3	13
77	35	2	13
78	40	1	13
79	35	6	14
80	25	5	14
81	25	4	14
82	50	3	14
83	25	2	14
84	45	1	14
85	75	6	15
86	80	5	15
87	45	4	15
88	40	3	15
89	90	2	15
90	65	1	15
91	56	6	16
92	35	5	16
93	35	4	16
94	40	3	16
95	45	2	16
96	40	1	16
97	71	6	17
98	50	5	17
99	50	4	17
100	55	3	17
101	60	2	17
102	63	1	17
103	101	6	18
104	70	5	18
105	70	4	18
106	75	3	18
107	80	2	18
108	83	1	18
109	72	6	19
110	35	5	19
111	25	4	19
112	35	3	19
113	56	2	19
114	30	1	19
115	97	6	20
116	70	5	20
117	50	4	20
118	60	3	20
119	81	2	20
120	55	1	20
121	70	6	21
122	31	5	21
123	31	4	21
124	30	3	21
125	60	2	21
126	40	1	21
127	100	6	22
128	61	5	22
129	61	4	22
130	65	3	22
131	90	2	22
132	65	1	22
133	55	6	23
134	54	5	23
135	40	4	23
136	44	3	23
137	60	2	23
138	35	1	23
139	80	6	24
140	79	5	24
141	65	4	24
142	69	3	24
143	95	2	24
144	60	1	24
145	90	6	25
146	50	5	25
147	50	4	25
148	40	3	25
149	55	2	25
150	35	1	25
151	110	6	26
152	80	5	26
153	90	4	26
154	55	3	26
155	90	2	26
156	60	1	26
157	40	6	27
158	30	5	27
159	20	4	27
160	85	3	27
161	75	2	27
162	50	1	27
163	65	6	28
164	55	5	28
165	45	4	28
166	110	3	28
167	100	2	28
168	75	1	28
169	41	6	29
170	40	5	29
171	40	4	29
172	52	3	29
173	47	2	29
174	55	1	29
175	56	6	30
176	55	5	30
177	55	4	30
178	67	3	30
179	62	2	30
180	70	1	30
181	76	6	31
182	85	5	31
183	75	4	31
184	87	3	31
185	92	2	31
186	90	1	31
187	50	6	32
188	40	5	32
189	40	4	32
190	40	3	32
191	57	2	32
192	46	1	32
193	65	6	33
194	55	5	33
195	55	4	33
196	57	3	33
197	72	2	33
198	61	1	33
199	85	6	34
200	75	5	34
201	85	4	34
202	77	3	34
203	102	2	34
204	81	1	34
205	35	6	35
206	65	5	35
207	60	4	35
208	48	3	35
209	45	2	35
210	70	1	35
211	60	6	36
212	90	5	36
213	95	4	36
214	73	3	36
215	70	2	36
216	95	1	36
217	65	6	37
218	65	5	37
219	50	4	37
220	40	3	37
221	41	2	37
222	38	1	37
223	100	6	38
224	100	5	38
225	81	4	38
226	75	3	38
227	76	2	38
228	73	1	38
229	20	6	39
230	25	5	39
231	45	4	39
232	20	3	39
233	45	2	39
234	115	1	39
235	45	6	40
236	50	5	40
237	85	4	40
238	45	3	40
239	70	2	40
240	140	1	40
241	55	6	41
242	40	5	41
243	30	4	41
244	35	3	41
245	45	2	41
246	40	1	41
247	90	6	42
248	75	5	42
249	65	4	42
250	70	3	42
251	80	2	42
252	75	1	42
253	30	6	43
254	65	5	43
255	75	4	43
256	55	3	43
257	50	2	43
258	45	1	43
259	40	6	44
260	75	5	44
261	85	4	44
262	70	3	44
263	65	2	44
264	60	1	44
265	50	6	45
266	90	5	45
267	110	4	45
268	85	3	45
269	80	2	45
270	75	1	45
271	25	6	46
272	55	5	46
273	45	4	46
274	55	3	46
275	70	2	46
276	35	1	46
277	30	6	47
278	80	5	47
279	60	4	47
280	80	3	47
281	95	2	47
282	60	1	47
283	45	6	48
284	55	5	48
285	40	4	48
286	50	3	48
287	55	2	48
288	60	1	48
289	90	6	49
290	75	5	49
291	90	4	49
292	60	3	49
293	65	2	49
294	70	1	49
295	95	6	50
296	45	5	50
297	35	4	50
298	25	3	50
299	55	2	50
300	10	1	50
301	120	6	51
302	70	5	51
303	50	4	51
304	50	3	51
305	100	2	51
306	35	1	51
307	90	6	52
308	40	5	52
309	40	4	52
310	35	3	52
311	45	2	52
312	40	1	52
313	115	6	53
314	65	5	53
315	65	4	53
316	60	3	53
317	70	2	53
318	65	1	53
319	55	6	54
320	50	5	54
321	65	4	54
322	48	3	54
323	52	2	54
324	50	1	54
325	85	6	55
326	80	5	55
327	95	4	55
328	78	3	55
329	82	2	55
330	80	1	55
331	70	6	56
332	45	5	56
333	35	4	56
334	35	3	56
335	80	2	56
336	40	1	56
337	95	6	57
338	70	5	57
339	60	4	57
340	60	3	57
341	105	2	57
342	65	1	57
343	60	6	58
344	50	5	58
345	70	4	58
346	45	3	58
347	70	2	58
348	55	1	58
349	95	6	59
350	80	5	59
351	100	4	59
352	80	3	59
353	110	2	59
354	90	1	59
355	90	6	60
356	40	5	60
357	40	4	60
358	40	3	60
359	50	2	60
360	40	1	60
361	90	6	61
362	50	5	61
363	50	4	61
364	65	3	61
365	65	2	61
366	65	1	61
367	70	6	62
368	90	5	62
369	70	4	62
370	95	3	62
371	95	2	62
372	90	1	62
373	90	6	63
374	55	5	63
375	105	4	63
376	15	3	63
377	20	2	63
378	25	1	63
379	105	6	64
380	70	5	64
381	120	4	64
382	30	3	64
383	35	2	64
384	40	1	64
385	120	6	65
386	95	5	65
387	135	4	65
388	45	3	65
389	50	2	65
390	55	1	65
391	35	6	66
392	35	5	66
393	35	4	66
394	50	3	66
395	80	2	66
396	70	1	66
397	45	6	67
398	60	5	67
399	50	4	67
400	70	3	67
401	100	2	67
402	80	1	67
403	55	6	68
404	85	5	68
405	65	4	68
406	80	3	68
407	130	2	68
408	90	1	68
409	40	6	69
410	30	5	69
411	70	4	69
412	35	3	69
413	75	2	69
414	50	1	69
415	55	6	70
416	45	5	70
417	85	4	70
418	50	3	70
419	90	2	70
420	65	1	70
421	70	6	71
422	70	5	71
423	100	4	71
424	65	3	71
425	105	2	71
426	80	1	71
427	70	6	72
428	100	5	72
429	50	4	72
430	35	3	72
431	40	2	72
432	40	1	72
433	100	6	73
434	120	5	73
435	80	4	73
436	65	3	73
437	70	2	73
438	80	1	73
439	20	6	74
440	30	5	74
441	30	4	74
442	100	3	74
443	80	2	74
444	40	1	74
445	35	6	75
446	45	5	75
447	45	4	75
448	115	3	75
449	95	2	75
450	55	1	75
451	45	6	76
452	65	5	76
453	55	4	76
454	130	3	76
455	120	2	76
456	80	1	76
457	90	6	77
458	65	5	77
459	65	4	77
460	55	3	77
461	85	2	77
462	50	1	77
463	105	6	78
464	80	5	78
465	80	4	78
466	70	3	78
467	100	2	78
468	65	1	78
469	15	6	79
470	40	5	79
471	40	4	79
472	65	3	79
473	65	2	79
474	90	1	79
475	30	6	80
476	80	5	80
477	100	4	80
478	110	3	80
479	75	2	80
480	95	1	80
481	45	6	81
482	55	5	81
483	95	4	81
484	70	3	81
485	35	2	81
486	25	1	81
487	70	6	82
488	70	5	82
489	120	4	82
490	95	3	82
491	60	2	82
492	50	1	82
493	60	6	83
494	62	5	83
495	58	4	83
496	55	3	83
497	90	2	83
498	52	1	83
499	75	6	84
500	35	5	84
501	35	4	84
502	45	3	84
503	85	2	84
504	35	1	84
505	110	6	85
506	60	5	85
507	60	4	85
508	70	3	85
509	110	2	85
510	60	1	85
511	45	6	86
512	70	5	86
513	45	4	86
514	55	3	86
515	45	2	86
516	65	1	86
517	70	6	87
518	95	5	87
519	70	4	87
520	80	3	87
521	70	2	87
522	90	1	87
523	25	6	88
524	50	5	88
525	40	4	88
526	50	3	88
527	80	2	88
528	80	1	88
529	50	6	89
530	100	5	89
531	65	4	89
532	75	3	89
533	105	2	89
534	105	1	89
535	40	6	90
536	25	5	90
537	45	4	90
538	100	3	90
539	65	2	90
540	30	1	90
541	70	6	91
542	45	5	91
543	85	4	91
544	180	3	91
545	95	2	91
546	50	1	91
547	80	6	92
548	35	5	92
549	100	4	92
550	30	3	92
551	35	2	92
552	30	1	92
553	95	6	93
554	55	5	93
555	115	4	93
556	45	3	93
557	50	2	93
558	45	1	93
559	110	6	94
560	75	5	94
561	130	4	94
562	60	3	94
563	65	2	94
564	60	1	94
565	70	6	95
566	45	5	95
567	30	4	95
568	160	3	95
569	45	2	95
570	35	1	95
571	42	6	96
572	90	5	96
573	43	4	96
574	45	3	96
575	48	2	96
576	60	1	96
577	67	6	97
578	115	5	97
579	73	4	97
580	70	3	97
581	73	2	97
582	85	1	97
583	50	6	98
584	25	5	98
585	25	4	98
586	90	3	98
587	105	2	98
588	30	1	98
589	75	6	99
590	50	5	99
591	50	4	99
592	115	3	99
593	130	2	99
594	55	1	99
595	100	6	100
596	55	5	100
597	55	4	100
598	50	3	100
599	30	2	100
600	40	1	100
601	150	6	101
602	80	5	101
603	80	4	101
604	70	3	101
605	50	2	101
606	60	1	101
607	40	6	102
608	45	5	102
609	60	4	102
610	80	3	102
611	40	2	102
612	60	1	102
613	55	6	103
614	75	5	103
615	125	4	103
616	85	3	103
617	95	2	103
618	95	1	103
619	35	6	104
620	50	5	104
621	40	4	104
622	95	3	104
623	50	2	104
624	50	1	104
625	45	6	105
626	80	5	105
627	50	4	105
628	110	3	105
629	80	2	105
630	60	1	105
631	87	6	106
632	110	5	106
633	35	4	106
634	53	3	106
635	120	2	106
636	50	1	106
637	76	6	107
638	110	5	107
639	35	4	107
640	79	3	107
641	105	2	107
642	50	1	107
643	30	6	108
644	75	5	108
645	60	4	108
646	75	3	108
647	55	2	108
648	90	1	108
649	35	6	109
650	45	5	109
651	60	4	109
652	95	3	109
653	65	2	109
654	40	1	109
655	60	6	110
656	70	5	110
657	85	4	110
658	120	3	110
659	90	2	110
660	65	1	110
661	25	6	111
662	30	5	111
663	30	4	111
664	95	3	111
665	85	2	111
666	80	1	111
667	40	6	112
668	45	5	112
669	45	4	112
670	120	3	112
671	130	2	112
672	105	1	112
673	50	6	113
674	105	5	113
675	35	4	113
676	5	3	113
677	5	2	113
678	250	1	113
679	60	6	114
680	40	5	114
681	100	4	114
682	115	3	114
683	55	2	114
684	65	1	114
685	90	6	115
686	80	5	115
687	40	4	115
688	80	3	115
689	95	2	115
690	105	1	115
691	60	6	116
692	25	5	116
693	70	4	116
694	70	3	116
695	40	2	116
696	30	1	116
697	85	6	117
698	45	5	117
699	95	4	117
700	95	3	117
701	65	2	117
702	55	1	117
703	63	6	118
704	50	5	118
705	35	4	118
706	60	3	118
707	67	2	118
708	45	1	118
709	68	6	119
710	80	5	119
711	65	4	119
712	65	3	119
713	92	2	119
714	80	1	119
715	85	6	120
716	55	5	120
717	70	4	120
718	55	3	120
719	45	2	120
720	30	1	120
721	115	6	121
722	85	5	121
723	100	4	121
724	85	3	121
725	75	2	121
726	60	1	121
727	90	6	122
728	120	5	122
729	100	4	122
730	65	3	122
731	45	2	122
732	40	1	122
733	105	6	123
734	80	5	123
735	55	4	123
736	80	3	123
737	110	2	123
738	70	1	123
739	95	6	124
740	95	5	124
741	115	4	124
742	35	3	124
743	50	2	124
744	65	1	124
745	105	6	125
746	85	5	125
747	95	4	125
748	57	3	125
749	83	2	125
750	65	1	125
751	93	6	126
752	85	5	126
753	100	4	126
754	57	3	126
755	95	2	126
756	65	1	126
757	85	6	127
758	70	5	127
759	55	4	127
760	100	3	127
761	125	2	127
762	65	1	127
763	110	6	128
764	70	5	128
765	40	4	128
766	95	3	128
767	100	2	128
768	75	1	128
769	80	6	129
770	20	5	129
771	15	4	129
772	55	3	129
773	10	2	129
774	20	1	129
775	81	6	130
776	100	5	130
777	60	4	130
778	79	3	130
779	125	2	130
780	95	1	130
781	60	6	131
782	95	5	131
783	85	4	131
784	80	3	131
785	85	2	131
786	130	1	131
787	48	6	132
788	48	5	132
789	48	4	132
790	48	3	132
791	48	2	132
792	48	1	132
793	55	6	133
794	65	5	133
795	45	4	133
796	50	3	133
797	55	2	133
798	55	1	133
799	65	6	134
800	95	5	134
801	110	4	134
802	60	3	134
803	65	2	134
804	130	1	134
805	130	6	135
806	95	5	135
807	110	4	135
808	60	3	135
809	65	2	135
810	65	1	135
811	65	6	136
812	110	5	136
813	95	4	136
814	60	3	136
815	130	2	136
816	65	1	136
817	40	6	137
818	75	5	137
819	85	4	137
820	70	3	137
821	60	2	137
822	65	1	137
823	35	6	138
824	55	5	138
825	90	4	138
826	100	3	138
827	40	2	138
828	35	1	138
829	55	6	139
830	70	5	139
831	115	4	139
832	125	3	139
833	60	2	139
834	70	1	139
835	55	6	140
836	45	5	140
837	55	4	140
838	90	3	140
839	80	2	140
840	30	1	140
841	80	6	141
842	70	5	141
843	65	4	141
844	105	3	141
845	115	2	141
846	60	1	141
847	130	6	142
848	75	5	142
849	60	4	142
850	65	3	142
851	105	2	142
852	80	1	142
853	30	6	143
854	110	5	143
855	65	4	143
856	65	3	143
857	110	2	143
858	160	1	143
859	85	6	144
860	125	5	144
861	95	4	144
862	100	3	144
863	85	2	144
864	90	1	144
865	100	6	145
866	90	5	145
867	125	4	145
868	85	3	145
869	90	2	145
870	90	1	145
871	90	6	146
872	85	5	146
873	125	4	146
874	90	3	146
875	100	2	146
876	90	1	146
877	50	6	147
878	50	5	147
879	50	4	147
880	45	3	147
881	64	2	147
882	41	1	147
883	70	6	148
884	70	5	148
885	70	4	148
886	65	3	148
887	84	2	148
888	61	1	148
889	80	6	149
890	100	5	149
891	100	4	149
892	95	3	149
893	134	2	149
894	91	1	149
895	130	6	150
896	90	5	150
897	154	4	150
898	90	3	150
899	110	2	150
900	106	1	150
901	93	6	126
902	85	5	126
903	100	4	126
904	57	3	126
905	95	2	126
906	65	1	126
907	85	6	127
908	70	5	127
909	55	4	127
910	100	3	127
911	125	2	127
912	65	1	127
913	110	6	128
914	70	5	128
915	40	4	128
916	95	3	128
917	100	2	128
918	75	1	128
919	80	6	129
920	20	5	129
921	15	4	129
922	55	3	129
923	10	2	129
924	20	1	129
925	81	6	130
926	100	5	130
927	60	4	130
928	79	3	130
929	125	2	130
930	95	1	130
931	60	6	131
932	95	5	131
933	85	4	131
934	80	3	131
935	85	2	131
936	130	1	131
937	48	6	132
938	48	5	132
939	48	4	132
940	48	3	132
941	48	2	132
942	48	1	132
943	55	6	133
944	65	5	133
945	45	4	133
946	50	3	133
947	55	2	133
948	55	1	133
949	65	6	134
950	95	5	134
951	110	4	134
952	60	3	134
953	65	2	134
954	130	1	134
955	130	6	135
956	95	5	135
957	110	4	135
958	60	3	135
959	65	2	135
960	65	1	135
961	65	6	136
962	110	5	136
963	95	4	136
964	60	3	136
965	130	2	136
966	65	1	136
967	40	6	137
968	75	5	137
969	85	4	137
970	70	3	137
971	60	2	137
972	65	1	137
973	35	6	138
974	55	5	138
975	90	4	138
976	100	3	138
977	40	2	138
978	35	1	138
979	55	6	139
980	70	5	139
981	115	4	139
982	125	3	139
983	60	2	139
984	70	1	139
985	55	6	140
986	45	5	140
987	55	4	140
988	90	3	140
989	80	2	140
990	30	1	140
991	80	6	141
992	70	5	141
993	65	4	141
994	105	3	141
995	115	2	141
996	60	1	141
997	130	6	142
998	75	5	142
999	60	4	142
1000	65	3	142
1001	105	2	142
1002	80	1	142
1003	30	6	143
1004	110	5	143
1005	65	4	143
1006	65	3	143
1007	110	2	143
1008	160	1	143
1009	85	6	144
1010	125	5	144
1011	95	4	144
1012	100	3	144
1013	85	2	144
1014	90	1	144
1015	100	6	145
1016	90	5	145
1017	125	4	145
1018	85	3	145
1019	90	2	145
1020	90	1	145
1021	90	6	146
1022	85	5	146
1023	125	4	146
1024	90	3	146
1025	100	2	146
1026	90	1	146
1027	50	6	147
1028	50	5	147
1029	50	4	147
1030	45	3	147
1031	64	2	147
1032	41	1	147
1033	70	6	148
1034	70	5	148
1035	70	4	148
1036	65	3	148
1037	84	2	148
1038	61	1	148
1039	80	6	149
1040	100	5	149
1041	100	4	149
1042	95	3	149
1043	134	2	149
1044	91	1	149
1045	130	6	150
1046	90	5	150
1047	154	4	150
1048	90	3	150
1049	110	2	150
1050	106	1	150
1051	100	6	151
1052	100	5	151
1053	100	4	151
1054	100	3	151
1055	100	2	151
1056	100	1	151
\.


--
-- Data for Name: pokemons; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY pokemons (id, name, front_default, front_shiny, back_default, back_shiny) FROM stdin;
1	bulbasaur	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/1.png
2	ivysaur	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/2.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/2.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/2.png
3	venusaur	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/3.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/3.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/3.png
4	charmander	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/4.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/4.png
5	charmeleon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/5.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/5.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/5.png
6	charizard	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/6.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/6.png
7	squirtle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/7.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/7.png
8	wartortle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/8.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/8.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/8.png
9	blastoise	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/9.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/9.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/9.png
10	caterpie	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/10.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/10.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/10.png
11	metapod	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/11.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/11.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/11.png
12	butterfree	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/12.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/12.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/12.png
13	weedle	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/13.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/13.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/13.png
14	kakuna	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/14.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/14.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/14.png
15	beedrill	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/15.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/15.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/15.png
16	pidgey	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/16.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/16.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/16.png
17	pidgeotto	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/17.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/17.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/17.png
18	pidgeot	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/18.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/18.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/18.png
19	rattata	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/19.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/19.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/19.png
20	raticate	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/20.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/20.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/20.png
21	spearow	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/21.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/21.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/21.png
22	fearow	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/22.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/22.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/22.png
23	ekans	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/23.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/23.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/23.png
24	arbok	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/24.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/24.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/24.png
25	pikachu	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/25.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/25.png
26	raichu	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/26.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/26.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/26.png
27	sandshrew	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/27.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/27.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/27.png
28	sandslash	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/28.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/28.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/28.png
29	nidoran-f	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/29.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/29.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/29.png
30	nidorina	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/30.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/30.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/30.png
31	nidoqueen	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/31.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/31.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/31.png
32	nidoran-m	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/32.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/32.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/32.png
33	nidorino	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/33.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/33.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/33.png
34	nidoking	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/34.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/34.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/34.png
35	clefairy	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/35.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/35.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/35.png
36	clefable	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/36.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/36.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/36.png
37	vulpix	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/37.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/37.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/37.png
38	ninetales	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/38.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/38.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/38.png
39	jigglypuff	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/39.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/39.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/39.png
40	wigglytuff	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/40.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/40.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/40.png
41	zubat	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/41.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/41.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/41.png
42	golbat	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/42.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/42.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/42.png
43	oddish	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/43.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/43.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/43.png
44	gloom	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/44.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/44.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/44.png
45	vileplume	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/45.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/45.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/45.png
46	paras	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/46.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/46.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/46.png
47	parasect	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/47.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/47.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/47.png
48	venonat	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/48.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/48.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/48.png
49	venomoth	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/49.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/49.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/49.png
50	diglett	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/50.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/50.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/50.png
51	dugtrio	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/51.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/51.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/51.png
52	meowth	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/52.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/52.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/52.png
53	persian	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/53.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/53.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/53.png
54	psyduck	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/54.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/54.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/54.png
55	golduck	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/55.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/55.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/55.png
56	mankey	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/56.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/56.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/56.png
57	primeape	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/57.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/57.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/57.png
58	growlithe	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/58.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/58.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/58.png
59	arcanine	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/59.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/59.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/59.png
60	poliwag	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/60.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/60.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/60.png
61	poliwhirl	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/61.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/61.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/61.png
62	poliwrath	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/62.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/62.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/62.png
63	abra	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/63.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/63.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/63.png
64	kadabra	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/64.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/64.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/64.png
65	alakazam	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/65.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/65.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/65.png
66	machop	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/66.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/66.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/66.png
67	machoke	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/67.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/67.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/67.png
68	machamp	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/68.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/68.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/68.png
69	bellsprout	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/69.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/69.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/69.png
70	weepinbell	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/70.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/70.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/70.png
71	victreebel	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/71.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/71.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/71.png
72	tentacool	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/72.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/72.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/72.png
73	tentacruel	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/73.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/73.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/73.png
74	geodude	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/74.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/74.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/74.png
75	graveler	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/75.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/75.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/75.png
76	golem	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/76.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/76.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/76.png
77	ponyta	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/77.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/77.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/77.png
78	rapidash	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/78.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/78.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/78.png
79	slowpoke	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/79.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/79.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/79.png
80	slowbro	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/80.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/80.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/80.png
81	magnemite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/81.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/81.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/81.png
82	magneton	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/82.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/82.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/82.png
83	farfetchd	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/83.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/83.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/83.png
84	doduo	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/84.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/84.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/84.png
85	dodrio	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/85.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/85.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/85.png
86	seel	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/86.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/86.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/86.png
87	dewgong	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/87.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/87.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/87.png
88	grimer	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/88.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/88.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/88.png
89	muk	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/89.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/89.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/89.png
90	shellder	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/90.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/90.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/90.png
91	cloyster	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/91.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/91.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/91.png
92	gastly	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/92.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/92.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/92.png
93	haunter	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/93.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/93.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/93.png
94	gengar	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/94.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/94.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/94.png
95	onix	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/95.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/95.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/95.png
96	drowzee	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/96.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/96.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/96.png
97	hypno	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/97.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/97.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/97.png
98	krabby	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/98.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/98.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/98.png
99	kingler	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/99.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/99.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/99.png
100	voltorb	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/100.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/100.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/100.png
101	electrode	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/101.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/101.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/101.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/101.png
102	exeggcute	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/102.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/102.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/102.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/102.png
103	exeggutor	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/103.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/103.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/103.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/103.png
104	cubone	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/104.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/104.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/104.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/104.png
105	marowak	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/105.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/105.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/105.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/105.png
106	hitmonlee	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/106.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/106.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/106.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/106.png
107	hitmonchan	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/107.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/107.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/107.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/107.png
108	lickitung	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/108.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/108.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/108.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/108.png
109	koffing	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/109.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/109.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/109.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/109.png
110	weezing	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/110.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/110.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/110.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/110.png
111	rhyhorn	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/111.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/111.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/111.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/111.png
112	rhydon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/112.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/112.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/112.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/112.png
113	chansey	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/113.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/113.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/113.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/113.png
114	tangela	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/114.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/114.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/114.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/114.png
115	kangaskhan	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/115.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/115.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/115.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/115.png
116	horsea	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/116.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/116.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/116.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/116.png
117	seadra	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/117.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/117.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/117.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/117.png
118	goldeen	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/118.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/118.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/118.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/118.png
119	seaking	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/119.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/119.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/119.png
120	staryu	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/120.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/120.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/120.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/120.png
121	starmie	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/121.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/121.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/121.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/121.png
122	mr-mime	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/122.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/122.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/122.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/122.png
123	scyther	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/123.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/123.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/123.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/123.png
124	jynx	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/124.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/124.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/124.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/124.png
125	electabuzz	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/125.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/125.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/125.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/125.png
126	magmar	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/126.png
127	pinsir	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/127.png
128	tauros	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/128.png
129	magikarp	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/129.png
130	gyarados	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/130.png
131	lapras	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/131.png
132	ditto	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/132.png
133	eevee	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/133.png
134	vaporeon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/134.png
135	jolteon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/135.png
136	flareon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/136.png
137	porygon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/137.png
138	omanyte	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/138.png
139	omastar	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/139.png
140	kabuto	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/140.png
141	kabutops	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/141.png
142	aerodactyl	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/142.png
143	snorlax	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/143.png
144	articuno	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/144.png
145	zapdos	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/145.png
146	moltres	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/146.png
147	dratini	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/147.png
148	dragonair	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/148.png
149	dragonite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/149.png
150	mewtwo	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/150.png
151	magmar	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/126.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/126.png
152	pinsir	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/127.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/127.png
153	tauros	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/128.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/128.png
154	magikarp	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/129.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/129.png
155	gyarados	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/130.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/130.png
156	lapras	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/131.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/131.png
157	ditto	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/132.png
158	eevee	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/133.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/133.png
159	vaporeon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/134.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/134.png
160	jolteon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/135.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/135.png
161	flareon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/136.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/136.png
162	porygon	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/137.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/137.png
163	omanyte	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/138.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/138.png
164	omastar	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/139.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/139.png
165	kabuto	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/140.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/140.png
166	kabutops	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/141.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/141.png
167	aerodactyl	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/142.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/142.png
168	snorlax	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/143.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/143.png
169	articuno	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/144.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/144.png
170	zapdos	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/145.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/145.png
171	moltres	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/146.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/146.png
172	dratini	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/147.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/147.png
173	dragonair	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/148.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/148.png
174	dragonite	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/149.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/149.png
175	mewtwo	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/150.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/150.png
176	mew	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/151.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/151.png	https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/151.png
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
1	1	246	1
2	1	318	1
3	2	14	2
4	2	74	1
5	2	96	1
6	2	159	1
7	2	207	2
8	2	232	1
9	2	246	1
10	2	309	1
11	2	318	1
12	2	336	1
13	2	339	1
14	2	349	1
15	2	508	1
16	2	526	1
17	2	563	1
18	2	612	1
19	2	45	-1
20	2	62	-1
21	2	204	-2
22	2	276	-1
23	2	297	-2
24	2	321	-1
25	2	568	-1
26	2	575	-1
27	2	583	-1
28	2	589	-1
29	2	599	-1
30	2	608	-1
31	3	106	1
32	3	110	1
33	3	111	1
34	3	112	2
35	3	151	2
36	3	211	1
37	3	246	1
38	3	318	1
39	3	322	1
40	3	334	2
41	3	339	1
42	3	455	1
43	3	538	3
44	3	579	1
45	3	591	1
46	3	602	1
47	3	39	-1
48	3	43	-1
49	3	103	-2
50	3	231	-1
51	3	242	-1
52	3	249	-1
53	3	276	-1
54	3	306	-1
55	3	321	-1
56	3	370	-1
57	3	534	-1
58	3	557	-1
59	4	74	1
60	4	246	1
61	4	260	1
62	4	294	3
63	4	318	1
64	4	347	1
65	4	417	2
66	4	451	1
67	4	526	1
68	4	552	1
69	4	563	1
70	4	601	2
71	4	296	-1
72	4	315	-2
73	4	354	-2
74	4	434	-2
75	4	437	-2
76	4	445	-2
77	4	522	-1
78	4	555	-1
79	4	568	-1
80	4	575	-1
81	4	585	-1
82	4	590	-1
83	4	595	-1
84	4	598	-2
85	4	599	-1
86	5	133	2
87	5	246	1
88	5	268	1
89	5	318	1
90	5	322	1
91	5	347	1
92	5	455	1
93	5	597	1
94	5	601	2
95	5	602	1
96	5	51	-1
97	5	94	-1
98	5	247	-1
99	5	295	-1
100	5	313	-2
101	5	319	-2
102	5	370	-1
103	5	405	-1
104	5	411	-1
105	5	412	-1
106	5	414	-1
107	5	430	-1
108	5	557	-1
109	6	97	2
110	6	246	1
111	6	318	1
112	6	349	1
113	6	397	2
114	6	508	2
115	6	601	2
116	6	61	-1
117	6	81	-2
118	6	132	-1
119	6	145	-1
120	6	178	-2
121	6	184	-2
122	6	196	-1
123	6	317	-1
124	6	341	-1
125	6	359	-1
126	6	523	-1
127	6	527	-1
128	6	549	-1
129	6	557	-1
130	6	599	-1
131	7	28	-1
132	7	108	-1
133	7	134	-1
134	7	148	-1
135	7	189	-1
136	7	190	-1
137	7	330	-1
138	7	426	-1
139	7	429	-1
140	7	536	-1
141	7	539	-1
142	8	104	1
143	8	107	2
144	8	230	-2
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: colesayer
--

COPY stats (id, name) FROM stdin;
1	hp
2	attack
3	defense
4	special-attack
5	special-defense
6	speed
7	accuracy
8	evasion
\.


--
-- Name: moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('moves_id_seq', 745, true);


--
-- Name: pokemon_moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemon_moves_id_seq', 13306, true);


--
-- Name: pokemon_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemon_stats_id_seq', 1056, true);


--
-- Name: pokemons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('pokemons_id_seq', 176, true);


--
-- Name: stat_moves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('stat_moves_id_seq', 144, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colesayer
--

SELECT pg_catalog.setval('stats_id_seq', 8, true);


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

