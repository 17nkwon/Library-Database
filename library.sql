--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-12-08 16:46:53

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

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 41104)
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    author_id bigint NOT NULL,
    author_name character varying(50),
    birth_date date,
    gender character varying(25),
    number_of_books_written integer,
    place_of_birth character varying(50)
);


--
-- TOC entry 202 (class 1259 OID 41102)
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authors_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 202
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;


--
-- TOC entry 206 (class 1259 OID 41119)
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    title character varying(100),
    date_published date,
    publisher character varying(50),
    number_of_pages integer,
    rating numeric(3,2),
    isbn character varying(10) NOT NULL,
    author_id integer,
    genre_id integer
);


--
-- TOC entry 205 (class 1259 OID 41112)
-- Name: genres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genres (
    genre_id bigint NOT NULL,
    genre character varying(50),
    fiction_nonfiction character varying(10),
    CONSTRAINT fiction_nonfiction CHECK (((fiction_nonfiction)::text = ANY ((ARRAY['fiction'::character varying, 'nonfiction'::character varying])::text[])))
);


--
-- TOC entry 204 (class 1259 OID 41110)
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 204
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- TOC entry 2697 (class 2604 OID 41107)
-- Name: authors author_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- TOC entry 2698 (class 2604 OID 41115)
-- Name: genres genre_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- TOC entry 2835 (class 0 OID 41104)
-- Dependencies: 203
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (1, 'Suzzane Collins', '1962-08-10', 'Female', 12, 'Hartford Connecticut USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (2, 'J.K. Rowling', '1965-07-31', 'Female', 32, 'Yate Gloucestershire England');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (3, 'Stephenie Meyer', '1973-12-24', 'Female', 12, 'Hartford Connecticut USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (4, 'Jane Austen', '1775-12-16', 'Female', 40, 'Steventon Rectory Hampshire England');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (5, 'Harper Lee', '1926-04-28', 'Female', 2, 'Monroeville Alabama USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (6, 'Veronica Roth', '1988-08-19', 'Female', 12, 'New York City New York USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (7, 'George Orwell', '1903-06-25', 'Male', 9, 'Moithari Bengal Presidency British India');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (8, 'Francis Scott Key Fitzgerald', '1896-09-24', 'Male', 8, 'St. Paul Minnesota USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (9, 'Annelies Marie Frank', '1929-06-12', 'Female', 1, 'Frankfurt Prussia Weimar Republic');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (10, 'Susan Cain', '1968-03-20', 'Female', 7, 'USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (11, 'Rebecca Skloot', '1972-09-19', 'Female', 2, 'Springfield Illinois USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (12, 'Yuval Noah Harari', '1976-02-24', 'Male', 15, 'Kiryat Atta Israel');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (13, 'Steven D. Levitt', '1967-05-29', 'Male', 4, 'New Orleans Lousiana USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (14, 'C.S Lewis', '1898-11-29', 'Male', 40, 'Belfast United Kingdom');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (15, 'Dan Brown', '1964-06-22', 'Male', 8, 'Exeter New Hampshire USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (16, 'Charlotte Brontë', '1816-04-21', 'Female', 4, 'Thornton England');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (17, 'Louisa May Alcott', '1832-11-29', 'Female', 32, 'Germantown Pennsylvania USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (18, 'Lois Lowry', '1937-03-20', 'Female', 44, 'Honolulu Hawaii USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (19, 'Ray Bradbury', '1920-08-22', 'Male', 27, 'Waukegan Illinois USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (20, 'Elie Wiesel', '1928-09-30', 'Male', 57, 'Sighet Kingdom of Romania');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (21, 'Ta-Nehisi Coates', '1975-09-30', 'Male', 5, 'Baltimore Maryland USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (22, 'Margaret Mitchell', '1900-11-08', 'Female', 1, 'Atlanta Georgia USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (23, 'Jon Krakauer', '1954-04-12', 'Male', 7, 'Brookline Massachusetts USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (24, 'Jared Diamond', '1937-09-10', 'Male', 8, 'Boston Massachusetts USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (25, 'Erik Larson', '1954-01-03', 'Male', 8, 'Brooklyn New York USA');
INSERT INTO public.authors (author_id, author_name, birth_date, gender, number_of_books_written, place_of_birth) VALUES (26, 'Elizabeth Gilbert', '1969-07-18', 'Female', 3, 'Waterbury Connecticut USA');


--
-- TOC entry 2838 (class 0 OID 41119)
-- Dependencies: 206
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Hunger Games', '2008-09-14', 'Scholastic Press', 374, 4.33, '0439023489', 1, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Catching Fire', '2009-09-01', 'Scholastic Press', 391, 4.29, '0439023491', 1, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Mockingjay', '2010-09-24', 'Scholastic Press', 390, 4.04, '0439023513', 1, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Harry Potter and the Sorcerer''s Stone', '1997-06-26', 'Scholastic Inc', 309, 4.47, '0439554930', 2, 2);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Twilight', '2005-10-05', 'Little, Brown and Company', 501, 3.60, '0316015849', 3, 3);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Pride and Prejudice', '1813-01-28', 'Modern Library', 279, 4.26, '0679783268', 4, 4);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('To Kill a Mockingbird', '1960-07-11', 'Harper Perennial Modern Classics', 324, 4.28, '1439550417', 5, 5);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Divergent', '2011-04-25', 'Katherine Tegan Books', 487, 4.19, '0062024035', 6, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('1984', '1949-06-08', 'Houghton Mifflin Harcourt', 237, 4.19, '0141391700', 7, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Great Gatsby', '1925-04-10', 'Scribner', 200, 3.92, '0743273567', 8, 6);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Diary of a Young Girl', '1947-06-25', 'Bantam', 283, 4.15, '0141039824', 9, 7);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Quiet: The Power of Introverts in a World That Can''t Stop Talking', '2012-01-24', 'Crown Publishing Group/Random House Inc.', 333, 4.06, '0307352145', 10, 8);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Immortal Life of Henrietta Lacks', '2010-02-02', 'Crown Publishing Group', 370, 4.07, '1400052173', 11, 9);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Sapiens: A Brief History of Humankind', '2011-01-01', 'Dvir Publishing House', 498, 4.41, '0062316095', 12, 7);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Freakonomics: A Rogue Economist Explores the Hidden Side of Everything', '2006-10-17', 'William Morrow Paperbacks', 320, 3.98, '0060731338', 13, 10);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Lion, the Witch and the Wardrobe', '1950-10-16', 'Geoffrey Bles', 206, 4.22, '0915134292', 14, 2);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Da Vinci Code', '2006-03-28', 'Anchor', 489, 3.86, '0307474275', 15, 11);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Jane Eyre', '1847-10-16', 'Smith, Elder & Co.', 532, 4.13, '0142437204', 16, 12);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Little Women', '1868-09-30', 'Roberts Brothers', 449, 4.09, '0451529308', 17, 12);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Giver', '1993-04-26', 'Houghton Mifflin', 208, 4.13, '0385732554', 18, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Fahrenheit 451', '1953-10-19', 'Ballantine Books', 256, 3.99, '1451673310', 19, 1);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Night', '2006-01-16', 'Hill & Wang', 115, 4.34, '0374500010', 20, 7);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Between the World and Me', '2015-07-14', 'Spiegel & Grau', 152, 4.39, '0812993543', 21, 7);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Gone with the Wind', '1936-06-30', 'Macmillan Publishers', 1037, 4.30, '0446675539', 22, 6);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Into the Wild', '1996-01-13', 'Anchor Books', 207, 3.99, '0385486804', 23, 13);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Guns, Germs, and Steel: The Fates of Human Societies', '1997-05-09', 'W.W. Norton & Company', 425, 4.03, '0739467352', 24, 9);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('The Devil in the White City: Murder, Magic, and Madness at the Fair That Changed America', '2003-02-11', 'Crown Publishers', 447, 3.99, '0609608444', 25, 14);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Eat, Pray, Love', '2006-02-16', 'Riverhead Books', 368, 3.57, '0143038419', 26, 15);
INSERT INTO public.books (title, date_published, publisher, number_of_pages, rating, isbn, author_id, genre_id) VALUES ('Breaking Dawn', '2008-08-02', 'Little, Brown and Company', 756, 3.70, '031606792X', 3, 3);


--
-- TOC entry 2837 (class 0 OID 41112)
-- Dependencies: 205
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (1, 'dystopian', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (2, 'fantasy/adventure', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (3, 'romance/horror', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (4, 'romance', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (5, 'southern gothic', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (6, 'historical/romance', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (7, 'historical', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (8, 'pyschology', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (9, 'historical/science', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (10, 'economics', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (11, 'mystery', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (12, 'bildungsroman', 'fiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (13, 'biography/adventure', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (14, 'history/mystery', 'nonfiction');
INSERT INTO public.genres (genre_id, genre, fiction_nonfiction) VALUES (15, 'memoir/travel', 'nonfiction');


--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 202
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 1, false);


--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 204
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 1, false);


--
-- TOC entry 2701 (class 2606 OID 41109)
-- Name: authors author_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT author_key PRIMARY KEY (author_id);


--
-- TOC entry 2703 (class 2606 OID 41118)
-- Name: genres genre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genre_key PRIMARY KEY (genre_id);


--
-- TOC entry 2705 (class 2606 OID 41123)
-- Name: books isbn_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT isbn_key PRIMARY KEY (isbn);


--
-- TOC entry 2706 (class 2606 OID 41124)
-- Name: books author_key; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT author_key FOREIGN KEY (author_id) REFERENCES public.authors(author_id);


--
-- TOC entry 2707 (class 2606 OID 41129)
-- Name: books genre_key; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT genre_key FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id);


-- Completed on 2020-12-08 16:46:53

--
-- PostgreSQL database dump complete
--

