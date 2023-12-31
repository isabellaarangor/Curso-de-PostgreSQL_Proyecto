PGDMP      9            
    {            platzimovies    16.0    16.0 L    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16722    platzimovies    DATABASE     �   CREATE DATABASE platzimovies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE platzimovies;
                postgres    false            �           2606    16864    actores actor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.actores
    ADD CONSTRAINT actor_pkey PRIMARY KEY (actor_id);
 <   ALTER TABLE ONLY public.actores DROP CONSTRAINT actor_pkey;
       public            postgres    false            �           2606    16866    direcciones address_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT address_pkey PRIMARY KEY (direccion_id);
 B   ALTER TABLE ONLY public.direcciones DROP CONSTRAINT address_pkey;
       public            postgres    false            �           2606    16868    categorias category_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoria_id);
 B   ALTER TABLE ONLY public.categorias DROP CONSTRAINT category_pkey;
       public            postgres    false            �           2606    16870    ciudades city_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT city_pkey PRIMARY KEY (ciudad_id);
 <   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT city_pkey;
       public            postgres    false            �           2606    16872    paises country_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT country_pkey PRIMARY KEY (pais_id);
 =   ALTER TABLE ONLY public.paises DROP CONSTRAINT country_pkey;
       public            postgres    false            �           2606    16874    clientes customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cliente_id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT customer_pkey;
       public            postgres    false            �           2606    16876 !   peliculas_actores film_actor_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.peliculas_actores
    ADD CONSTRAINT film_actor_pkey PRIMARY KEY (actor_id, pelicula_id);
 K   ALTER TABLE ONLY public.peliculas_actores DROP CONSTRAINT film_actor_pkey;
       public            postgres    false            �           2606    16878 '   peliculas_categorias film_category_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.peliculas_categorias
    ADD CONSTRAINT film_category_pkey PRIMARY KEY (pelicula_id, categoria_id);
 Q   ALTER TABLE ONLY public.peliculas_categorias DROP CONSTRAINT film_category_pkey;
       public            postgres    false            �           2606    16880    peliculas film_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT film_pkey PRIMARY KEY (pelicula_id);
 =   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT film_pkey;
       public            postgres    false            �           2606    17045    aaa firstkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.aaa
    ADD CONSTRAINT firstkey PRIMARY KEY (bbb);
 6   ALTER TABLE ONLY public.aaa DROP CONSTRAINT firstkey;
       public            postgres    false            �           2606    16882    inventarios inventory_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventario_id);
 D   ALTER TABLE ONLY public.inventarios DROP CONSTRAINT inventory_pkey;
       public            postgres    false            �           2606    16884    lenguajes language_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.lenguajes
    ADD CONSTRAINT language_pkey PRIMARY KEY (lenguaje_id);
 A   ALTER TABLE ONLY public.lenguajes DROP CONSTRAINT language_pkey;
       public            postgres    false            �           2606    16886    ordenes ordenes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_pkey;
       public            postgres    false            �           2606    16888    pagos payment_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT payment_pkey PRIMARY KEY (pago_id);
 <   ALTER TABLE ONLY public.pagos DROP CONSTRAINT payment_pkey;
       public            postgres    false            �           2606    16890 2   peliculas_estadisticas peliculas_estadisticas_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.peliculas_estadisticas
    ADD CONSTRAINT peliculas_estadisticas_pkey PRIMARY KEY (tipo_estadistica);
 \   ALTER TABLE ONLY public.peliculas_estadisticas DROP CONSTRAINT peliculas_estadisticas_pkey;
       public            postgres    false            �           2606    16892 >   precio_peliculas_tipo_cambio precio_peliculas_tipo_cambio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.precio_peliculas_tipo_cambio
    ADD CONSTRAINT precio_peliculas_tipo_cambio_pkey PRIMARY KEY (precio_pelicula_tipo_cambio);
 h   ALTER TABLE ONLY public.precio_peliculas_tipo_cambio DROP CONSTRAINT precio_peliculas_tipo_cambio_pkey;
       public            postgres    false            �           2606    16894    rentas rental_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.rentas
    ADD CONSTRAINT rental_pkey PRIMARY KEY (renta_id);
 <   ALTER TABLE ONLY public.rentas DROP CONSTRAINT rental_pkey;
       public            postgres    false            �           2606    17050    aaab secondkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.aaab
    ADD CONSTRAINT secondkey PRIMARY KEY (bbba);
 8   ALTER TABLE ONLY public.aaab DROP CONSTRAINT secondkey;
       public            postgres    false            �           2606    16896    empleados staff_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT staff_pkey PRIMARY KEY (empleado_id);
 >   ALTER TABLE ONLY public.empleados DROP CONSTRAINT staff_pkey;
       public            postgres    false            �           2606    16898    tiendas store_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT store_pkey PRIMARY KEY (tienda_id);
 <   ALTER TABLE ONLY public.tiendas DROP CONSTRAINT store_pkey;
       public            postgres    false            �           2606    16900    tipos_cambio tipos_cambio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipos_cambio
    ADD CONSTRAINT tipos_cambio_pkey PRIMARY KEY (tipo_cambio_id);
 H   ALTER TABLE ONLY public.tipos_cambio DROP CONSTRAINT tipos_cambio_pkey;
       public            postgres    false            �           1259    16901    film_fulltext_idx    INDEX     O   CREATE INDEX film_fulltext_idx ON public.peliculas USING gist (textocompleto);
 %   DROP INDEX public.film_fulltext_idx;
       public            postgres    false            �           1259    16902    idx_actor_last_name    INDEX     K   CREATE INDEX idx_actor_last_name ON public.actores USING btree (apellido);
 '   DROP INDEX public.idx_actor_last_name;
       public            postgres    false            �           1259    16903    idx_fk_address_id    INDEX     N   CREATE INDEX idx_fk_address_id ON public.clientes USING btree (direccion_id);
 %   DROP INDEX public.idx_fk_address_id;
       public            postgres    false            �           1259    16904    idx_fk_city_id    INDEX     K   CREATE INDEX idx_fk_city_id ON public.direcciones USING btree (ciudad_id);
 "   DROP INDEX public.idx_fk_city_id;
       public            postgres    false            �           1259    16905    idx_fk_country_id    INDEX     I   CREATE INDEX idx_fk_country_id ON public.ciudades USING btree (pais_id);
 %   DROP INDEX public.idx_fk_country_id;
       public            postgres    false            �           1259    16906    idx_fk_customer_id    INDEX     J   CREATE INDEX idx_fk_customer_id ON public.pagos USING btree (cliente_id);
 &   DROP INDEX public.idx_fk_customer_id;
       public            postgres    false            �           1259    16907    idx_fk_film_id    INDEX     S   CREATE INDEX idx_fk_film_id ON public.peliculas_actores USING btree (pelicula_id);
 "   DROP INDEX public.idx_fk_film_id;
       public            postgres    false            �           1259    16908    idx_fk_inventory_id    INDEX     O   CREATE INDEX idx_fk_inventory_id ON public.rentas USING btree (inventario_id);
 '   DROP INDEX public.idx_fk_inventory_id;
       public            postgres    false            �           1259    16909    idx_fk_language_id    INDEX     O   CREATE INDEX idx_fk_language_id ON public.peliculas USING btree (lenguaje_id);
 &   DROP INDEX public.idx_fk_language_id;
       public            postgres    false            �           1259    16910    idx_fk_rental_id    INDEX     F   CREATE INDEX idx_fk_rental_id ON public.pagos USING btree (renta_id);
 $   DROP INDEX public.idx_fk_rental_id;
       public            postgres    false            �           1259    16911    idx_fk_staff_id    INDEX     H   CREATE INDEX idx_fk_staff_id ON public.pagos USING btree (empleado_id);
 #   DROP INDEX public.idx_fk_staff_id;
       public            postgres    false            �           1259    16912    idx_fk_store_id    INDEX     I   CREATE INDEX idx_fk_store_id ON public.clientes USING btree (tienda_id);
 #   DROP INDEX public.idx_fk_store_id;
       public            postgres    false            �           1259    16913    idx_last_name    INDEX     F   CREATE INDEX idx_last_name ON public.clientes USING btree (apellido);
 !   DROP INDEX public.idx_last_name;
       public            postgres    false            �           1259    16914    idx_store_id_film_id    INDEX     ^   CREATE INDEX idx_store_id_film_id ON public.inventarios USING btree (tienda_id, pelicula_id);
 (   DROP INDEX public.idx_store_id_film_id;
       public            postgres    false            �           1259    16915 	   idx_title    INDEX     A   CREATE INDEX idx_title ON public.peliculas USING btree (titulo);
    DROP INDEX public.idx_title;
       public            postgres    false            �           1259    16916    idx_unq_manager_staff_id    INDEX     ]   CREATE UNIQUE INDEX idx_unq_manager_staff_id ON public.tiendas USING btree (jefe_tienda_id);
 ,   DROP INDEX public.idx_unq_manager_staff_id;
       public            postgres    false            �           1259    16917 3   idx_unq_rental_rental_date_inventory_id_customer_id    INDEX     �   CREATE UNIQUE INDEX idx_unq_rental_rental_date_inventory_id_customer_id ON public.rentas USING btree (fecha_renta, inventario_id, cliente_id);
 G   DROP INDEX public.idx_unq_rental_rental_date_inventory_id_customer_id;
       public            postgres    false                       2620    17054    aaa aaa_changes    TRIGGER     q   CREATE TRIGGER aaa_changes BEFORE INSERT ON public.aaa FOR EACH ROW EXECUTE FUNCTION public.duplicate_records();
 (   DROP TRIGGER aaa_changes ON public.aaa;
       public          postgres    false                        2620    16918    actores last_updated    TRIGGER     q   CREATE TRIGGER last_updated BEFORE UPDATE ON public.actores FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 -   DROP TRIGGER last_updated ON public.actores;
       public          postgres    false                       2620    16920    categorias last_updated    TRIGGER     t   CREATE TRIGGER last_updated BEFORE UPDATE ON public.categorias FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 0   DROP TRIGGER last_updated ON public.categorias;
       public          postgres    false                       2620    16921    ciudades last_updated    TRIGGER     r   CREATE TRIGGER last_updated BEFORE UPDATE ON public.ciudades FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 .   DROP TRIGGER last_updated ON public.ciudades;
       public          postgres    false                       2620    16923    clientes last_updated    TRIGGER     r   CREATE TRIGGER last_updated BEFORE UPDATE ON public.clientes FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 .   DROP TRIGGER last_updated ON public.clientes;
       public          postgres    false                       2620    16919    direcciones last_updated    TRIGGER     u   CREATE TRIGGER last_updated BEFORE UPDATE ON public.direcciones FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 1   DROP TRIGGER last_updated ON public.direcciones;
       public          postgres    false                       2620    16930    empleados last_updated    TRIGGER     s   CREATE TRIGGER last_updated BEFORE UPDATE ON public.empleados FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 /   DROP TRIGGER last_updated ON public.empleados;
       public          postgres    false                       2620    16927    inventarios last_updated    TRIGGER     u   CREATE TRIGGER last_updated BEFORE UPDATE ON public.inventarios FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 1   DROP TRIGGER last_updated ON public.inventarios;
       public          postgres    false                       2620    16928    lenguajes last_updated    TRIGGER     s   CREATE TRIGGER last_updated BEFORE UPDATE ON public.lenguajes FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 /   DROP TRIGGER last_updated ON public.lenguajes;
       public          postgres    false                       2620    16922    paises last_updated    TRIGGER     p   CREATE TRIGGER last_updated BEFORE UPDATE ON public.paises FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 ,   DROP TRIGGER last_updated ON public.paises;
       public          postgres    false            	           2620    16924    peliculas last_updated    TRIGGER     s   CREATE TRIGGER last_updated BEFORE UPDATE ON public.peliculas FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 /   DROP TRIGGER last_updated ON public.peliculas;
       public          postgres    false                       2620    16925    peliculas_actores last_updated    TRIGGER     {   CREATE TRIGGER last_updated BEFORE UPDATE ON public.peliculas_actores FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 7   DROP TRIGGER last_updated ON public.peliculas_actores;
       public          postgres    false                       2620    16926 !   peliculas_categorias last_updated    TRIGGER     ~   CREATE TRIGGER last_updated BEFORE UPDATE ON public.peliculas_categorias FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 :   DROP TRIGGER last_updated ON public.peliculas_categorias;
       public          postgres    false                       2620    16929    rentas last_updated    TRIGGER     p   CREATE TRIGGER last_updated BEFORE UPDATE ON public.rentas FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 ,   DROP TRIGGER last_updated ON public.rentas;
       public          postgres    false                       2620    16931    tiendas last_updated    TRIGGER     q   CREATE TRIGGER last_updated BEFORE UPDATE ON public.tiendas FOR EACH ROW EXECUTE FUNCTION public.last_updated();
 -   DROP TRIGGER last_updated ON public.tiendas;
       public          postgres    false            
           2620    25223 %   peliculas trigger_update_tipos_cambio    TRIGGER     �   CREATE TRIGGER trigger_update_tipos_cambio AFTER INSERT OR UPDATE ON public.peliculas FOR EACH ROW EXECUTE FUNCTION public.precio_peliculas_tipo_cambio();
 >   DROP TRIGGER trigger_update_tipos_cambio ON public.peliculas;
       public          postgres    false            �           2606    16932 !   clientes customer_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT customer_address_id_fkey FOREIGN KEY (direccion_id) REFERENCES public.direcciones(direccion_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.clientes DROP CONSTRAINT customer_address_id_fkey;
       public          postgres    false    4801            �           2606    16937 *   peliculas_actores film_actor_actor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_actores
    ADD CONSTRAINT film_actor_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actores(actor_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.peliculas_actores DROP CONSTRAINT film_actor_actor_id_fkey;
       public          postgres    false    4788            �           2606    16942 )   peliculas_actores film_actor_film_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_actores
    ADD CONSTRAINT film_actor_film_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.peliculas(pelicula_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.peliculas_actores DROP CONSTRAINT film_actor_film_id_fkey;
       public          postgres    false    4821            �           2606    16947 3   peliculas_categorias film_category_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_categorias
    ADD CONSTRAINT film_category_category_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ]   ALTER TABLE ONLY public.peliculas_categorias DROP CONSTRAINT film_category_category_id_fkey;
       public          postgres    false    4791            �           2606    16952 /   peliculas_categorias film_category_film_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas_categorias
    ADD CONSTRAINT film_category_film_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.peliculas(pelicula_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.peliculas_categorias DROP CONSTRAINT film_category_film_id_fkey;
       public          postgres    false    4821            �           2606    16957    peliculas film_language_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT film_language_id_fkey FOREIGN KEY (lenguaje_id) REFERENCES public.lenguajes(lenguaje_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.peliculas DROP CONSTRAINT film_language_id_fkey;
       public          postgres    false    4809            �           2606    16962    direcciones fk_address_city    FK CONSTRAINT     �   ALTER TABLE ONLY public.direcciones
    ADD CONSTRAINT fk_address_city FOREIGN KEY (ciudad_id) REFERENCES public.ciudades(ciudad_id);
 E   ALTER TABLE ONLY public.direcciones DROP CONSTRAINT fk_address_city;
       public          postgres    false    4793            �           2606    16967    ciudades fk_city    FK CONSTRAINT     u   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT fk_city FOREIGN KEY (pais_id) REFERENCES public.paises(pais_id);
 :   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT fk_city;
       public          postgres    false    4818            �           2606    16972 "   inventarios inventory_film_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventory_film_id_fkey FOREIGN KEY (pelicula_id) REFERENCES public.peliculas(pelicula_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.inventarios DROP CONSTRAINT inventory_film_id_fkey;
       public          postgres    false    4821            �           2606    16977    pagos payment_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT payment_customer_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(cliente_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.pagos DROP CONSTRAINT payment_customer_id_fkey;
       public          postgres    false    4796            �           2606    16982    pagos payment_rental_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT payment_rental_id_fkey FOREIGN KEY (renta_id) REFERENCES public.rentas(renta_id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pagos DROP CONSTRAINT payment_rental_id_fkey;
       public          postgres    false    4836            �           2606    16987    pagos payment_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT payment_staff_id_fkey FOREIGN KEY (empleado_id) REFERENCES public.empleados(empleado_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.pagos DROP CONSTRAINT payment_staff_id_fkey;
       public          postgres    false    4804            �           2606    16992    rentas rental_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentas
    ADD CONSTRAINT rental_customer_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(cliente_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.rentas DROP CONSTRAINT rental_customer_id_fkey;
       public          postgres    false    4796            �           2606    16997    rentas rental_inventory_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentas
    ADD CONSTRAINT rental_inventory_id_fkey FOREIGN KEY (inventario_id) REFERENCES public.inventarios(inventario_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.rentas DROP CONSTRAINT rental_inventory_id_fkey;
       public          postgres    false    4807            �           2606    17002    rentas rental_staff_id_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentas
    ADD CONSTRAINT rental_staff_id_key FOREIGN KEY (empleado_id) REFERENCES public.empleados(empleado_id);
 D   ALTER TABLE ONLY public.rentas DROP CONSTRAINT rental_staff_id_key;
       public          postgres    false    4804            �           2606    17007    empleados staff_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT staff_address_id_fkey FOREIGN KEY ("dirección_id") REFERENCES public.direcciones(direccion_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.empleados DROP CONSTRAINT staff_address_id_fkey;
       public          postgres    false    4801            �           2606    17012    tiendas store_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT store_address_id_fkey FOREIGN KEY (direccion_id) REFERENCES public.direcciones(direccion_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.tiendas DROP CONSTRAINT store_address_id_fkey;
       public          postgres    false    4801            �           2606    17017 #   tiendas store_manager_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT store_manager_staff_id_fkey FOREIGN KEY (jefe_tienda_id) REFERENCES public.empleados(empleado_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.tiendas DROP CONSTRAINT store_manager_staff_id_fkey;
       public          postgres    false    4804           