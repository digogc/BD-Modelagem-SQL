PGDMP  .                
    |            SH-BD    16.4    16.4 S   t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    18991    SH-BD    DATABASE     ~   CREATE DATABASE "SH-BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "SH-BD";
                postgres    false            �            1259    18992    academia    TABLE     �   CREATE TABLE public.academia (
    numero numeric(10,0) NOT NULL,
    quantidade_equipamentos numeric(3,0),
    ultima_manutencao_bebedouro character varying(10) NOT NULL,
    quantidade_chuveiros numeric(2,0)
);
    DROP TABLE public.academia;
       public         heap    postgres    false            �            1259    18997 
   acomodacao    TABLE     �   CREATE TABLE public.acomodacao (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    valor numeric(7,0) NOT NULL,
    ultima_limpeza date NOT NULL
);
    DROP TABLE public.acomodacao;
       public         heap    postgres    false            �            1259    19002    acumula    TABLE     t   CREATE TABLE public.acumula (
    nome character varying(30) NOT NULL,
    e_mail character varying(30) NOT NULL
);
    DROP TABLE public.acumula;
       public         heap    postgres    false            �            1259    19007    alimento    TABLE     �   CREATE TABLE public.alimento (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    quantidade_desejada numeric(6,0) NOT NULL,
    quantidade_existente numeric(6,0) NOT NULL
);
    DROP TABLE public.alimento;
       public         heap    postgres    false            �            1259    19012    aluguel    TABLE       CREATE TABLE public.aluguel (
    id character(10) NOT NULL,
    pag_id character(10) NOT NULL,
    valor_total numeric(6,2) NOT NULL,
    valor_base numeric(6,2),
    multa numeric(7,0),
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.aluguel;
       public         heap    postgres    false            �            1259    19019 	   amenidade    TABLE     K   CREATE TABLE public.amenidade (
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.amenidade;
       public         heap    postgres    false            �            1259    19024    ar_livre    TABLE     �   CREATE TABLE public.ar_livre (
    numero numeric(6,0) NOT NULL,
    churrasqueira character(1),
    forno_a_lenha character(1),
    freezer character(1)
);
    DROP TABLE public.ar_livre;
       public         heap    postgres    false            �            1259    19029    armazena    TABLE     c   CREATE TABLE public.armazena (
    a_a_id character(10) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.armazena;
       public         heap    postgres    false            �            1259    19034    assalariado    TABLE     �   CREATE TABLE public.assalariado (
    cpf character(14) NOT NULL,
    horassemana numeric(2,0) NOT NULL,
    salario_mensal numeric(7,2) NOT NULL
);
    DROP TABLE public.assalariado;
       public         heap    postgres    false            �            1259    19046    autonomo    TABLE     f   CREATE TABLE public.autonomo (
    cpf character(14) NOT NULL,
    valorhora numeric(6,2) NOT NULL
);
    DROP TABLE public.autonomo;
       public         heap    postgres    false            �            1259    19039    autorizacao    TABLE     �   CREATE TABLE public.autorizacao (
    id character(10) NOT NULL,
    nec_id character(10) NOT NULL,
    validade date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.autorizacao;
       public         heap    postgres    false            �            1259    19051 	   banho_pet    TABLE     �   CREATE TABLE public.banho_pet (
    numero numeric(10,0) NOT NULL,
    nome_pet character varying(20),
    telefone_dono character(13) NOT NULL,
    m2_agua_gastos numeric(3,0),
    data date NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.banho_pet;
       public         heap    postgres    false            �            1259    19056    beneficiado    TABLE     m   CREATE TABLE public.beneficiado (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.beneficiado;
       public         heap    postgres    false            �            1259    19061    beneficiados    TABLE     �   CREATE TABLE public.beneficiados (
    cpf character(14) NOT NULL,
    numero numeric(10,0) NOT NULL,
    cpf_beneficiado character(14) NOT NULL
);
     DROP TABLE public.beneficiados;
       public         heap    postgres    false            �            1259    19066 	   beneficio    TABLE     l   CREATE TABLE public.beneficio (
    nome character varying(30) NOT NULL,
    valor numeric(6,2) NOT NULL
);
    DROP TABLE public.beneficio;
       public         heap    postgres    false            �            1259    19071    cafe_da_manha    TABLE     g   CREATE TABLE public.cafe_da_manha (
    id character(10) NOT NULL,
    reserva_de_mesa numeric(3,0)
);
 !   DROP TABLE public.cafe_da_manha;
       public         heap    postgres    false            �            1259    19081    campanha    TABLE     �   CREATE TABLE public.campanha (
    id character(10) NOT NULL,
    nome character varying(30),
    periodo character varying(20),
    objetivo character varying(40),
    verba numeric(6,2),
    pro_nome character varying(30)
);
    DROP TABLE public.campanha;
       public         heap    postgres    false            �            1259    19086    chatbot    TABLE     �   CREATE TABLE public.chatbot (
    registro_digital character varying(10) NOT NULL,
    cnpj character(18) NOT NULL,
    nome_avatar character varying(30),
    versao character varying(8)
);
    DROP TABLE public.chatbot;
       public         heap    postgres    false            �            1259    19093    compra    TABLE     �   CREATE TABLE public.compra (
    id character(10) NOT NULL,
    valor numeric(6,2) NOT NULL,
    horario character(6) NOT NULL,
    servico_de_quarto character(1),
    cafe_da_manha character(1),
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    19098    consome    TABLE     �   CREATE TABLE public.consome (
    idconsome character(10) NOT NULL,
    numero numeric(10,0) NOT NULL,
    id character(10) NOT NULL,
    dia date,
    horario character(6),
    quantidade numeric(2,0) NOT NULL
);
    DROP TABLE public.consome;
       public         heap    postgres    false            �            1259    19076    data_status    TABLE     �   CREATE TABLE public.data_status (
    numero numeric(10,0) NOT NULL,
    dia character varying(2) NOT NULL,
    mes numeric(2,0) NOT NULL,
    status character varying(8) NOT NULL
);
    DROP TABLE public.data_status;
       public         heap    postgres    false            �            1259    19103    delivery    TABLE     8  CREATE TABLE public.delivery (
    id character(10) NOT NULL,
    empresa_associada character varying(30) NOT NULL,
    data date NOT NULL,
    horario character(6) NOT NULL,
    valor numeric(6,2) NOT NULL,
    tipo character varying(15),
    fei_id character(10) NOT NULL,
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.delivery;
       public         heap    postgres    false            �            1259    19108    departamento    TABLE     �   CREATE TABLE public.departamento (
    numero numeric(2,0) NOT NULL,
    nome character varying(30) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    19118    dependencia    TABLE     G  CREATE TABLE public.dependencia (
    numero numeric(10,0) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    id character(10) NOT NULL,
    sala_eventos numeric(10,0),
    restaurante numeric(10,0),
    piscina numeric(10,0),
    empresa_turismo numeric(10,0),
    acomodacao numeric(10,0),
    academia numeric(10,0)
);
    DROP TABLE public.dependencia;
       public         heap    postgres    false            �            1259    19113 
   dependente    TABLE     }   CREATE TABLE public.dependente (
    cpf character(14) NOT NULL,
    hospede_principal_responsavel character(14) NOT NULL
);
    DROP TABLE public.dependente;
       public         heap    postgres    false            �            1259    19123 	   dispoe_de    TABLE     n   CREATE TABLE public.dispoe_de (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.dispoe_de;
       public         heap    postgres    false            �            1259    19128 	   documento    TABLE     �   CREATE TABLE public.documento (
    id character(10) NOT NULL,
    e_r_id character(10) NOT NULL,
    tipo character varying(30) NOT NULL,
    data_emissao date,
    data_vencimento date NOT NULL
);
    DROP TABLE public.documento;
       public         heap    postgres    false            &           1259    19405    e_divulgada_por    TABLE     q   CREATE TABLE public.e_divulgada_por (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
 #   DROP TABLE public.e_divulgada_por;
       public         heap    postgres    false            �            1259    19135    empresa_turismo    TABLE     �   CREATE TABLE public.empresa_turismo (
    numero numeric(10,0) NOT NULL,
    nome character varying(30),
    especialidade character varying(30)
);
 #   DROP TABLE public.empresa_turismo;
       public         heap    postgres    false            �            1259    19140    espaco    TABLE     *  CREATE TABLE public.espaco (
    numero numeric(6,0) NOT NULL,
    nome character varying(30),
    tamanho numeric(4,0) NOT NULL,
    valor numeric(7,2) NOT NULL,
    capacidade_maxima numeric(4,0) NOT NULL,
    sala numeric(6,0),
    ar_livre numeric(6,0),
    eng_numero numeric(5,0) NOT NULL
);
    DROP TABLE public.espaco;
       public         heap    postgres    false            �            1259    19145    espaco_eventos    TABLE     �   CREATE TABLE public.espaco_eventos (
    numero numeric(5,0) NOT NULL,
    id character(10) NOT NULL,
    senha_wifi character varying(30)
);
 "   DROP TABLE public.espaco_eventos;
       public         heap    postgres    false            �            1259    19152    estabelecimento    TABLE       CREATE TABLE public.estabelecimento (
    id character(10) NOT NULL,
    nome character varying(30),
    faturamento_mensal numeric(7,2),
    numero numeric(3,0) NOT NULL,
    teatro character(10),
    loja character(10),
    local_alimentacao character(10)
);
 #   DROP TABLE public.estabelecimento;
       public         heap    postgres    false            �            1259    19157    estadia_anterior    TABLE     �  CREATE TABLE public.estadia_anterior (
    id character(10) NOT NULL,
    responsavel character(14) NOT NULL,
    data_check_in character(10),
    data_check_out character(10),
    tipo_de_hospede character(1),
    valor_gasto numeric(7,2),
    unidade character(10) NOT NULL,
    acomodacao numeric(10,0) NOT NULL,
    pontos_gerados numeric(6,0) NOT NULL,
    cnpj character(18) NOT NULL
);
 $   DROP TABLE public.estadia_anterior;
       public         heap    postgres    false            �            1259    19162    evento    TABLE     U  CREATE TABLE public.evento (
    id character(10) NOT NULL,
    nome character varying(30),
    cpf_responsavel character(14) NOT NULL,
    acesso character varying(30) NOT NULL,
    valor numeric(6,2),
    dia date NOT NULL,
    horario character(6) NOT NULL,
    classificacao_indicativa character(2),
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.evento;
       public         heap    postgres    false            �            1259    19167    funcionario    TABLE     j  CREATE TABLE public.funcionario (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    data_nascimento date,
    data_contratacao date NOT NULL,
    genero character(1),
    raca character varying(8),
    cargo character varying(30) NOT NULL,
    autonomo character(14),
    assalariado character(14),
    numero numeric(2,0) NOT NULL
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    19172    ganhador    TABLE     �   CREATE TABLE public.ganhador (
    id character(10) NOT NULL,
    cpf character(14) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.ganhador;
       public         heap    postgres    false            �            1259    19177    garagem    TABLE     �   CREATE TABLE public.garagem (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL,
    valordia numeric(2,2) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.garagem;
       public         heap    postgres    false                        1259    19207    hospede    TABLE     5  CREATE TABLE public.hospede (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    e_mail character varying(30),
    data_nascimento date,
    genero character(1),
    pod_cpf character(14),
    principal character(14),
    dependente character(14),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.hospede;
       public         heap    postgres    false            �            1259    19182    hotel    TABLE       CREATE TABLE public.hotel (
    id character(10) NOT NULL,
    categoria character varying(20) NOT NULL,
    estado character(2),
    cidade character varying(30),
    bairro character varying(30),
    rua character varying(34),
    numero numeric(3,0),
    cep character(9) NOT NULL,
    nome_real character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL,
    capacidade_maxima numeric(6,0) NOT NULL,
    area_m2 numeric(6,0) NOT NULL,
    data_inauguracao date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    19187    hotel_empresarial    TABLE     �   CREATE TABLE public.hotel_empresarial (
    id character(10) NOT NULL,
    quantidade_salas_reuniao numeric(3,0),
    qualidade_wifi character varying(5) NOT NULL
);
 %   DROP TABLE public.hotel_empresarial;
       public         heap    postgres    false            �            1259    19192    hotel_familiar    TABLE     �   CREATE TABLE public.hotel_familiar (
    id character(10) NOT NULL,
    brinquedos character(1),
    salao_de_jogos_infantil character(1)
);
 "   DROP TABLE public.hotel_familiar;
       public         heap    postgres    false            �            1259    19197    hotel_para_adulto    TABLE     �   CREATE TABLE public.hotel_para_adulto (
    id character(10) NOT NULL,
    quantidade_bares numeric(2,0),
    quantidade_saunas numeric(2,0),
    quantidade_adegas numeric(2,0),
    salao_de_jogos_adultos character(1)
);
 %   DROP TABLE public.hotel_para_adulto;
       public         heap    postgres    false            �            1259    19202    hotel_para_pets    TABLE     �   CREATE TABLE public.hotel_para_pets (
    id character(10) NOT NULL,
    quantidade_patios numeric(2,0),
    area_brinquedos_pets character(1)
);
 #   DROP TABLE public.hotel_para_pets;
       public         heap    postgres    false                       1259    19212    inclui    TABLE     �   CREATE TABLE public.inclui (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    i_a_numero numeric(10,0) NOT NULL,
    periodo numeric(3,0) NOT NULL
);
    DROP TABLE public.inclui;
       public         heap    postgres    false                       1259    19219    influenciador_parceiro    TABLE     �   CREATE TABLE public.influenciador_parceiro (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    remuneracao numeric(7,2)
);
 *   DROP TABLE public.influenciador_parceiro;
       public         heap    postgres    false                       1259    19224 	   instagram    TABLE     �   CREATE TABLE public.instagram (
    nome character varying(30) NOT NULL,
    frequencia_stories character varying(10),
    frequencia_postagens character varying(10)
);
    DROP TABLE public.instagram;
       public         heap    postgres    false                       1259    19229    limpeza_de_pele    TABLE     u   CREATE TABLE public.limpeza_de_pele (
    numero character(6) NOT NULL,
    produtos_usados character varying(40)
);
 #   DROP TABLE public.limpeza_de_pele;
       public         heap    postgres    false                       1259    19234    lobby    TABLE     _   CREATE TABLE public.lobby (
    numero numeric(3,0) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.lobby;
       public         heap    postgres    false                       1259    19241    local_alimentacao    TABLE     j   CREATE TABLE public.local_alimentacao (
    id character(10) NOT NULL,
    nicho character varying(30)
);
 %   DROP TABLE public.local_alimentacao;
       public         heap    postgres    false                       1259    19246    loja    TABLE     ]   CREATE TABLE public.loja (
    id character(10) NOT NULL,
    nicho character varying(30)
);
    DROP TABLE public.loja;
       public         heap    postgres    false                       1259    19251    massagem    TABLE     c   CREATE TABLE public.massagem (
    numero character(6) NOT NULL,
    tipo character varying(15)
);
    DROP TABLE public.massagem;
       public         heap    postgres    false            	           1259    19256    nota_fiscal    TABLE       CREATE TABLE public.nota_fiscal (
    id character(10) NOT NULL,
    valor_total numeric(8,2) NOT NULL,
    descontos numeric(8,0),
    multa numeric(8,0),
    data_limite date NOT NULL,
    quitada character(1) NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.nota_fiscal;
       public         heap    postgres    false            
           1259    19261    oferece    TABLE     l   CREATE TABLE public.oferece (
    numero numeric(10,0) NOT NULL,
    nome character varying(10) NOT NULL
);
    DROP TABLE public.oferece;
       public         heap    postgres    false                       1259    19266 	   pagamento    TABLE       CREATE TABLE public.pagamento (
    id character(10) NOT NULL,
    cnpj_destinatario character(18) NOT NULL,
    valor numeric(7,2) NOT NULL,
    referencia character varying(30) NOT NULL,
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.pagamento;
       public         heap    postgres    false                       1259    19281    peca    TABLE     �   CREATE TABLE public.peca (
    nome character varying(30) NOT NULL,
    valor numeric(3,2) NOT NULL,
    data date NOT NULL,
    horario character(6) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.peca;
       public         heap    postgres    false                       1259    19271    permite    TABLE     c   CREATE TABLE public.permite (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.permite;
       public         heap    postgres    false                       1259    19276    personal_trainer    TABLE     �   CREATE TABLE public.personal_trainer (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    formacao character varying(30),
    valorhora numeric(4,2) NOT NULL
);
 $   DROP TABLE public.personal_trainer;
       public         heap    postgres    false                       1259    19286    piscina    TABLE     �   CREATE TABLE public.piscina (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL,
    profundidade numeric(3,2) NOT NULL,
    data_ultima_limpeza date NOT NULL
);
    DROP TABLE public.piscina;
       public         heap    postgres    false                       1259    19291 	   principal    TABLE     �   CREATE TABLE public.principal (
    cpf character(14) NOT NULL,
    id character(10) NOT NULL,
    forma_pagamento character varying(30) NOT NULL
);
    DROP TABLE public.principal;
       public         heap    postgres    false                       1259    19298    produto_frigobar    TABLE     �   CREATE TABLE public.produto_frigobar (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    valorunidade numeric(4,2) NOT NULL
);
 $   DROP TABLE public.produto_frigobar;
       public         heap    postgres    false                       1259    19303    rede    TABLE     �   CREATE TABLE public.rede (
    cnpj character(18) NOT NULL,
    nome_real character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL
);
    DROP TABLE public.rede;
       public         heap    postgres    false                       1259    19308    rede_social    TABLE     &  CREATE TABLE public.rede_social (
    nome character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    media_curtidas numeric(8,0),
    youtube character varying(30),
    instagram character varying(30),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.rede_social;
       public         heap    postgres    false                       1259    19313    refeicao    TABLE     �   CREATE TABLE public.refeicao (
    nome character varying(10) NOT NULL,
    horario character(6) NOT NULL,
    valor numeric(4,2) NOT NULL
);
    DROP TABLE public.refeicao;
       public         heap    postgres    false                       1259    19318 
   requisicao    TABLE     �  CREATE TABLE public.requisicao (
    id character varying(10) NOT NULL,
    unidade character varying(30) NOT NULL,
    origem character varying(18) NOT NULL,
    dependencia character varying(30) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date,
    classificacao character varying(30) NOT NULL,
    complemento character varying(100) NOT NULL,
    registro_digital character varying(10) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.requisicao;
       public         heap    postgres    false                       1259    19323    reserva    TABLE     �   CREATE TABLE public.reserva (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL,
    data_check_in date NOT NULL,
    data_check_out date NOT NULL,
    pontos_gerados numeric(6,0) NOT NULL
);
    DROP TABLE public.reserva;
       public         heap    postgres    false                       1259    19328    restaurante    TABLE     �   CREATE TABLE public.restaurante (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(4,0),
    status character varying(30) NOT NULL
);
    DROP TABLE public.restaurante;
       public         heap    postgres    false                       1259    19333    robo_social    TABLE     �   CREATE TABLE public.robo_social (
    id character(10) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    status character varying(30) NOT NULL
);
    DROP TABLE public.robo_social;
       public         heap    postgres    false                       1259    19338    sala    TABLE     �   CREATE TABLE public.sala (
    numero numeric(6,0) NOT NULL,
    quantidade_banheiros numeric(2,0),
    cozinha character(1),
    quantidade_televisao numeric(2,0),
    quantidade_ventiladores numeric(2,0),
    quantidade_ar_condicionado numeric(2,0)
);
    DROP TABLE public.sala;
       public         heap    postgres    false                       1259    19343    sala_eventos    TABLE     u   CREATE TABLE public.sala_eventos (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
     DROP TABLE public.sala_eventos;
       public         heap    postgres    false                       1259    19348    seguidor    TABLE     �   CREATE TABLE public.seguidor (
    e_mail character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.seguidor;
       public         heap    postgres    false                       1259    19353    servico_de_quarto    TABLE     �   CREATE TABLE public.servico_de_quarto (
    id character(10) NOT NULL,
    item character varying(30),
    data character(10) NOT NULL,
    entregador character varying(30) NOT NULL
);
 %   DROP TABLE public.servico_de_quarto;
       public         heap    postgres    false                       1259    19358    sessao_terapia_ocupacional    TABLE        CREATE TABLE public.sessao_terapia_ocupacional (
    data date NOT NULL,
    horario character(6) NOT NULL,
    duracao character varying(6) NOT NULL,
    objetivo character varying(30),
    capacidade_maxima numeric(4,0),
    id character(10) NOT NULL
);
 .   DROP TABLE public.sessao_terapia_ocupacional;
       public         heap    postgres    false                       1259    19363    sorteio    TABLE     �   CREATE TABLE public.sorteio (
    id character(10) NOT NULL,
    item character varying(20) NOT NULL,
    quantidade numeric(2,0) NOT NULL,
    data date NOT NULL,
    horario character varying(6) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.sorteio;
       public         heap    postgres    false                       1259    19368    spa    TABLE     �   CREATE TABLE public.spa (
    numero numeric(4,0) NOT NULL,
    id character(10) NOT NULL,
    nome character varying(30),
    valordia numeric(4,2) NOT NULL
);
    DROP TABLE public.spa;
       public         heap    postgres    false                        1259    19375    teatro    TABLE     k   CREATE TABLE public.teatro (
    id character(10) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
    DROP TABLE public.teatro;
       public         heap    postgres    false            !           1259    19380 
   tratamento    TABLE     �   CREATE TABLE public.tratamento (
    numero character(6) NOT NULL,
    duracao character varying(6),
    exe_numero numeric(4,0) NOT NULL
);
    DROP TABLE public.tratamento;
       public         heap    postgres    false            "           1259    19385 
   usado_para    TABLE     n   CREATE TABLE public.usado_para (
    numero numeric(6,0) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.usado_para;
       public         heap    postgres    false            #           1259    19390    uso    TABLE     �   CREATE TABLE public.uso (
    nome character varying(30) NOT NULL,
    classificacao_indicativa character varying(5) NOT NULL
);
    DROP TABLE public.uso;
       public         heap    postgres    false            $           1259    19395    vaga    TABLE     �   CREATE TABLE public.vaga (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    status character varying(20) NOT NULL
);
    DROP TABLE public.vaga;
       public         heap    postgres    false            %           1259    19400    youtube    TABLE     v   CREATE TABLE public.youtube (
    nome character varying(30) NOT NULL,
    frequencia_videos character varying(10)
);
    DROP TABLE public.youtube;
       public         heap    postgres    false            "          0    18992    academia 
   TABLE DATA           v   COPY public.academia (numero, quantidade_equipamentos, ultima_manutencao_bebedouro, quantidade_chuveiros) FROM stdin;
    public          postgres    false    215   �      #          0    18997 
   acomodacao 
   TABLE DATA           I   COPY public.acomodacao (numero, tipo, valor, ultima_limpeza) FROM stdin;
    public          postgres    false    216   x�      $          0    19002    acumula 
   TABLE DATA           /   COPY public.acumula (nome, e_mail) FROM stdin;
    public          postgres    false    217   3�      %          0    19007    alimento 
   TABLE DATA           W   COPY public.alimento (id, nome, quantidade_desejada, quantidade_existente) FROM stdin;
    public          postgres    false    218   P�      &          0    19012    aluguel 
   TABLE DATA           c   COPY public.aluguel (id, pag_id, valor_total, valor_base, multa, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    219   m�      '          0    19019 	   amenidade 
   TABLE DATA           )   COPY public.amenidade (tipo) FROM stdin;
    public          postgres    false    220   ��      (          0    19024    ar_livre 
   TABLE DATA           Q   COPY public.ar_livre (numero, churrasqueira, forno_a_lenha, freezer) FROM stdin;
    public          postgres    false    221   �      )          0    19029    armazena 
   TABLE DATA           .   COPY public.armazena (a_a_id, id) FROM stdin;
    public          postgres    false    222   8�      *          0    19034    assalariado 
   TABLE DATA           G   COPY public.assalariado (cpf, horassemana, salario_mensal) FROM stdin;
    public          postgres    false    223   U�      ,          0    19046    autonomo 
   TABLE DATA           2   COPY public.autonomo (cpf, valorhora) FROM stdin;
    public          postgres    false    225   r�      +          0    19039    autorizacao 
   TABLE DATA           A   COPY public.autorizacao (id, nec_id, validade, cnpj) FROM stdin;
    public          postgres    false    224   ��      -          0    19051 	   banho_pet 
   TABLE DATA           ^   COPY public.banho_pet (numero, nome_pet, telefone_dono, m2_agua_gastos, data, id) FROM stdin;
    public          postgres    false    226   ��      .          0    19056    beneficiado 
   TABLE DATA           0   COPY public.beneficiado (cpf, nome) FROM stdin;
    public          postgres    false    227   ɨ      /          0    19061    beneficiados 
   TABLE DATA           D   COPY public.beneficiados (cpf, numero, cpf_beneficiado) FROM stdin;
    public          postgres    false    228   �      0          0    19066 	   beneficio 
   TABLE DATA           0   COPY public.beneficio (nome, valor) FROM stdin;
    public          postgres    false    229   O�      1          0    19071    cafe_da_manha 
   TABLE DATA           <   COPY public.cafe_da_manha (id, reserva_de_mesa) FROM stdin;
    public          postgres    false    230   l�      3          0    19081    campanha 
   TABLE DATA           P   COPY public.campanha (id, nome, periodo, objetivo, verba, pro_nome) FROM stdin;
    public          postgres    false    232   ��      4          0    19086    chatbot 
   TABLE DATA           N   COPY public.chatbot (registro_digital, cnpj, nome_avatar, versao) FROM stdin;
    public          postgres    false    233   ��      5          0    19093    compra 
   TABLE DATA           ^   COPY public.compra (id, valor, horario, servico_de_quarto, cafe_da_manha, numero) FROM stdin;
    public          postgres    false    234   ƫ      6          0    19098    consome 
   TABLE DATA           R   COPY public.consome (idconsome, numero, id, dia, horario, quantidade) FROM stdin;
    public          postgres    false    235   [�      2          0    19076    data_status 
   TABLE DATA           ?   COPY public.data_status (numero, dia, mes, status) FROM stdin;
    public          postgres    false    231   ��      7          0    19103    delivery 
   TABLE DATA           e   COPY public.delivery (id, empresa_associada, data, horario, valor, tipo, fei_id, numero) FROM stdin;
    public          postgres    false    236   �      8          0    19108    departamento 
   TABLE DATA           8   COPY public.departamento (numero, nome, id) FROM stdin;
    public          postgres    false    237   r�      :          0    19118    dependencia 
   TABLE DATA           �   COPY public.dependencia (numero, data_ultima_manutencao, id, sala_eventos, restaurante, piscina, empresa_turismo, acomodacao, academia) FROM stdin;
    public          postgres    false    239   ��      9          0    19113 
   dependente 
   TABLE DATA           H   COPY public.dependente (cpf, hospede_principal_responsavel) FROM stdin;
    public          postgres    false    238   (�      ;          0    19123 	   dispoe_de 
   TABLE DATA           1   COPY public.dispoe_de (numero, tipo) FROM stdin;
    public          postgres    false    240   �      <          0    19128 	   documento 
   TABLE DATA           T   COPY public.documento (id, e_r_id, tipo, data_emissao, data_vencimento) FROM stdin;
    public          postgres    false    241   ��      q          0    19405    e_divulgada_por 
   TABLE DATA           4   COPY public.e_divulgada_por (cpf, nome) FROM stdin;
    public          postgres    false    294   ��      =          0    19135    empresa_turismo 
   TABLE DATA           F   COPY public.empresa_turismo (numero, nome, especialidade) FROM stdin;
    public          postgres    false    242   �      >          0    19140    espaco 
   TABLE DATA           m   COPY public.espaco (numero, nome, tamanho, valor, capacidade_maxima, sala, ar_livre, eng_numero) FROM stdin;
    public          postgres    false    243   ҵ      ?          0    19145    espaco_eventos 
   TABLE DATA           @   COPY public.espaco_eventos (numero, id, senha_wifi) FROM stdin;
    public          postgres    false    244   �      @          0    19152    estabelecimento 
   TABLE DATA           p   COPY public.estabelecimento (id, nome, faturamento_mensal, numero, teatro, loja, local_alimentacao) FROM stdin;
    public          postgres    false    245   �      A          0    19157    estadia_anterior 
   TABLE DATA           �   COPY public.estadia_anterior (id, responsavel, data_check_in, data_check_out, tipo_de_hospede, valor_gasto, unidade, acomodacao, pontos_gerados, cnpj) FROM stdin;
    public          postgres    false    246   )�      B          0    19162    evento 
   TABLE DATA           z   COPY public.evento (id, nome, cpf_responsavel, acesso, valor, dia, horario, classificacao_indicativa, numero) FROM stdin;
    public          postgres    false    247   F�      C          0    19167    funcionario 
   TABLE DATA           �   COPY public.funcionario (cpf, nome, data_nascimento, data_contratacao, genero, raca, cargo, autonomo, assalariado, numero) FROM stdin;
    public          postgres    false    248   M�      D          0    19172    ganhador 
   TABLE DATA           1   COPY public.ganhador (id, cpf, nome) FROM stdin;
    public          postgres    false    249   j�      E          0    19177    garagem 
   TABLE DATA           P   COPY public.garagem (numero, tipo, capacidade_maxima, valordia, id) FROM stdin;
    public          postgres    false    250   ��      K          0    19207    hospede 
   TABLE DATA           s   COPY public.hospede (cpf, nome, e_mail, data_nascimento, genero, pod_cpf, principal, dependente, cnpj) FROM stdin;
    public          postgres    false    256   ��      F          0    19182    hotel 
   TABLE DATA           �   COPY public.hotel (id, categoria, estado, cidade, bairro, rua, numero, cep, nome_real, nome_fantasia, capacidade_maxima, area_m2, data_inauguracao, cnpj) FROM stdin;
    public          postgres    false    251   �      G          0    19187    hotel_empresarial 
   TABLE DATA           Y   COPY public.hotel_empresarial (id, quantidade_salas_reuniao, qualidade_wifi) FROM stdin;
    public          postgres    false    252   پ      H          0    19192    hotel_familiar 
   TABLE DATA           Q   COPY public.hotel_familiar (id, brinquedos, salao_de_jogos_infantil) FROM stdin;
    public          postgres    false    253   ��      I          0    19197    hotel_para_adulto 
   TABLE DATA              COPY public.hotel_para_adulto (id, quantidade_bares, quantidade_saunas, quantidade_adegas, salao_de_jogos_adultos) FROM stdin;
    public          postgres    false    254   �      J          0    19202    hotel_para_pets 
   TABLE DATA           V   COPY public.hotel_para_pets (id, quantidade_patios, area_brinquedos_pets) FROM stdin;
    public          postgres    false    255   0�      L          0    19212    inclui 
   TABLE DATA           I   COPY public.inclui (for_numero, numero, i_a_numero, periodo) FROM stdin;
    public          postgres    false    257   M�      M          0    19219    influenciador_parceiro 
   TABLE DATA           [   COPY public.influenciador_parceiro (cpf, nome, numero_seguidores, remuneracao) FROM stdin;
    public          postgres    false    258   j�      N          0    19224 	   instagram 
   TABLE DATA           S   COPY public.instagram (nome, frequencia_stories, frequencia_postagens) FROM stdin;
    public          postgres    false    259   �      O          0    19229    limpeza_de_pele 
   TABLE DATA           B   COPY public.limpeza_de_pele (numero, produtos_usados) FROM stdin;
    public          postgres    false    260   <�      P          0    19234    lobby 
   TABLE DATA           +   COPY public.lobby (numero, id) FROM stdin;
    public          postgres    false    261   Y�      Q          0    19241    local_alimentacao 
   TABLE DATA           6   COPY public.local_alimentacao (id, nicho) FROM stdin;
    public          postgres    false    262   v�      R          0    19246    loja 
   TABLE DATA           )   COPY public.loja (id, nicho) FROM stdin;
    public          postgres    false    263   ��      S          0    19251    massagem 
   TABLE DATA           0   COPY public.massagem (numero, tipo) FROM stdin;
    public          postgres    false    264   ��      T          0    19256    nota_fiscal 
   TABLE DATA           d   COPY public.nota_fiscal (id, valor_total, descontos, multa, data_limite, quitada, cnpj) FROM stdin;
    public          postgres    false    265   ��      U          0    19261    oferece 
   TABLE DATA           /   COPY public.oferece (numero, nome) FROM stdin;
    public          postgres    false    266   ��      V          0    19266 	   pagamento 
   TABLE DATA           c   COPY public.pagamento (id, cnpj_destinatario, valor, referencia, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    267   ;�      Y          0    19281    peca 
   TABLE DATA           >   COPY public.peca (nome, valor, data, horario, id) FROM stdin;
    public          postgres    false    270   X�      W          0    19271    permite 
   TABLE DATA           .   COPY public.permite (numero, cpf) FROM stdin;
    public          postgres    false    268   u�      X          0    19276    personal_trainer 
   TABLE DATA           J   COPY public.personal_trainer (cpf, nome, formacao, valorhora) FROM stdin;
    public          postgres    false    269   &�      Z          0    19286    piscina 
   TABLE DATA           R   COPY public.piscina (numero, tipo, profundidade, data_ultima_limpeza) FROM stdin;
    public          postgres    false    271   \�      [          0    19291 	   principal 
   TABLE DATA           =   COPY public.principal (cpf, id, forma_pagamento) FROM stdin;
    public          postgres    false    272   �      \          0    19298    produto_frigobar 
   TABLE DATA           B   COPY public.produto_frigobar (id, nome, valorunidade) FROM stdin;
    public          postgres    false    273   4�      ]          0    19303    rede 
   TABLE DATA           >   COPY public.rede (cnpj, nome_real, nome_fantasia) FROM stdin;
    public          postgres    false    274   ��      ^          0    19308    rede_social 
   TABLE DATA           p   COPY public.rede_social (nome, perfil, numero_seguidores, media_curtidas, youtube, instagram, cnpj) FROM stdin;
    public          postgres    false    275   �      _          0    19313    refeicao 
   TABLE DATA           8   COPY public.refeicao (nome, horario, valor) FROM stdin;
    public          postgres    false    276   ��      `          0    19318 
   requisicao 
   TABLE DATA           �   COPY public.requisicao (id, unidade, origem, dependencia, data_inicio, data_fim, classificacao, complemento, registro_digital, cpf) FROM stdin;
    public          postgres    false    277   ��      a          0    19323    reserva 
   TABLE DATA           ]   COPY public.reserva (numero, cpf, data_check_in, data_check_out, pontos_gerados) FROM stdin;
    public          postgres    false    278   �      b          0    19328    restaurante 
   TABLE DATA           H   COPY public.restaurante (numero, capacidade_maxima, status) FROM stdin;
    public          postgres    false    279   &�      c          0    19333    robo_social 
   TABLE DATA           I   COPY public.robo_social (id, data_ultima_manutencao, status) FROM stdin;
    public          postgres    false    280   ��      d          0    19338    sala 
   TABLE DATA           �   COPY public.sala (numero, quantidade_banheiros, cozinha, quantidade_televisao, quantidade_ventiladores, quantidade_ar_condicionado) FROM stdin;
    public          postgres    false    281   ��      e          0    19343    sala_eventos 
   TABLE DATA           A   COPY public.sala_eventos (numero, capacidade_maxima) FROM stdin;
    public          postgres    false    282   �      f          0    19348    seguidor 
   TABLE DATA           8   COPY public.seguidor (e_mail, perfil, nome) FROM stdin;
    public          postgres    false    283   H�      g          0    19353    servico_de_quarto 
   TABLE DATA           G   COPY public.servico_de_quarto (id, item, data, entregador) FROM stdin;
    public          postgres    false    284   �      h          0    19358    sessao_terapia_ocupacional 
   TABLE DATA           m   COPY public.sessao_terapia_ocupacional (data, horario, duracao, objetivo, capacidade_maxima, id) FROM stdin;
    public          postgres    false    285   !�      i          0    19363    sorteio 
   TABLE DATA           L   COPY public.sorteio (id, item, quantidade, data, horario, nome) FROM stdin;
    public          postgres    false    286   >�      j          0    19368    spa 
   TABLE DATA           9   COPY public.spa (numero, id, nome, valordia) FROM stdin;
    public          postgres    false    287   [�      k          0    19375    teatro 
   TABLE DATA           7   COPY public.teatro (id, capacidade_maxima) FROM stdin;
    public          postgres    false    288   x�      l          0    19380 
   tratamento 
   TABLE DATA           A   COPY public.tratamento (numero, duracao, exe_numero) FROM stdin;
    public          postgres    false    289   ��      m          0    19385 
   usado_para 
   TABLE DATA           2   COPY public.usado_para (numero, nome) FROM stdin;
    public          postgres    false    290   ��      n          0    19390    uso 
   TABLE DATA           =   COPY public.uso (nome, classificacao_indicativa) FROM stdin;
    public          postgres    false    291   ��      o          0    19395    vaga 
   TABLE DATA           :   COPY public.vaga (for_numero, numero, status) FROM stdin;
    public          postgres    false    292   ��      p          0    19400    youtube 
   TABLE DATA           :   COPY public.youtube (nome, frequencia_videos) FROM stdin;
    public          postgres    false    293   	�      �           2606    18996    academia id_acade_depen_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_id;
       public            postgres    false    215            �           2606    19001    acomodacao id_acomo_depen_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_id PRIMARY KEY (numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_id;
       public            postgres    false    216            �           2606    19006    acumula id_acumula_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT id_acumula_id PRIMARY KEY (e_mail, nome);
 ?   ALTER TABLE ONLY public.acumula DROP CONSTRAINT id_acumula_id;
       public            postgres    false    217    217            �           2606    19011    alimento id_alimento_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT id_alimento_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.alimento DROP CONSTRAINT id_alimento_id;
       public            postgres    false    218            �           2606    19016    aluguel id_aluguel_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT id_aluguel_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT id_aluguel_id;
       public            postgres    false    219            �           2606    19023    amenidade id_amenidade_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade_id PRIMARY KEY (tipo);
 C   ALTER TABLE ONLY public.amenidade DROP CONSTRAINT id_amenidade_id;
       public            postgres    false    220            �           2606    19028    ar_livre id_ar_li_espac_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_id;
       public            postgres    false    221            �           2606    19033    armazena id_armazena_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT id_armazena_id PRIMARY KEY (a_a_id, id);
 A   ALTER TABLE ONLY public.armazena DROP CONSTRAINT id_armazena_id;
       public            postgres    false    222    222            �           2606    19038    assalariado id_assal_funci_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_id;
       public            postgres    false    223            �           2606    19050    autonomo id_auton_funci_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_id PRIMARY KEY (cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_id;
       public            postgres    false    225            �           2606    19043    autorizacao id_autorizacao_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT id_autorizacao_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT id_autorizacao_id;
       public            postgres    false    224            �           2606    19055    banho_pet id_banho_pet_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT id_banho_pet_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT id_banho_pet_id;
       public            postgres    false    226            �           2606    19060    beneficiado id_beneficiado_id 
   CONSTRAINT     b   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT id_beneficiado_id PRIMARY KEY (cpf, nome);
 G   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT id_beneficiado_id;
       public            postgres    false    227    227            �           2606    19842    beneficiados id_beneficiados_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT id_beneficiados_id PRIMARY KEY (cpf, numero, cpf_beneficiado);
 I   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT id_beneficiados_id;
       public            postgres    false    228    228    228            �           2606    19070    beneficio id_beneficio_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.beneficio
    ADD CONSTRAINT id_beneficio_id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.beneficio DROP CONSTRAINT id_beneficio_id;
       public            postgres    false    229            �           2606    19075    cafe_da_manha id_cafe__compr_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_id PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_id;
       public            postgres    false    230            �           2606    19085    campanha id_campanha_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT id_campanha_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.campanha DROP CONSTRAINT id_campanha_id;
       public            postgres    false    232            �           2606    19090    chatbot id_chatbot_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT id_chatbot_id PRIMARY KEY (registro_digital);
 ?   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT id_chatbot_id;
       public            postgres    false    233            �           2606    19097    compra id_compra_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_compra_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_compra_id;
       public            postgres    false    234            �           2606    19102    consome id_consome_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome_id PRIMARY KEY (idconsome);
 ?   ALTER TABLE ONLY public.consome DROP CONSTRAINT id_consome_id;
       public            postgres    false    235            �           2606    19080    data_status id_data_status_id 
   CONSTRAINT     i   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT id_data_status_id PRIMARY KEY (numero, dia, mes);
 G   ALTER TABLE ONLY public.data_status DROP CONSTRAINT id_data_status_id;
       public            postgres    false    231    231    231            �           2606    19107    delivery id_delivery_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT id_delivery_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.delivery DROP CONSTRAINT id_delivery_id;
       public            postgres    false    236            �           2606    19112    departamento id_departamento_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT id_departamento_id PRIMARY KEY (numero);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT id_departamento_id;
       public            postgres    false    237            �           2606    19117    dependente id_depen_hospe_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_id PRIMARY KEY (cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_id;
       public            postgres    false    238            �           2606    19122    dependencia id_dependencia_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT id_dependencia_id;
       public            postgres    false    239            �           2606    19127    dispoe_de id_dispoe_de_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT id_dispoe_de_id PRIMARY KEY (tipo, numero);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT id_dispoe_de_id;
       public            postgres    false    240    240            �           2606    19132    documento id_documento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT id_documento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.documento DROP CONSTRAINT id_documento_id;
       public            postgres    false    241            <           2606    19409 %   e_divulgada_por id_e_divulgada_por_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT id_e_divulgada_por_id PRIMARY KEY (cpf, nome);
 O   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT id_e_divulgada_por_id;
       public            postgres    false    294    294            �           2606    19139 !   empresa_turismo id_empre_depen_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_id;
       public            postgres    false    242            �           2606    19149 #   espaco_eventos id_espaco_eventos_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT id_espaco_eventos_id PRIMARY KEY (numero);
 M   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT id_espaco_eventos_id;
       public            postgres    false    244            �           2606    19144    espaco id_espaco_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT id_espaco_id PRIMARY KEY (numero);
 =   ALTER TABLE ONLY public.espaco DROP CONSTRAINT id_espaco_id;
       public            postgres    false    243            �           2606    19156 %   estabelecimento id_estabelecimento_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT id_estabelecimento_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT id_estabelecimento_id;
       public            postgres    false    245            �           2606    19161 '   estadia_anterior id_estadia_anterior_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT id_estadia_anterior_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT id_estadia_anterior_id;
       public            postgres    false    246            �           2606    19166    evento id_evento_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_evento_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.evento DROP CONSTRAINT id_evento_id;
       public            postgres    false    247            �           2606    19171    funcionario id_funcionario_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT id_funcionario_id;
       public            postgres    false    248            �           2606    19176    ganhador id_ganhador_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT id_ganhador_id PRIMARY KEY (id, cpf);
 A   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT id_ganhador_id;
       public            postgres    false    249    249            �           2606    19181    garagem id_garagem_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT id_garagem_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.garagem DROP CONSTRAINT id_garagem_id;
       public            postgres    false    250            �           2606    19211    hospede id_hospede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede_id PRIMARY KEY (cpf);
 ?   ALTER TABLE ONLY public.hospede DROP CONSTRAINT id_hospede_id;
       public            postgres    false    256            �           2606    19201 %   hotel_para_adulto id_hotel_hotel_1_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_id;
       public            postgres    false    254            �           2606    19196 "   hotel_familiar id_hotel_hotel_2_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_id PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_id;
       public            postgres    false    253            �           2606    19191 %   hotel_empresarial id_hotel_hotel_3_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_id;
       public            postgres    false    252            �           2606    19206 !   hotel_para_pets id_hotel_hotel_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_id PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_id;
       public            postgres    false    255            �           2606    19186    hotel id_hotel_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT id_hotel_id PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.hotel DROP CONSTRAINT id_hotel_id;
       public            postgres    false    251            �           2606    19216    inclui id_inclu_vaga_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_id PRIMARY KEY (for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_id;
       public            postgres    false    257    257            �           2606    19223 3   influenciador_parceiro id_influenciador_parceiro_id 
   CONSTRAINT     r   ALTER TABLE ONLY public.influenciador_parceiro
    ADD CONSTRAINT id_influenciador_parceiro_id PRIMARY KEY (cpf);
 ]   ALTER TABLE ONLY public.influenciador_parceiro DROP CONSTRAINT id_influenciador_parceiro_id;
       public            postgres    false    258            �           2606    19228    instagram id_insta_rede__id 
   CONSTRAINT     [   ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__id PRIMARY KEY (nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__id;
       public            postgres    false    259            �           2606    19233 !   limpeza_de_pele id_limpe_trata_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_id;
       public            postgres    false    260            �           2606    19238    lobby id_lobby_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT id_lobby_id PRIMARY KEY (numero);
 ;   ALTER TABLE ONLY public.lobby DROP CONSTRAINT id_lobby_id;
       public            postgres    false    261            �           2606    19245 #   local_alimentacao id_local_estab_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_id;
       public            postgres    false    262            �           2606    19250    loja id_loja_estab_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_id;
       public            postgres    false    263            �           2606    19255    massagem id_massa_trata_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_id;
       public            postgres    false    264            �           2606    19260    nota_fiscal id_nota_fiscal_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT id_nota_fiscal_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT id_nota_fiscal_id;
       public            postgres    false    265                        2606    19265    oferece id_oferece_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT id_oferece_id PRIMARY KEY (nome, numero);
 ?   ALTER TABLE ONLY public.oferece DROP CONSTRAINT id_oferece_id;
       public            postgres    false    266    266                       2606    19270    pagamento id_pagamento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT id_pagamento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT id_pagamento_id;
       public            postgres    false    267                       2606    19285    peca id_peca_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT id_peca_id PRIMARY KEY (nome, data, horario);
 9   ALTER TABLE ONLY public.peca DROP CONSTRAINT id_peca_id;
       public            postgres    false    270    270    270                       2606    19275    permite id_permite_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT id_permite_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.permite DROP CONSTRAINT id_permite_id;
       public            postgres    false    268    268                       2606    19280 '   personal_trainer id_personal_trainer_id 
   CONSTRAINT     f   ALTER TABLE ONLY public.personal_trainer
    ADD CONSTRAINT id_personal_trainer_id PRIMARY KEY (cpf);
 Q   ALTER TABLE ONLY public.personal_trainer DROP CONSTRAINT id_personal_trainer_id;
       public            postgres    false    269            
           2606    19290    piscina id_pisci_depen_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_id;
       public            postgres    false    271                       2606    19295    principal id_princ_hospe_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_id PRIMARY KEY (cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_id;
       public            postgres    false    272                       2606    19302 '   produto_frigobar id_produto_frigobar_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.produto_frigobar DROP CONSTRAINT id_produto_frigobar_id;
       public            postgres    false    273                       2606    19307    rede id_rede_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.rede
    ADD CONSTRAINT id_rede_id PRIMARY KEY (cnpj);
 9   ALTER TABLE ONLY public.rede DROP CONSTRAINT id_rede_id;
       public            postgres    false    274                       2606    19312    rede_social id_rede_social_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT id_rede_social_id PRIMARY KEY (nome);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT id_rede_social_id;
       public            postgres    false    275                       2606    19317    refeicao id_refeicao_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.refeicao
    ADD CONSTRAINT id_refeicao_id PRIMARY KEY (nome);
 A   ALTER TABLE ONLY public.refeicao DROP CONSTRAINT id_refeicao_id;
       public            postgres    false    276                       2606    19322    requisicao id_requisicao_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao_id PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT id_requisicao_id;
       public            postgres    false    277                       2606    19327    reserva id_reserva_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.reserva DROP CONSTRAINT id_reserva_id;
       public            postgres    false    278    278                       2606    19332    restaurante id_resta_depen_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_id;
       public            postgres    false    279                       2606    19337    robo_social id_robo_social_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.robo_social
    ADD CONSTRAINT id_robo_social_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.robo_social DROP CONSTRAINT id_robo_social_id;
       public            postgres    false    280            "           2606    19347    sala_eventos id_sala__depen_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_id PRIMARY KEY (numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_id;
       public            postgres    false    282                        2606    19342    sala id_sala_espac_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_id;
       public            postgres    false    281            $           2606    19352    seguidor id_seguidor_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.seguidor
    ADD CONSTRAINT id_seguidor_id PRIMARY KEY (perfil);
 A   ALTER TABLE ONLY public.seguidor DROP CONSTRAINT id_seguidor_id;
       public            postgres    false    283            &           2606    19357 #   servico_de_quarto id_servi_compr_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_id;
       public            postgres    false    284            (           2606    19362 ;   sessao_terapia_ocupacional id_sessao_terapia_ocupacional_id 
   CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT id_sessao_terapia_ocupacional_id PRIMARY KEY (data, horario);
 e   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT id_sessao_terapia_ocupacional_id;
       public            postgres    false    285    285            *           2606    19367    sorteio id_sorteio_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT id_sorteio_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT id_sorteio_id;
       public            postgres    false    286            ,           2606    19372    spa id_spa_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT id_spa_id PRIMARY KEY (numero);
 7   ALTER TABLE ONLY public.spa DROP CONSTRAINT id_spa_id;
       public            postgres    false    287            0           2606    19379    teatro id_teatr_estab_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_id PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_id;
       public            postgres    false    288            2           2606    19384    tratamento id_tratamento_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT id_tratamento_id PRIMARY KEY (numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT id_tratamento_id;
       public            postgres    false    289            4           2606    19389    usado_para id_usado_para_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT id_usado_para_id PRIMARY KEY (numero, nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT id_usado_para_id;
       public            postgres    false    290    290            6           2606    19394    uso id_uso_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.uso
    ADD CONSTRAINT id_uso_id PRIMARY KEY (nome);
 7   ALTER TABLE ONLY public.uso DROP CONSTRAINT id_uso_id;
       public            postgres    false    291            8           2606    19399    vaga id_vaga_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT id_vaga_id PRIMARY KEY (for_numero, numero);
 9   ALTER TABLE ONLY public.vaga DROP CONSTRAINT id_vaga_id;
       public            postgres    false    292    292            :           2606    19404    youtube id_youtu_rede__id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__id;
       public            postgres    false    293            �           2606    19018    aluguel sid_alugu_estab_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_id UNIQUE (pag_id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_id;
       public            postgres    false    219            �           2606    19045    autorizacao sid_autor_estab_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_id UNIQUE (nec_id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_id;
       public            postgres    false    224            �           2606    19092    chatbot sid_chatb_rede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_id UNIQUE (cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_id;
       public            postgres    false    233            �           2606    19134    documento sid_docum_pagam_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_id UNIQUE (e_r_id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_id;
       public            postgres    false    241            �           2606    19151 !   espaco_eventos sid_espac_hotel_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_id UNIQUE (id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_id;
       public            postgres    false    244            �           2606    19218    inclui sid_inclu_acomo_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_id UNIQUE (i_a_numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_id;
       public            postgres    false    257            �           2606    19240    lobby sid_lobby_hotel_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_id UNIQUE (id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_id;
       public            postgres    false    261                       2606    19297    principal sid_princ_nota__id 
   CONSTRAINT     U   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__id UNIQUE (id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__id;
       public            postgres    false    272            .           2606    19374    spa sid_spa_hotel_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_id UNIQUE (id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_id;
       public            postgres    false    287            ?           2606    19420    acumula equ_acumu_segui    FK CONSTRAINT     |   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT equ_acumu_segui FOREIGN KEY (e_mail) REFERENCES public.seguidor(perfil);
 A   ALTER TABLE ONLY public.acumula DROP CONSTRAINT equ_acumu_segui;
       public          postgres    false    217    5156    283            D           2606    19450    armazena equ_armaz_alime    FK CONSTRAINT     y   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_alime FOREIGN KEY (a_a_id) REFERENCES public.alimento(id);
 B   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_alime;
       public          postgres    false    222    5010    218            E           2606    19445    armazena equ_armaz_hotel_fk    FK CONSTRAINT     u   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 E   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_hotel_fk;
       public          postgres    false    222    5086    251            K           2606    19480    beneficiado equ_benef_benef_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT equ_benef_benef_fk FOREIGN KEY (nome) REFERENCES public.beneficio(nome);
 H   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT equ_benef_benef_fk;
       public          postgres    false    227    5036    229            M           2606    19490    beneficiados equ_benef_reser    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT equ_benef_reser FOREIGN KEY (cpf, numero) REFERENCES public.reserva(cpf, numero);
 F   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT equ_benef_reser;
       public          postgres    false    228    228    5146    278    278            P           2606    19505    campanha equ_campa_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT equ_campa_rede__fk FOREIGN KEY (pro_nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.campanha DROP CONSTRAINT equ_campa_rede__fk;
       public          postgres    false    232    5140    275            O           2606    19500    data_status equ_data__acomo    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT equ_data__acomo FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.data_status DROP CONSTRAINT equ_data__acomo;
       public          postgres    false    231    5006    216            W           2606    19540    departamento equ_depar_hotel_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT equ_depar_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT equ_depar_hotel_fk;
       public          postgres    false    237    251    5086            Y           2606    19550    dependencia equ_depen_hotel_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 H   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT equ_depen_hotel_fk;
       public          postgres    false    239    5086    251            �           2606    19835    e_divulgada_por equ_e_div_influ    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT equ_e_div_influ FOREIGN KEY (cpf) REFERENCES public.influenciador_parceiro(cpf);
 I   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT equ_e_div_influ;
       public          postgres    false    294    5102    258            ^           2606    19575    espaco equ_espac_espac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT equ_espac_espac_fk FOREIGN KEY (eng_numero) REFERENCES public.espaco_eventos(numero);
 C   ALTER TABLE ONLY public.espaco DROP CONSTRAINT equ_espac_espac_fk;
       public          postgres    false    243    5070    244            c           2606    19600    funcionario equ_funci_depar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_depar_fk FOREIGN KEY (numero) REFERENCES public.departamento(numero);
 H   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT equ_funci_depar_fk;
       public          postgres    false    248    5054    237            d           2606    19605    ganhador equ_ganha_sorte    FK CONSTRAINT     t   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT equ_ganha_sorte FOREIGN KEY (id) REFERENCES public.sorteio(id);
 B   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT equ_ganha_sorte;
       public          postgres    false    249    5162    286            e           2606    19610    garagem equ_garag_hotel_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT equ_garag_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 D   ALTER TABLE ONLY public.garagem DROP CONSTRAINT equ_garag_hotel_fk;
       public          postgres    false    250    5086    251            k           2606    19645    hospede equ_hospe_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.hospede DROP CONSTRAINT equ_hospe_rede_fk;
       public          postgres    false    256    5138    274            f           2606    19615    hotel equ_hotel_rede_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT equ_hotel_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 A   ALTER TABLE ONLY public.hotel DROP CONSTRAINT equ_hotel_rede_fk;
       public          postgres    false    251    5138    274            u           2606    19690    nota_fiscal equ_nota__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT equ_nota__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT equ_nota__rede_fk;
       public          postgres    false    274    265    5138            v           2606    19695    oferece equ_ofere_refei    FK CONSTRAINT     x   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_refei FOREIGN KEY (nome) REFERENCES public.refeicao(nome);
 A   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_refei;
       public          postgres    false    266    5142    276            w           2606    19700    oferece equ_ofere_resta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_resta_fk FOREIGN KEY (numero) REFERENCES public.restaurante(numero);
 D   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_resta_fk;
       public          postgres    false    266    5148    279            x           2606    19705    pagamento equ_pagam_rede_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT equ_pagam_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 E   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT equ_pagam_rede_fk;
       public          postgres    false    267    5138    274            {           2606    19720    peca equ_peca_teatr_fk    FK CONSTRAINT     q   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT equ_peca_teatr_fk FOREIGN KEY (id) REFERENCES public.teatro(id);
 @   ALTER TABLE ONLY public.peca DROP CONSTRAINT equ_peca_teatr_fk;
       public          postgres    false    270    5168    288            y           2606    19710    permite equ_permi_perso    FK CONSTRAINT     ~   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT equ_permi_perso FOREIGN KEY (cpf) REFERENCES public.personal_trainer(cpf);
 A   ALTER TABLE ONLY public.permite DROP CONSTRAINT equ_permi_perso;
       public          postgres    false    268    5126    269            �           2606    19755    reserva equ_reser_princ    FK CONSTRAINT     w   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT equ_reser_princ FOREIGN KEY (cpf) REFERENCES public.principal(cpf);
 A   ALTER TABLE ONLY public.reserva DROP CONSTRAINT equ_reser_princ;
       public          postgres    false    278    5132    272            �           2606    19815    usado_para equ_usado_espac    FK CONSTRAINT     }   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_espac FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_espac;
       public          postgres    false    290    243    5068            �           2606    19810    usado_para equ_usado_uso_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_uso_fk FOREIGN KEY (nome) REFERENCES public.uso(nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_uso_fk;
       public          postgres    false    290    5174    291            �           2606    19820    vaga equ_vaga_garag    FK CONSTRAINT     {   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT equ_vaga_garag FOREIGN KEY (for_numero) REFERENCES public.garagem(numero);
 =   ALTER TABLE ONLY public.vaga DROP CONSTRAINT equ_vaga_garag;
       public          postgres    false    250    292    5084            =           2606    19410    academia id_acade_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_fk;
       public          postgres    false    215    5058    239            >           2606    19415    acomodacao id_acomo_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_fk;
       public          postgres    false    216    5058    239            C           2606    19440    ar_livre id_ar_li_espac_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_fk;
       public          postgres    false    221    5068    243            F           2606    19455    assalariado id_assal_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_fk;
       public          postgres    false    223    5080    248            I           2606    19470    autonomo id_auton_funci_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_fk;
       public          postgres    false    225    5080    248            N           2606    19495    cafe_da_manha id_cafe__compr_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_fk;
       public          postgres    false    230    5048    234            X           2606    19545    dependente id_depen_hospe_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_fk;
       public          postgres    false    238    5096    256            ]           2606    19570 !   empresa_turismo id_empre_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_fk;
       public          postgres    false    242    5058    239            i           2606    19630 %   hotel_para_adulto id_hotel_hotel_1_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_fk;
       public          postgres    false    254    5086    251            h           2606    19625 "   hotel_familiar id_hotel_hotel_2_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_fk;
       public          postgres    false    253    5086    251            g           2606    19620 %   hotel_empresarial id_hotel_hotel_3_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_fk;
       public          postgres    false    252    5086    251            j           2606    19635 !   hotel_para_pets id_hotel_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_fk;
       public          postgres    false    255    5086    251            m           2606    19650    inclui id_inclu_vaga_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_fk FOREIGN KEY (for_numero, numero) REFERENCES public.vaga(for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_fk;
       public          postgres    false    257    257    5176    292    292            o           2606    19660    instagram id_insta_rede__fk    FK CONSTRAINT        ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__fk;
       public          postgres    false    259    5140    275            p           2606    19665 !   limpeza_de_pele id_limpe_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_fk;
       public          postgres    false    260    5170    289            r           2606    19675 #   local_alimentacao id_local_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_fk;
       public          postgres    false    262    5074    245            s           2606    19680    loja id_loja_estab_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_fk;
       public          postgres    false    263    5074    245            t           2606    19685    massagem id_massa_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_fk;
       public          postgres    false    264    5170    289            |           2606    19725    piscina id_pisci_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_fk;
       public          postgres    false    271    5058    239            }           2606    19730    principal id_princ_hospe_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_fk;
       public          postgres    false    272    5096    256            �           2606    19765    restaurante id_resta_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_fk;
       public          postgres    false    5058    279    239            �           2606    19775    sala_eventos id_sala__depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_fk;
       public          postgres    false    239    282    5058            �           2606    19770    sala id_sala_espac_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_fk;
       public          postgres    false    281    243    5068            �           2606    19780 #   servico_de_quarto id_servi_compr_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_fk;
       public          postgres    false    284    5048    234            �           2606    19800    teatro id_teatr_estab_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_fk;
       public          postgres    false    288    5074    245            �           2606    19825    youtube id_youtu_rede__fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__fk;
       public          postgres    false    293    5140    275            @           2606    19425    acumula ref_acumu_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT ref_acumu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.acumula DROP CONSTRAINT ref_acumu_rede__fk;
       public          postgres    false    217    5140    275            A           2606    19435    aluguel ref_alugu_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT ref_alugu_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT ref_alugu_rede_fk;
       public          postgres    false    219    5138    274            G           2606    19465    autorizacao ref_autor_rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT ref_autor_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT ref_autor_rede_fk;
       public          postgres    false    224    5138    274            J           2606    19475    banho_pet ref_banho_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT ref_banho_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel_para_pets(id);
 F   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT ref_banho_hotel_fk;
       public          postgres    false    226    5094    255            L           2606    19485    beneficiado ref_benef_assal    FK CONSTRAINT     }   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT ref_benef_assal FOREIGN KEY (cpf) REFERENCES public.assalariado(cpf);
 E   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT ref_benef_assal;
       public          postgres    false    227    5022    223            R           2606    19515    compra ref_compr_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT ref_compr_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.compra DROP CONSTRAINT ref_compr_acomo_fk;
       public          postgres    false    234    5006    216            S           2606    19525    consome ref_conso_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_acomo_fk;
       public          postgres    false    235    5006    216            T           2606    19520    consome ref_conso_produ    FK CONSTRAINT     |   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_produ FOREIGN KEY (id) REFERENCES public.produto_frigobar(id);
 A   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_produ;
       public          postgres    false    235    5136    273            U           2606    19535    delivery ref_deliv_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_acomo_fk;
       public          postgres    false    5006    216    236            V           2606    19530    delivery ref_deliv_robo__fk    FK CONSTRAINT        ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_robo__fk FOREIGN KEY (fei_id) REFERENCES public.robo_social(id);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_robo__fk;
       public          postgres    false    236    5150    280            Z           2606    19560    dispoe_de ref_dispo_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 F   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_acomo_fk;
       public          postgres    false    240    5006    216            [           2606    19555    dispoe_de ref_dispo_ameni    FK CONSTRAINT     {   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_ameni FOREIGN KEY (tipo) REFERENCES public.amenidade(tipo);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_ameni;
       public          postgres    false    240    5016    220            �           2606    19830 "   e_divulgada_por ref_e_div_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT ref_e_div_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 L   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT ref_e_div_rede__fk;
       public          postgres    false    275    294    5140            `           2606    19585 "   estabelecimento ref_estab_lobby_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT ref_estab_lobby_fk FOREIGN KEY (numero) REFERENCES public.lobby(numero);
 L   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT ref_estab_lobby_fk;
       public          postgres    false    245    5108    261            a           2606    19590 "   estadia_anterior ref_estad_rede_fk    FK CONSTRAINT        ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT ref_estad_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 L   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT ref_estad_rede_fk;
       public          postgres    false    246    5138    274            b           2606    19595    evento ref_event_sala__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT ref_event_sala__fk FOREIGN KEY (numero) REFERENCES public.sala_eventos(numero);
 C   ALTER TABLE ONLY public.evento DROP CONSTRAINT ref_event_sala__fk;
       public          postgres    false    247    5154    282            l           2606    19640    hospede ref_hospe_perso_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT ref_hospe_perso_fk FOREIGN KEY (pod_cpf) REFERENCES public.personal_trainer(cpf);
 D   ALTER TABLE ONLY public.hospede DROP CONSTRAINT ref_hospe_perso_fk;
       public          postgres    false    256    5126    269            z           2606    19715    permite ref_permi_acade_fk    FK CONSTRAINT        ALTER TABLE ONLY public.permite
    ADD CONSTRAINT ref_permi_acade_fk FOREIGN KEY (numero) REFERENCES public.academia(numero);
 D   ALTER TABLE ONLY public.permite DROP CONSTRAINT ref_permi_acade_fk;
       public          postgres    false    268    5004    215                       2606    19740    rede_social ref_rede__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT ref_rede__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT ref_rede__rede_fk;
       public          postgres    false    275    274    5138            �           2606    19745    requisicao ref_requi_chatb_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_chatb_fk FOREIGN KEY (registro_digital) REFERENCES public.chatbot(registro_digital);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_chatb_fk;
       public          postgres    false    277    5044    233            �           2606    19750    requisicao ref_requi_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_funci_fk;
       public          postgres    false    277    5080    248            �           2606    19760    reserva ref_reser_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.reserva DROP CONSTRAINT ref_reser_acomo_fk;
       public          postgres    false    216    5006    278            �           2606    19785 -   sessao_terapia_ocupacional ref_sessa_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT ref_sessa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 W   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT ref_sessa_hotel_fk;
       public          postgres    false    251    285    5086            �           2606    19790    sorteio ref_sorte_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT ref_sorte_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT ref_sorte_rede__fk;
       public          postgres    false    286    5140    275            �           2606    19805    tratamento ref_trata_spa_fk    FK CONSTRAINT        ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT ref_trata_spa_fk FOREIGN KEY (exe_numero) REFERENCES public.spa(numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT ref_trata_spa_fk;
       public          postgres    false    289    5164    287            B           2606    19430    aluguel sid_alugu_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_fk FOREIGN KEY (pag_id) REFERENCES public.estabelecimento(id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_fk;
       public          postgres    false    219    5074    245            H           2606    19460    autorizacao sid_autor_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_fk FOREIGN KEY (nec_id) REFERENCES public.estabelecimento(id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_fk;
       public          postgres    false    224    5074    245            Q           2606    19510    chatbot sid_chatb_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_fk;
       public          postgres    false    233    5138    274            \           2606    19565    documento sid_docum_pagam_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_fk FOREIGN KEY (e_r_id) REFERENCES public.pagamento(id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_fk;
       public          postgres    false    241    5122    267            _           2606    19580 !   espaco_eventos sid_espac_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_fk;
       public          postgres    false    244    5086    251            n           2606    19655    inclui sid_inclu_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_fk FOREIGN KEY (i_a_numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_fk;
       public          postgres    false    257    5006    216            q           2606    19670    lobby sid_lobby_hotel_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_fk;
       public          postgres    false    261    5086    251            ~           2606    19735    principal sid_princ_nota__fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__fk FOREIGN KEY (id) REFERENCES public.nota_fiscal(id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__fk;
       public          postgres    false    5118    265    272            �           2606    19795    spa sid_spa_hotel_fk    FK CONSTRAINT     n   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_fk;
       public          postgres    false    251    287    5086            "   P   x�=���0߰�+�ĉ�K������"!״p����M~��ڈ:T4��)H�*�T��|[;��0��{��s�|��"      #   �   x�}QK
1]7wi�$����� F7���^̂��@��=�'/9\ʣl!�(O�)̡�����q8w��2�`t5
��Zn��VK`E���ũ�����G��A���H٩�(;�XrqI��#+bA�^���u�4;V"�������X�>Ve�3��V�T��� _n���      $      x������ � �      %      x������ � �      &      x������ � �      '   �   x��1�0F��?E.P� H������&n��N�>����{��2D	�۾Iŕޤ�]�J��>$�,IL)nS��h6��܆��b"�p"]Y�p��c۟/Q
��Y�ѥ�L���Z�}�"������2}      (      x������ � �      )      x������ � �      *      x������ � �      ,      x������ � �      +      x������ � �      -      x������ � �      .      x������ � �      /   Y  x�u�Av!D�p���]r�s�����j��(io��CJ�i�I~ 6��Lt�FM'�\-�!���-��g�LkY�P��� �S%-�'���$�Ds��gy�I�BeĔB��4&���\t���0�N�{�)�)�N¶�~�6N����5�Ґ�� �GX�O%%�"�$t�!t��p��J��Ե��N���^Ь�.'a)�%��'�N������ ��׶n�RY ���fb�8$غ$�X���,�%��t�5j_�J;������H3����P�	��^ɋO�=0��t}��(����{�]퍅�����,C���%!
����O°�T���#��B�       0      x������ � �      1   2   x�30�CNC#.������3�@pL8M<SNcǌ�Ȁ+F��� �l      3   �   x�}�AN�0���s�Tn��������L�I�*񠱝�a�9z1hA����������xz�G7�|�񄕩�@id�s�,Βe�sqe���4_��`ǡM�����@����?��^f��$��e�\/ⓤ�>{xPjh�m.̢�����"��Jg�K�u�Oo�r��]k������i��k�nJ�aq��cp�7���h��=��7�\����ϫ�(> W�)      4      x������ � �      5   �   x�m��!�oSE*X�/�Բ��Y�D�}xF���2.�P���@L%=9�9XO���~�o��[p!�/�����V�T��Fe2�e1��`�l�U��l���f�:Xx�o��[�y�p��{Y�-�WJ��F;      6   �   x�u���0C��.	�w�Y2@�����V���$AI�k����¼���PzA��-`J�vp�`NX!��JX��RF-M��>+;tK8F�l�r��6`��V�',?����7��l���yG؃��6Z�O?=�k)��O�      2      x������ � �      7   N  x����n�0�����-I���5m
�Ej����l�@]J����Pt�S��JIFh��z }8��s�)=��Dۡ��t�\��F��Z"p���.8�|����^R
W�܉�S@���=p(�g��l�ܴ��l|R1��,F�;Rk�V��*�
I�e#���Y8H
��pZ"��{U�S�#h1�H�7����,Q���l�S������PVFkl78�[IE֦k�gq��
��ݣ�Of4�Ey��ǅe�4��^�J�F�����8�T�j$��P��p-�N+k���-"�,��1(�A6��ϸ�_���XDi)u4�Mk���H�Y����-&k��>��HD
��<K]��T��-�^l�� 9��t!c|u�j� o�{=Ɵ�8+q������X�-)u���5l��Y�J���g��-g���9��Q遴��x5�H4 u���R��n,��p�~�z���$b�"]C9�R��h�R�P5�8&ww��W��4w���ߎc�ܴ���t�:q�Ka�Av��km�dL�$�2��Zd�n�KT�y��U�g����)	3��r6��>}�c      8      x������ � �      :   �  x���K�� ��.�B?��2�?G쪀�"9N�]y� �aE~�j����[߂����T�
�9�Ó�s&U$��L�穻g>T�o�|�ҕ�:�`e$c�>Xv��	Q
�I'V�Bgh�?�4m0�j����В7[H��xK�#��BX�_�Fn&���8��8�����j?&]-@M��P׫�&{��	��-D5L���O��a��&
�� �9H���'�C�O�߬�߬����B\��� H�,�&᙮�0i�;6-`֪��g�na�_q6�(~�-$�� {h�@�w�g W₡Q��q��/�&_���bK��wr�7�B-����A:i�0t'�]�P�lkN��0��s�)w�A��u=t��������`�<      9   �   x�m�Kr1C��]�_�����'+'+C=�U
s�С�%I��YbpDr��4�d�r1o*U�$N+G���nyf��2��mn"$��r�iϾ�G�"���rn�
�d���n�մ=��g͖r��ʊ݉앺�I"�0|�*�6�ga���a���R������c�<&�M0�� �bN�      ;   �  x�m�An�@E��)|�8��eZ @�fW��n&��h#�J��]��X�F#}��q�������{��k�����ھl�7����w����]>�z��a����8�wC{���צ{ٞ��s{i��ѫ����l�yp�0�����y4̣c�y\�G�<N�ꣁꅥ�Ղ����ځ�n"W�\yr��
�U@�&rmɵ'�H��\�z&ז\{r���u@��,�<��L@��L��,9yrBrr
ȩ�ْٓ�d�<�io��#���:
���Y�țG��{�G�>�����P@)P����:���	L�`
L��dMIޔ��$0%��b
[2{2#����g�u����28ȁ�\d� {dp��8��A�2:�� rq����dt��A���4ħ!��@�!%�i�OC0�4$HCJb���`iH���i�%�'���������w����`�I�u����w����f=|��s�y�7�_�ƿ�׷���.����t���C�)kuߞ�~�$���.�f�����0XO�����7�%6S���<U_��1���2��V���ct��s�.Z�1��w��RIQZ�1.��F^��(E]K8Q�3��T�8G���<���9�p��5�>N�Kʲ���;���ϐշ���f�����      <      x������ � �      q   W   x�344�3�`]CCNϼ�����\.###=(�52��/-)MJ�266փb]cc\�cLLL��X��I���T�uMMqK�l����� ��+�      =   �   x�E�1�0E��>������ԉ�j"j�ƕ�V\��9B.F:�Y��~�q�-L��J.-�6	��XF1����W��+w�D���"qs�V��*S~��=�w����%%ON�<&���Pm�;)�Ha-�X�O�����hj�>ff��5�mk.ɢ���3�� ��qJ*      >      x������ � �      ?      x������ � �      @      x������ � �      A      x������ � �      B   �  x���;��0E��Uh�(�7��x�10��2cш)M�#�l մ�XH���U����㽏��C��2���Qx��w�g�>#?N�5!��'	!�͑��H��GL9�Gp5��G����������4��(d~@��6��>.�}�~(�L���v`D
CW����,�R�w���Z�ƁK�Ö�0���(�i|7���������79�;:��!��ET�5��n������Σ/u�H���&b������#k�]}�}�/2 �=�/R��gy��GYɓ�ߍ��n��ј��Ȑ�	�db&���v�_�C�yk0�sl
Og��b�*^��e1��C�戝d4iF�&��A��
������(mg|���⥹V�e�3�ƦT�[��|ɏ��P�\����Y����-& q�ɬ�lJ2Ƿ_3ޮ�j��vw�"0Ǡ{�Ĺ)��;m�WՊ��%�����"�'l�Z���K��{C�a����j�ucJ      C      x������ � �      D      x������ � �      E      x������ � �      K   b  x��W�n�F}^�����[nk�i� y��Z��R�Q�w���ȏ��.%�B�@� A���sf�̬��+R��^���*n��8>���u��b�{�Ķ�a�DT���b7LJ�EP�[�,����)Mn��%����gB ���F�����6]�1��Ö=�o�9?����)�!��e�x�A�~<'�\k`�m�k�.V��&�v�xk~Y���c���ӣ:/����Į�o��_�z��a�%��!�)9fa���2 .��4^K�r��q#�o�5�l�>��X�����'��e{^ׄ�X���p�oH��O���dR!��_ı���M?�����͖�����sJ��E %K2!4��E&�g�q���06�Y�o�1'��$Q�  X˝�\drA���R|�+�}ء�l �&;���1Ǯk�(��ϝ��ԇ�;����kWMu��Q�1=�Uz��R1
��D@Dq�(+�_T�S����ϳ�a�~l/)æ�L��cdH��jW��X}��U�i�;�%{x��O"����Q���j���c���M1�+�.�pH��H�A*�J�k�<�Eh������ɣ�����y�ծ˨Q���#��wZ�R�r�5��t��#5���;%��~=~����Ϩy���<�n� {@'	7�;�'�������u�n�>>#���kdc6�6s�*u�4{NJL�$������=�6M������&��<wI?����^�1�]A
������Ƕ{I|G�J�q��^R�Ѯqr|�=��x�Y0S�Bu��s�O�<u�+ө�'�O�g}:k�.ʥ�ڞ�]�Y~��E�x�*��U����%�Ϯ}�͵�arGi��R�B@L���1���OrV�|�#�]�j���h�8��a����}���뫸�ǫ���i�C�,�O�:i�/{�eӵO�$)�٘4�(�AMCX�\���٪�rX��]$���j2'!�3��B���U�rC�)7��zr��lQ~!jm�;ȷH7�is��L����sTq:� �B�CS@��ʱo�}L�������HK�P�晒~
.Ҏ6�rQ�#��R�8.�������T�vR��]��$b�٘O
��s��������W      F   �  x���K��@���S���n�6K��SC��ȫlJCk���~��u���m����`�L� -}�U	1��u˼��<갅��z�F�������8�p\���s����(�@�D)���TSw&Vp[ܛ�!6�9���O�q!�	R��4[o��7���'�j���W
tP����M7��Rk��yd�-B��E7���Ӎ �2��Jg����q�kY�ѝ�3��F�T�p9����+Z�'����D�1��"<����H& ����j�u&��vG��[��L8��\�\f��I�jG�Cu�w��E���|Bۘ��%6�-����Λ."�e	R�l�I�6S3�	�=b爕�xo�3�����3mD{�]���E	%v�8�Ğ����d�����H��"<y�v�G����8]�2O�u�8�����^�V���      G      x������ � �      H      x������ � �      I      x������ � �      J      x������ � �      L      x������ � �      M   �   x�-�1
�0��Y>�/`a��c��]Ԑ��N���M-����R��P��Q��Zn@�< ��7!�\p��V�Mj���m���Qs1�]jY��?K+��'�)%�\J0ʖ�E옥��Ө��Qs�0��ة��V>W����1_�"3,      N   !   x���+.IL/J��t�<��(3Fs��qqq �!      O      x������ � �      P      x������ � �      Q      x������ � �      R      x������ � �      S      x������ � �      T   �   x���K� C��.P˘O�����N(�i;fX�C2�{�P�3%&&aQx�d'���K}l�Q]�XUN��A�� O�hW3v�A��BP)r3
ۑ���I{���(�B1���by��V��"P6�E�D�-7m�ke.�_��޸8�����g�sN�h�ӯ��}���'�Ec�$y4�~�{fh�UTp�i�6Y��љgpν {�b      U   �   x�3�t���?�<�ˈ�+1�$�˘�'1/9#U��A0��M*�l�~�p�1!�g�Pk�� .d���"��a�	�SA�b�e@&�<�Ŧpy ���2����D�d����qqq p<\w      V      x������ � �      Y      x������ � �      W   �   x�e�K!E�q��"��g/��u��N�8�Ar���j�Ԥt�ه��3��_f�d2C�3�&N	�%C�*/�R�]�W�책[��Db����V�XF�����=(̓�<{��1�S��Ai��݃�<(ͳg���9��Ai��׻�%��bO~h��\8      X   &  x�m��j�0���S�"dٱ�1�xi�.�.WG�E
����ӡS�"/VE�PJ�������R��4\wb!:؆�G`r3��8x����W�A.D����\���a$d�fK��Da�τ`
�薛F�̀�5F;���)Z�x�~l��!�4P��[���bajXyd�F��i�t;Ͳ�FoS]�.��ݕ�����6z�G���R��uE�]���vt��Trj��S�;%����jcVX�9����'?P�� ��j�r�s������������YjOǼI�WU��r�3      Z   �   x���K
�@D�]w�����s�l&�	BTP�O�@��c֯�W]F���mx�/JO����@��X�1�k|�#q!;n��ڸ��
?�������/_�Op�3��ީ��فTP;��2�JX�_��Se�5���e��Q�u��>Ia�      [   "  x�u�Mn�@F��)��X��=?ۤG��P	��p����\��R3D��a�l���x�m��j�ݼ��S{���^��2"%� =Z�Ѯ9L��2��n<�_�0�	��b.��/~Y���ޘ"%�Na,0W-0"	��2Z�׹/��������t�} ��T�y'�g2��Aur*t|<���ro�jg
o�E�*�v{�sq�:����a=�F�v�w�D�~�bڑKh��=wq!�h4�u\�UQ�,I#� ~taǊEHYs)!��B$/�$ k�q׫|c�/"τ      \   {   x�30�C�Í饉
��9��z\0)#ΠԴ���Ԣļ�TcS�s%ƜΩEe�Y�PYYN�����D�n#�tNCTL9��RJ�M� R`d����3 ���J��1z\\\ �./      ]   E   x�34�361�33�з404�56�)-�,��Wp��-H̫Tv��,K-R(H,JT���H,�����  $M      ^   s   x���+.IL/J��JMIU���H,R(H,JT�,K-�44051�4�0�tK�)N�)*M�44�361�33�з404�56��/-)MJ�K�J�b�������9D?�(,���qqq �C(�      _   K   x��I�K�H���44�20��46�30�r���?�<���,h�(�44CRꕘW��ih��Џ��Ia� 8��      `      x������ � �      a     x���Kn�0C��],P?K�K��r�h2(R�*B�,Q�kX�8\6�Z��b�.�U�P`�P%�*p��P=�������D`��&�hL��V)m9F�6֮�p6Y(Hj
�+�Im������<�=���(ٔp�:���1���p����ܷ��pF�˭��\���mD�Ĥ�z�V���r�Y����0�]����tr�k烻E�nP�����1�NB������̰ W�w���|=�ҹ%hn�|��w��m�d��i��      b   V   x�E�;
�0D����N̆���6~v����l���&��X���Mf�����~5��:6&0��(D�b���Ğ�ô��P�G�M"��8"�      c   I   x�30�CN##]CC]#Nǒ̲|.���\��]���]���]���]��Ϝ�3/,���� �9%      d      x������ � �      e   6   x�Ź�0��� :}���:|���+z��+$b��/����#΍X|���      f   �   x�U�M�0FםS�����č�b�ؐ!��)�pz��E������t&���+ϼ�R[Tީ��D���;	�&%����=���;GNo�_�ri�ކ��)�-Y�M>��9�	�`#P]�և�a��*B�5#3��ڪ˪�>F��C~WD*�Y���ew� ����<k' B���G��Y �Qv�      g   �   x�U�AN�0EדS�Eq�UD[� �f�fZ�#;�q�"�A�ls1��3�Ѽ?��4��%�I�:TY��)���^<�A�1�;N�`��5N���B��h�"����+Q�0D�=�w��D�y�r1V�b'6Β��d
%z���A�I�p���K	�<k�3�Y��> +'Jm#*���|��iQE����)GE<�@^C��MK}��-�{�!�NK��R��=��a�v?~s���a���{xP�d����*I�|y�      h      x������ � �      i      x������ � �      j      x������ � �      k      x������ � �      l      x������ � �      m      x������ � �      n      x������ � �      o      x������ � �      p      x���/-)MJ�t�<��(3�+F��� Y�     