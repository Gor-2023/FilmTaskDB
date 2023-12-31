PGDMP                         {            Film_Site2     14.8    15.3 o    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            y           1262    57511    Film_Site2     DATABASE     �   CREATE DATABASE "Film_Site2 " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1252';
    DROP DATABASE "Film_Site2 ";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            z           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    57532    actores    TABLE     V   CREATE TABLE public.actores (
    id integer NOT NULL,
    actor character varying
);
    DROP TABLE public.actores;
       public         heap    postgres    false    4            �            1259    57531    actores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.actores_id_seq;
       public          postgres    false    4    214            {           0    0    actores_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.actores_id_seq OWNED BY public.actores.id;
          public          postgres    false    213            �            1259    57629    bridge_actores    TABLE     m   CREATE TABLE public.bridge_actores (
    id integer NOT NULL,
    movie_id integer,
    actore_id integer
);
 "   DROP TABLE public.bridge_actores;
       public         heap    postgres    false    4            �            1259    57628    bridge_actores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_actores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bridge_actores_id_seq;
       public          postgres    false    4    230            |           0    0    bridge_actores_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bridge_actores_id_seq OWNED BY public.bridge_actores.id;
          public          postgres    false    229            �            1259    57612    bridge_genres    TABLE     k   CREATE TABLE public.bridge_genres (
    id integer NOT NULL,
    movie_id integer,
    genre_id integer
);
 !   DROP TABLE public.bridge_genres;
       public         heap    postgres    false    4            �            1259    57611    bridge_genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.bridge_genres_id_seq;
       public          postgres    false    228    4            }           0    0    bridge_genres_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.bridge_genres_id_seq OWNED BY public.bridge_genres.id;
          public          postgres    false    227            �            1259    57646    bridge_reviews    TABLE     m   CREATE TABLE public.bridge_reviews (
    id integer NOT NULL,
    movie_id integer,
    review_id integer
);
 "   DROP TABLE public.bridge_reviews;
       public         heap    postgres    false    4            �            1259    57645    bridge_reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bridge_reviews_id_seq;
       public          postgres    false    232    4            ~           0    0    bridge_reviews_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bridge_reviews_id_seq OWNED BY public.bridge_reviews.id;
          public          postgres    false    231            �            1259    57574    bridge_score    TABLE        CREATE TABLE public.bridge_score (
    id integer NOT NULL,
    user_id integer,
    movie_id integer,
    score_id integer
);
     DROP TABLE public.bridge_score;
       public         heap    postgres    false    4            �            1259    57573    bridge_score_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_score_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.bridge_score_id_seq;
       public          postgres    false    222    4                       0    0    bridge_score_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.bridge_score_id_seq OWNED BY public.bridge_score.id;
          public          postgres    false    221            �            1259    57663    bridge_usercom    TABLE     �   CREATE TABLE public.bridge_usercom (
    id integer NOT NULL,
    user_id integer,
    movie_id integer,
    comment_id integer
);
 "   DROP TABLE public.bridge_usercom;
       public         heap    postgres    false    4            �            1259    57662    bridge_usercom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bridge_usercom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.bridge_usercom_id_seq;
       public          postgres    false    4    234            �           0    0    bridge_usercom_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.bridge_usercom_id_seq OWNED BY public.bridge_usercom.id;
          public          postgres    false    233            �            1259    57596    comments    TABLE     ^   CREATE TABLE public.comments (
    id integer NOT NULL,
    comment character varying(250)
);
    DROP TABLE public.comments;
       public         heap    postgres    false    4            �            1259    57595    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    224    4            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    223            �            1259    57523    genres    TABLE     U   CREATE TABLE public.genres (
    id integer NOT NULL,
    genre character varying
);
    DROP TABLE public.genres;
       public         heap    postgres    false    4            �            1259    57522    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    4    212            �           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          postgres    false    211            �            1259    57513    movies    TABLE     �   CREATE TABLE public.movies (
    id integer NOT NULL,
    mov_name character varying,
    released_date integer,
    duration integer,
    rating integer
);
    DROP TABLE public.movies;
       public         heap    postgres    false    4            �            1259    57512    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    210    4            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    209            �            1259    57603    reviews    TABLE     W   CREATE TABLE public.reviews (
    id integer NOT NULL,
    review character varying
);
    DROP TABLE public.reviews;
       public         heap    postgres    false    4            �            1259    57602    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    4    226            �           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    225            �            1259    57567    score    TABLE     J   CREATE TABLE public.score (
    id integer NOT NULL,
    score integer
);
    DROP TABLE public.score;
       public         heap    postgres    false    4            �            1259    57566    score_id_seq    SEQUENCE     �   CREATE SEQUENCE public.score_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.score_id_seq;
       public          postgres    false    220    4            �           0    0    score_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.score_id_seq OWNED BY public.score.id;
          public          postgres    false    219            �            1259    57541    users    TABLE     W   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    57540    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    4    216            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            �            1259    57550    views    TABLE     b   CREATE TABLE public.views (
    id integer NOT NULL,
    user_id integer,
    movie_id integer
);
    DROP TABLE public.views;
       public         heap    postgres    false    4            �            1259    57549    views_id_seq    SEQUENCE     �   CREATE SEQUENCE public.views_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.views_id_seq;
       public          postgres    false    4    218            �           0    0    views_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.views_id_seq OWNED BY public.views.id;
          public          postgres    false    217            �           2604    57535 
   actores id    DEFAULT     h   ALTER TABLE ONLY public.actores ALTER COLUMN id SET DEFAULT nextval('public.actores_id_seq'::regclass);
 9   ALTER TABLE public.actores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    57632    bridge_actores id    DEFAULT     v   ALTER TABLE ONLY public.bridge_actores ALTER COLUMN id SET DEFAULT nextval('public.bridge_actores_id_seq'::regclass);
 @   ALTER TABLE public.bridge_actores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    57615    bridge_genres id    DEFAULT     t   ALTER TABLE ONLY public.bridge_genres ALTER COLUMN id SET DEFAULT nextval('public.bridge_genres_id_seq'::regclass);
 ?   ALTER TABLE public.bridge_genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    57649    bridge_reviews id    DEFAULT     v   ALTER TABLE ONLY public.bridge_reviews ALTER COLUMN id SET DEFAULT nextval('public.bridge_reviews_id_seq'::regclass);
 @   ALTER TABLE public.bridge_reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    57577    bridge_score id    DEFAULT     r   ALTER TABLE ONLY public.bridge_score ALTER COLUMN id SET DEFAULT nextval('public.bridge_score_id_seq'::regclass);
 >   ALTER TABLE public.bridge_score ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    57666    bridge_usercom id    DEFAULT     v   ALTER TABLE ONLY public.bridge_usercom ALTER COLUMN id SET DEFAULT nextval('public.bridge_usercom_id_seq'::regclass);
 @   ALTER TABLE public.bridge_usercom ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    57599    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    57526 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    57516 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    57606 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    57570    score id    DEFAULT     d   ALTER TABLE ONLY public.score ALTER COLUMN id SET DEFAULT nextval('public.score_id_seq'::regclass);
 7   ALTER TABLE public.score ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    57544    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    57553    views id    DEFAULT     d   ALTER TABLE ONLY public.views ALTER COLUMN id SET DEFAULT nextval('public.views_id_seq'::regclass);
 7   ALTER TABLE public.views ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            _          0    57532    actores 
   TABLE DATA           ,   COPY public.actores (id, actor) FROM stdin;
    public          postgres    false    214   Wz       o          0    57629    bridge_actores 
   TABLE DATA           A   COPY public.bridge_actores (id, movie_id, actore_id) FROM stdin;
    public          postgres    false    230   j{       m          0    57612    bridge_genres 
   TABLE DATA           ?   COPY public.bridge_genres (id, movie_id, genre_id) FROM stdin;
    public          postgres    false    228   �{       q          0    57646    bridge_reviews 
   TABLE DATA           A   COPY public.bridge_reviews (id, movie_id, review_id) FROM stdin;
    public          postgres    false    232    |       g          0    57574    bridge_score 
   TABLE DATA           G   COPY public.bridge_score (id, user_id, movie_id, score_id) FROM stdin;
    public          postgres    false    222   =|       s          0    57663    bridge_usercom 
   TABLE DATA           K   COPY public.bridge_usercom (id, user_id, movie_id, comment_id) FROM stdin;
    public          postgres    false    234   �|       i          0    57596    comments 
   TABLE DATA           /   COPY public.comments (id, comment) FROM stdin;
    public          postgres    false    224   }       ]          0    57523    genres 
   TABLE DATA           +   COPY public.genres (id, genre) FROM stdin;
    public          postgres    false    212   �~       [          0    57513    movies 
   TABLE DATA           O   COPY public.movies (id, mov_name, released_date, duration, rating) FROM stdin;
    public          postgres    false    210   R       k          0    57603    reviews 
   TABLE DATA           -   COPY public.reviews (id, review) FROM stdin;
    public          postgres    false    226   Ӏ       e          0    57567    score 
   TABLE DATA           *   COPY public.score (id, score) FROM stdin;
    public          postgres    false    220   N�       a          0    57541    users 
   TABLE DATA           -   COPY public.users (id, username) FROM stdin;
    public          postgres    false    216   ��       c          0    57550    views 
   TABLE DATA           6   COPY public.views (id, user_id, movie_id) FROM stdin;
    public          postgres    false    218   ~�       �           0    0    actores_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.actores_id_seq', 20, true);
          public          postgres    false    213            �           0    0    bridge_actores_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bridge_actores_id_seq', 20, true);
          public          postgres    false    229            �           0    0    bridge_genres_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bridge_genres_id_seq', 20, true);
          public          postgres    false    227            �           0    0    bridge_reviews_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bridge_reviews_id_seq', 1, false);
          public          postgres    false    231            �           0    0    bridge_score_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.bridge_score_id_seq', 20, true);
          public          postgres    false    221            �           0    0    bridge_usercom_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bridge_usercom_id_seq', 20, true);
          public          postgres    false    233            �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 20, true);
          public          postgres    false    223            �           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 20, true);
          public          postgres    false    211            �           0    0    movies_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.movies_id_seq', 20, true);
          public          postgres    false    209            �           0    0    reviews_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reviews_id_seq', 20, true);
          public          postgres    false    225            �           0    0    score_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.score_id_seq', 20, true);
          public          postgres    false    219            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 20, true);
          public          postgres    false    215            �           0    0    views_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.views_id_seq', 20, true);
          public          postgres    false    217            �           2606    57539    actores actores_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.actores
    ADD CONSTRAINT actores_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.actores DROP CONSTRAINT actores_pkey;
       public            postgres    false    214            �           2606    57634 "   bridge_actores bridge_actores_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bridge_actores
    ADD CONSTRAINT bridge_actores_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.bridge_actores DROP CONSTRAINT bridge_actores_pkey;
       public            postgres    false    230            �           2606    57617     bridge_genres bridge_genres_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.bridge_genres
    ADD CONSTRAINT bridge_genres_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.bridge_genres DROP CONSTRAINT bridge_genres_pkey;
       public            postgres    false    228            �           2606    57651 "   bridge_reviews bridge_reviews_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bridge_reviews
    ADD CONSTRAINT bridge_reviews_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.bridge_reviews DROP CONSTRAINT bridge_reviews_pkey;
       public            postgres    false    232            �           2606    57579    bridge_score bridge_score_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.bridge_score
    ADD CONSTRAINT bridge_score_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.bridge_score DROP CONSTRAINT bridge_score_pkey;
       public            postgres    false    222            �           2606    57668 "   bridge_usercom bridge_usercom_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.bridge_usercom
    ADD CONSTRAINT bridge_usercom_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.bridge_usercom DROP CONSTRAINT bridge_usercom_pkey;
       public            postgres    false    234            �           2606    57601    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    224            �           2606    57530    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    212            �           2606    57520    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    210            �           2606    57610    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    226            �           2606    57572    score score_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.score
    ADD CONSTRAINT score_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.score DROP CONSTRAINT score_pkey;
       public            postgres    false    220            �           2606    57548    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �           2606    57555    views views_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.views DROP CONSTRAINT views_pkey;
       public            postgres    false    218            �           2606    57640 ,   bridge_actores bridge_actores_actore_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_actores
    ADD CONSTRAINT bridge_actores_actore_id_fkey FOREIGN KEY (actore_id) REFERENCES public.actores(id);
 V   ALTER TABLE ONLY public.bridge_actores DROP CONSTRAINT bridge_actores_actore_id_fkey;
       public          postgres    false    214    3244    230            �           2606    57635 +   bridge_actores bridge_actores_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_actores
    ADD CONSTRAINT bridge_actores_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 U   ALTER TABLE ONLY public.bridge_actores DROP CONSTRAINT bridge_actores_movie_id_fkey;
       public          postgres    false    3240    230    210            �           2606    57623 )   bridge_genres bridge_genres_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_genres
    ADD CONSTRAINT bridge_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(id);
 S   ALTER TABLE ONLY public.bridge_genres DROP CONSTRAINT bridge_genres_genre_id_fkey;
       public          postgres    false    228    212    3242            �           2606    57618 )   bridge_genres bridge_genres_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_genres
    ADD CONSTRAINT bridge_genres_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 S   ALTER TABLE ONLY public.bridge_genres DROP CONSTRAINT bridge_genres_movie_id_fkey;
       public          postgres    false    3240    210    228            �           2606    57652 +   bridge_reviews bridge_reviews_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_reviews
    ADD CONSTRAINT bridge_reviews_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 U   ALTER TABLE ONLY public.bridge_reviews DROP CONSTRAINT bridge_reviews_movie_id_fkey;
       public          postgres    false    3240    210    232            �           2606    57657 ,   bridge_reviews bridge_reviews_review_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_reviews
    ADD CONSTRAINT bridge_reviews_review_id_fkey FOREIGN KEY (review_id) REFERENCES public.reviews(id);
 V   ALTER TABLE ONLY public.bridge_reviews DROP CONSTRAINT bridge_reviews_review_id_fkey;
       public          postgres    false    226    3256    232            �           2606    57585 '   bridge_score bridge_score_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_score
    ADD CONSTRAINT bridge_score_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 Q   ALTER TABLE ONLY public.bridge_score DROP CONSTRAINT bridge_score_movie_id_fkey;
       public          postgres    false    210    3240    222            �           2606    57590 '   bridge_score bridge_score_score_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_score
    ADD CONSTRAINT bridge_score_score_id_fkey FOREIGN KEY (score_id) REFERENCES public.score(id);
 Q   ALTER TABLE ONLY public.bridge_score DROP CONSTRAINT bridge_score_score_id_fkey;
       public          postgres    false    220    3250    222            �           2606    57580 &   bridge_score bridge_score_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_score
    ADD CONSTRAINT bridge_score_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.bridge_score DROP CONSTRAINT bridge_score_user_id_fkey;
       public          postgres    false    3246    222    216            �           2606    57679 -   bridge_usercom bridge_usercom_comment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_usercom
    ADD CONSTRAINT bridge_usercom_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id);
 W   ALTER TABLE ONLY public.bridge_usercom DROP CONSTRAINT bridge_usercom_comment_id_fkey;
       public          postgres    false    224    3254    234            �           2606    57674 +   bridge_usercom bridge_usercom_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_usercom
    ADD CONSTRAINT bridge_usercom_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 U   ALTER TABLE ONLY public.bridge_usercom DROP CONSTRAINT bridge_usercom_movie_id_fkey;
       public          postgres    false    210    3240    234            �           2606    57669 *   bridge_usercom bridge_usercom_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bridge_usercom
    ADD CONSTRAINT bridge_usercom_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.bridge_usercom DROP CONSTRAINT bridge_usercom_user_id_fkey;
       public          postgres    false    234    3246    216            �           2606    57561    views views_movie_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 C   ALTER TABLE ONLY public.views DROP CONSTRAINT views_movie_id_fkey;
       public          postgres    false    210    3240    218            �           2606    57556    views views_user_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.views DROP CONSTRAINT views_user_id_fkey;
       public          postgres    false    218    3246    216            _     x�%�InAE��)|Da�2	1	�l�n']��F�(�OA�_�߯���+-]�a�lŔ�2���<�a�Miꬕ� �V+����jm
�3�(8��5�b��8�����(��p��Ds�}p�	��s;��]X���5]�r, �Vt)a�{-�on�nX����]"m;���!X`�I����;��g�Fֲ�'e{N���<=�����ϔX�j��a�pz�	�E5|�Ӗ\��ua}���_���"�
l!      o   K   x����@��7��^ݹ8�8<n��!.&w&&O&/&o&&_&�Qf�?�(�S��I��27eʼ�k��~�o�{      m   K   x����@��7��^ݹ8�8<n��!.&w&&O&/&o&&_&�Qf�?�(�S��I��27eʼ�k��~�o�{      q      x������ � �      g   o   x�5��� �o{���.��s�"��	�
��s`2���8|�P�Ą�^�P���䮐��P{#+��+<� 5�Jw<Hu|���
%Ks�����?�U�e      s   Q   x�5���@���̊7����?�E�uvț3��+��;��'��h�}̠��f�Yif���f�9i������{��vW�      i   l  x�=��n�0E��W0#���E$ٴ��tñ�=���_Jt#|\^��
ļ1]ك�J�N�s��C��e���'X�g�=���ӼVN��ޙ� �w���#��[.,T{��q��
��B����`�7]�,��w�I���|��V�>�L~�O�%���Ǎ�H���2�g��'v(4�)��?ި@�t\qY2'���a�����R ���+�@�"�UZ�ּ�����u���d����K�ߙ\�7�+V�e�Z�޼�,���ߝ�sl\W�TH�֔.�G���?��0Ǻb�҂��Mpjg
���6�q)Tk��$E�|*��}�����o�x̫\N����Z��\��      ]   �   x�%���@D���p(%j������l�"�pwd9M�{O�&oތ�Q�1�h�(���NV�P����T����ǗZ��xq���Ǿ���^�Sy�Ѳ�</d2�Y���}9n��8�D78ՐR��2G�I(q~�ґ�ҋ�1�-N2��mw�ۯ��ԸNA#���#=�D���<�      [   q  x��R�N�0<;_�? ��t�AK)��Ep�b%nc5�#�i�|v]$� ��;3;���W������`�:u����)/2�$[�V]�,�)�$���v2��!���Kdl=#�u�K�,�TFҝtX��*��dT��uN� ��8�� ���N2HG��U��DD�g���]��
w�d�e�q�-K���-*��t��G�m�`�W0�u�;*
Q3�q"�h�d]v�6��L�\�����{H�K��SoA9p5��1N��(g����������m��p)�bq�"�X���9���4�%�lJ"T��䴝<�J4t����̉XG͍:)#u�R�������������V�[g�i.O��:��N��)�N      k   k  x�5��r�0�k�)йI4V�_ڎ]�K��GA�HBA���5N�r�o��=g�±*B�EQV}��=C���+�1�ݍ{��|�x� ~R��99�hR�!{��,���*0"L,-�޽G�G,�"�C=2�S*��r����ݣ�
ǈ�`k
&V�\��ɽ}�(f$�p$�-j�:/�s��ܨ&��`LܨT��6�C4�����>�(�E��`�'̍|�1ӉԌ#ʾ`Lf��[���|��Y��"�B��v�7�p�>p2�*������b��+�8��7�b6�<���p|І�g<: �M��=�?lqɖ�v�Y��`]P
dV(����O�9go�;�bD����Çs�)�Hz黿}�u� �7��      e   A   x�˹�0���,�#�z{q�u��bh������������v��j��P�Pb	&�p��@���{l�[��      a   �   x�5�Kr�0C��a:���K7
M�LdI#KN�_��nxDSNN�vКM����in�3$��.����.�Gٶ~a0���m3�`���ݬo�	������a����^N�g�Ŝ�T��*��zOI�в ��5�����0`w��'���7����V>�X�*�݄$�b �L�B��S�����,�B�=�ls��f{���u���_ ��d�      c   O   x���� �гT��O/�_ǚ��1Nq���<h^4o��,��Ǭ�3��0�<ׅ�J7���l|�A��M��?�C��     