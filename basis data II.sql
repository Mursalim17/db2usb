PGDMP         :    
            {         	   penjualan    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16454 	   penjualan    DATABASE     ?   CREATE DATABASE penjualan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE penjualan;
                postgres    false            ?            1259    16455    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    namabarang character varying(50),
    varian character varying(50),
    harga_beli integer,
    harga_jual integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16470    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(50),
    jenis_kelamin character(1),
    alamat character varying(50),
    kode_pos integer,
    tgl_lahir integer
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16465 	   pembelian    TABLE     ?   CREATE TABLE public.pembelian (
    id_pembelian integer NOT NULL,
    id_barang integer,
    id_suplier integer,
    qty integer,
    tgl date
);
    DROP TABLE public.pembelian;
       public         heap    postgres    false            ?            1259    16460    pesanan    TABLE     ?   CREATE TABLE public.pesanan (
    id_pesanan integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    harga_beli integer,
    qty integer,
    tgl_pesan date
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false            ?            1259    16475    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(50),
    alamat character varying(50),
    kode_pos integer,
    kota character varying(50)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false                      0    16455    barang 
   TABLE DATA           W   COPY public.barang (id_barang, namabarang, varian, harga_beli, harga_jual) FROM stdin;
    public          postgres    false    214   ?                 0    16470    pembeli 
   TABLE DATA           g   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, alamat, kode_pos, tgl_lahir) FROM stdin;
    public          postgres    false    217   $                 0    16465 	   pembelian 
   TABLE DATA           R   COPY public.pembelian (id_pembelian, id_barang, id_suplier, qty, tgl) FROM stdin;
    public          postgres    false    216   ?                 0    16460    pesanan 
   TABLE DATA           b   COPY public.pesanan (id_pesanan, id_pelanggan, id_barang, harga_beli, qty, tgl_pesan) FROM stdin;
    public          postgres    false    215                    0    16475    supplier 
   TABLE DATA           V   COPY public.supplier (id_supplier, nama_supplier, alamat, kode_pos, kota) FROM stdin;
    public          postgres    false    218   ?       u           2606    16459    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    214            {           2606    16474    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    217            y           2606    16469    pembelian pembelian_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pembelian
    ADD CONSTRAINT pembelian_pkey PRIMARY KEY (id_pembelian);
 B   ALTER TABLE ONLY public.pembelian DROP CONSTRAINT pembelian_pkey;
       public            postgres    false    216            w           2606    16464    pesanan pesanan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (id_pesanan);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    215            }           2606    16479    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    218               ?  x?m??r?0 ???)x?tB`?B??Sr?e??HH??/?J?Dr?·Zij???et??o?3?9?@
!??T??W{s????I??pEo?qA{????Ɂ{H'8???⊰?I?j?<??!q?C5??h?uK?????$?<??0'???T]?@*?6JC2??n?<%????T???7l	??h??@????6B??{?t?Tj??=9^????&$;?F???l*?B>k?=??14b?3?ޔT'zb8P??mF?F??e????X>?0??X?F3*?g?lJ?gF???>؅-.TN26d5??l[7?|[?d?½*I&??+???/_??*?}??v??[??z?n?rf????/????q\?=????'?7E??q:??
5         |   x?E??
?0F???#?	E?t_???????@nDJ???`u}>?p?emO??P??Z?????!??$?1bѶ?Y??<`??0a?Z5???	??8?f??`?z/??c?'?U-???s?%????]?D??)?         R   x?=??	?0Cѳ?????i?K???
)?????%??e$??d
?R??6P?(??G$????3?C?????܂L/w? ???         ^   x?=?A?0D?5?3LK[????ᨍB?_???I?5 F#???(?t|:~e?6i?N+<??~S??]ui?^?'?K^?%??????W~?~Q7         ?   x?M??? Dg?
? ?*u?֡R?v?b)4!	a??~??n?????ʖ??}????@;Bb7?i8+mt????t?a???@+??{??R]I] ?E,69l?7?l?3?S?ߡ?)???6?G@@?W????ҧ/??V?a?	g??LIe?O?g?9? ??IM     