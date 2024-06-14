USE glowtfdb;

INSERT INTO user (name, gender, state, cpf, email, password, admin, id_steam) VALUES
('Admin User', 'Feminino', 'SP', '45678901234', 'admin@example.com', 'adminpass', TRUE, '45678901234567890'),
('Alice Smith', 'Feminino', 'RS', '12345678901', 'alice@example.com', 'password123', FALSE, '12345678901234567'),
('Bob Johnson', 'Masculino', 'PR', '23456789012', 'bob@example.com', 'password456', FALSE, '23456789012345678'),
('Charlie Brown', 'Masculino', 'SC', '34567890123', 'charlie@example.com', 'password789', FALSE, '34567890123456789'),
('Markus Persson', 'Masculino', 'PB', '84678602234', 'mojang@example.com', 'minepass', FALSE, '85345601734362860'),
('Antonio Galarda', 'Masculino', 'SC', '88856684013', 'galarda@example.com', 'password873', FALSE, '55622902232562495'),
('Fornite da Silva', 'Masculino', 'PB', '83853644012', 'epicgamer@example.com', 'epicgames123', FALSE, '55629332233562433'),
('Joao Afonso', 'Masculino', 'PR', '33333333333', 'joaoafonso@example.com', 'coxadoido', FALSE, '12345678901999999');

INSERT INTO paint (name, promo_image, hex_color) VALUES
('O Amargo Sabor de Derrota e Limão', 'O_Amargo_Sabor_de_Derrota_e_Limao.png', '2EB52E'),
('Uma Extraordinária Abundância de Matiz', 'Uma_Extraordinaria_Abundancia_de_Matiz.png', 'BCBEBC'),
('A Cor das Calças de Negócios de um Cavalheiro', 'A_Cor_das_Calcas_de_Negocios_de_um_Cavalheiro.png', 'C7C277'),
('Cinza Bigode Envelhecido', 'Cinza_Bigode_Envelhecido.png', '6F716F'),
('Cor 216 190 216', 'Cor_216_190_216.png', 'C4AFC4'),
('Depois das Oito', 'Depois_das_Oito.png', '292922'),
('Ganância do Zepheniah', 'Ganancia_do_Zepheniah.png', '3A4534'),
('Indiscutivelmente Verde', 'Indiscutivelmente_Verde.png', '6A943E'),
('Injustiça Salmão Escuro', 'Injustica_Salmao_Escuro.png', 'DF9176'),
('Laranja Mann Co.', 'Laranja_Mann_Co.png', 'A65F30'),--
('Marrom Radigan Conagher', 'Marrom_Radigan_Conagher.png', '5F4735'),
('Menta de Macho', 'Menta_de_Macho.png', 'AFCEA8'),
('Muskelmannbraun', 'Muskelmannbraun.png', '906A3D'),
('Oliva Monótono', 'Oliva_Monotono.png', '757701'),
('Ouro Australiano', 'Ouro_Australiano.png', 'C59D34'),
('Rosa pra Caramba', 'Rosa_pra_Caramba.png', 'D85C9A'),
('Tintura Peculiarmente Amarronzada', 'Tintura_Peculiarmente_Amarronzada.png', 'B19F82'),
('Um Profundo Compromisso com Roxo', 'Um_Profundo_Compromisso_com_Roxo.png', '723C66'),
('Uma Cor Similar à Ardósia', 'Uma_Cor_Similar_a_Ardosia.png', '2B4847'),
('Uma Distinta Falta de Coloração', 'Uma_Distinta_Falta_de_Coloracao.png', '131313'),
('Violeta do Nobre Chapeleiro', 'Violeta_do_Nobre_Chapeleiro.png', '4A3445'),
('Vossa Velha Cor Rústica', 'Vossa_Velha_Cor_Rustica.png', '756853');

INSERT INTO hat (inventory, price, promo_image, name, paint_id, description, wiki) VALUES 
(50, 2000, 'bio_sniper_boater_large.png', 'Chapéu Fedora', 1, 'Um elegante chapéu fedora.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(40, 2200, 'cop_helmet_large.png', 'Capacete Mercenário', 2, 'Um capacete resistente usado pelos mercenários.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(30, 1800, 'demo_fiesta_sombrero_large.png', 'Boné Brigadeiro', 3, 'Um boné usado pelos oficiais de brigada.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(20, 2500, 'fwk_spy_inspector_large.png', 'Cartola Aristocrata', 4, 'Uma cartola usada pelos aristocratas.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(25, 1900, 'fwk_spy_disguisedhat_large.png', 'Boina Béret', 5, 'Uma boina estilosa para os soldados.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(60, 1700, 'heavy_stocking_cap_large.png', 'Chapéu de Palha', 6, 'Um chapéu de palha perfeito para o verão.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(45, 2100, 'mannanas_cap_large.png', 'Elmet Costureiro', 7, 'Um capacete usado por costureiros de elite.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(35, 1130, 'medic_german_gonzila_large.png', 'Capacete Medieval', 8, 'Um capacete usado por cavaleiros medievais.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(12, 2100, 'chief_rocketeer_large.png', 'Afro Australiano', 2, 'Um afro estiloso com tema australiano.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(9, 2200, 'fez_large.png', 'Beep Boy', 4, 'Um chapéu eletrônico com tema futurista.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(15, 2250, 'all_scrib_m_demo_large.png', 'Cabeça de Besouro', 5, 'Um chapéu peculiar em forma de cabeça de besouro.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(7, 2300, 'awes_hat_large.png', 'Grande País', 6, 'Um chapéu de cowboy estilo clássico.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(10, 2350, 'berliners_bucket_helm_large.png', 'Kilt Blackwatch', 7, 'Um kilt tradicional com padrão Blackwatch.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(11, 2400, 'bio_heavy_wig_large.png', 'Gorro de Bomba', 8, 'Um gorro em forma de bomba.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(14, 2450, 'fiesta_sombrero_large.png', 'Chapéu de Recompensa', 9, 'Um chapéu usado por caçadores de recompensas.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(13, 2500, 'soldier_spiral_large.png', 'Peruca de Cérebro', 10, 'Uma peruca estilosa em forma de cérebro.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(16, 2550, 'soldier_jeepcap_large.png', 'Coroa de Doces', 11, 'Uma coroa feita de doces.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(18, 2600, 'spy_charmers_chapeau_large.png', 'Chapéu de Chauffeur', 12, 'Um chapéu usado por chauffeurs de luxo.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(17, 2650, 'snaggletooth_large.png', 'Peruca de Palhaço', 13, 'Uma peruca colorida em estilo de palhaço.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(19, 2700, 'sniper_fishinghat_large.png', 'Saco do Médico', 14, 'Um saco de médico vintage.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(20, 2750, 'pro_hat_large.png', 'Nós do Dread', 15, 'Um chapéu com dreadlocks.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(22, 2800, 'pyro_beanie_large.png', 'Hottie de Hottie', 16, 'Um chapéu charmoso e quente.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(25, 2850, 'pyro_chef_hat_large.png', 'Exclusivo do Assassino', 17, 'Um chapéu exclusivo usado por assassinos.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(23, 2900, 'pyro_hat_large.png', 'Espelho do Médico', 18, 'Um espelho vintage usado por médicos.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(21, 2950, 'pyro_brainsucker_large.png', 'Ol Deezer', 19, 'Um chapéu vintage usado por idosos.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(24, 3000, 'pet_balloonicorn_large.png', 'Bandana de Pirata', 20, 'Uma bandana estilosa usada por piratas.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(28, 3050, 'oh_xmas_tree_large.png', 'Pyro Claus', 21, 'Um chapéu temático de Natal para o Pyro.', 'https://wiki.teamfortress.com/wiki/Main_Page'),
(30, 3100, 'blighted_beak_large.png', 'Bico Infectado', 20, 'É uma máscara semelhante à cara de um pássaro baseada diretamente nas históricas máscaras usadas por médicos da peste.', 'https://wiki.teamfortress.com/wiki/Blighted_Beak');


INSERT INTO coupons (expiration_date, discount, uses, start_date, code_name) VALUES
('2024-06-30', 20, 100, '2024-05-17', 'PAOTASTICO2024'),
('2024-07-31', 15, 200, '2024-05-17', 'VERDEAMARGO'),
('2024-08-31', 10, 150, '2024-05-17', 'SUMMERDEAL2024'),
('2024-09-30', 25, 50, '2024-05-17', 'FALLSALE2024'),
('2024-10-31', 30, 75, '2024-05-17', 'HALLOWEEN2024'),
('2024-12-31', 50, 25, '2024-05-17', 'YEAREND2024'),
('2024-12-31', 50, 100, '2024-02-02', 'FREEFIRE1000');

INSERT INTO class (class_name) VALUES 
('Scout'),
('Soldier'),
('Pyro'),  
('Demoman'),
('Heavy'),
('Engineer'),
('Medic'),
('Sniper'),
('Spy');

INSERT INTO hat_has_class (hat_id, class_id) VALUES
(1, 2),
(1, 5),
(2, 5),
(2, 4),
(3, 3),
(3, 4),
(4, 8),
(4, 9),
(5, 1),
(5, 3),
(6, 6),
(6, 7),
(7, 7),
(7, 8),
(8, 9),
(8, 2);

INSERT INTO cart (id_user, date) VALUES
(1, '2024-05-01 10:00:00'),
(2, '2024-05-02 11:00:00'),
(3, '2024-05-03 12:00:00'),
(4, '2024-05-04 13:00:00'),
(5, '2024-05-05 14:00:00'),
(6, '2024-05-06 15:00:00');

INSERT INTO wishlist (id_user) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

INSERT INTO sale (date, id_user, id_coupon, price, payment_method) VALUES
('2023-01-01', 2, 1, 500, 'd'),
('2022-11-20', 3, 5, 800, 'p'),
('2023-05-15', 4, 3, 300, 'p'),
('2022-12-30', 3, 2, 200, 'p'),
('2023-02-28', 2, 4, 600, 'c'),
('2022-09-05', 5, 6, 900, 'b'),
('2023-04-10', 3, 1, 400, 'c'),
('2022-08-25', 5, 3, 200, 'c'),
('2023-03-18', 4, 2, 800, 'd'),
('2023-05-28', 5, 6, 600, 'p'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p'),
('2023-03-18', 4, 2, 800, 'p'),
('2023-05-28', 5, 6, 600, 'c'),
('2023-01-05', 4, 1, 300, 'b'),
('2022-07-12', 5, 4, 700, 'd'),
('2022-10-30', 4, 5, 200, 'b'),
('2023-04-20', 3, 2, 400, 'c'),
('2022-08-25', 5, 3, 200, 'p');

INSERT INTO cart_has_hat (id_cart, id_hat) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

INSERT INTO sale_has_hat (id_sale, id_hat, price) VALUES
(1, 1, 100),
(2, 2, 120),
(3, 3, 80),
(4, 4, 150),
(5, 5, 90),
(6, 6, 70),
(7, 7, 130), 
(8, 1, 800),
(9, 2, 300),
(10, 3, 200),
(11, 4, 600),
(12, 5, 900),
(13, 6, 400),
(14, 1, 200),
(15, 2, 800),
(16, 3, 600),
(17, 4, 500),
(18, 5, 400),
(19, 6, 700),
(20, 7, 300),
(21, 8, 200),
(22, 1, 800),
(23, 2, 600),
(24, 3, 102),
(25, 4, 72),
(26, 5, 112),
(27, 6, 63),
(28, 7, 35),
(29, 1, 500),
(30, 2, 800),
(31, 3, 300),
(32, 4, 200),
(33, 5, 600),
(34, 6, 900),
(35, 7, 400),
(36, 8, 200),
(37, 1, 800),
(38, 2, 600),
(39, 3, 500),
(40, 4, 400),
(41, 5, 700),
(42, 6, 300),
(43, 7, 200),
(44, 8, 800),
(45, 1, 600),
(46, 2, 900),
(47, 3, 200),
(48, 4, 400),
(49, 5, 700),
(50, 6, 300),
(51, 7, 200),
(52, 8, 800),
(53, 1, 600),
(54, 2, 900),
(55, 3, 200),
(56, 4, 400),
(57, 5, 700),
(58, 6, 300),
(59, 7, 200),
(60, 8, 800),
(61, 1, 600),
(62, 2, 900),
(63, 3, 200),
(64, 4, 400),
(65, 5, 700),
(66, 6, 300),
(67, 7, 200),
(68, 8, 800),
(69, 1, 600),
(70, 2, 900),
(71, 3, 200),
(72, 4, 400),
(73, 5, 700),
(74, 6, 300),
(75, 7, 200),
(76, 8, 800),
(77, 1, 600),
(78, 2, 900),
(79, 3, 200),
(80, 4, 400),
(81, 5, 700),
(82, 6, 300),
(83, 7, 200),
(84, 8, 800),
(85, 1, 600),
(86, 2, 900),
(87, 3, 200),
(88, 4, 400),
(89, 5, 700),
(90, 6, 300),
(91, 7, 200),
(92, 8, 800);

INSERT INTO wishlist_has_hat (id_wishlist, id_hat) VALUES
(2, 1),
(3, 2),
(4, 3),
(5, 1),
(6, 2);

INSERT INTO cart_has_hat (id_cart, id_hat) VALUES
(2, 2),
(3, 3), 
(4, 1), 
(5, 2), 
(6, 3); 

-- UPDATE user SET name = 'Charlie Brown Jr.' WHERE id = 3;

-- UPDATE hat SET price = 130 WHERE id = 2;

-- UPDATE coupons SET discount = 25 WHERE id = 1;

-- UPDATE class SET class_name = 'Sniper Elite' WHERE class_id = 9;

-- UPDATE paint SET hex_color = 'FF0000' WHERE paint_id = 3;

-- DELETE FROM cart_has_hat WHERE id = 4;

-- DELETE FROM sale_has_hat WHERE id = 4;

-- DELETE FROM coupons WHERE id = 7;

-- DELETE FROM hat_has_class WHERE class_id = 7;

-- DELETE FROM wishlist_has_hat WHERE id = 4;
