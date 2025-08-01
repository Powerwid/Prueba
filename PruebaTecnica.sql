PGDMP                      }            PruebaTecnica    17.5    17.5 z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    PruebaTecnica    DATABASE     �   CREATE DATABASE "PruebaTecnica" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "PruebaTecnica";
                     postgres    false            �            1259    16543 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    idcategoria integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false            �            1259    16542    categoria_idcategoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_idcategoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categoria_idcategoria_seq;
       public               postgres    false    218            �           0    0    categoria_idcategoria_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categoria_idcategoria_seq OWNED BY public.categoria.idcategoria;
          public               postgres    false    217            �            1259    16572    cliente    TABLE     ]  CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    idtipodocumento integer NOT NULL,
    numerodocumento character varying(30) NOT NULL,
    correo character varying(100) NOT NULL,
    direccionenvio text,
    telefono character varying(20)
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false            �            1259    16571    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public               postgres    false    224            �           0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
          public               postgres    false    223            �            1259    16701    detallepedido    TABLE     �  CREATE TABLE public.detallepedido (
    iddetallepedido integer NOT NULL,
    idpedido integer NOT NULL,
    idproducto integer NOT NULL,
    cantidad integer NOT NULL,
    preciounitario numeric(10,2) NOT NULL,
    subtotal numeric(10,2) GENERATED ALWAYS AS (((cantidad)::numeric * preciounitario)) STORED,
    CONSTRAINT detallepedido_cantidad_check CHECK ((cantidad > 0)),
    CONSTRAINT detallepedido_preciounitario_check CHECK ((preciounitario >= (0)::numeric))
);
 !   DROP TABLE public.detallepedido;
       public         heap r       postgres    false            �            1259    16700 !   detallepedido_iddetallepedido_seq    SEQUENCE     �   CREATE SEQUENCE public.detallepedido_iddetallepedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.detallepedido_iddetallepedido_seq;
       public               postgres    false    240            �           0    0 !   detallepedido_iddetallepedido_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.detallepedido_iddetallepedido_seq OWNED BY public.detallepedido.iddetallepedido;
          public               postgres    false    239            �            1259    16609    empresatransporte    TABLE       CREATE TABLE public.empresatransporte (
    idempresatransporte integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correocontacto character varying(150) NOT NULL,
    telefono character varying(20),
    direccion text,
    activo boolean DEFAULT true
);
 %   DROP TABLE public.empresatransporte;
       public         heap r       postgres    false            �            1259    16608 )   empresatransporte_idempresatransporte_seq    SEQUENCE     �   CREATE SEQUENCE public.empresatransporte_idempresatransporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.empresatransporte_idempresatransporte_seq;
       public               postgres    false    230            �           0    0 )   empresatransporte_idempresatransporte_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.empresatransporte_idempresatransporte_seq OWNED BY public.empresatransporte.idempresatransporte;
          public               postgres    false    229            �            1259    16590    estadopedido    TABLE     u   CREATE TABLE public.estadopedido (
    idestadopedido integer NOT NULL,
    nombre character varying(30) NOT NULL
);
     DROP TABLE public.estadopedido;
       public         heap r       postgres    false            �            1259    16589    estadopedido_idestadopedido_seq    SEQUENCE     �   CREATE SEQUENCE public.estadopedido_idestadopedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estadopedido_idestadopedido_seq;
       public               postgres    false    226            �           0    0    estadopedido_idestadopedido_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estadopedido_idestadopedido_seq OWNED BY public.estadopedido.idestadopedido;
          public               postgres    false    225            �            1259    16721    fotoproducto    TABLE     �   CREATE TABLE public.fotoproducto (
    idfotoproducto integer NOT NULL,
    idproducto integer NOT NULL,
    url text NOT NULL
);
     DROP TABLE public.fotoproducto;
       public         heap r       postgres    false            �            1259    16720    fotoproducto_idfotoproducto_seq    SEQUENCE     �   CREATE SEQUENCE public.fotoproducto_idfotoproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.fotoproducto_idfotoproducto_seq;
       public               postgres    false    242            �           0    0    fotoproducto_idfotoproducto_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.fotoproducto_idfotoproducto_seq OWNED BY public.fotoproducto.idfotoproducto;
          public               postgres    false    241            �            1259    16634    importacion    TABLE     �   CREATE TABLE public.importacion (
    idimportacion integer NOT NULL,
    codigoembarque character varying(50) NOT NULL,
    fechallega date,
    idempresatransporte integer NOT NULL,
    costototal numeric(10,2)
);
    DROP TABLE public.importacion;
       public         heap r       postgres    false            �            1259    16633    importacion_idimportacion_seq    SEQUENCE     �   CREATE SEQUENCE public.importacion_idimportacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.importacion_idimportacion_seq;
       public               postgres    false    234            �           0    0    importacion_idimportacion_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.importacion_idimportacion_seq OWNED BY public.importacion.idimportacion;
          public               postgres    false    233            �            1259    16599 
   metodopago    TABLE     �   CREATE TABLE public.metodopago (
    idmetodopago integer NOT NULL,
    nombre character varying(50) NOT NULL,
    activo boolean DEFAULT true
);
    DROP TABLE public.metodopago;
       public         heap r       postgres    false            �            1259    16598    metodopago_idmetodopago_seq    SEQUENCE     �   CREATE SEQUENCE public.metodopago_idmetodopago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.metodopago_idmetodopago_seq;
       public               postgres    false    228            �           0    0    metodopago_idmetodopago_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.metodopago_idmetodopago_seq OWNED BY public.metodopago.idmetodopago;
          public               postgres    false    227            �            1259    16678    pedido    TABLE        CREATE TABLE public.pedido (
    idpedido integer NOT NULL,
    idcliente integer NOT NULL,
    idestadopedido integer NOT NULL,
    idmetodopago integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total numeric(10,2)
);
    DROP TABLE public.pedido;
       public         heap r       postgres    false            �            1259    16677    pedido_idpedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedido_idpedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pedido_idpedido_seq;
       public               postgres    false    238            �           0    0    pedido_idpedido_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pedido_idpedido_seq OWNED BY public.pedido.idpedido;
          public               postgres    false    237            �            1259    16648    producto    TABLE     �  CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    idcategoria integer NOT NULL,
    preciocomprayuanes numeric(10,2) NOT NULL,
    precioventasoles numeric(10,2) NOT NULL,
    stock integer DEFAULT 0,
    idunidadmedida integer NOT NULL,
    fechaimportacion date,
    idproveedor integer,
    idimportacion integer
);
    DROP TABLE public.producto;
       public         heap r       postgres    false            �            1259    16647    producto_idproducto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.producto_idproducto_seq;
       public               postgres    false    236            �           0    0    producto_idproducto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.producto_idproducto_seq OWNED BY public.producto.idproducto;
          public               postgres    false    235            �            1259    16623 	   proveedor    TABLE     	  CREATE TABLE public.proveedor (
    idproveedor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    razonsocial character varying(150),
    direccionchina text,
    correocontacto character varying(150) NOT NULL,
    telefono character varying(20)
);
    DROP TABLE public.proveedor;
       public         heap r       postgres    false            �            1259    16622    proveedor_idproveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_idproveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.proveedor_idproveedor_seq;
       public               postgres    false    232            �           0    0    proveedor_idproveedor_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.proveedor_idproveedor_seq OWNED BY public.proveedor.idproveedor;
          public               postgres    false    231            �            1259    16552    tipodocumento    TABLE     w   CREATE TABLE public.tipodocumento (
    idtipodocumento integer NOT NULL,
    nombre character varying(30) NOT NULL
);
 !   DROP TABLE public.tipodocumento;
       public         heap r       postgres    false            �            1259    16551 !   tipodocumento_idtipodocumento_seq    SEQUENCE     �   CREATE SEQUENCE public.tipodocumento_idtipodocumento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tipodocumento_idtipodocumento_seq;
       public               postgres    false    220            �           0    0 !   tipodocumento_idtipodocumento_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tipodocumento_idtipodocumento_seq OWNED BY public.tipodocumento.idtipodocumento;
          public               postgres    false    219            �            1259    16561    unidadmedida    TABLE     �   CREATE TABLE public.unidadmedida (
    idunidadmedida integer NOT NULL,
    nombre character varying(50) NOT NULL,
    abreviatura character varying(10) NOT NULL
);
     DROP TABLE public.unidadmedida;
       public         heap r       postgres    false            �            1259    16560    unidadmedida_idunidadmedida_seq    SEQUENCE     �   CREATE SEQUENCE public.unidadmedida_idunidadmedida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.unidadmedida_idunidadmedida_seq;
       public               postgres    false    222            �           0    0    unidadmedida_idunidadmedida_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.unidadmedida_idunidadmedida_seq OWNED BY public.unidadmedida.idunidadmedida;
          public               postgres    false    221            �            1259    16734    videoproducto    TABLE     ^   CREATE TABLE public.videoproducto (
    idproducto integer NOT NULL,
    url text NOT NULL
);
 !   DROP TABLE public.videoproducto;
       public         heap r       postgres    false            �           2604    16546    categoria idcategoria    DEFAULT     ~   ALTER TABLE ONLY public.categoria ALTER COLUMN idcategoria SET DEFAULT nextval('public.categoria_idcategoria_seq'::regclass);
 D   ALTER TABLE public.categoria ALTER COLUMN idcategoria DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16575    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    16704    detallepedido iddetallepedido    DEFAULT     �   ALTER TABLE ONLY public.detallepedido ALTER COLUMN iddetallepedido SET DEFAULT nextval('public.detallepedido_iddetallepedido_seq'::regclass);
 L   ALTER TABLE public.detallepedido ALTER COLUMN iddetallepedido DROP DEFAULT;
       public               postgres    false    239    240    240            �           2604    16612 %   empresatransporte idempresatransporte    DEFAULT     �   ALTER TABLE ONLY public.empresatransporte ALTER COLUMN idempresatransporte SET DEFAULT nextval('public.empresatransporte_idempresatransporte_seq'::regclass);
 T   ALTER TABLE public.empresatransporte ALTER COLUMN idempresatransporte DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16593    estadopedido idestadopedido    DEFAULT     �   ALTER TABLE ONLY public.estadopedido ALTER COLUMN idestadopedido SET DEFAULT nextval('public.estadopedido_idestadopedido_seq'::regclass);
 J   ALTER TABLE public.estadopedido ALTER COLUMN idestadopedido DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    16724    fotoproducto idfotoproducto    DEFAULT     �   ALTER TABLE ONLY public.fotoproducto ALTER COLUMN idfotoproducto SET DEFAULT nextval('public.fotoproducto_idfotoproducto_seq'::regclass);
 J   ALTER TABLE public.fotoproducto ALTER COLUMN idfotoproducto DROP DEFAULT;
       public               postgres    false    241    242    242            �           2604    16637    importacion idimportacion    DEFAULT     �   ALTER TABLE ONLY public.importacion ALTER COLUMN idimportacion SET DEFAULT nextval('public.importacion_idimportacion_seq'::regclass);
 H   ALTER TABLE public.importacion ALTER COLUMN idimportacion DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    16602    metodopago idmetodopago    DEFAULT     �   ALTER TABLE ONLY public.metodopago ALTER COLUMN idmetodopago SET DEFAULT nextval('public.metodopago_idmetodopago_seq'::regclass);
 F   ALTER TABLE public.metodopago ALTER COLUMN idmetodopago DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16681    pedido idpedido    DEFAULT     r   ALTER TABLE ONLY public.pedido ALTER COLUMN idpedido SET DEFAULT nextval('public.pedido_idpedido_seq'::regclass);
 >   ALTER TABLE public.pedido ALTER COLUMN idpedido DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    16651    producto idproducto    DEFAULT     z   ALTER TABLE ONLY public.producto ALTER COLUMN idproducto SET DEFAULT nextval('public.producto_idproducto_seq'::regclass);
 B   ALTER TABLE public.producto ALTER COLUMN idproducto DROP DEFAULT;
       public               postgres    false    236    235    236            �           2604    16626    proveedor idproveedor    DEFAULT     ~   ALTER TABLE ONLY public.proveedor ALTER COLUMN idproveedor SET DEFAULT nextval('public.proveedor_idproveedor_seq'::regclass);
 D   ALTER TABLE public.proveedor ALTER COLUMN idproveedor DROP DEFAULT;
       public               postgres    false    232    231    232            �           2604    16555    tipodocumento idtipodocumento    DEFAULT     �   ALTER TABLE ONLY public.tipodocumento ALTER COLUMN idtipodocumento SET DEFAULT nextval('public.tipodocumento_idtipodocumento_seq'::regclass);
 L   ALTER TABLE public.tipodocumento ALTER COLUMN idtipodocumento DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16564    unidadmedida idunidadmedida    DEFAULT     �   ALTER TABLE ONLY public.unidadmedida ALTER COLUMN idunidadmedida SET DEFAULT nextval('public.unidadmedida_idunidadmedida_seq'::regclass);
 J   ALTER TABLE public.unidadmedida ALTER COLUMN idunidadmedida DROP DEFAULT;
       public               postgres    false    221    222    222            �          0    16543 	   categoria 
   TABLE DATA           E   COPY public.categoria (idcategoria, nombre, descripcion) FROM stdin;
    public               postgres    false    218   f�       �          0    16572    cliente 
   TABLE DATA           �   COPY public.cliente (idcliente, nombre, apellido, idtipodocumento, numerodocumento, correo, direccionenvio, telefono) FROM stdin;
    public               postgres    false    224   ��       �          0    16701    detallepedido 
   TABLE DATA           h   COPY public.detallepedido (iddetallepedido, idpedido, idproducto, cantidad, preciounitario) FROM stdin;
    public               postgres    false    240   ��       �          0    16609    empresatransporte 
   TABLE DATA           u   COPY public.empresatransporte (idempresatransporte, nombre, correocontacto, telefono, direccion, activo) FROM stdin;
    public               postgres    false    230   ��       �          0    16590    estadopedido 
   TABLE DATA           >   COPY public.estadopedido (idestadopedido, nombre) FROM stdin;
    public               postgres    false    226   ڛ       �          0    16721    fotoproducto 
   TABLE DATA           G   COPY public.fotoproducto (idfotoproducto, idproducto, url) FROM stdin;
    public               postgres    false    242   %�       �          0    16634    importacion 
   TABLE DATA           q   COPY public.importacion (idimportacion, codigoembarque, fechallega, idempresatransporte, costototal) FROM stdin;
    public               postgres    false    234   B�       �          0    16599 
   metodopago 
   TABLE DATA           B   COPY public.metodopago (idmetodopago, nombre, activo) FROM stdin;
    public               postgres    false    228   _�       �          0    16678    pedido 
   TABLE DATA           a   COPY public.pedido (idpedido, idcliente, idestadopedido, idmetodopago, fecha, total) FROM stdin;
    public               postgres    false    238   Ϝ       �          0    16648    producto 
   TABLE DATA           �   COPY public.producto (idproducto, nombre, descripcion, idcategoria, preciocomprayuanes, precioventasoles, stock, idunidadmedida, fechaimportacion, idproveedor, idimportacion) FROM stdin;
    public               postgres    false    236   �       �          0    16623 	   proveedor 
   TABLE DATA           o   COPY public.proveedor (idproveedor, nombre, razonsocial, direccionchina, correocontacto, telefono) FROM stdin;
    public               postgres    false    232   	�       �          0    16552    tipodocumento 
   TABLE DATA           @   COPY public.tipodocumento (idtipodocumento, nombre) FROM stdin;
    public               postgres    false    220   &�       �          0    16561    unidadmedida 
   TABLE DATA           K   COPY public.unidadmedida (idunidadmedida, nombre, abreviatura) FROM stdin;
    public               postgres    false    222   t�       �          0    16734    videoproducto 
   TABLE DATA           8   COPY public.videoproducto (idproducto, url) FROM stdin;
    public               postgres    false    243   ͝       �           0    0    categoria_idcategoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_idcategoria_seq', 1, false);
          public               postgres    false    217            �           0    0    cliente_idcliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 1, false);
          public               postgres    false    223            �           0    0 !   detallepedido_iddetallepedido_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.detallepedido_iddetallepedido_seq', 1, false);
          public               postgres    false    239            �           0    0 )   empresatransporte_idempresatransporte_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.empresatransporte_idempresatransporte_seq', 1, false);
          public               postgres    false    229            �           0    0    estadopedido_idestadopedido_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.estadopedido_idestadopedido_seq', 5, true);
          public               postgres    false    225            �           0    0    fotoproducto_idfotoproducto_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.fotoproducto_idfotoproducto_seq', 1, false);
          public               postgres    false    241            �           0    0    importacion_idimportacion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.importacion_idimportacion_seq', 1, false);
          public               postgres    false    233            �           0    0    metodopago_idmetodopago_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.metodopago_idmetodopago_seq', 5, true);
          public               postgres    false    227            �           0    0    pedido_idpedido_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pedido_idpedido_seq', 1, false);
          public               postgres    false    237            �           0    0    producto_idproducto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.producto_idproducto_seq', 1, false);
          public               postgres    false    235            �           0    0    proveedor_idproveedor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.proveedor_idproveedor_seq', 1, false);
          public               postgres    false    231            �           0    0 !   tipodocumento_idtipodocumento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tipodocumento_idtipodocumento_seq', 4, true);
          public               postgres    false    219            �           0    0    unidadmedida_idunidadmedida_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.unidadmedida_idunidadmedida_seq', 5, true);
          public               postgres    false    221            �           2606    16550    categoria categoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (idcategoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public                 postgres    false    218            �           2606    16583    cliente cliente_correo_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_correo_key UNIQUE (correo);
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_correo_key;
       public                 postgres    false    224            �           2606    16581 #   cliente cliente_numerodocumento_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_numerodocumento_key UNIQUE (numerodocumento);
 M   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_numerodocumento_key;
       public                 postgres    false    224            �           2606    16579    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public                 postgres    false    224                       2606    16709     detallepedido detallepedido_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT detallepedido_pkey PRIMARY KEY (iddetallepedido);
 J   ALTER TABLE ONLY public.detallepedido DROP CONSTRAINT detallepedido_pkey;
       public                 postgres    false    240            �           2606    16621 6   empresatransporte empresatransporte_correocontacto_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.empresatransporte
    ADD CONSTRAINT empresatransporte_correocontacto_key UNIQUE (correocontacto);
 `   ALTER TABLE ONLY public.empresatransporte DROP CONSTRAINT empresatransporte_correocontacto_key;
       public                 postgres    false    230            �           2606    16619 .   empresatransporte empresatransporte_nombre_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.empresatransporte
    ADD CONSTRAINT empresatransporte_nombre_key UNIQUE (nombre);
 X   ALTER TABLE ONLY public.empresatransporte DROP CONSTRAINT empresatransporte_nombre_key;
       public                 postgres    false    230            �           2606    16617 (   empresatransporte empresatransporte_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.empresatransporte
    ADD CONSTRAINT empresatransporte_pkey PRIMARY KEY (idempresatransporte);
 R   ALTER TABLE ONLY public.empresatransporte DROP CONSTRAINT empresatransporte_pkey;
       public                 postgres    false    230            �           2606    16597 $   estadopedido estadopedido_nombre_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.estadopedido
    ADD CONSTRAINT estadopedido_nombre_key UNIQUE (nombre);
 N   ALTER TABLE ONLY public.estadopedido DROP CONSTRAINT estadopedido_nombre_key;
       public                 postgres    false    226            �           2606    16595    estadopedido estadopedido_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.estadopedido
    ADD CONSTRAINT estadopedido_pkey PRIMARY KEY (idestadopedido);
 H   ALTER TABLE ONLY public.estadopedido DROP CONSTRAINT estadopedido_pkey;
       public                 postgres    false    226            	           2606    16728    fotoproducto fotoproducto_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.fotoproducto
    ADD CONSTRAINT fotoproducto_pkey PRIMARY KEY (idfotoproducto);
 H   ALTER TABLE ONLY public.fotoproducto DROP CONSTRAINT fotoproducto_pkey;
       public                 postgres    false    242            �           2606    16641 *   importacion importacion_codigoembarque_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.importacion
    ADD CONSTRAINT importacion_codigoembarque_key UNIQUE (codigoembarque);
 T   ALTER TABLE ONLY public.importacion DROP CONSTRAINT importacion_codigoembarque_key;
       public                 postgres    false    234                       2606    16639    importacion importacion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.importacion
    ADD CONSTRAINT importacion_pkey PRIMARY KEY (idimportacion);
 F   ALTER TABLE ONLY public.importacion DROP CONSTRAINT importacion_pkey;
       public                 postgres    false    234            �           2606    16607     metodopago metodopago_nombre_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.metodopago
    ADD CONSTRAINT metodopago_nombre_key UNIQUE (nombre);
 J   ALTER TABLE ONLY public.metodopago DROP CONSTRAINT metodopago_nombre_key;
       public                 postgres    false    228            �           2606    16605    metodopago metodopago_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.metodopago
    ADD CONSTRAINT metodopago_pkey PRIMARY KEY (idmetodopago);
 D   ALTER TABLE ONLY public.metodopago DROP CONSTRAINT metodopago_pkey;
       public                 postgres    false    228                       2606    16684    pedido pedido_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (idpedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public                 postgres    false    238                       2606    16656    producto producto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public                 postgres    false    236            �           2606    16632 &   proveedor proveedor_correocontacto_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_correocontacto_key UNIQUE (correocontacto);
 P   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_correocontacto_key;
       public                 postgres    false    232            �           2606    16630    proveedor proveedor_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public                 postgres    false    232            �           2606    16559 &   tipodocumento tipodocumento_nombre_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipodocumento
    ADD CONSTRAINT tipodocumento_nombre_key UNIQUE (nombre);
 P   ALTER TABLE ONLY public.tipodocumento DROP CONSTRAINT tipodocumento_nombre_key;
       public                 postgres    false    220            �           2606    16557     tipodocumento tipodocumento_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tipodocumento
    ADD CONSTRAINT tipodocumento_pkey PRIMARY KEY (idtipodocumento);
 J   ALTER TABLE ONLY public.tipodocumento DROP CONSTRAINT tipodocumento_pkey;
       public                 postgres    false    220            �           2606    16570 )   unidadmedida unidadmedida_abreviatura_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.unidadmedida
    ADD CONSTRAINT unidadmedida_abreviatura_key UNIQUE (abreviatura);
 S   ALTER TABLE ONLY public.unidadmedida DROP CONSTRAINT unidadmedida_abreviatura_key;
       public                 postgres    false    222            �           2606    16568 $   unidadmedida unidadmedida_nombre_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.unidadmedida
    ADD CONSTRAINT unidadmedida_nombre_key UNIQUE (nombre);
 N   ALTER TABLE ONLY public.unidadmedida DROP CONSTRAINT unidadmedida_nombre_key;
       public                 postgres    false    222            �           2606    16566    unidadmedida unidadmedida_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.unidadmedida
    ADD CONSTRAINT unidadmedida_pkey PRIMARY KEY (idunidadmedida);
 H   ALTER TABLE ONLY public.unidadmedida DROP CONSTRAINT unidadmedida_pkey;
       public                 postgres    false    222                       2606    16740     videoproducto videoproducto_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.videoproducto
    ADD CONSTRAINT videoproducto_pkey PRIMARY KEY (idproducto);
 J   ALTER TABLE ONLY public.videoproducto DROP CONSTRAINT videoproducto_pkey;
       public                 postgres    false    243                       2606    16657    producto fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_categoria FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria);
 ?   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_categoria;
       public               postgres    false    236    218    4827                       2606    16685    pedido fk_cliente    FK CONSTRAINT     {   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_cliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 ;   ALTER TABLE ONLY public.pedido DROP CONSTRAINT fk_cliente;
       public               postgres    false    238    224    4843                       2606    16690    pedido fk_estado    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_estado FOREIGN KEY (idestadopedido) REFERENCES public.estadopedido(idestadopedido);
 :   ALTER TABLE ONLY public.pedido DROP CONSTRAINT fk_estado;
       public               postgres    false    4847    226    238                       2606    16667    producto fk_importacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_importacion FOREIGN KEY (idimportacion) REFERENCES public.importacion(idimportacion);
 A   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_importacion;
       public               postgres    false    236    234    4865                       2606    16695    pedido fk_metodopago    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_metodopago FOREIGN KEY (idmetodopago) REFERENCES public.metodopago(idmetodopago);
 >   ALTER TABLE ONLY public.pedido DROP CONSTRAINT fk_metodopago;
       public               postgres    false    238    4851    228                       2606    16710    detallepedido fk_pedido    FK CONSTRAINT     ~   ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT fk_pedido FOREIGN KEY (idpedido) REFERENCES public.pedido(idpedido);
 A   ALTER TABLE ONLY public.detallepedido DROP CONSTRAINT fk_pedido;
       public               postgres    false    238    4869    240                       2606    16715    detallepedido fk_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT fk_producto FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto);
 C   ALTER TABLE ONLY public.detallepedido DROP CONSTRAINT fk_producto;
       public               postgres    false    240    4867    236                       2606    16729    fotoproducto fk_producto_foto    FK CONSTRAINT     �   ALTER TABLE ONLY public.fotoproducto
    ADD CONSTRAINT fk_producto_foto FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto);
 G   ALTER TABLE ONLY public.fotoproducto DROP CONSTRAINT fk_producto_foto;
       public               postgres    false    242    236    4867                       2606    16741    videoproducto fk_producto_video    FK CONSTRAINT     �   ALTER TABLE ONLY public.videoproducto
    ADD CONSTRAINT fk_producto_video FOREIGN KEY (idproducto) REFERENCES public.producto(idproducto);
 I   ALTER TABLE ONLY public.videoproducto DROP CONSTRAINT fk_producto_video;
       public               postgres    false    4867    236    243                       2606    16662    producto fk_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_proveedor FOREIGN KEY (idproveedor) REFERENCES public.proveedor(idproveedor);
 ?   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_proveedor;
       public               postgres    false    236    4861    232                       2606    16584    cliente fk_tipodocumento    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_tipodocumento FOREIGN KEY (idtipodocumento) REFERENCES public.tipodocumento(idtipodocumento);
 B   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_tipodocumento;
       public               postgres    false    4831    220    224                       2606    16642    importacion fk_transportadora    FK CONSTRAINT     �   ALTER TABLE ONLY public.importacion
    ADD CONSTRAINT fk_transportadora FOREIGN KEY (idempresatransporte) REFERENCES public.empresatransporte(idempresatransporte);
 G   ALTER TABLE ONLY public.importacion DROP CONSTRAINT fk_transportadora;
       public               postgres    false    230    4857    234                       2606    16672    producto fk_unidadmedida    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_unidadmedida FOREIGN KEY (idunidadmedida) REFERENCES public.unidadmedida(idunidadmedida);
 B   ALTER TABLE ONLY public.producto DROP CONSTRAINT fk_unidadmedida;
       public               postgres    false    236    222    4837            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ;   x�3�,H�K�L�+I�2�,HLOL��2�L�+��L����T��)grb^rj����� H*h      �      x������ � �      �      x������ � �      �   `   x����0kg
O��o�4H4�Ġ � �������tג�R�Q8���T2ב7轉��^��PWO��!k1�T����f\Re��LZei�sz�)      �      x������ � �      �      x������ � �      �      x������ � �      �   >   x�3�t���2�
u�2�H,N,�/*I�2�tN,�K-QHIUp�()J��J-:�6�+F��� �S      �   I   x�3���LIL�,R\F�ޙ9��E������\Ɯ>�%E��>\&�ΉY���Y\������%��@1z\\\ �Y      �      x������ � �     