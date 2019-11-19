PGDMP     8                 
    w         
   ProjetoPOO     11.6 (Ubuntu 11.6-1.pgdg19.04+1)     12.1 (Ubuntu 12.1-1.pgdg19.04+1) $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16610 
   ProjetoPOO    DATABASE     ~   CREATE DATABASE "ProjetoPOO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE "ProjetoPOO";
                postgres    false            �            1259    16752    empreendedor    TABLE     �  CREATE TABLE public.empreendedor (
    idempreendedor integer NOT NULL,
    nome character varying(60) NOT NULL,
    email character varying(60) NOT NULL,
    login character varying(60) NOT NULL,
    senha character varying(60) NOT NULL,
    localizacao character varying(200),
    telefone character varying(20),
    outrosmeiosdecontato character varying(100),
    areaatuacao character varying(100) NOT NULL,
    imagem bytea
);
     DROP TABLE public.empreendedor;
       public            postgres    false            �            1259    16750    empreendedor_idempreendedor_seq    SEQUENCE     �   CREATE SEQUENCE public.empreendedor_idempreendedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.empreendedor_idempreendedor_seq;
       public          postgres    false    197            �           0    0    empreendedor_idempreendedor_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.empreendedor_idempreendedor_seq OWNED BY public.empreendedor.idempreendedor;
          public          postgres    false    196            �            1259    16781 
   investidor    TABLE     �  CREATE TABLE public.investidor (
    idinvestidor integer NOT NULL,
    nome character varying(60) NOT NULL,
    email character varying(60) NOT NULL,
    login character varying(60) NOT NULL,
    senha character varying(60) NOT NULL,
    localizacao character varying(200),
    disponibilidade boolean,
    areaatuacao character varying(100) NOT NULL,
    orcamentoinvestido numeric,
    imagem bytea,
    telefone character varying(12),
    outrosmeiosdecontato character varying(200)
);
    DROP TABLE public.investidor;
       public            postgres    false            �            1259    16808    investidor_has_investidor    TABLE     �   CREATE TABLE public.investidor_has_investidor (
    investidor_idinvestidor1 integer,
    investidor_idinvestidor2 integer,
    estadoparceria boolean
);
 -   DROP TABLE public.investidor_has_investidor;
       public            postgres    false            �            1259    16779    investidor_idinvestidor_seq    SEQUENCE     �   CREATE SEQUENCE public.investidor_idinvestidor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.investidor_idinvestidor_seq;
       public          postgres    false    201            �           0    0    investidor_idinvestidor_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.investidor_idinvestidor_seq OWNED BY public.investidor.idinvestidor;
          public          postgres    false    200            �            1259    16765    projeto    TABLE     h  CREATE TABLE public.projeto (
    idprojeto integer NOT NULL,
    nome character varying(60) NOT NULL,
    descricao character varying(250),
    disponibilidade_para_investimentos boolean,
    orcamento numeric,
    avaliacao integer DEFAULT 0,
    areaatuacao character varying(100) NOT NULL,
    fk_empreendedor_projeto integer NOT NULL,
    imagem bytea
);
    DROP TABLE public.projeto;
       public            postgres    false            �            1259    16792    projeto_has_investidor    TABLE     �   CREATE TABLE public.projeto_has_investidor (
    projeto_idprojeto integer,
    investidor_idinvestidor integer,
    quantidadeinvestida numeric
);
 *   DROP TABLE public.projeto_has_investidor;
       public            postgres    false            �            1259    16763    projeto_idprojeto_seq    SEQUENCE     �   CREATE SEQUENCE public.projeto_idprojeto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.projeto_idprojeto_seq;
       public          postgres    false    199            �           0    0    projeto_idprojeto_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.projeto_idprojeto_seq OWNED BY public.projeto.idprojeto;
          public          postgres    false    198                       2604    16755    empreendedor idempreendedor    DEFAULT     �   ALTER TABLE ONLY public.empreendedor ALTER COLUMN idempreendedor SET DEFAULT nextval('public.empreendedor_idempreendedor_seq'::regclass);
 J   ALTER TABLE public.empreendedor ALTER COLUMN idempreendedor DROP DEFAULT;
       public          postgres    false    197    196    197                       2604    16784    investidor idinvestidor    DEFAULT     �   ALTER TABLE ONLY public.investidor ALTER COLUMN idinvestidor SET DEFAULT nextval('public.investidor_idinvestidor_seq'::regclass);
 F   ALTER TABLE public.investidor ALTER COLUMN idinvestidor DROP DEFAULT;
       public          postgres    false    200    201    201                       2604    16768    projeto idprojeto    DEFAULT     v   ALTER TABLE ONLY public.projeto ALTER COLUMN idprojeto SET DEFAULT nextval('public.projeto_idprojeto_seq'::regclass);
 @   ALTER TABLE public.projeto ALTER COLUMN idprojeto DROP DEFAULT;
       public          postgres    false    199    198    199            �          0    16752    empreendedor 
   TABLE DATA           �   COPY public.empreendedor (idempreendedor, nome, email, login, senha, localizacao, telefone, outrosmeiosdecontato, areaatuacao, imagem) FROM stdin;
    public          postgres    false    197   �1       �          0    16781 
   investidor 
   TABLE DATA           �   COPY public.investidor (idinvestidor, nome, email, login, senha, localizacao, disponibilidade, areaatuacao, orcamentoinvestido, imagem, telefone, outrosmeiosdecontato) FROM stdin;
    public          postgres    false    201   �2       �          0    16808    investidor_has_investidor 
   TABLE DATA           w   COPY public.investidor_has_investidor (investidor_idinvestidor1, investidor_idinvestidor2, estadoparceria) FROM stdin;
    public          postgres    false    203   @3       �          0    16765    projeto 
   TABLE DATA           �   COPY public.projeto (idprojeto, nome, descricao, disponibilidade_para_investimentos, orcamento, avaliacao, areaatuacao, fk_empreendedor_projeto, imagem) FROM stdin;
    public          postgres    false    199   c3       �          0    16792    projeto_has_investidor 
   TABLE DATA           q   COPY public.projeto_has_investidor (projeto_idprojeto, investidor_idinvestidor, quantidadeinvestida) FROM stdin;
    public          postgres    false    202   �3       �           0    0    empreendedor_idempreendedor_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.empreendedor_idempreendedor_seq', 13, true);
          public          postgres    false    196            �           0    0    investidor_idinvestidor_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.investidor_idinvestidor_seq', 2, true);
          public          postgres    false    200            �           0    0    projeto_idprojeto_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.projeto_idprojeto_seq', 3, true);
          public          postgres    false    198                       2606    16762 #   empreendedor empreendedor_login_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.empreendedor
    ADD CONSTRAINT empreendedor_login_key UNIQUE (login);
 M   ALTER TABLE ONLY public.empreendedor DROP CONSTRAINT empreendedor_login_key;
       public            postgres    false    197                       2606    16760    empreendedor empreendedor_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.empreendedor
    ADD CONSTRAINT empreendedor_pkey PRIMARY KEY (idempreendedor);
 H   ALTER TABLE ONLY public.empreendedor DROP CONSTRAINT empreendedor_pkey;
       public            postgres    false    197                        2606    16791    investidor investidor_login_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.investidor
    ADD CONSTRAINT investidor_login_key UNIQUE (login);
 I   ALTER TABLE ONLY public.investidor DROP CONSTRAINT investidor_login_key;
       public            postgres    false    201            "           2606    16789    investidor investidor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.investidor
    ADD CONSTRAINT investidor_pkey PRIMARY KEY (idinvestidor);
 D   ALTER TABLE ONLY public.investidor DROP CONSTRAINT investidor_pkey;
       public            postgres    false    201                       2606    16773    projeto projeto_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.projeto
    ADD CONSTRAINT projeto_pkey PRIMARY KEY (idprojeto);
 >   ALTER TABLE ONLY public.projeto DROP CONSTRAINT projeto_pkey;
       public            postgres    false    199            &           2606    16811 Q   investidor_has_investidor investidor_has_investidor_investidor_idinvestidor1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.investidor_has_investidor
    ADD CONSTRAINT investidor_has_investidor_investidor_idinvestidor1_fkey FOREIGN KEY (investidor_idinvestidor1) REFERENCES public.investidor(idinvestidor);
 {   ALTER TABLE ONLY public.investidor_has_investidor DROP CONSTRAINT investidor_has_investidor_investidor_idinvestidor1_fkey;
       public          postgres    false    2850    201    203            '           2606    16816 Q   investidor_has_investidor investidor_has_investidor_investidor_idinvestidor2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.investidor_has_investidor
    ADD CONSTRAINT investidor_has_investidor_investidor_idinvestidor2_fkey FOREIGN KEY (investidor_idinvestidor2) REFERENCES public.investidor(idinvestidor);
 {   ALTER TABLE ONLY public.investidor_has_investidor DROP CONSTRAINT investidor_has_investidor_investidor_idinvestidor2_fkey;
       public          postgres    false    203    201    2850            #           2606    16774 ,   projeto projeto_fk_empreendedor_projeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.projeto
    ADD CONSTRAINT projeto_fk_empreendedor_projeto_fkey FOREIGN KEY (fk_empreendedor_projeto) REFERENCES public.empreendedor(idempreendedor);
 V   ALTER TABLE ONLY public.projeto DROP CONSTRAINT projeto_fk_empreendedor_projeto_fkey;
       public          postgres    false    199    2844    197            %           2606    16803 J   projeto_has_investidor projeto_has_investidor_investidor_idinvestidor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.projeto_has_investidor
    ADD CONSTRAINT projeto_has_investidor_investidor_idinvestidor_fkey FOREIGN KEY (investidor_idinvestidor) REFERENCES public.investidor(idinvestidor);
 t   ALTER TABLE ONLY public.projeto_has_investidor DROP CONSTRAINT projeto_has_investidor_investidor_idinvestidor_fkey;
       public          postgres    false    201    2850    202            $           2606    16798 D   projeto_has_investidor projeto_has_investidor_projeto_idprojeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.projeto_has_investidor
    ADD CONSTRAINT projeto_has_investidor_projeto_idprojeto_fkey FOREIGN KEY (projeto_idprojeto) REFERENCES public.projeto(idprojeto);
 n   ALTER TABLE ONLY public.projeto_has_investidor DROP CONSTRAINT projeto_has_investidor_projeto_idprojeto_fkey;
       public          postgres    false    202    199    2846            �   
  x����n� ���S�	*-���æ=@/.8)�H+��m/Y55�$$������0(���:94D#Ac�X�h��G�Q�?	B�ۏ���%$��z�ώ��͖'�!��c�
���B�D�F�<��ё�I�O�0��D�"d��PGԐ�dN\��\}�}��q�P:;�4~O&0���F�����`�����k��'�eB\
�k�u��V�7d�p"��+�l�6�+��	�!S/=�
���ǈ�v�_�vSU�7�u>      �   l   x�u̱�0��{
O�bd�L@s�	E񷌙)��)h(�^��β_m��[�aA������:}�/�I����%	�&{�qጮ��~��t�M�s� ܈1�      �      x�3�4�,����� 
��      �   d   x��˱� ��3��-���jH�K��>��AXL�ؿ���Y�I/$�kD�!��`�
�����S��Y-�=(4��ů5R��l���+�SJ=�*�      �      x�3�4������� ��     