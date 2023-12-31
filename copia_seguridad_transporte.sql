PGDMP  %    $            
    {         
   transporte    16.0    16.0 G    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398 
   transporte    DATABASE     �   CREATE DATABASE transporte WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE transporte;
                postgres    false                        3079    16504    dblink 	   EXTENSION     :   CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;
    DROP EXTENSION dblink;
                   false            @           0    0    EXTENSION dblink    COMMENT     _   COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';
                        false    2                        3079    16554    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false            A           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    3            �            1255    16494    importantepl()    FUNCTION     4  CREATE FUNCTION public.importantepl() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
	rec record;
	contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM pasajeros LOOP
		contador := contador +1;
	END LOOP;
	INSERT INTO conteo_pasajeros (total, tiempo)
	VALUES(contador, now());
	RETURN NEW;
END
$$;
 %   DROP FUNCTION public.importantepl();
       public          postgres    false            �            1259    16461 	   Bitacoras    TABLE     ~   CREATE TABLE public."Bitacoras" (
    id integer NOT NULL,
    id_viaje integer,
    fecha date
)
PARTITION BY RANGE (fecha);
    DROP TABLE public."Bitacoras";
       public            postgres    false            �            1259    16460    Bitacoras_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Bitacoras_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Bitacoras_id_seq";
       public          postgres    false    228            B           0    0    Bitacoras_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Bitacoras_id_seq" OWNED BY public."Bitacoras".id;
          public          postgres    false    227            �            1259    16465    bitacoras_201001    TABLE     �   CREATE TABLE public.bitacoras_201001 (
    id integer DEFAULT nextval('public."Bitacoras_id_seq"'::regclass) NOT NULL,
    id_viaje integer,
    fecha date
);
 $   DROP TABLE public.bitacoras_201001;
       public         heap    postgres    false    227    228            �            1259    16486    conteo_pasajeros    TABLE     u   CREATE TABLE public.conteo_pasajeros (
    total integer,
    tiempo time with time zone,
    id integer NOT NULL
);
 $   DROP TABLE public.conteo_pasajeros;
       public         heap    postgres    false            �            1259    16485    conteo_pasajeros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.conteo_pasajeros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.conteo_pasajeros_id_seq;
       public          postgres    false    233            C           0    0    conteo_pasajeros_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.conteo_pasajeros_id_seq OWNED BY public.conteo_pasajeros.id;
          public          postgres    false    232            �            1259    16418 
   estaciones    TABLE     �   CREATE TABLE public.estaciones (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    direccion character varying NOT NULL
);
    DROP TABLE public.estaciones;
       public         heap    postgres    false            D           0    0    TABLE estaciones    ACL     H   GRANT SELECT,INSERT,UPDATE ON TABLE public.estaciones TO user_consulta;
          public          postgres    false    222            �            1259    16417    estaciones_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.estaciones_id_seq;
       public          postgres    false    222            E           0    0    estaciones_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.estaciones_id_seq OWNED BY public.estaciones.id;
          public          postgres    false    221            �            1259    16400 	   pasajeros    TABLE     �   CREATE TABLE public.pasajeros (
    id integer NOT NULL,
    nombre character varying(100),
    direccion_residencia character varying,
    fecha_nacimiento date
);
    DROP TABLE public.pasajeros;
       public         heap    postgres    false            F           0    0    TABLE pasajeros    ACL     G   GRANT SELECT,INSERT,UPDATE ON TABLE public.pasajeros TO user_consulta;
          public          postgres    false    218            �            1259    16399    pasajeros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pasajeros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pasajeros_id_seq;
       public          postgres    false    218            G           0    0    pasajeros_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pasajeros_id_seq OWNED BY public.pasajeros.id;
          public          postgres    false    217            �            1259    16427 	   trayectos    TABLE     �   CREATE TABLE public.trayectos (
    id integer NOT NULL,
    id_tren integer NOT NULL,
    id_estacion integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.trayectos;
       public         heap    postgres    false            H           0    0    TABLE trayectos    ACL     G   GRANT SELECT,INSERT,UPDATE ON TABLE public.trayectos TO user_consulta;
          public          postgres    false    224            �            1259    16426    trayectos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trayectos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.trayectos_id_seq;
       public          postgres    false    224            I           0    0    trayectos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.trayectos_id_seq OWNED BY public.trayectos.id;
          public          postgres    false    223            �            1259    16409    trenes    TABLE        CREATE TABLE public.trenes (
    id integer NOT NULL,
    modelo character varying NOT NULL,
    capacidad integer NOT NULL
);
    DROP TABLE public.trenes;
       public         heap    postgres    false            J           0    0    TABLE trenes    ACL     D   GRANT SELECT,INSERT,UPDATE ON TABLE public.trenes TO user_consulta;
          public          postgres    false    220            �            1259    16408    trenes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.trenes_id_seq;
       public          postgres    false    220            K           0    0    trenes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.trenes_id_seq OWNED BY public.trenes.id;
          public          postgres    false    219            �            1259    16444    viajes    TABLE     �   CREATE TABLE public.viajes (
    id integer NOT NULL,
    id_pasajeros integer NOT NULL,
    id_trayectos integer NOT NULL,
    inicio time without time zone NOT NULL,
    fin time without time zone NOT NULL
);
    DROP TABLE public.viajes;
       public         heap    postgres    false            L           0    0    TABLE viajes    ACL     D   GRANT SELECT,INSERT,UPDATE ON TABLE public.viajes TO user_consulta;
          public          postgres    false    226            �            1259    16443    viajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.viajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.viajes_id_seq;
       public          postgres    false    226            M           0    0    viajes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.viajes_id_seq OWNED BY public.viajes.id;
          public          postgres    false    225            �            1259    16479    vista_materializada    MATERIALIZED VIEW     �   CREATE MATERIALIZED VIEW public.vista_materializada AS
 SELECT id,
    id_pasajeros,
    id_trayectos,
    inicio,
    fin
   FROM public.viajes
  WHERE (inicio > '23:00:00'::time without time zone)
  WITH NO DATA;
 3   DROP MATERIALIZED VIEW public.vista_materializada;
       public         heap    postgres    false    226    226    226    226    226            �            1259    16475    vista_volatil    VIEW     �  CREATE VIEW public.vista_volatil AS
 SELECT id,
    nombre,
    direccion_residencia,
    fecha_nacimiento,
        CASE
            WHEN (EXTRACT(years FROM age((CURRENT_DATE)::timestamp with time zone, (fecha_nacimiento)::timestamp with time zone)) >= (18)::numeric) THEN 'Mayor de edad'::text
            ELSE 'Menor de edad'::text
        END AS mayor_menor
   FROM public.pasajeros;
     DROP VIEW public.vista_volatil;
       public          postgres    false    218    218    218    218            �           0    0    bitacoras_201001    TABLE ATTACH        ALTER TABLE ONLY public."Bitacoras" ATTACH PARTITION public.bitacoras_201001 FOR VALUES FROM ('2010-01-01') TO ('2019-01-31');
          public          postgres    false    229    228            �           2604    16464    Bitacoras id    DEFAULT     p   ALTER TABLE ONLY public."Bitacoras" ALTER COLUMN id SET DEFAULT nextval('public."Bitacoras_id_seq"'::regclass);
 =   ALTER TABLE public."Bitacoras" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16489    conteo_pasajeros id    DEFAULT     z   ALTER TABLE ONLY public.conteo_pasajeros ALTER COLUMN id SET DEFAULT nextval('public.conteo_pasajeros_id_seq'::regclass);
 B   ALTER TABLE public.conteo_pasajeros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16421    estaciones id    DEFAULT     n   ALTER TABLE ONLY public.estaciones ALTER COLUMN id SET DEFAULT nextval('public.estaciones_id_seq'::regclass);
 <   ALTER TABLE public.estaciones ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16403    pasajeros id    DEFAULT     l   ALTER TABLE ONLY public.pasajeros ALTER COLUMN id SET DEFAULT nextval('public.pasajeros_id_seq'::regclass);
 ;   ALTER TABLE public.pasajeros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16430    trayectos id    DEFAULT     l   ALTER TABLE ONLY public.trayectos ALTER COLUMN id SET DEFAULT nextval('public.trayectos_id_seq'::regclass);
 ;   ALTER TABLE public.trayectos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16412 	   trenes id    DEFAULT     f   ALTER TABLE ONLY public.trenes ALTER COLUMN id SET DEFAULT nextval('public.trenes_id_seq'::regclass);
 8   ALTER TABLE public.trenes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16447 	   viajes id    DEFAULT     f   ALTER TABLE ONLY public.viajes ALTER COLUMN id SET DEFAULT nextval('public.viajes_id_seq'::regclass);
 8   ALTER TABLE public.viajes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            6          0    16465    bitacoras_201001 
   TABLE DATA           ?   COPY public.bitacoras_201001 (id, id_viaje, fecha) FROM stdin;
    public          postgres    false    229   ]N       9          0    16486    conteo_pasajeros 
   TABLE DATA           =   COPY public.conteo_pasajeros (total, tiempo, id) FROM stdin;
    public          postgres    false    233   �N       0          0    16418 
   estaciones 
   TABLE DATA           ;   COPY public.estaciones (id, nombre, direccion) FROM stdin;
    public          postgres    false    222   �N       ,          0    16400 	   pasajeros 
   TABLE DATA           W   COPY public.pasajeros (id, nombre, direccion_residencia, fecha_nacimiento) FROM stdin;
    public          postgres    false    218   �W       2          0    16427 	   trayectos 
   TABLE DATA           E   COPY public.trayectos (id, id_tren, id_estacion, nombre) FROM stdin;
    public          postgres    false    224   Q`       .          0    16409    trenes 
   TABLE DATA           7   COPY public.trenes (id, modelo, capacidad) FROM stdin;
    public          postgres    false    220   �c       4          0    16444    viajes 
   TABLE DATA           M   COPY public.viajes (id, id_pasajeros, id_trayectos, inicio, fin) FROM stdin;
    public          postgres    false    226   �g       N           0    0    Bitacoras_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Bitacoras_id_seq"', 2, true);
          public          postgres    false    227            O           0    0    conteo_pasajeros_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.conteo_pasajeros_id_seq', 4, true);
          public          postgres    false    232            P           0    0    estaciones_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.estaciones_id_seq', 102, true);
          public          postgres    false    221            Q           0    0    pasajeros_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pasajeros_id_seq', 104, true);
          public          postgres    false    217            R           0    0    trayectos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.trayectos_id_seq', 101, true);
          public          postgres    false    223            S           0    0    trenes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.trenes_id_seq', 102, true);
          public          postgres    false    219            T           0    0    viajes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.viajes_id_seq', 100, true);
          public          postgres    false    225            �           2606    16491 &   conteo_pasajeros conteo_pasajeros_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.conteo_pasajeros
    ADD CONSTRAINT conteo_pasajeros_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.conteo_pasajeros DROP CONSTRAINT conteo_pasajeros_pkey;
       public            postgres    false    233            �           2606    16425    estaciones estaciones_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.estaciones
    ADD CONSTRAINT estaciones_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.estaciones DROP CONSTRAINT estaciones_pkey;
       public            postgres    false    222            �           2606    16407    pasajeros pasajeros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pasajeros
    ADD CONSTRAINT pasajeros_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pasajeros DROP CONSTRAINT pasajeros_pkey;
       public            postgres    false    218            �           2606    16432    trayectos trayectos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.trayectos
    ADD CONSTRAINT trayectos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.trayectos DROP CONSTRAINT trayectos_pkey;
       public            postgres    false    224            �           2606    16416    trenes trenes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.trenes
    ADD CONSTRAINT trenes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.trenes DROP CONSTRAINT trenes_pkey;
       public            postgres    false    220            �           2606    16449    viajes viajes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.viajes DROP CONSTRAINT viajes_pkey;
       public            postgres    false    226            �           2620    16495    pasajeros mitrigger    TRIGGER     o   CREATE TRIGGER mitrigger AFTER INSERT ON public.pasajeros FOR EACH ROW EXECUTE FUNCTION public.importantepl();
 ,   DROP TRIGGER mitrigger ON public.pasajeros;
       public          postgres    false    218    235            �           2606    16438 #   trayectos trayectos_estaciones_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trayectos
    ADD CONSTRAINT trayectos_estaciones_fkey FOREIGN KEY (id_estacion) REFERENCES public.estaciones(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.trayectos DROP CONSTRAINT trayectos_estaciones_fkey;
       public          postgres    false    224    4750    222            �           2606    16433    trayectos trayectos_trenes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trayectos
    ADD CONSTRAINT trayectos_trenes_fkey FOREIGN KEY (id_tren) REFERENCES public.trenes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.trayectos DROP CONSTRAINT trayectos_trenes_fkey;
       public          postgres    false    4748    220    224            �           2606    16450    viajes viajes_pasajeros_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_pasajeros_fkey FOREIGN KEY (id_pasajeros) REFERENCES public.pasajeros(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.viajes DROP CONSTRAINT viajes_pasajeros_fkey;
       public          postgres    false    226    218    4746            �           2606    16455    viajes viajes_trayectos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.viajes
    ADD CONSTRAINT viajes_trayectos_fkey FOREIGN KEY (id_trayectos) REFERENCES public.trayectos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.viajes DROP CONSTRAINT viajes_trayectos_fkey;
       public          postgres    false    224    226    4752            6      x�3�4�4204�50�54������ !?      9   B   x�ɹ�0�z1ÁxD-�K�t�J�	L�`k��A`(�l������~��أ%�^Y7���C�      0   �  x�eWKw�8^_~�v��9~?�	���@UN���3a�`$�lM~}�l�z�������W!���T_����DY�V�o���ΛF\�7�IDk~�Ÿڲ�V-y��n��o��e3�i)�N4��<�K����lnt�J��$�$��T�VS����>�+�Ї���(آ���Ȧq�LRz4�W�%7x�䩶����=�������y��Ka�k��䴖'�Nُ�T9�q��$�,�7T{Ҧ��-�A�1Z(
٣ޜk�7�q%}�m��B���b��>���k��Nj5	ZUK���F*�oUQ��Y�~�(��2	Cz�E3{���"��=}V�[r%&a��z$�ҵAO�p�9��+����Y�{��Xi���$Lh%L�9[�hZ\�	{��q#��g��&ëJ�^�9ʶCwK��O�Hm�\�N�I�џR�+$��}i����Q�鍘=
^sE	[jq2!o�m'a1���tQ��)���`4��s#z����'aI ��S[�>r�n:��(/˰`�	n��7#
胛�s������v���n�52$���`W��I��0B}�QDo�/bg��"��2��]�\�d��^0*ט4*��M��9�5�C���i 9kQJk ���+�Ѻ�>t�ۡ�)���e�<��j���L�S�]��n��P `k ���}�)T/&QN����s{�S���qcqEZ \��%a~��MK�M�����b��AJ�(M�K��_T���<��c�ƶ��I
�d�O1�(xgv��)`�Z����AE��u�j�K#lg+�����$`_�=�r��#z���k}�q̾�R{͊cP�U�� �8e�[��R4R$N�ϔy2��,�-�2���l.M� ��F{�ѼH���@�8�9oO��勳����sz�w[a��~�Y N�v疒1��W�{/��w�w�ޢ2�8)~Jq���K��ke`|ٶ�wijEE���d�D)�0�$�E�ޓ ǁ�a,'	1`� X���xt�_���M!�,���c�*���Լ�� =�:D�J/Ng1
z_�g�~m�\����}c�	԰�נ�r�!6�eʾ�l�C-I�aˏn��A7 �o��Z��EY�p�v󤌜B�� �![H���'9��P �l��x@�£2)h��<�k�Rm������,	\%lLo5���m7�sá�*���1�4t�KI^$ȫ��vx����M
��S��F��B`E�%0��n^����r��p���;?\'v)�.���ax�����	�j�O�qb�+���R\%�#6f��(�ZI+����8�e��g�}R���d�������mE�ۥD���*�i�=��f��+\��% C<�n�IZ� oP����EaZ�l%��;�IKz�kY�֝�-����0/}�^�vag���S��X�3`�]��j��+�O)�h��}�m�<W���Q��Hx�������ؖY%�����,r~c,H2(ߨóU���B�aݏ@��
O�,����L���X��5��I���2��"����ä2X�l�Me���V��2�.�nA�)ytg�[����l��	M)N`@W��۬n���zj�C 56.*������M�;t�t��I��z婕�'�����<��7��_�u�$�2Ӌ�}8I`��Rl�|?��!k�����,H i��</myB�N7�jt�C���j���yJ��X��hXc���PR&�#|�H���g�{��ԼZv��*g�N���+N�܋c���I�=�v�ͱ /�j�����
�������P6�,��3x*[_�*���6(�3�`]U�=��w�p�q����A�/5?�������]|4x��OVV\{��/b���v��I�
-��u	�ѫm�U��3P�H�Ͼ��nhX�{��V��^Z���|\��=��5,�Iҋ���z(��mMI���+�ay,�����n��9r@F�V|���1�����ïJEY���{@���N�k���vG��b��<(CZh�����i^/��Yˈ������7����N��b��?�ߏ[G�\=�o��@W4��^�4Z���EKe�.w��5fX�D���� ��ں6����%^sl�6fʲ��U �Շ���"(��K�ڀ����)4j?B��r�:�p����@���1�=nA�J����d�7�l�      ,   �  x�mW�n�8>SO�ۜj�}9z�/m�v�@c.,�.1�"�)��;�S̋����'h`ĈM���m����4��/JOְ'�tZ�<M�M�m�6�ٙ;3X~1
�SF�k�,��t����K
v)�2�1y�5{9	��	G��ߤMR�3�z���]:va�|���K�&k�
��^���G�ٍ��F*(�UI��Pæ�N�;���K#vc�d�+�
OR���J�Gw���*��h�W�_�&-CՒ_ϋ�T�z�"�J���=�J��Q�� ����4����nɩ�,e�Z}H�i����B�ƌj|%Y�^��u�Z��=X�Pl&�a��C��`���ʠ�QhOC�i�y�d��Z	~/��A�:G״��<�J�$��ܺ~n��A-C5��լb�b9`|�.Sh�72��Q�E�d5{E%����.C|��$k؍8~�T�7��a�G��f\lr�FCvz1�ߡxv/�*(���J��,����ޥX�:�&+�<e�j�]��迈�y^D8A�$���˾����0��k��or��ٕV���π*=X�2��Δ4>,;/�9jp����۰��7y
؎���$/ٳ8X �_+k���EM^��6n/W��n��ob������.-Ry5�vFq�g�4HǞ�}�o%@�5� z��Hq �����:ZN�U�4�[v�JK�(�g�¹ ����9����J�_<��^�0�&УL�];���;#�q� �'-�4;��iǀ]��h0%=��@k>ע�oU��+�L p��?DߣvpA
gvm�;x<�)�,��5E����h���ELxC7�`A�_����~(y�KEqY�;,���?�� ��~
�h+�X�^����'�& �Y*�vԱ&j �N���"�d�X��e(�eg;����~��4�4�D1'M(:��4
~c��t����C7UI����S�_Ct���
@ϴ«%+3v7;�_��kv�%.�#]d�H�<���W$�XY�n���`�ҬDd�3�h� AE��<)Kv3�~w��^�Y�K�M�M��:��jg�/QA)���A�IaH�[�Q�W�C��*�&k��=j"X`��"�Z�N�l$EA�.8�6v<B�ߢ�����c�]TE>�@�:��1��։W ��>@81K���WĳU����:{��)/Ie��'�3�����Bd�0���.� �S�k�J�5��T�S�k�#����^�F��IEK��YTZ�/�A�o�ȩLc���x'�L*Z�0@��ip�/�� �0l(��j��U�@7���@�b��,�!�Fd\Ր��~�.&|��e5_��<�j��vh��q�$�ً�A��0`Yu؟#ӿ�I�Q�Hc��N�%��o#���$�o�1�:cO֎�1\CE�Ɖcы���14��N�EnYe9q��d� P���/��4-�.i�R~��ѿC���V����
B%=��g=�*�e]�k���}�(	]��*Q^���eg��p�8�l�������.�2ȟ�pS�}�8Tw��;��A��L�wMʾB�]-�-��zlt�l�MF����<A*���ҕ ��=yJ3�$�_�$�1��ICV��A��hr>�/�M>��6<�a7d�?���ph7�`L!YbSE $����Ԗ��YM�@�$M�.`� �~D�a�T�ݫ憨�`�ʂ�p>I�ư���*iZ���<�L����t�蒦��b�6�S�#4X����d.�N�^+!tP(u�|y��������B��G����LhHI��<�C��$����k��#��jGt@R��{���# �&L�LM~E��8��>��HK9g� �of��;ĀY~��U���v��Aj����*�
��&TG��fC�X��r�BqM`k��U$1̡2dkC�G �&m�y8�:X���/���a�]ʾ�y7��;��$��}% �I�[f��>��_p��p�i����Y(p���@�H�!�P�Y�����h]T�6�J��h?�b�{vv��~��k\��ÉB>ޓY!wQ���j�ι�H��B�T�����]�Y����g3�8�ӕ�e��G��ȃ���g���t����1�QƐ��~��3Y��R�R��X?��ZI�~YZ��S�>�H����۬SQ�YZbQ�JO��ߑ`�4�,��?�$�/��J�      2   �  x�UT˒G<W�~ �<�y���d�l)��4г���&��}���aa/ӏ�̬*I;�,}��NTd
R��&exgc�WB�-�:�؞�.����"��q8������ c�)�}���Vr@)��l��ӏ��$Ҋ��b��#ew�4��(�]S]�c8�;e���oc�l�(ʊ�|i���#ih1�C�E)�v��{���o�(I�РեC�u�4),K���M�7iC���������0KF�S���&����4?�f��DUPU���p�+���2�+Oȃ�N^�PU&�5�����/
��H�Q)����cv�Oh�(x���V0D2��Qx�i�m���:Om/�����Ʈ�o����j�j\�%���I�Z�}(�O��|���߀��������?��滂>��M8 ɲ �-B�tX��"��t|��Mg�u��b���K<�Qք @��0����ˈY�Y�bj����y��@su˖��������.G��ߓP�3�%��?���KKTL_�8�N�ޒ���-\�KB"�c����M��g�!0���� ���1�-�^�&���8�v����ku�<�Ԛ�vװ��
�����P1��{?$�� �=m ��!5�j� 4�J���(��sH��,�1���x(���N��������e�m~�ٴ1�p&����=l��pk ��Ay����i8� ���p'�Wr���ށDӆ����k���7���-���n���B�:�w�os��Ǭi��(�R B�!�ߟSXg��-�W��:4�SR<����#<}p�ޗ�&]&}�����i�9t��)!ܯ��U��� �懡Ew`$�
�\��@��0�`��2�-_�]���� 9O�7yʢ��Х���!��?o��SПW      .   �  x�]T�n�6]����(��Ǟ����r/��e�-D]Z�$��1��/�=	z����@��\Ѷ�u!y2�%=��0�7�嚖1žǑaE�mEV���ņv)�KH�GKB�e��C����Ʋ�M�P,}�#9Ǣ�u����
z�$JŢ�f:L����9�B�
��f�^���_�h��޺SĦd�i�/�05��_��9���!u�#	4Gϩ���s?�݀��������D�?�|"����0�I�x�dW5=�|��L��[��uI��'aW'���agi���0��N�����83,��Za-����bY�������H��6��Y���S$mY�����Xd��8�Z�;X�5�=iHW�*����=d��I	PGO��[� V� ;w��mŵ�բ	�WBu/�<��Zҷ8� �\״�o�,�T\+j�tF�\�,��1C����-�FW�W�^J���L͵�u�����R2���0��+�'��|����kŪ�ڡ����e%�-A�`���c��V�ֱ���R�ium}X�wdq����![�{�Yei���-�7k�9�����'mX����fб�ʼV6�,�h9s�J�s�0������9b�Ey҆� ������L 5���eS����.���+�5u�-tC7��HZŭbS�������m�F?��l��^�m�:~d��0��
4��q�?_���܄�Z���Ŷ�U��c�b%�cJ������ٚ^������*Z�_R�^�!��-�}{>L]�R��@�8�1Ђ�x��X4s�����=O0���O�TT�`��N�O���Oc��sn�I�>�� ��/r1�S�s�����K׎1u>k�m$nbego�g�fU��ѣ���?R��-Cߵ�`ʿ~c� ��f      4   D  x�MVK�7[S�ɳ��g���I���f��!	W��ΰ�n��+~���[uk���^�1�l�f�����m��n��-�U��֎5�w��T%�����H�)��Ȳ9�(�ʹ�0�mO��Ϫ�f�߱Q�|�B�:T�7J_*7zm���Zq���0��C!���U�"���"�Ʋ�_FQ�r�Z���ҕ��u��_6���]�(p�_�>��*��a��
!͋KD�d>�*!?/tl���T���CG��?R�z]:�����f�n}�i�D��Sqa##� ��A�z�p��i!#����"p�}�,!M���85�h�\.�A״��]�{��e ��X̎c����$��Hb@0�EVCl`�@u���-T�쉝���5���7tk�[y�A���y��=a��%yB�R��!/?O!�M�nr2�A.���!``[��v�z��NEh^W�]ه���S�j��-Q������!� uOv���N�֦��H������=��Jq
n�E�&j?��H��p���j/�cf�#BP7�%~y"Ӈ��I��_�C��&�@�p:�4��o��䡠̐BpT����`�U��Ϝ珳GQ�œ3��ټ9~|诫,D���q̄�� ��揃a��p�G�h9�P��2f��4�P�M�E�k����e@OC�dn�MD�K��\PM��ŃR�m܇?<6���o�K�9V�_��Ð|&h�E�� �<&���>��c�i�����]���}T����bY��e�D�<r���P�gK����bb�5`.y��� ����ј3�bw��Hyb�`"pF8�[n�)-Vzu�w���B"�-�z��3�!�V�%��b�A���)"�P+=z���.����'���a���<�-U��a/[�����0E�_��A�uIg<Bǖ���dgi�5������FV 'ϊS��Ep���Bc�\����N�ÿOՅ����]�aHv��n`�`E�
�K��a� D��~��µ������v�P��%l�HV���v��"��p[�9n4�h���Č���xP��Lz���b���}�h7͟     