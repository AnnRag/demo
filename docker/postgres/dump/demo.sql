--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;




--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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

--
-- PostgreSQL database dump complete
--

--
-- Database "demo" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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

--
-- Name: demo; Type: DATABASE; Schema: -; Owner: user
--

ALTER DATABASE demo OWNER TO "user";

\connect demo

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
-- Name: books; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title text,
    author text,
    genre text,
    subgenre text,
    height integer,
    publisher text
);


ALTER TABLE public.books OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO "user";

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.books (id, title, author, genre, subgenre, height, publisher) FROM stdin;
1	Fundamentals of Wavelets	Goswami, Jaideva	tech	signal_processing	228	Wiley
2	Data Smart	Foreman, John	tech	data_science	235	Wiley
3	God Created the Integers	Hawking, Stephen	tech	mathematics	197	Penguin
4	Superfreakonomics	Dubner, Stephen	science	economics	179	HarperCollins
5	Orientalism	Said, Edward	nonfiction	history	197	Penguin
6	Nature of Statistical Learning Theory, The	Vapnik, Vladimir	tech	data_science	230	Springer
7	Integration of the Indian States	Menon, V P	nonfiction	history	217	Orient Blackswan
8	Drunkard's Walk, The	Mlodinow, Leonard	science	mathematics	197	Penguin
9	Image Processing & Mathematical Morphology	Shih, Frank	tech	signal_processing	241	CRC
10	How to Think Like Sherlock Holmes	Konnikova, Maria	nonfiction	psychology	240	Penguin
11	Data Scientists at Work	Sebastian Gutierrez	tech	data_science	230	Apress
12	Slaughterhouse Five	Vonnegut, Kurt	fiction	classic	198	Random House
13	Birth of a Theorem	Villani, Cedric	science	mathematics	234	Bodley Head
14	Structure & Interpretation of Computer Programs	Sussman, Gerald	tech	computer_science	240	MIT Press
15	Age of Wrath, The	Eraly, Abraham	nonfiction	history	238	Penguin
16	Trial, The	Kafka, Frank	fiction	classic	198	Random House
17	Statistical Decision Theory'	Pratt, John	tech	data_science	236	MIT Press
18	Data Mining Handbook	Nisbet, Robert	tech	data_science	242	Apress
19	New Machiavelli, The	Wells, H. G.	fiction	novel	180	Penguin
20	Physics & Philosophy	Heisenberg, Werner	philosophy	science	197	Penguin
21	Making Software	Oram, Andy	tech	computer_science	232	O'Reilly
22	Analysis, Vol I	Tao, Terence	tech	mathematics	248	HBA
23	Machine Learning for Hackers	Conway, Drew	tech	data_science	233	O'Reilly
24	Signal and the Noise, The	Silver, Nate	tech	data_science	233	Penguin
25	Python for Data Analysis	McKinney, Wes	tech	data_science	233	O'Reilly
26	Introduction to Algorithms	Cormen, Thomas	tech	computer_science	234	MIT Press
27	Beautiful and the Damned, The	Deb, Siddhartha	nonfiction	history	198	Penguin
28	Outsider, The	Camus, Albert	fiction	classic	198	Penguin
29	Complete Sherlock Holmes, The - Vol I	Doyle, Arthur Conan	fiction	classic	176	Random House
30	Complete Sherlock Holmes, The - Vol II	Doyle, Arthur Conan	fiction	classic	176	Random House
31	Wealth of Nations, The	Smith, Adam	science	economics	175	Random House
32	Pillars of the Earth, The	Follett, Ken	fiction	novel	176	Random House
33	Mein Kampf	Hitler, Adolf	nonfiction	autobiography	212	Rupa
34	Tao of Physics, The	Capra, Fritjof	science	physics	179	Penguin
35	Surely You're Joking Mr Feynman	Feynman, Richard	science	physics	198	Random House
36	Farewell to Arms, A	Hemingway, Ernest	fiction	classic	179	Rupa
37	Veteran, The	Forsyth, Frederick	fiction	novel	177	Transworld
38	False Impressions	Archer, Jeffery	fiction	novel	177	Pan
39	Last Lecture, The	Pausch, Randy	nonfiction	autobiography	197	Hyperion
40	Return of the Primitive	Rand, Ayn	philosophy	objectivism	202	Penguin
41	Jurassic Park	Crichton, Michael	fiction	novel	174	Random House
42	Russian Journal, A	Steinbeck, John	nonfiction	history	196	Penguin
43	Tales of Mystery and Imagination	Poe, Edgar Allen	fiction	classic	172	HarperCollins
44	Freakonomics	Dubner, Stephen	science	economics	197	Penguin
45	Hidden Connections, The	Capra, Fritjof	science	physics	197	HarperCollins
46	Story of Philosophy, The	Durant, Will	philosophy	history	170	Pocket
47	Asami Asami	Deshpande, P L	fiction	novel	205	Mauj
48	Journal of a Novel	Steinbeck, John	fiction	classic	196	Penguin
49	Once There Was a War	Steinbeck, John	nonfiction	history	196	Penguin
50	Moon is Down, The	Steinbeck, John	fiction	classic	196	Penguin
51	Brethren, The	Grisham, John	fiction	novel	174	Random House
52	In a Free State	Naipaul, V. S.	fiction	novel	196	Rupa
53	Catch 22	Heller, Joseph	fiction	classic	178	Random House
54	Complete Mastermind, The	BBC	nonfiction	trivia	178	BBC
55	Dylan on Dylan	Dylan, Bob	nonfiction	autobiography	197	Random House
56	Soft Computing & Intelligent Systems	Gupta, Madan	tech	data_science	242	Elsevier
57	Textbook of Economic Theory	Stonier, Alfred	tech	economics	242	Pearson
58	Econometric Analysis	Greene, W. H.	tech	economics	242	Pearson
59	Learning OpenCV	Bradsky, Gary	tech	signal_processing	232	O'Reilly
60	Data Structures Using C & C++	Tanenbaum, Andrew	tech	computer_science	235	Prentice Hall
61	Computer Vision, A Modern Approach	Forsyth, David	tech	signal_processing	255	Pearson
62	Principles of Communication Systems	Taub, Schilling	tech	signal_processing	240	TMH
63	Let Us C	Kanetkar, Yashwant	tech	computer_science	213	Prentice Hall
64	Amulet of Samarkand, The	Stroud, Jonathan	fiction	novel	179	Random House
65	Crime and Punishment	Dostoevsky, Fyodor	fiction	classic	180	Penguin
66	Angels & Demons	Brown, Dan	fiction	novel	178	Random House
67	Argumentative Indian, The	Sen, Amartya	nonfiction	history	209	Picador
68	Sea of Poppies	Ghosh, Amitav	fiction	novel	197	Penguin
69	Idea of Justice, The	Sen, Amartya	philosophy	economics	212	Penguin
70	Raisin in the Sun, A	Hansberry, Lorraine	fiction	novel	175	Penguin
71	All the President's Men	Woodward, Bob	nonfiction	history	177	Random House
72	Prisoner of Birth, A	Archer, Jeffery	fiction	novel	176	Pan
73	Scoop!	Nayar, Kuldip	nonfiction	history	216	HarperCollins
74	Ahe Manohar Tari	Deshpande, Sunita	nonfiction	autobiography	213	Mauj
75	Last Mughal, The	Dalrymple, William	nonfiction	history	199	Penguin
76	Social Choice & Welfare, Vol 39 No. 1	Various	tech	economics	235	Springer
77	Radiowaril Bhashane & Shrutika	Deshpande, P L	nonfiction	misc	213	Mauj
78	Gun Gayin Awadi	Deshpande, P L	nonfiction	misc	212	Mauj
79	Aghal Paghal	Deshpande, P L	nonfiction	misc	212	Mauj
80	Maqta-e-Ghalib	Garg, Sanjay	nonfiction	poetry	221	Mauj
81	Beyond Degrees	\N	philosophy	education	222	HarperCollins
82	Manasa	Kale, V P	nonfiction	misc	213	Mauj
83	India from Midnight to Milennium	Tharoor, Shashi	nonfiction	history	198	Penguin
84	World's Greatest Trials, The	\N	nonfiction	history	210	\N
85	Great Indian Novel, The	Tharoor, Shashi	fiction	novel	198	Penguin
86	O Jerusalem!	Lapierre, Dominique	nonfiction	history	217	vikas
87	City of Joy, The	Lapierre, Dominique	fiction	novel	177	vikas
88	Freedom at Midnight	Lapierre, Dominique	nonfiction	history	167	vikas
89	Winter of Our Discontent, The	Steinbeck, John	fiction	classic	196	Penguin
90	On Education	Russell, Bertrand	philosophy	education	203	Routledge
91	Free Will	Harris, Sam	nonfiction	psychology	203	FreePress
92	Bookless in Baghdad	Tharoor, Shashi	nonfiction	history	206	Penguin
93	Case of the Lame Canary, The	Gardner, Earle Stanley	fiction	novel	179	\N
94	Theory of Everything, The	Hawking, Stephen	science	physics	217	Jaico
95	New Markets & Other Essays	Drucker, Peter	science	economics	176	Penguin
96	Electric Universe	Bodanis, David	science	physics	201	Penguin
97	Hunchback of Notre Dame, The	Hugo, Victor	fiction	classic	175	Random House
98	Burning Bright	Steinbeck, John	fiction	classic	175	Penguin
99	Age of Discontuinity, The	Drucker, Peter	nonfiction	economics	178	Random House
100	Doctor in the Nude	Gordon, Richard	fiction	novel	179	Penguin
101	Down and Out in Paris & London	Orwell, George	nonfiction	autobiography	179	Penguin
102	Identity & Violence	Sen, Amartya	philosophy	philosophy	219	Penguin
103	Beyond the Three Seas	Dalrymple, William	nonfiction	history	197	Random House
104	World's Greatest Short Stories, The	\N	fiction	classic	217	Jaico
105	Talking Straight	Iacoca, Lee	nonfiction	autobiography	175	\N
106	Maugham's Collected Short Stories, Vol 3	Maugham, William S	fiction	classic	171	Vintage
107	Phantom of Manhattan, The	Forsyth, Frederick	fiction	classic	180	\N
108	Ashenden of The British Agent	Maugham, William S	fiction	classic	160	Vintage
109	Zen & The Art of Motorcycle Maintenance	Pirsig, Robert	philosophy	autobiography	172	Vintage
110	Great War for Civilization, The	Fisk, Robert	nonfiction	history	197	HarperCollins
111	We the Living	Rand, Ayn	fiction	novel	178	Penguin
112	Artist and the Mathematician, The	Aczel, Amir	science	mathematics	186	HighStakes
113	History of Western Philosophy	Russell, Bertrand	philosophy	philosophy	213	Routledge
114	Selected Short Stories	\N	fiction	classic	215	Jaico
115	Rationality & Freedom	Sen, Amartya	science	economics	213	Springer
116	Clash of Civilizations and Remaking of the World Order	Huntington, Samuel	nonfiction	history	228	Simon&Schuster
117	Uncommon Wisdom	Capra, Fritjof	nonfiction	anthology	197	Fontana
118	One	Bach, Richard	nonfiction	autobiography	172	Dell
119	Karl Marx Biography	\N	nonfiction	autobiography	162	\N
120	To Sir With Love	Braithwaite	fiction	classic	197	Penguin
121	Half A Life	Naipaul, V S	fiction	novel	196	\N
122	Discovery of India, The	Nehru, Jawaharlal	nonfiction	history	230	\N
123	Apulki	Deshpande, P L	nonfiction	misc	211	\N
124	Unpopular Essays	Russell, Bertrand	philosophy	philosophy	198	\N
125	Deceiver, The	Forsyth, Frederick	fiction	novel	178	\N
126	Veil: Secret Wars of the CIA	Woodward, Bob	nonfiction	history	171	\N
127	Char Shabda	Deshpande, P L	nonfiction	misc	214	\N
128	Rosy is My Relative	Durrell, Gerald	fiction	novel	176	\N
129	Moon and Sixpence, The	Maugham, William S	fiction	classic	180	\N
130	Political Philosophers	\N	philosophy	politics	162	\N
131	Short History of the World, A	Wells, H G	nonfiction	history	197	\N
132	Trembling of a Leaf, The	Maugham, William S	fiction	novel	205	\N
133	Doctor on the Brain	Gordon, Richard	fiction	novel	204	\N
134	Simpsons & Their Mathematical Secrets	Singh, Simon	science	mathematics	233	\N
135	Pattern Classification	Duda, Hart	tech	data_science	241	\N
136	From Beirut to Jerusalem	Friedman, Thomas	nonfiction	history	202	\N
137	Code Book, The	Singh, Simon	science	mathematics	197	\N
138	Age of the Warrior, The	Fisk, Robert	nonfiction	history	197	\N
139	Final Crisis	\N	fiction	comic	257	\N
140	Killing Joke, The	\N	fiction	comic	283	\N
141	Flashpoint	\N	fiction	comic	265	\N
142	Batman Earth One	\N	fiction	comic	265	\N
143	Crisis on Infinite Earths	\N	fiction	comic	258	\N
144	Numbers Behind Numb3rs, The	Devlin, Keith	science	mathematics	202	\N
145	Superman Earth One - 1	\N	fiction	comic	259	\N
146	Superman Earth One - 2	\N	fiction	comic	258	\N
147	Justice League: Throne of Atlantis	\N	fiction	comic	258	\N
148	Justice League: The Villain's Journey	\N	fiction	comic	258	\N
149	Death of Superman, The	\N	fiction	comic	258	\N
150	History of the DC Universe	\N	fiction	comic	258	\N
151	Batman: The Long Halloween	\N	fiction	comic	258	\N
152	Life in Letters, A	Steinbeck, John	nonfiction	autobiography	196	\N
153	Information, The	Gleick, James	science	mathematics	233	\N
154	Journal of Economics, vol 106 No 3	\N	science	economics	235	\N
155	Elements of Information Theory	Thomas, Joy	tech	signal_processing	229	\N
156	Power Electronics - Rashid	Rashid, Muhammad	tech	computer_science	235	\N
157	Power Electronics - Mohan	Mohan, Ned	tech	computer_science	237	\N
158	Neural Networks	Haykin, Simon	tech	data_science	240	\N
159	Grapes of Wrath, The	Steinbeck, John	fiction	classic	196	\N
160	Vyakti ani Valli	Deshpande, P L	nonfiction	misc	211	\N
161	Statistical Learning Theory	Vapnik, Vladimir	tech	data_science	228	\N
162	Empire of the Mughal - The Tainted Throne	Rutherford, Alex	nonfiction	history	180	\N
163	Empire of the Mughal - Brothers at War	Rutherford, Alex	nonfiction	history	180	\N
164	Empire of the Mughal - Ruler of the World	Rutherford, Alex	nonfiction	history	180	\N
165	Empire of the Mughal - The Serpent's Tooth	Rutherford, Alex	nonfiction	history	180	\N
166	Empire of the Mughal - Raiders from the North	Rutherford, Alex	nonfiction	history	180	\N
167	Mossad	Baz-Zohar, Michael	nonfiction	history	236	\N
168	Jim Corbett Omnibus	Corbett, Jim	nonfiction	history	223	\N
169	20000 Leagues Under the Sea	Verne, Jules	fiction	novel	190	\N
170	Batatyachi Chal	Deshpande P L	fiction	novel	200	\N
171	Hafasavnuk	Deshpande P L	fiction	novel	211	\N
172	Urlasurla	Deshpande P L	fiction	novel	211	\N
173	Pointers in C	Kanetkar, Yashwant	tech	computer_science	213	\N
174	Cathedral and the Bazaar, The	Raymond, Eric	tech	computer_science	217	\N
175	Design with OpAmps	Franco, Sergio	tech	computer_science	240	\N
176	Think Complexity	Downey, Allen	tech	data_science	230	\N
177	Devil's Advocate, The	West, Morris	fiction	novel	178	\N
178	Ayn Rand Answers	Rand, Ayn	philosophy	objectivism	203	\N
179	Philosophy: Who Needs It	Rand, Ayn	philosophy	objectivism	171	\N
180	World's Great Thinkers, The	\N	science	physics	189	\N
181	Data Analysis with Open Source Tools	Janert, Phillip	tech	data_science	230	\N
182	Broca's Brain	Sagan, Carl	science	physics	174	\N
183	Men of Mathematics	Bell, E T	science	mathematics	217	\N
184	Oxford book of Modern Science Writing	Dawkins, Richard	science	science	240	\N
185	Justice, Judiciary and Democracy	Ranjan, Sudhanshu	nonfiction	legal	224	\N
186	Arthashastra, The	Kautiyla	philosophy	philosophy	214	\N
187	We the People	Palkhivala	philosophy	philosophy	216	\N
188	We the Nation	Palkhivala	philosophy	philosophy	216	\N
189	Courtroom Genius, The	Sorabjee	nonfiction	autobiography	217	\N
190	Dongri to Dubai	Zaidi, Hussain	nonfiction	history	216	\N
191	History of England, Foundation	Ackroyd, Peter	nonfiction	history	197	\N
192	City of Djinns	Dalrymple, William	nonfiction	history	198	\N
193	India's Legal System	Nariman	nonfiction	legal	177	\N
194	More Tears to Cry	Sassoon, Jean	fiction	novel	235	\N
195	Ropemaker, The	Dickinson, Peter	fiction	novel	196	\N
196	Angels & Demons	Brown, Dan	fiction	novel	170	\N
197	Judge, The	\N	fiction	novel	170	\N
198	Attorney, The	\N	fiction	novel	170	\N
199	Prince, The	Machiavelli	fiction	classic	173	\N
200	Eyeless in Gaza	Huxley, Aldous	fiction	novel	180	\N
201	Tales of Beedle the Bard	Rowling, J K	fiction	novel	184	\N
202	Girl with the Dragon Tattoo	Larsson, Steig	fiction	novel	179	\N
203	Girl who kicked the Hornet's Nest	Larsson, Steig	fiction	novel	179	\N
204	Girl who played with Fire	Larsson, Steig	fiction	novel	179	\N
205	Batman Handbook	\N	fiction	comic	270	\N
206	Murphy's Law	\N	philosophy	psychology	178	\N
207	Structure and Randomness	Tao, Terence	science	mathematics	252	\N
208	Image Processing with MATLAB	Eddins, Steve	tech	signal_processing	241	\N
209	Animal Farm	Orwell, George	fiction	classic	180	\N
210	Idiot, The	Dostoevsky, Fyodor	fiction	classic	197	\N
211	Christmas Carol, A	Dickens, Charles	fiction	classic	196	\N
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.books_id_seq', 211, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

