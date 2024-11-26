PGDMP                  
    |            SRH-BD    16.4    16.4 S   t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    22494    SRH-BD    DATABASE        CREATE DATABASE "SRH-BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "SRH-BD";
                postgres    false            �            1259    22495    academia    TABLE     �   CREATE TABLE public.academia (
    numero numeric(10,0) NOT NULL,
    quantidade_equipamentos numeric(3,0),
    ultima_manutencao_bebedouro character varying(10) NOT NULL,
    quantidade_chuveiros numeric(2,0)
);
    DROP TABLE public.academia;
       public         heap    postgres    false            �            1259    22500 
   acomodacao    TABLE     �   CREATE TABLE public.acomodacao (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    valor numeric(7,2) NOT NULL,
    ultima_limpeza date NOT NULL
);
    DROP TABLE public.acomodacao;
       public         heap    postgres    false            �            1259    22505    acumula    TABLE     t   CREATE TABLE public.acumula (
    nome character varying(30) NOT NULL,
    e_mail character varying(30) NOT NULL
);
    DROP TABLE public.acumula;
       public         heap    postgres    false            �            1259    22510    alimento    TABLE     �   CREATE TABLE public.alimento (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    quantidade_desejada numeric(6,0) NOT NULL,
    quantidade_existente numeric(6,0) NOT NULL
);
    DROP TABLE public.alimento;
       public         heap    postgres    false            �            1259    22515    aluguel    TABLE       CREATE TABLE public.aluguel (
    id character(10) NOT NULL,
    pag_id character(10) NOT NULL,
    valor_total numeric(6,2) NOT NULL,
    valor_base numeric(6,2),
    multa numeric(7,0),
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.aluguel;
       public         heap    postgres    false            �            1259    22522 	   amenidade    TABLE     K   CREATE TABLE public.amenidade (
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.amenidade;
       public         heap    postgres    false            �            1259    22527    ar_livre    TABLE     �   CREATE TABLE public.ar_livre (
    numero numeric(6,0) NOT NULL,
    churrasqueira character(1),
    forno_a_lenha character(1),
    freezer character(1)
);
    DROP TABLE public.ar_livre;
       public         heap    postgres    false            �            1259    22532    armazena    TABLE     c   CREATE TABLE public.armazena (
    a_a_id character(10) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.armazena;
       public         heap    postgres    false            �            1259    22537    assalariado    TABLE     �   CREATE TABLE public.assalariado (
    cpf character(14) NOT NULL,
    horassemana numeric(2,0) NOT NULL,
    salario_mensal numeric(7,2) NOT NULL
);
    DROP TABLE public.assalariado;
       public         heap    postgres    false            �            1259    22549    autonomo    TABLE     f   CREATE TABLE public.autonomo (
    cpf character(14) NOT NULL,
    valorhora numeric(6,2) NOT NULL
);
    DROP TABLE public.autonomo;
       public         heap    postgres    false            �            1259    22542    autorizacao    TABLE     �   CREATE TABLE public.autorizacao (
    id character(10) NOT NULL,
    nec_id character(10) NOT NULL,
    validade date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.autorizacao;
       public         heap    postgres    false            �            1259    22554 	   banho_pet    TABLE     �   CREATE TABLE public.banho_pet (
    numero numeric(10,0) NOT NULL,
    nome_pet character varying(20),
    telefone_dono character(13) NOT NULL,
    litros_agua_gastos numeric(3,0),
    data date NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.banho_pet;
       public         heap    postgres    false            �            1259    22559    beneficiado    TABLE     m   CREATE TABLE public.beneficiado (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.beneficiado;
       public         heap    postgres    false            �            1259    22564    beneficiados    TABLE     �   CREATE TABLE public.beneficiados (
    cpf character(14) NOT NULL,
    numero numeric(10,0) NOT NULL,
    cpf_beneficiado character(14) NOT NULL
);
     DROP TABLE public.beneficiados;
       public         heap    postgres    false            �            1259    22569 	   beneficio    TABLE     l   CREATE TABLE public.beneficio (
    nome character varying(30) NOT NULL,
    valor numeric(6,2) NOT NULL
);
    DROP TABLE public.beneficio;
       public         heap    postgres    false            �            1259    22574    cafe_da_manha    TABLE     g   CREATE TABLE public.cafe_da_manha (
    id character(10) NOT NULL,
    reserva_de_mesa numeric(3,0)
);
 !   DROP TABLE public.cafe_da_manha;
       public         heap    postgres    false            �            1259    22584    campanha    TABLE     �   CREATE TABLE public.campanha (
    id character(10) NOT NULL,
    nome character varying(30),
    periodo character varying(20),
    objetivo character varying(40),
    verba numeric(6,2),
    pro_nome character varying(30)
);
    DROP TABLE public.campanha;
       public         heap    postgres    false            �            1259    22589    chatbot    TABLE     �   CREATE TABLE public.chatbot (
    registro_digital character varying(10) NOT NULL,
    cnpj character(18) NOT NULL,
    nome_avatar character varying(30),
    versao character varying(8)
);
    DROP TABLE public.chatbot;
       public         heap    postgres    false            �            1259    22596    compra    TABLE     �   CREATE TABLE public.compra (
    id character(10) NOT NULL,
    valor numeric(6,2) NOT NULL,
    horario character(6) NOT NULL,
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    22601    consome    TABLE     �   CREATE TABLE public.consome (
    idconsome character(10) NOT NULL,
    numero numeric(10,0) NOT NULL,
    id character(10) NOT NULL,
    dia date,
    horario character(6),
    quantidade numeric(2,0) NOT NULL
);
    DROP TABLE public.consome;
       public         heap    postgres    false            �            1259    22579    data_status    TABLE     �   CREATE TABLE public.data_status (
    numero numeric(10,0) NOT NULL,
    dia numeric(2,0) NOT NULL,
    mes numeric(2,0) NOT NULL,
    status character varying(8) NOT NULL
);
    DROP TABLE public.data_status;
       public         heap    postgres    false            �            1259    22606    delivery    TABLE     8  CREATE TABLE public.delivery (
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
       public         heap    postgres    false            �            1259    22611    departamento    TABLE     �   CREATE TABLE public.departamento (
    numero numeric(2,0) NOT NULL,
    nome character varying(30) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    22621    dependencia    TABLE     �   CREATE TABLE public.dependencia (
    numero numeric(10,0) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.dependencia;
       public         heap    postgres    false            �            1259    22616 
   dependente    TABLE     }   CREATE TABLE public.dependente (
    cpf character(14) NOT NULL,
    hospede_principal_responsavel character(14) NOT NULL
);
    DROP TABLE public.dependente;
       public         heap    postgres    false            �            1259    22626 	   dispoe_de    TABLE     n   CREATE TABLE public.dispoe_de (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.dispoe_de;
       public         heap    postgres    false            �            1259    22631 	   documento    TABLE     �   CREATE TABLE public.documento (
    id character(10) NOT NULL,
    e_r_id character(10) NOT NULL,
    tipo character varying(30) NOT NULL,
    data_emissao date,
    data_vencimento date NOT NULL
);
    DROP TABLE public.documento;
       public         heap    postgres    false            &           1259    22908    e_divulgada_por    TABLE     q   CREATE TABLE public.e_divulgada_por (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
 #   DROP TABLE public.e_divulgada_por;
       public         heap    postgres    false            �            1259    22638    empresa_turismo    TABLE     �   CREATE TABLE public.empresa_turismo (
    numero numeric(10,0) NOT NULL,
    nome character varying(30),
    especialidade character varying(30)
);
 #   DROP TABLE public.empresa_turismo;
       public         heap    postgres    false            �            1259    22643    espaco    TABLE     �   CREATE TABLE public.espaco (
    numero numeric(6,0) NOT NULL,
    nome character varying(30),
    tamanho numeric(4,0) NOT NULL,
    valor numeric(7,2) NOT NULL,
    capacidade_maxima numeric(4,0) NOT NULL,
    eng_numero numeric(5,0) NOT NULL
);
    DROP TABLE public.espaco;
       public         heap    postgres    false            �            1259    22648    espaco_eventos    TABLE     �   CREATE TABLE public.espaco_eventos (
    numero numeric(5,0) NOT NULL,
    id character(10) NOT NULL,
    senha_wifi character varying(30)
);
 "   DROP TABLE public.espaco_eventos;
       public         heap    postgres    false            �            1259    22655    estabelecimento    TABLE     �   CREATE TABLE public.estabelecimento (
    id character(10) NOT NULL,
    nome character varying(30),
    faturamento_mensal numeric(7,2),
    numero numeric(3,0) NOT NULL
);
 #   DROP TABLE public.estabelecimento;
       public         heap    postgres    false            �            1259    22660    estadia_anterior    TABLE     �  CREATE TABLE public.estadia_anterior (
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
       public         heap    postgres    false            �            1259    22665    evento    TABLE     U  CREATE TABLE public.evento (
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
       public         heap    postgres    false            �            1259    22670    funcionario    TABLE     /  CREATE TABLE public.funcionario (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    data_nascimento date,
    data_contratacao date NOT NULL,
    genero character(1),
    raca character varying(8),
    cargo character varying(30) NOT NULL,
    numero numeric(2,0) NOT NULL
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    22675    ganhador    TABLE     �   CREATE TABLE public.ganhador (
    id character(10) NOT NULL,
    cpf character(14) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.ganhador;
       public         heap    postgres    false            �            1259    22680    garagem    TABLE     �   CREATE TABLE public.garagem (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL,
    valordia numeric(5,2) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.garagem;
       public         heap    postgres    false                        1259    22710    hospede    TABLE     �   CREATE TABLE public.hospede (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    e_mail character varying(30),
    data_nascimento date,
    genero character(1),
    pod_cpf character(14),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.hospede;
       public         heap    postgres    false            �            1259    22685    hotel    TABLE       CREATE TABLE public.hotel (
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
       public         heap    postgres    false            �            1259    22690    hotel_empresarial    TABLE     �   CREATE TABLE public.hotel_empresarial (
    id character(10) NOT NULL,
    quantidade_salas_reuniao numeric(3,0),
    qualidade_wifi character varying(5) NOT NULL
);
 %   DROP TABLE public.hotel_empresarial;
       public         heap    postgres    false            �            1259    22695    hotel_familiar    TABLE     �   CREATE TABLE public.hotel_familiar (
    id character(10) NOT NULL,
    brinquedos character(1),
    salao_de_jogos_infantil character(1)
);
 "   DROP TABLE public.hotel_familiar;
       public         heap    postgres    false            �            1259    22700    hotel_para_adulto    TABLE     �   CREATE TABLE public.hotel_para_adulto (
    id character(10) NOT NULL,
    quantidade_bares numeric(2,0),
    quantidade_saunas numeric(2,0),
    quantidade_adegas numeric(2,0),
    salao_de_jogos_adultos character(1)
);
 %   DROP TABLE public.hotel_para_adulto;
       public         heap    postgres    false            �            1259    22705    hotel_para_pets    TABLE     �   CREATE TABLE public.hotel_para_pets (
    id character(10) NOT NULL,
    quantidade_patios numeric(2,0),
    area_brinquedos_pets character(1)
);
 #   DROP TABLE public.hotel_para_pets;
       public         heap    postgres    false                       1259    22715    inclui    TABLE     �   CREATE TABLE public.inclui (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    i_a_numero numeric(10,0) NOT NULL,
    periodo character varying(30) NOT NULL
);
    DROP TABLE public.inclui;
       public         heap    postgres    false                       1259    22722    influenciador_parceiro    TABLE     �   CREATE TABLE public.influenciador_parceiro (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    remuneracao numeric(7,2)
);
 *   DROP TABLE public.influenciador_parceiro;
       public         heap    postgres    false                       1259    22727 	   instagram    TABLE     �   CREATE TABLE public.instagram (
    nome character varying(30) NOT NULL,
    frequencia_stories character varying(10),
    frequencia_postagens character varying(10)
);
    DROP TABLE public.instagram;
       public         heap    postgres    false                       1259    22732    limpeza_de_pele    TABLE     u   CREATE TABLE public.limpeza_de_pele (
    numero character(6) NOT NULL,
    produtos_usados character varying(40)
);
 #   DROP TABLE public.limpeza_de_pele;
       public         heap    postgres    false                       1259    22737    lobby    TABLE     _   CREATE TABLE public.lobby (
    numero numeric(3,0) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.lobby;
       public         heap    postgres    false                       1259    22744    local_alimentacao    TABLE     j   CREATE TABLE public.local_alimentacao (
    id character(10) NOT NULL,
    nicho character varying(30)
);
 %   DROP TABLE public.local_alimentacao;
       public         heap    postgres    false                       1259    22749    loja    TABLE     ]   CREATE TABLE public.loja (
    id character(10) NOT NULL,
    nicho character varying(30)
);
    DROP TABLE public.loja;
       public         heap    postgres    false                       1259    22754    massagem    TABLE     c   CREATE TABLE public.massagem (
    numero character(6) NOT NULL,
    tipo character varying(15)
);
    DROP TABLE public.massagem;
       public         heap    postgres    false            	           1259    22759    nota_fiscal    TABLE       CREATE TABLE public.nota_fiscal (
    id character(10) NOT NULL,
    valor_total numeric(8,2) NOT NULL,
    descontos numeric(8,2),
    multa numeric(8,2),
    data_limite date NOT NULL,
    quitada character(1) NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.nota_fiscal;
       public         heap    postgres    false            
           1259    22764    oferece    TABLE     l   CREATE TABLE public.oferece (
    numero numeric(10,0) NOT NULL,
    nome character varying(10) NOT NULL
);
    DROP TABLE public.oferece;
       public         heap    postgres    false                       1259    22769 	   pagamento    TABLE       CREATE TABLE public.pagamento (
    id character(10) NOT NULL,
    cnpj_destinatario character(18) NOT NULL,
    valor numeric(7,2) NOT NULL,
    referencia character varying(30) NOT NULL,
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.pagamento;
       public         heap    postgres    false                       1259    22784    peca    TABLE     �   CREATE TABLE public.peca (
    nome character varying(30) NOT NULL,
    valor numeric(5,2) NOT NULL,
    data date NOT NULL,
    horario character(6) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.peca;
       public         heap    postgres    false                       1259    22774    permite    TABLE     c   CREATE TABLE public.permite (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.permite;
       public         heap    postgres    false                       1259    22779    personal_trainer    TABLE     �   CREATE TABLE public.personal_trainer (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    formacao character varying(30),
    valorhora numeric(4,2) NOT NULL
);
 $   DROP TABLE public.personal_trainer;
       public         heap    postgres    false                       1259    22789    piscina    TABLE     �   CREATE TABLE public.piscina (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL,
    profundidade numeric(4,2) NOT NULL,
    data_ultima_limpeza date NOT NULL
);
    DROP TABLE public.piscina;
       public         heap    postgres    false                       1259    22794 	   principal    TABLE     �   CREATE TABLE public.principal (
    cpf character(14) NOT NULL,
    id character(10) NOT NULL,
    forma_pagamento character varying(30) NOT NULL
);
    DROP TABLE public.principal;
       public         heap    postgres    false                       1259    22801    produto_frigobar    TABLE     �   CREATE TABLE public.produto_frigobar (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    valorunidade numeric(4,2) NOT NULL
);
 $   DROP TABLE public.produto_frigobar;
       public         heap    postgres    false                       1259    22806    rede    TABLE     �   CREATE TABLE public.rede (
    cnpj character(18) NOT NULL,
    nome_real character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL
);
    DROP TABLE public.rede;
       public         heap    postgres    false                       1259    22811    rede_social    TABLE     �   CREATE TABLE public.rede_social (
    nome character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    media_curtidas numeric(8,0),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.rede_social;
       public         heap    postgres    false                       1259    22816    refeicao    TABLE     �   CREATE TABLE public.refeicao (
    nome character varying(10) NOT NULL,
    horario character(6) NOT NULL,
    valor numeric(4,2) NOT NULL
);
    DROP TABLE public.refeicao;
       public         heap    postgres    false                       1259    22821 
   requisicao    TABLE     �  CREATE TABLE public.requisicao (
    id character varying(10) NOT NULL,
    unidade character varying(30) NOT NULL,
    origem character varying(18) NOT NULL,
    dependencia numeric(10,0) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date,
    classificacao character varying(30) NOT NULL,
    complemento character varying(100) NOT NULL,
    registro_digital character varying(10) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.requisicao;
       public         heap    postgres    false                       1259    22826    reserva    TABLE     �   CREATE TABLE public.reserva (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL,
    data_check_in date NOT NULL,
    data_check_out date NOT NULL,
    pontos_gerados numeric(6,0) NOT NULL
);
    DROP TABLE public.reserva;
       public         heap    postgres    false                       1259    22831    restaurante    TABLE     �   CREATE TABLE public.restaurante (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(4,0),
    status character varying(30) NOT NULL
);
    DROP TABLE public.restaurante;
       public         heap    postgres    false                       1259    22836    robo_social    TABLE     �   CREATE TABLE public.robo_social (
    id character(10) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    status character varying(30) NOT NULL
);
    DROP TABLE public.robo_social;
       public         heap    postgres    false                       1259    22841    sala    TABLE     �   CREATE TABLE public.sala (
    numero numeric(6,0) NOT NULL,
    quantidade_banheiros numeric(2,0),
    cozinha character(1),
    quantidade_televisao numeric(2,0),
    quantidade_ventiladores numeric(2,0),
    quantidade_ar_condicionado numeric(2,0)
);
    DROP TABLE public.sala;
       public         heap    postgres    false                       1259    22846    sala_eventos    TABLE     u   CREATE TABLE public.sala_eventos (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
     DROP TABLE public.sala_eventos;
       public         heap    postgres    false                       1259    22851    seguidor    TABLE     �   CREATE TABLE public.seguidor (
    e_mail character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.seguidor;
       public         heap    postgres    false                       1259    22856    servico_de_quarto    TABLE     �   CREATE TABLE public.servico_de_quarto (
    id character(10) NOT NULL,
    item character varying(30),
    data character(10) NOT NULL,
    entregador character varying(30) NOT NULL
);
 %   DROP TABLE public.servico_de_quarto;
       public         heap    postgres    false                       1259    22861    sessao_terapia_ocupacional    TABLE        CREATE TABLE public.sessao_terapia_ocupacional (
    data date NOT NULL,
    horario character(6) NOT NULL,
    duracao character varying(6) NOT NULL,
    objetivo character varying(30),
    capacidade_maxima numeric(4,0),
    id character(10) NOT NULL
);
 .   DROP TABLE public.sessao_terapia_ocupacional;
       public         heap    postgres    false                       1259    22866    sorteio    TABLE     �   CREATE TABLE public.sorteio (
    id character(10) NOT NULL,
    item character varying(20) NOT NULL,
    quantidade numeric(2,0) NOT NULL,
    data date NOT NULL,
    horario character varying(6) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.sorteio;
       public         heap    postgres    false                       1259    22871    spa    TABLE     �   CREATE TABLE public.spa (
    numero numeric(4,0) NOT NULL,
    id character(10) NOT NULL,
    nome character varying(30),
    valordia numeric(4,2) NOT NULL
);
    DROP TABLE public.spa;
       public         heap    postgres    false                        1259    22878    teatro    TABLE     k   CREATE TABLE public.teatro (
    id character(10) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
    DROP TABLE public.teatro;
       public         heap    postgres    false            !           1259    22883 
   tratamento    TABLE     �   CREATE TABLE public.tratamento (
    numero character(6) NOT NULL,
    duracao character varying(6),
    exe_numero numeric(4,0) NOT NULL
);
    DROP TABLE public.tratamento;
       public         heap    postgres    false            "           1259    22888 
   usado_para    TABLE     n   CREATE TABLE public.usado_para (
    numero numeric(6,0) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.usado_para;
       public         heap    postgres    false            #           1259    22893    uso    TABLE     �   CREATE TABLE public.uso (
    nome character varying(30) NOT NULL,
    classificacao_indicativa character varying(5) NOT NULL
);
    DROP TABLE public.uso;
       public         heap    postgres    false            $           1259    22898    vaga    TABLE     �   CREATE TABLE public.vaga (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    status character varying(20) NOT NULL
);
    DROP TABLE public.vaga;
       public         heap    postgres    false            %           1259    22903    youtube    TABLE     v   CREATE TABLE public.youtube (
    nome character varying(30) NOT NULL,
    frequencia_videos character varying(10)
);
    DROP TABLE public.youtube;
       public         heap    postgres    false            "          0    22495    academia 
   TABLE DATA           v   COPY public.academia (numero, quantidade_equipamentos, ultima_manutencao_bebedouro, quantidade_chuveiros) FROM stdin;
    public          postgres    false    215   ��      #          0    22500 
   acomodacao 
   TABLE DATA           I   COPY public.acomodacao (numero, tipo, valor, ultima_limpeza) FROM stdin;
    public          postgres    false    216   [�      $          0    22505    acumula 
   TABLE DATA           /   COPY public.acumula (nome, e_mail) FROM stdin;
    public          postgres    false    217   �      %          0    22510    alimento 
   TABLE DATA           W   COPY public.alimento (id, nome, quantidade_desejada, quantidade_existente) FROM stdin;
    public          postgres    false    218   6�      &          0    22515    aluguel 
   TABLE DATA           c   COPY public.aluguel (id, pag_id, valor_total, valor_base, multa, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    219   K�      '          0    22522 	   amenidade 
   TABLE DATA           )   COPY public.amenidade (tipo) FROM stdin;
    public          postgres    false    220   -�      (          0    22527    ar_livre 
   TABLE DATA           Q   COPY public.ar_livre (numero, churrasqueira, forno_a_lenha, freezer) FROM stdin;
    public          postgres    false    221   ��      )          0    22532    armazena 
   TABLE DATA           .   COPY public.armazena (a_a_id, id) FROM stdin;
    public          postgres    false    222   ��      *          0    22537    assalariado 
   TABLE DATA           G   COPY public.assalariado (cpf, horassemana, salario_mensal) FROM stdin;
    public          postgres    false    223   ��      ,          0    22549    autonomo 
   TABLE DATA           2   COPY public.autonomo (cpf, valorhora) FROM stdin;
    public          postgres    false    225   ��      +          0    22542    autorizacao 
   TABLE DATA           A   COPY public.autorizacao (id, nec_id, validade, cnpj) FROM stdin;
    public          postgres    false    224   ��      -          0    22554 	   banho_pet 
   TABLE DATA           b   COPY public.banho_pet (numero, nome_pet, telefone_dono, litros_agua_gastos, data, id) FROM stdin;
    public          postgres    false    226   m�      .          0    22559    beneficiado 
   TABLE DATA           0   COPY public.beneficiado (cpf, nome) FROM stdin;
    public          postgres    false    227   I�      /          0    22564    beneficiados 
   TABLE DATA           D   COPY public.beneficiados (cpf, numero, cpf_beneficiado) FROM stdin;
    public          postgres    false    228   C�      0          0    22569 	   beneficio 
   TABLE DATA           0   COPY public.beneficio (nome, valor) FROM stdin;
    public          postgres    false    229   ��      1          0    22574    cafe_da_manha 
   TABLE DATA           <   COPY public.cafe_da_manha (id, reserva_de_mesa) FROM stdin;
    public          postgres    false    230   ��      3          0    22584    campanha 
   TABLE DATA           P   COPY public.campanha (id, nome, periodo, objetivo, verba, pro_nome) FROM stdin;
    public          postgres    false    232   �      4          0    22589    chatbot 
   TABLE DATA           N   COPY public.chatbot (registro_digital, cnpj, nome_avatar, versao) FROM stdin;
    public          postgres    false    233   �      5          0    22596    compra 
   TABLE DATA           <   COPY public.compra (id, valor, horario, numero) FROM stdin;
    public          postgres    false    234   3�      6          0    22601    consome 
   TABLE DATA           R   COPY public.consome (idconsome, numero, id, dia, horario, quantidade) FROM stdin;
    public          postgres    false    235   ö      2          0    22579    data_status 
   TABLE DATA           ?   COPY public.data_status (numero, dia, mes, status) FROM stdin;
    public          postgres    false    231   _�      7          0    22606    delivery 
   TABLE DATA           e   COPY public.delivery (id, empresa_associada, data, horario, valor, tipo, fei_id, numero) FROM stdin;
    public          postgres    false    236         8          0    22611    departamento 
   TABLE DATA           8   COPY public.departamento (numero, nome, id) FROM stdin;
    public          postgres    false    237   �      :          0    22621    dependencia 
   TABLE DATA           I   COPY public.dependencia (numero, data_ultima_manutencao, id) FROM stdin;
    public          postgres    false    239   G      9          0    22616 
   dependente 
   TABLE DATA           H   COPY public.dependente (cpf, hospede_principal_responsavel) FROM stdin;
    public          postgres    false    238   ~      ;          0    22626 	   dispoe_de 
   TABLE DATA           1   COPY public.dispoe_de (numero, tipo) FROM stdin;
    public          postgres    false    240   I      <          0    22631 	   documento 
   TABLE DATA           T   COPY public.documento (id, e_r_id, tipo, data_emissao, data_vencimento) FROM stdin;
    public          postgres    false    241   �      q          0    22908    e_divulgada_por 
   TABLE DATA           4   COPY public.e_divulgada_por (cpf, nome) FROM stdin;
    public          postgres    false    294   �      =          0    22638    empresa_turismo 
   TABLE DATA           F   COPY public.empresa_turismo (numero, nome, especialidade) FROM stdin;
    public          postgres    false    242         >          0    22643    espaco 
   TABLE DATA           ]   COPY public.espaco (numero, nome, tamanho, valor, capacidade_maxima, eng_numero) FROM stdin;
    public          postgres    false    243   �      ?          0    22648    espaco_eventos 
   TABLE DATA           @   COPY public.espaco_eventos (numero, id, senha_wifi) FROM stdin;
    public          postgres    false    244   j      @          0    22655    estabelecimento 
   TABLE DATA           O   COPY public.estabelecimento (id, nome, faturamento_mensal, numero) FROM stdin;
    public          postgres    false    245   �      A          0    22660    estadia_anterior 
   TABLE DATA           �   COPY public.estadia_anterior (id, responsavel, data_check_in, data_check_out, tipo_de_hospede, valor_gasto, unidade, acomodacao, pontos_gerados, cnpj) FROM stdin;
    public          postgres    false    246   �      B          0    22665    evento 
   TABLE DATA           z   COPY public.evento (id, nome, cpf_responsavel, acesso, valor, dia, horario, classificacao_indicativa, numero) FROM stdin;
    public          postgres    false    247         C          0    22670    funcionario 
   TABLE DATA           p   COPY public.funcionario (cpf, nome, data_nascimento, data_contratacao, genero, raca, cargo, numero) FROM stdin;
    public          postgres    false    248         D          0    22675    ganhador 
   TABLE DATA           1   COPY public.ganhador (id, cpf, nome) FROM stdin;
    public          postgres    false    249   =#      E          0    22680    garagem 
   TABLE DATA           P   COPY public.garagem (numero, tipo, capacidade_maxima, valordia, id) FROM stdin;
    public          postgres    false    250   �$      K          0    22710    hospede 
   TABLE DATA           \   COPY public.hospede (cpf, nome, e_mail, data_nascimento, genero, pod_cpf, cnpj) FROM stdin;
    public          postgres    false    256   %      F          0    22685    hotel 
   TABLE DATA           �   COPY public.hotel (id, categoria, estado, cidade, bairro, rua, numero, cep, nome_real, nome_fantasia, capacidade_maxima, area_m2, data_inauguracao, cnpj) FROM stdin;
    public          postgres    false    251   Q)      G          0    22690    hotel_empresarial 
   TABLE DATA           Y   COPY public.hotel_empresarial (id, quantidade_salas_reuniao, qualidade_wifi) FROM stdin;
    public          postgres    false    252   +      H          0    22695    hotel_familiar 
   TABLE DATA           Q   COPY public.hotel_familiar (id, brinquedos, salao_de_jogos_infantil) FROM stdin;
    public          postgres    false    253   I+      I          0    22700    hotel_para_adulto 
   TABLE DATA              COPY public.hotel_para_adulto (id, quantidade_bares, quantidade_saunas, quantidade_adegas, salao_de_jogos_adultos) FROM stdin;
    public          postgres    false    254   z+      J          0    22705    hotel_para_pets 
   TABLE DATA           V   COPY public.hotel_para_pets (id, quantidade_patios, area_brinquedos_pets) FROM stdin;
    public          postgres    false    255   �+      L          0    22715    inclui 
   TABLE DATA           I   COPY public.inclui (for_numero, numero, i_a_numero, periodo) FROM stdin;
    public          postgres    false    257   �+      M          0    22722    influenciador_parceiro 
   TABLE DATA           [   COPY public.influenciador_parceiro (cpf, nome, numero_seguidores, remuneracao) FROM stdin;
    public          postgres    false    258   �,      N          0    22727 	   instagram 
   TABLE DATA           S   COPY public.instagram (nome, frequencia_stories, frequencia_postagens) FROM stdin;
    public          postgres    false    259   4-      O          0    22732    limpeza_de_pele 
   TABLE DATA           B   COPY public.limpeza_de_pele (numero, produtos_usados) FROM stdin;
    public          postgres    false    260   e-      P          0    22737    lobby 
   TABLE DATA           +   COPY public.lobby (numero, id) FROM stdin;
    public          postgres    false    261   1.      Q          0    22744    local_alimentacao 
   TABLE DATA           6   COPY public.local_alimentacao (id, nicho) FROM stdin;
    public          postgres    false    262   b.      R          0    22749    loja 
   TABLE DATA           )   COPY public.loja (id, nicho) FROM stdin;
    public          postgres    false    263   �.      S          0    22754    massagem 
   TABLE DATA           0   COPY public.massagem (numero, tipo) FROM stdin;
    public          postgres    false    264   "/      T          0    22759    nota_fiscal 
   TABLE DATA           d   COPY public.nota_fiscal (id, valor_total, descontos, multa, data_limite, quitada, cnpj) FROM stdin;
    public          postgres    false    265   �/      U          0    22764    oferece 
   TABLE DATA           /   COPY public.oferece (numero, nome) FROM stdin;
    public          postgres    false    266   |0      V          0    22769 	   pagamento 
   TABLE DATA           c   COPY public.pagamento (id, cnpj_destinatario, valor, referencia, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    267   1      Y          0    22784    peca 
   TABLE DATA           >   COPY public.peca (nome, valor, data, horario, id) FROM stdin;
    public          postgres    false    270   b2      W          0    22774    permite 
   TABLE DATA           .   COPY public.permite (numero, cpf) FROM stdin;
    public          postgres    false    268   �3      X          0    22779    personal_trainer 
   TABLE DATA           J   COPY public.personal_trainer (cpf, nome, formacao, valorhora) FROM stdin;
    public          postgres    false    269   44      Z          0    22789    piscina 
   TABLE DATA           R   COPY public.piscina (numero, tipo, profundidade, data_ultima_limpeza) FROM stdin;
    public          postgres    false    271   j5      [          0    22794 	   principal 
   TABLE DATA           =   COPY public.principal (cpf, id, forma_pagamento) FROM stdin;
    public          postgres    false    272   6      \          0    22801    produto_frigobar 
   TABLE DATA           B   COPY public.produto_frigobar (id, nome, valorunidade) FROM stdin;
    public          postgres    false    273   B7      ]          0    22806    rede 
   TABLE DATA           >   COPY public.rede (cnpj, nome_real, nome_fantasia) FROM stdin;
    public          postgres    false    274   �7      ^          0    22811    rede_social 
   TABLE DATA           \   COPY public.rede_social (nome, perfil, numero_seguidores, media_curtidas, cnpj) FROM stdin;
    public          postgres    false    275   "8      _          0    22816    refeicao 
   TABLE DATA           8   COPY public.refeicao (nome, horario, valor) FROM stdin;
    public          postgres    false    276   �8      `          0    22821 
   requisicao 
   TABLE DATA           �   COPY public.requisicao (id, unidade, origem, dependencia, data_inicio, data_fim, classificacao, complemento, registro_digital, cpf) FROM stdin;
    public          postgres    false    277   �8      a          0    22826    reserva 
   TABLE DATA           ]   COPY public.reserva (numero, cpf, data_check_in, data_check_out, pontos_gerados) FROM stdin;
    public          postgres    false    278   �<      b          0    22831    restaurante 
   TABLE DATA           H   COPY public.restaurante (numero, capacidade_maxima, status) FROM stdin;
    public          postgres    false    279   �=      c          0    22836    robo_social 
   TABLE DATA           I   COPY public.robo_social (id, data_ultima_manutencao, status) FROM stdin;
    public          postgres    false    280   >      d          0    22841    sala 
   TABLE DATA           �   COPY public.sala (numero, quantidade_banheiros, cozinha, quantidade_televisao, quantidade_ventiladores, quantidade_ar_condicionado) FROM stdin;
    public          postgres    false    281   g>      e          0    22846    sala_eventos 
   TABLE DATA           A   COPY public.sala_eventos (numero, capacidade_maxima) FROM stdin;
    public          postgres    false    282   �>      f          0    22851    seguidor 
   TABLE DATA           8   COPY public.seguidor (e_mail, perfil, nome) FROM stdin;
    public          postgres    false    283   �>      g          0    22856    servico_de_quarto 
   TABLE DATA           G   COPY public.servico_de_quarto (id, item, data, entregador) FROM stdin;
    public          postgres    false    284   �?      h          0    22861    sessao_terapia_ocupacional 
   TABLE DATA           m   COPY public.sessao_terapia_ocupacional (data, horario, duracao, objetivo, capacidade_maxima, id) FROM stdin;
    public          postgres    false    285   �@      i          0    22866    sorteio 
   TABLE DATA           L   COPY public.sorteio (id, item, quantidade, data, horario, nome) FROM stdin;
    public          postgres    false    286   �A      j          0    22871    spa 
   TABLE DATA           9   COPY public.spa (numero, id, nome, valordia) FROM stdin;
    public          postgres    false    287   �B      k          0    22878    teatro 
   TABLE DATA           7   COPY public.teatro (id, capacidade_maxima) FROM stdin;
    public          postgres    false    288   6C      l          0    22883 
   tratamento 
   TABLE DATA           A   COPY public.tratamento (numero, duracao, exe_numero) FROM stdin;
    public          postgres    false    289   tC      m          0    22888 
   usado_para 
   TABLE DATA           2   COPY public.usado_para (numero, nome) FROM stdin;
    public          postgres    false    290   �C      n          0    22893    uso 
   TABLE DATA           =   COPY public.uso (nome, classificacao_indicativa) FROM stdin;
    public          postgres    false    291   SE      o          0    22898    vaga 
   TABLE DATA           :   COPY public.vaga (for_numero, numero, status) FROM stdin;
    public          postgres    false    292   F      p          0    22903    youtube 
   TABLE DATA           :   COPY public.youtube (nome, frequencia_videos) FROM stdin;
    public          postgres    false    293   �N      �           2606    22499    academia id_acade_depen_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_id;
       public            postgres    false    215            �           2606    22504    acomodacao id_acomo_depen_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_id PRIMARY KEY (numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_id;
       public            postgres    false    216            �           2606    22509    acumula id_acumula_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT id_acumula_id PRIMARY KEY (e_mail, nome);
 ?   ALTER TABLE ONLY public.acumula DROP CONSTRAINT id_acumula_id;
       public            postgres    false    217    217            �           2606    22514    alimento id_alimento_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT id_alimento_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.alimento DROP CONSTRAINT id_alimento_id;
       public            postgres    false    218            �           2606    22519    aluguel id_aluguel_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT id_aluguel_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT id_aluguel_id;
       public            postgres    false    219            �           2606    22526    amenidade id_amenidade_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade_id PRIMARY KEY (tipo);
 C   ALTER TABLE ONLY public.amenidade DROP CONSTRAINT id_amenidade_id;
       public            postgres    false    220            �           2606    22531    ar_livre id_ar_li_espac_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_id;
       public            postgres    false    221            �           2606    22536    armazena id_armazena_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT id_armazena_id PRIMARY KEY (a_a_id, id);
 A   ALTER TABLE ONLY public.armazena DROP CONSTRAINT id_armazena_id;
       public            postgres    false    222    222            �           2606    22541    assalariado id_assal_funci_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_id;
       public            postgres    false    223            �           2606    22553    autonomo id_auton_funci_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_id PRIMARY KEY (cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_id;
       public            postgres    false    225            �           2606    22546    autorizacao id_autorizacao_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT id_autorizacao_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT id_autorizacao_id;
       public            postgres    false    224            �           2606    22558    banho_pet id_banho_pet_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT id_banho_pet_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT id_banho_pet_id;
       public            postgres    false    226            �           2606    22563    beneficiado id_beneficiado_id 
   CONSTRAINT     b   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT id_beneficiado_id PRIMARY KEY (cpf, nome);
 G   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT id_beneficiado_id;
       public            postgres    false    227    227            �           2606    22568    beneficiados id_beneficiados_id 
   CONSTRAINT     w   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT id_beneficiados_id PRIMARY KEY (cpf, numero, cpf_beneficiado);
 I   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT id_beneficiados_id;
       public            postgres    false    228    228    228            �           2606    22573    beneficio id_beneficio_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.beneficio
    ADD CONSTRAINT id_beneficio_id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.beneficio DROP CONSTRAINT id_beneficio_id;
       public            postgres    false    229            �           2606    22578    cafe_da_manha id_cafe__compr_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_id PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_id;
       public            postgres    false    230            �           2606    22588    campanha id_campanha_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT id_campanha_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.campanha DROP CONSTRAINT id_campanha_id;
       public            postgres    false    232            �           2606    22593    chatbot id_chatbot_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT id_chatbot_id PRIMARY KEY (registro_digital);
 ?   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT id_chatbot_id;
       public            postgres    false    233            �           2606    22600    compra id_compra_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_compra_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_compra_id;
       public            postgres    false    234            �           2606    22605    consome id_consome_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome_id PRIMARY KEY (idconsome);
 ?   ALTER TABLE ONLY public.consome DROP CONSTRAINT id_consome_id;
       public            postgres    false    235            �           2606    22583    data_status id_data_status_id 
   CONSTRAINT     i   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT id_data_status_id PRIMARY KEY (numero, dia, mes);
 G   ALTER TABLE ONLY public.data_status DROP CONSTRAINT id_data_status_id;
       public            postgres    false    231    231    231            �           2606    22610    delivery id_delivery_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT id_delivery_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.delivery DROP CONSTRAINT id_delivery_id;
       public            postgres    false    236            �           2606    22615    departamento id_departamento_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT id_departamento_id PRIMARY KEY (numero);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT id_departamento_id;
       public            postgres    false    237            �           2606    22620    dependente id_depen_hospe_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_id PRIMARY KEY (cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_id;
       public            postgres    false    238            �           2606    22625    dependencia id_dependencia_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT id_dependencia_id;
       public            postgres    false    239            �           2606    22630    dispoe_de id_dispoe_de_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT id_dispoe_de_id PRIMARY KEY (tipo, numero);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT id_dispoe_de_id;
       public            postgres    false    240    240            �           2606    22635    documento id_documento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT id_documento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.documento DROP CONSTRAINT id_documento_id;
       public            postgres    false    241            <           2606    22912 %   e_divulgada_por id_e_divulgada_por_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT id_e_divulgada_por_id PRIMARY KEY (cpf, nome);
 O   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT id_e_divulgada_por_id;
       public            postgres    false    294    294            �           2606    22642 !   empresa_turismo id_empre_depen_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_id;
       public            postgres    false    242            �           2606    22652 #   espaco_eventos id_espaco_eventos_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT id_espaco_eventos_id PRIMARY KEY (numero);
 M   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT id_espaco_eventos_id;
       public            postgres    false    244            �           2606    22647    espaco id_espaco_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT id_espaco_id PRIMARY KEY (numero);
 =   ALTER TABLE ONLY public.espaco DROP CONSTRAINT id_espaco_id;
       public            postgres    false    243            �           2606    22659 %   estabelecimento id_estabelecimento_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT id_estabelecimento_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT id_estabelecimento_id;
       public            postgres    false    245            �           2606    22664 '   estadia_anterior id_estadia_anterior_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT id_estadia_anterior_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT id_estadia_anterior_id;
       public            postgres    false    246            �           2606    22669    evento id_evento_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_evento_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.evento DROP CONSTRAINT id_evento_id;
       public            postgres    false    247            �           2606    22674    funcionario id_funcionario_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT id_funcionario_id;
       public            postgres    false    248            �           2606    22679    ganhador id_ganhador_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT id_ganhador_id PRIMARY KEY (id, cpf);
 A   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT id_ganhador_id;
       public            postgres    false    249    249            �           2606    22684    garagem id_garagem_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT id_garagem_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.garagem DROP CONSTRAINT id_garagem_id;
       public            postgres    false    250            �           2606    22714    hospede id_hospede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede_id PRIMARY KEY (cpf);
 ?   ALTER TABLE ONLY public.hospede DROP CONSTRAINT id_hospede_id;
       public            postgres    false    256            �           2606    22704 %   hotel_para_adulto id_hotel_hotel_1_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_id;
       public            postgres    false    254            �           2606    22699 "   hotel_familiar id_hotel_hotel_2_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_id PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_id;
       public            postgres    false    253            �           2606    22694 %   hotel_empresarial id_hotel_hotel_3_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_id;
       public            postgres    false    252            �           2606    22709 !   hotel_para_pets id_hotel_hotel_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_id PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_id;
       public            postgres    false    255            �           2606    22689    hotel id_hotel_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT id_hotel_id PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.hotel DROP CONSTRAINT id_hotel_id;
       public            postgres    false    251            �           2606    22719    inclui id_inclu_vaga_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_id PRIMARY KEY (for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_id;
       public            postgres    false    257    257            �           2606    22726 3   influenciador_parceiro id_influenciador_parceiro_id 
   CONSTRAINT     r   ALTER TABLE ONLY public.influenciador_parceiro
    ADD CONSTRAINT id_influenciador_parceiro_id PRIMARY KEY (cpf);
 ]   ALTER TABLE ONLY public.influenciador_parceiro DROP CONSTRAINT id_influenciador_parceiro_id;
       public            postgres    false    258            �           2606    22731    instagram id_insta_rede__id 
   CONSTRAINT     [   ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__id PRIMARY KEY (nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__id;
       public            postgres    false    259            �           2606    22736 !   limpeza_de_pele id_limpe_trata_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_id;
       public            postgres    false    260            �           2606    22741    lobby id_lobby_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT id_lobby_id PRIMARY KEY (numero);
 ;   ALTER TABLE ONLY public.lobby DROP CONSTRAINT id_lobby_id;
       public            postgres    false    261            �           2606    22748 #   local_alimentacao id_local_estab_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_id;
       public            postgres    false    262            �           2606    22753    loja id_loja_estab_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_id;
       public            postgres    false    263            �           2606    22758    massagem id_massa_trata_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_id;
       public            postgres    false    264            �           2606    22763    nota_fiscal id_nota_fiscal_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT id_nota_fiscal_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT id_nota_fiscal_id;
       public            postgres    false    265                        2606    22768    oferece id_oferece_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT id_oferece_id PRIMARY KEY (nome, numero);
 ?   ALTER TABLE ONLY public.oferece DROP CONSTRAINT id_oferece_id;
       public            postgres    false    266    266                       2606    22773    pagamento id_pagamento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT id_pagamento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT id_pagamento_id;
       public            postgres    false    267                       2606    22788    peca id_peca_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT id_peca_id PRIMARY KEY (nome, data, horario);
 9   ALTER TABLE ONLY public.peca DROP CONSTRAINT id_peca_id;
       public            postgres    false    270    270    270                       2606    22778    permite id_permite_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT id_permite_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.permite DROP CONSTRAINT id_permite_id;
       public            postgres    false    268    268                       2606    22783 '   personal_trainer id_personal_trainer_id 
   CONSTRAINT     f   ALTER TABLE ONLY public.personal_trainer
    ADD CONSTRAINT id_personal_trainer_id PRIMARY KEY (cpf);
 Q   ALTER TABLE ONLY public.personal_trainer DROP CONSTRAINT id_personal_trainer_id;
       public            postgres    false    269            
           2606    22793    piscina id_pisci_depen_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_id;
       public            postgres    false    271                       2606    22798    principal id_princ_hospe_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_id PRIMARY KEY (cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_id;
       public            postgres    false    272                       2606    22805 '   produto_frigobar id_produto_frigobar_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.produto_frigobar DROP CONSTRAINT id_produto_frigobar_id;
       public            postgres    false    273                       2606    22810    rede id_rede_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.rede
    ADD CONSTRAINT id_rede_id PRIMARY KEY (cnpj);
 9   ALTER TABLE ONLY public.rede DROP CONSTRAINT id_rede_id;
       public            postgres    false    274                       2606    22815    rede_social id_rede_social_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT id_rede_social_id PRIMARY KEY (nome);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT id_rede_social_id;
       public            postgres    false    275                       2606    22820    refeicao id_refeicao_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.refeicao
    ADD CONSTRAINT id_refeicao_id PRIMARY KEY (nome);
 A   ALTER TABLE ONLY public.refeicao DROP CONSTRAINT id_refeicao_id;
       public            postgres    false    276                       2606    22825    requisicao id_requisicao_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao_id PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT id_requisicao_id;
       public            postgres    false    277                       2606    22830    reserva id_reserva_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.reserva DROP CONSTRAINT id_reserva_id;
       public            postgres    false    278    278                       2606    22835    restaurante id_resta_depen_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_id;
       public            postgres    false    279                       2606    22840    robo_social id_robo_social_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.robo_social
    ADD CONSTRAINT id_robo_social_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.robo_social DROP CONSTRAINT id_robo_social_id;
       public            postgres    false    280            "           2606    22850    sala_eventos id_sala__depen_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_id PRIMARY KEY (numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_id;
       public            postgres    false    282                        2606    22845    sala id_sala_espac_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_id;
       public            postgres    false    281            $           2606    22855    seguidor id_seguidor_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.seguidor
    ADD CONSTRAINT id_seguidor_id PRIMARY KEY (perfil);
 A   ALTER TABLE ONLY public.seguidor DROP CONSTRAINT id_seguidor_id;
       public            postgres    false    283            &           2606    22860 #   servico_de_quarto id_servi_compr_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_id;
       public            postgres    false    284            (           2606    22865 ;   sessao_terapia_ocupacional id_sessao_terapia_ocupacional_id 
   CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT id_sessao_terapia_ocupacional_id PRIMARY KEY (data, horario);
 e   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT id_sessao_terapia_ocupacional_id;
       public            postgres    false    285    285            *           2606    22870    sorteio id_sorteio_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT id_sorteio_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT id_sorteio_id;
       public            postgres    false    286            ,           2606    22875    spa id_spa_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT id_spa_id PRIMARY KEY (numero);
 7   ALTER TABLE ONLY public.spa DROP CONSTRAINT id_spa_id;
       public            postgres    false    287            0           2606    22882    teatro id_teatr_estab_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_id PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_id;
       public            postgres    false    288            2           2606    22887    tratamento id_tratamento_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT id_tratamento_id PRIMARY KEY (numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT id_tratamento_id;
       public            postgres    false    289            4           2606    22892    usado_para id_usado_para_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT id_usado_para_id PRIMARY KEY (numero, nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT id_usado_para_id;
       public            postgres    false    290    290            6           2606    22897    uso id_uso_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.uso
    ADD CONSTRAINT id_uso_id PRIMARY KEY (nome);
 7   ALTER TABLE ONLY public.uso DROP CONSTRAINT id_uso_id;
       public            postgres    false    291            8           2606    22902    vaga id_vaga_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT id_vaga_id PRIMARY KEY (for_numero, numero);
 9   ALTER TABLE ONLY public.vaga DROP CONSTRAINT id_vaga_id;
       public            postgres    false    292    292            :           2606    22907    youtube id_youtu_rede__id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__id;
       public            postgres    false    293            �           2606    22521    aluguel sid_alugu_estab_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_id UNIQUE (pag_id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_id;
       public            postgres    false    219            �           2606    22548    autorizacao sid_autor_estab_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_id UNIQUE (nec_id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_id;
       public            postgres    false    224            �           2606    22595    chatbot sid_chatb_rede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_id UNIQUE (cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_id;
       public            postgres    false    233            �           2606    22637    documento sid_docum_pagam_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_id UNIQUE (e_r_id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_id;
       public            postgres    false    241            �           2606    22654 !   espaco_eventos sid_espac_hotel_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_id UNIQUE (id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_id;
       public            postgres    false    244            �           2606    22721    inclui sid_inclu_acomo_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_id UNIQUE (i_a_numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_id;
       public            postgres    false    257            �           2606    22743    lobby sid_lobby_hotel_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_id UNIQUE (id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_id;
       public            postgres    false    261                       2606    22800    principal sid_princ_nota__id 
   CONSTRAINT     U   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__id UNIQUE (id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__id;
       public            postgres    false    272            .           2606    22877    spa sid_spa_hotel_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_id UNIQUE (id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_id;
       public            postgres    false    287            ?           2606    22923    acumula equ_acumu_segui    FK CONSTRAINT     |   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT equ_acumu_segui FOREIGN KEY (e_mail) REFERENCES public.seguidor(perfil);
 A   ALTER TABLE ONLY public.acumula DROP CONSTRAINT equ_acumu_segui;
       public          postgres    false    283    5156    217            D           2606    22953    armazena equ_armaz_alime    FK CONSTRAINT     y   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_alime FOREIGN KEY (a_a_id) REFERENCES public.alimento(id);
 B   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_alime;
       public          postgres    false    222    5010    218            E           2606    22948    armazena equ_armaz_hotel_fk    FK CONSTRAINT     u   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 E   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_hotel_fk;
       public          postgres    false    251    5086    222            K           2606    22983    beneficiado equ_benef_benef_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT equ_benef_benef_fk FOREIGN KEY (nome) REFERENCES public.beneficio(nome);
 H   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT equ_benef_benef_fk;
       public          postgres    false    227    5036    229            M           2606    22993    beneficiados equ_benef_reser    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT equ_benef_reser FOREIGN KEY (cpf, numero) REFERENCES public.reserva(cpf, numero);
 F   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT equ_benef_reser;
       public          postgres    false    228    278    278    5146    228            P           2606    23008    campanha equ_campa_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT equ_campa_rede__fk FOREIGN KEY (pro_nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.campanha DROP CONSTRAINT equ_campa_rede__fk;
       public          postgres    false    275    232    5140            O           2606    23003    data_status equ_data__acomo    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT equ_data__acomo FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.data_status DROP CONSTRAINT equ_data__acomo;
       public          postgres    false    216    5006    231            W           2606    23043    departamento equ_depar_hotel_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT equ_depar_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT equ_depar_hotel_fk;
       public          postgres    false    251    5086    237            Y           2606    23053    dependencia equ_depen_hotel_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 H   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT equ_depen_hotel_fk;
       public          postgres    false    5086    239    251            �           2606    23338    e_divulgada_por equ_e_div_influ    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT equ_e_div_influ FOREIGN KEY (cpf) REFERENCES public.influenciador_parceiro(cpf);
 I   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT equ_e_div_influ;
       public          postgres    false    294    258    5102            ^           2606    23078    espaco equ_espac_espac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT equ_espac_espac_fk FOREIGN KEY (eng_numero) REFERENCES public.espaco_eventos(numero);
 C   ALTER TABLE ONLY public.espaco DROP CONSTRAINT equ_espac_espac_fk;
       public          postgres    false    243    244    5070            c           2606    23103    funcionario equ_funci_depar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_depar_fk FOREIGN KEY (numero) REFERENCES public.departamento(numero);
 H   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT equ_funci_depar_fk;
       public          postgres    false    5054    248    237            d           2606    23108    ganhador equ_ganha_sorte    FK CONSTRAINT     t   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT equ_ganha_sorte FOREIGN KEY (id) REFERENCES public.sorteio(id);
 B   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT equ_ganha_sorte;
       public          postgres    false    5162    249    286            e           2606    23113    garagem equ_garag_hotel_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT equ_garag_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 D   ALTER TABLE ONLY public.garagem DROP CONSTRAINT equ_garag_hotel_fk;
       public          postgres    false    251    5086    250            k           2606    23148    hospede equ_hospe_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.hospede DROP CONSTRAINT equ_hospe_rede_fk;
       public          postgres    false    256    5138    274            f           2606    23118    hotel equ_hotel_rede_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT equ_hotel_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 A   ALTER TABLE ONLY public.hotel DROP CONSTRAINT equ_hotel_rede_fk;
       public          postgres    false    5138    251    274            u           2606    23193    nota_fiscal equ_nota__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT equ_nota__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT equ_nota__rede_fk;
       public          postgres    false    265    5138    274            v           2606    23198    oferece equ_ofere_refei    FK CONSTRAINT     x   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_refei FOREIGN KEY (nome) REFERENCES public.refeicao(nome);
 A   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_refei;
       public          postgres    false    5142    266    276            w           2606    23203    oferece equ_ofere_resta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_resta_fk FOREIGN KEY (numero) REFERENCES public.restaurante(numero);
 D   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_resta_fk;
       public          postgres    false    279    5148    266            x           2606    23208    pagamento equ_pagam_rede_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT equ_pagam_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 E   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT equ_pagam_rede_fk;
       public          postgres    false    274    5138    267            {           2606    23223    peca equ_peca_teatr_fk    FK CONSTRAINT     q   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT equ_peca_teatr_fk FOREIGN KEY (id) REFERENCES public.teatro(id);
 @   ALTER TABLE ONLY public.peca DROP CONSTRAINT equ_peca_teatr_fk;
       public          postgres    false    5168    270    288            y           2606    23213    permite equ_permi_perso    FK CONSTRAINT     ~   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT equ_permi_perso FOREIGN KEY (cpf) REFERENCES public.personal_trainer(cpf);
 A   ALTER TABLE ONLY public.permite DROP CONSTRAINT equ_permi_perso;
       public          postgres    false    5126    268    269            �           2606    23258    reserva equ_reser_princ    FK CONSTRAINT     w   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT equ_reser_princ FOREIGN KEY (cpf) REFERENCES public.principal(cpf);
 A   ALTER TABLE ONLY public.reserva DROP CONSTRAINT equ_reser_princ;
       public          postgres    false    272    278    5132            �           2606    23318    usado_para equ_usado_espac    FK CONSTRAINT     }   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_espac FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_espac;
       public          postgres    false    5068    290    243            �           2606    23313    usado_para equ_usado_uso_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_uso_fk FOREIGN KEY (nome) REFERENCES public.uso(nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_uso_fk;
       public          postgres    false    5174    290    291            �           2606    23323    vaga equ_vaga_garag    FK CONSTRAINT     {   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT equ_vaga_garag FOREIGN KEY (for_numero) REFERENCES public.garagem(numero);
 =   ALTER TABLE ONLY public.vaga DROP CONSTRAINT equ_vaga_garag;
       public          postgres    false    5084    292    250            =           2606    22913    academia id_acade_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_fk;
       public          postgres    false    239    215    5058            >           2606    22918    acomodacao id_acomo_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_fk;
       public          postgres    false    239    5058    216            C           2606    22943    ar_livre id_ar_li_espac_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_fk;
       public          postgres    false    243    221    5068            F           2606    22958    assalariado id_assal_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_fk;
       public          postgres    false    223    248    5080            I           2606    22973    autonomo id_auton_funci_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_fk;
       public          postgres    false    5080    225    248            N           2606    22998    cafe_da_manha id_cafe__compr_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_fk;
       public          postgres    false    5048    234    230            X           2606    23048    dependente id_depen_hospe_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_fk;
       public          postgres    false    5096    256    238            ]           2606    23073 !   empresa_turismo id_empre_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_fk;
       public          postgres    false    239    5058    242            i           2606    23133 %   hotel_para_adulto id_hotel_hotel_1_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_fk;
       public          postgres    false    5086    254    251            h           2606    23128 "   hotel_familiar id_hotel_hotel_2_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_fk;
       public          postgres    false    251    5086    253            g           2606    23123 %   hotel_empresarial id_hotel_hotel_3_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_fk;
       public          postgres    false    251    252    5086            j           2606    23138 !   hotel_para_pets id_hotel_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_fk;
       public          postgres    false    255    5086    251            m           2606    23153    inclui id_inclu_vaga_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_fk FOREIGN KEY (for_numero, numero) REFERENCES public.vaga(for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_fk;
       public          postgres    false    257    257    5176    292    292            o           2606    23163    instagram id_insta_rede__fk    FK CONSTRAINT        ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__fk;
       public          postgres    false    275    259    5140            p           2606    23168 !   limpeza_de_pele id_limpe_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_fk;
       public          postgres    false    5170    260    289            r           2606    23178 #   local_alimentacao id_local_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_fk;
       public          postgres    false    262    5074    245            s           2606    23183    loja id_loja_estab_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_fk;
       public          postgres    false    263    5074    245            t           2606    23188    massagem id_massa_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_fk;
       public          postgres    false    264    5170    289            |           2606    23228    piscina id_pisci_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_fk;
       public          postgres    false    239    271    5058            }           2606    23233    principal id_princ_hospe_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_fk;
       public          postgres    false    256    5096    272            �           2606    23268    restaurante id_resta_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_fk;
       public          postgres    false    279    5058    239            �           2606    23278    sala_eventos id_sala__depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_fk;
       public          postgres    false    282    239    5058            �           2606    23273    sala id_sala_espac_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_fk;
       public          postgres    false    281    5068    243            �           2606    23283 #   servico_de_quarto id_servi_compr_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_fk;
       public          postgres    false    234    284    5048            �           2606    23303    teatro id_teatr_estab_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_fk;
       public          postgres    false    245    5074    288            �           2606    23328    youtube id_youtu_rede__fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__fk;
       public          postgres    false    275    5140    293            @           2606    22928    acumula ref_acumu_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT ref_acumu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.acumula DROP CONSTRAINT ref_acumu_rede__fk;
       public          postgres    false    5140    275    217            A           2606    22938    aluguel ref_alugu_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT ref_alugu_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT ref_alugu_rede_fk;
       public          postgres    false    274    219    5138            G           2606    22968    autorizacao ref_autor_rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT ref_autor_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT ref_autor_rede_fk;
       public          postgres    false    5138    224    274            J           2606    22978    banho_pet ref_banho_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT ref_banho_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel_para_pets(id);
 F   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT ref_banho_hotel_fk;
       public          postgres    false    255    226    5094            L           2606    22988    beneficiado ref_benef_assal    FK CONSTRAINT     }   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT ref_benef_assal FOREIGN KEY (cpf) REFERENCES public.assalariado(cpf);
 E   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT ref_benef_assal;
       public          postgres    false    227    5022    223            R           2606    23018    compra ref_compr_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT ref_compr_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.compra DROP CONSTRAINT ref_compr_acomo_fk;
       public          postgres    false    234    5006    216            S           2606    23028    consome ref_conso_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_acomo_fk;
       public          postgres    false    5006    216    235            T           2606    23023    consome ref_conso_produ    FK CONSTRAINT     |   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_produ FOREIGN KEY (id) REFERENCES public.produto_frigobar(id);
 A   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_produ;
       public          postgres    false    235    273    5136            U           2606    23038    delivery ref_deliv_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_acomo_fk;
       public          postgres    false    216    236    5006            V           2606    23033    delivery ref_deliv_robo__fk    FK CONSTRAINT        ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_robo__fk FOREIGN KEY (fei_id) REFERENCES public.robo_social(id);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_robo__fk;
       public          postgres    false    280    5150    236            Z           2606    23063    dispoe_de ref_dispo_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 F   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_acomo_fk;
       public          postgres    false    240    5006    216            [           2606    23058    dispoe_de ref_dispo_ameni    FK CONSTRAINT     {   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_ameni FOREIGN KEY (tipo) REFERENCES public.amenidade(tipo);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_ameni;
       public          postgres    false    5016    240    220            �           2606    23333 "   e_divulgada_por ref_e_div_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT ref_e_div_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 L   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT ref_e_div_rede__fk;
       public          postgres    false    294    275    5140            `           2606    23088 "   estabelecimento ref_estab_lobby_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT ref_estab_lobby_fk FOREIGN KEY (numero) REFERENCES public.lobby(numero);
 L   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT ref_estab_lobby_fk;
       public          postgres    false    5108    245    261            a           2606    23093 "   estadia_anterior ref_estad_rede_fk    FK CONSTRAINT        ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT ref_estad_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 L   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT ref_estad_rede_fk;
       public          postgres    false    5138    246    274            b           2606    23098    evento ref_event_sala__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT ref_event_sala__fk FOREIGN KEY (numero) REFERENCES public.sala_eventos(numero);
 C   ALTER TABLE ONLY public.evento DROP CONSTRAINT ref_event_sala__fk;
       public          postgres    false    282    247    5154            l           2606    23143    hospede ref_hospe_perso_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT ref_hospe_perso_fk FOREIGN KEY (pod_cpf) REFERENCES public.personal_trainer(cpf);
 D   ALTER TABLE ONLY public.hospede DROP CONSTRAINT ref_hospe_perso_fk;
       public          postgres    false    256    5126    269            z           2606    23218    permite ref_permi_acade_fk    FK CONSTRAINT        ALTER TABLE ONLY public.permite
    ADD CONSTRAINT ref_permi_acade_fk FOREIGN KEY (numero) REFERENCES public.academia(numero);
 D   ALTER TABLE ONLY public.permite DROP CONSTRAINT ref_permi_acade_fk;
       public          postgres    false    215    5004    268                       2606    23243    rede_social ref_rede__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT ref_rede__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT ref_rede__rede_fk;
       public          postgres    false    275    274    5138            �           2606    23248    requisicao ref_requi_chatb_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_chatb_fk FOREIGN KEY (registro_digital) REFERENCES public.chatbot(registro_digital);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_chatb_fk;
       public          postgres    false    233    277    5044            �           2606    23253    requisicao ref_requi_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_funci_fk;
       public          postgres    false    277    5080    248            �           2606    23263    reserva ref_reser_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.reserva DROP CONSTRAINT ref_reser_acomo_fk;
       public          postgres    false    278    5006    216            �           2606    23288 -   sessao_terapia_ocupacional ref_sessa_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT ref_sessa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 W   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT ref_sessa_hotel_fk;
       public          postgres    false    285    5086    251            �           2606    23293    sorteio ref_sorte_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT ref_sorte_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT ref_sorte_rede__fk;
       public          postgres    false    275    286    5140            �           2606    23308    tratamento ref_trata_spa_fk    FK CONSTRAINT        ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT ref_trata_spa_fk FOREIGN KEY (exe_numero) REFERENCES public.spa(numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT ref_trata_spa_fk;
       public          postgres    false    287    289    5164            B           2606    22933    aluguel sid_alugu_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_fk FOREIGN KEY (pag_id) REFERENCES public.estabelecimento(id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_fk;
       public          postgres    false    219    5074    245            H           2606    22963    autorizacao sid_autor_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_fk FOREIGN KEY (nec_id) REFERENCES public.estabelecimento(id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_fk;
       public          postgres    false    245    5074    224            Q           2606    23013    chatbot sid_chatb_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_fk;
       public          postgres    false    5138    233    274            \           2606    23068    documento sid_docum_pagam_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_fk FOREIGN KEY (e_r_id) REFERENCES public.pagamento(id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_fk;
       public          postgres    false    5122    241    267            _           2606    23083 !   espaco_eventos sid_espac_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_fk;
       public          postgres    false    251    244    5086            n           2606    23158    inclui sid_inclu_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_fk FOREIGN KEY (i_a_numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_fk;
       public          postgres    false    257    5006    216            q           2606    23173    lobby sid_lobby_hotel_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_fk;
       public          postgres    false    261    5086    251            ~           2606    23238    principal sid_princ_nota__fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__fk FOREIGN KEY (id) REFERENCES public.nota_fiscal(id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__fk;
       public          postgres    false    272    5118    265            �           2606    23298    spa sid_spa_hotel_fk    FK CONSTRAINT     n   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_fk;
       public          postgres    false    287    251    5086            "   P   x�=���0߰�+�ĉ�K������"!״p����M~��ڈ:T4��)H�*�T��|[;��0��{��s�|��"      #   �   x�}�M
�@�ד��$�$m��f�Ս�<��+�!��x?ydH�r/Kʈ=bbd�:6S���Y�Ǌi<b�)*��D�R���RK˴�C��,�},�Z,��H!qٕGRǧ7���Js%����=�Vs�VO�=T��Zީݷ�o|��0kz�F��z � ��|      $      x������ � �      %     x�e�=N�0F�χA;v�rYi+V���1Ȭ�
�d�\�#l���/Ƙ����͓>�����V9�g8��8�~��`�}9&XF��b�B�6m'`��0s�0!I�!O�隹 �M�.�01V�gq�#���A���X�A����<�u&�Ҹ���R"��8�C �����42��.��:=��U� ����#)�x/�א��{�/o��+�z�M�w�pF>�ɨGyc���m��6Lsv��w��D)��or�      &   �   x���Q� D��]di"w���c��"]1UM�/���dR�!$yƔ �ߤ�MyAZ�3R�\�Z�WK�sؗ	���NquR�}�u0�:�::��呂Aꩬ��ݬ`��̏S�`����.2�� ��70H�:�D��#1H=>���G��7OOŷ3��dA���y7c=d�����G�Y��|���Mdmr�W�c��-��      '   �   x��1�0F��?E.P� H������&n��N�>����{��2D	�۾Iŕޤ�]�J��>$�,IL)nS��h6��܆��b"�p"]Y�p��c۟/Q
��Y�ѥ�L���Z�}�"������2}      (   '   x�3�4�4�4�2�@��7��@�!X(���� �hs      )   �   x����� ��0U�]�����J'�Y��ب���M]��Z�M�:�y��Y%_�tHjG_C�-o,����lY�-�!1TR]w[pf�w`:���ZA��|��Q�.�b:u�$��@��1�H��@�Mɰ!��ާ�<�?��      *   ^  x�5�I\1C��|��w�����UW�> =�ӨDȕ���|$o��VQ�R2���HX����ڤP8�둪X%}�%��̨��J]J���=*X%�(��.���H��R��T�v�-� wƽ���ܑ8�mΫ\-����<uԞ�(r)&�=�Mv&�����m��*�&ڸn����t&'/7�c>��N�%�~Ie�H��� iI�ul�nY�8����`�H���b�*�Dt��A��R���M7&utZ�A���m�1�e>֯m��P���7�Ǡe����U[o9��B۶ ���\T5�U,HK5U��ws�D.�+Fw��X�K��:pc����r�m�����S~l      ,   �   x�5�ɍE!�&�gy��e��7�9 A�7R�C�'��Y�ʮ����?SN�]P6����:p���\Pྙ)Hr�|�S�f�����A��Þ�q�h��2M).�P�:W�7Nx�����d�4F6׾�v,����A�[h|;�XPPN�ߝ�C�ڛtw��Z�:9g      +   �   x�}�A� ��/N��K���FuU�P-�90Z	��{ ���S�)�y�k�.�k�wѥ`8]ݨӥ`8S��)�R�)ù�)�R0W��YR0���Ζ���N�K
���9��80�Av���I�9����d�� ;�d����}�����      -   �   x�m�=�0���Kt�p핏eAG�*$I4$��D���S��.o�fP5l�y�&��F@:�!F|��"��Nx���^ñNz����EEp�FdѡN�t���r����wB[$	5���^�m�S-�ۮ&'e����(8��rE_גs�A�&�)�\���IV�J��U��!דH�
Ͽ�zɹZx��N)��l�      .   �  x��Z��7�ɯ��}�g�N}e�9Y�+�U<����ǁˁ";r�3�w��4z�Pz�3==3tui�2Ma�m�x���q�V����a�w��Ug�Үm��������aw���縬��mf�ή3�����|9�˪mM[榱v]vϿ�r�����<,��6Y��~n��w��Ӵ��p�8����m�,��5en�y��~8m��y\O��㸽��Ӳ�
Su���Ehb�Y���)[���������~7���������ؼ3�3�6o??���x�m{�N�����r�9��ݹȝ3kM�\�e�Aʲ5eY��v��������p8�����1w_z��p[�a�{�����HfM1�����y�`|��r:_�~�Kk�4�3ŝ���о�a{ټ�ѹ}�,���ͨ�̴m};GW����v����ϧ�ƭPT&��f�
���E���2�h��8b$2�+ ` n<Z�&��y��%^qs� K�rZ�����d ���,�ٔ��m��� �zH�h�)���������<<$��r���IȰ3�S#�	%�ez��M�����/(���p��m�ǀo�$2TdIy��V����鍝����r����@�Te~b+�PGɈ[����3�����jr�:sۚ��va�mgZ�S��##8�js������2��ϊ�#��~�v������
���x�g���A��<|P��4B�
�����ǭM1�uJ����Ic��#'�ˍ��D^ia��v}
����1/)K��7Li��HGC�2�:�M{1���֤Ĩ��Ǉ��X�<����n����s@w0C�;���(��
�hU�p���f T���&��7Zs��^d%�Z�2\��F���44^+	<1pq�C2�o�p����ҙ�F �(��ы�X�e]%C a8 �¤�SO�I�>t��ف����C��.F ���:d����c�K���U��	%Fj�쿣�D��@��g"�6��Ɖ �0�ě��I�\>����\
B"2Zln�9,��gt���-Ny�q?i�К�0K�@')��>�d�%�*a;$�HG+���.)S�t���ӏ;�9��ZV��ڟ3	+:��O�v��7L�y�[��l��p;��S���jC
k褊���T@�Zv�!cK�r��D��혢�nguLN �m +��|\׆*&�L���1[(���:2���-���z�Ѕ�@`k��lI�Z��M�4��â�P�j��д�J�[�nv��9VFM���<R-�C!wd=B\�R���+@��|�L�� A�_��t�wP:-R���2E�����r���r���kM7�#V�0R���E]�$�(�JS4���-�fM��Ñ��<e�p�C�x5H��N�lb�ݼ�Rt��O%��6B�A�X����6Yi�"JO��x�0�NO�<I�� y��ӓ��� 5��I�{�
��i��k^g���~�J�~-a4��f�JDY�3�r���4JFp{�.���-U��JT�Z�el�B����#�	��x��EhHo����鍑2H4�$��!�q�.m�;Nq��E��tY��O�q��3?�tO�zhFI�GJj`����
D1f�����MSxo�FT�H�ǟ��h/��*O��Ix�z<2��Nd�!w�����Ke����7�p��v� �/��d�o f:(E]&���\r"4���<-K������ؐ�V�D�f�-�0	� �yI�q֘y M�� �Ly֯f�\���ۃ      /   Y  x�u�Av!D�p���]r�s�����j��(io��CJ�i�I~ 6��Lt�FM'�\-�!���-��g�LkY�P��� �S%-�'���$�Ds��gy�I�BeĔB��4&���\t���0�N�{�)�)�N¶�~�6N����5�Ґ�� �GX�O%%�"�$t�!t��p��J��Ե��N���^Ь�.'a)�%��'�N������ ��׶n�RY ���fb�8$غ$�X���,�%��t�5j_�J;������H3����P�	��^ɋO�=0��t}��(����{�]퍅�����,C���%!
����O°�T���#��B�       0   �   x�]P�N1�}_�/�|h� -'���Y�M���F~D��H�_)�v;�3�A�������n�L�j����m���>�5b��,q�|	�O!����W����=Q?)��L�Yk�����G�M|�P�#kJ�������.���'�G�"7����c�"������������TM�[�!��hX�\d<�o�����G/��G�;R1�g��m�O)ʆL�-������:���sV|�UU��,}�      1   2   x�30�CNC#.������3�@pL8M<SNcǌ�Ȁ+F��� �l      3   �   x�}�AN�0���s�Tn��������L�I�*񠱝�a�9z1hA����������xz�G7�|�񄕩�@id�s�,Βe�sqe���4_��`ǡM�����@����?��^f��$��e�\/ⓤ�>{xPjh�m.̢�����"��Jg�K�u�Oo�r��]k������i��k�nJ�aq��cp�7���h��=��7�\����ϫ�(> W�)      4   8   x�304�BNC#=cS=3s}KC#]c�����|��̢����2#=�=... A�Z      5   �   x�]���0�3T�
��E[jq�u�v���� ��	U ���5~ ��H���%�wr$���X�ȓy��ؤ�ҩ�xl��jA�	hL�ȳ��<���,�D�OR��@�Zbl�Y�_g�9�V�σ�?@V?�      6   �   x�u���0C��.	�w�Y2@�����V���$AI�k����¼���PzA��-`J�vp�`NX!��JX��RF-M��>+;tK8F�l�r��6`��V�',?����7��l���yG؃��6Z�O?=�k)��O�      2      x�\�;�fY�����ք�_�{�(�t���cb�;A%v��Y@0���'��������������#�sڟ�������i�?�?������=�<�<�<�<�<�<�<Az�D����@Y������??��ڟ����s�_�w����{�_���O O ��{yyyyy!����8�ⴊ�*N�8�ⴊ�*N�8����+N�8���R�KI/%���R�KI/��:=u"���������ʺ+뮬���ʺ+﮼���ʻ+��������x���¿�'�'�'�'�'�'�'�'Ht��:�o+�������o+�������o/�������o/�������o/�������o/�������o/������˷G�ͱ6��ks���6��os���6��os���6��os���6��os���6��os���6-�;������i.�s۟�����k>���x���%�/�|��K<_��ϗx���%�/�|��K<_��ϗx���%�/�|��KX�������kK�-����kK�-�����K�/�����K�/�����K�/�����K�/�����K�/������]�.q���gK�-q���gK�ww��yw�ݝww��yw�ݝww��yw�ݝww��yw����s�����G�c�����8����B�@�@�@�@�@�@�@�@!���Y�,B!��E�"dIdI��=�P8q#�>T�P�C��7'�N^�<;yw�����ӓ�'�B^�<��Ï��k0������0�$܄��0p���]8�a�4܆��0p���}8b�D܈�#1p%�YYҲ���z���z������?���ٟ��|����������;�/������?<@xy�����������'Ht���%dKȖ�-![B��l	��%�u���%�K^��.y]��u����"�zH�!����zH�!����{H���W����y���ׇ�������@�@�@�@�@�@�@� =A��������������������:����:����:����:����:����:����:����:����:����:����:��A�t�A�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C�:t�C����;��'��?�����c~��?��ِdI֑dI֑dI֑dI֑dI֑dI֑dI֑dI֑dI֑dI֑dI֐dI֐dI֐dI֐d]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֔cM9֔cM9֔cM9֔cM9֔c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕c]9֕cM9֔cM9֔cM9֔cM9֔cM9�.q����K�/q����K�/q����K�/q����K�/q����K�/a�~��u3Y7�u3Y7�u3Y7�u3Y7���,�da&3Y���Lf�0���,�da&3Y���Lf�0���,�da&3Y���L��d�L��d�L��d�L��d�L��da&3Y���Lf�0���,�da&?���-�c���0��Ï��+0�����%8������ �$�(�,B�d�Y�,B!��EȒ��fr�g�q��q��q��q��q��q��q��q��q��q��q��q�g�q�g�q�g�q�g�q��q��_��r�u���!�_��r�u�9����9����9����9����9�����������ɹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��Ǚx��Ǚx��Ǚx��Ǚx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx��ǹx�}"r����'"g���}"r��ș���ə���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ɹ���ə���ə���ə���ə���ɹ���ɹu�[ǹu�[ǹu�[ǹu�[ǹu�[ǹu�[ǹu�[Ǚu�YǙu�YǙu�YǙu�}r�A��!���rN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%gTrF%gTrF%gTrF%gTrF%gTrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrF%gTrF%gTrF%gTrF%gTrF%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%�TrN%*9PɁJTr�����@%*9PɁ5�q`�kX���q��q��q��q��q`�kX���8�Ɓ5�q`�ç �8�Ɓ5�?8���G���1�x�C���� '`���+0p���!��`���k0p���A�'���%��Y�/^��C�H�?����������o!D E F G H I J ��E�Y�,B!��E�"d�$�${��|(�P��Cɇ�%J>�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�w�^z����ן^z����ן�?Q��D����'�Oԟ�?Q��D����'�Oԟ�?Q�~!K"K����w��ʇ*�|��ʇ*�0Ta��P��
CJ-�Z(�Pj��B��R�J-��������kl������kl����F��56jl��/�	$	D	d��} ��E�"d�Y�,B�D��<��x��=z�<�y���Aσ�=z�<�y���Aσ�=z�<�y���AϞ��2���=�������c�q��?x!C D E F G H I J ��E�Y�,B!��E�"d�$�${���Zj}���ևZ���u���E��^�.z]���u���E��^�.z]���uѫ���{=�����^�{��������B�@�@�@�@�@�@�@�@!���Y�,B!��E�"dI�����W�Ux5^���k�:���L��L��L%�ҧ#�S���Tb*1��JL�L���~�gG���y��"�IΛ�G��*��埻�s�n��Q���?g���֟��sZn��q���?�5.��I��Gu��Ձ�:pX.��i����u�����:x`/������Gv�����;;xh/������6�L�L�
'�pt
G� :�)�Nt
�S ��@� :�)�Nt
�S ��@� :�)�Nt
�S ���)���)���)���)���)�Nt
�S ��@� :�)�Nt
�S ��@� :�)�Nt
�S8:��S8:��S8:��S8:��S8:�)�Nt
�S ��@� :�)�Nt
�S ��@� :�)�Nt
�S ���N���N���N���N���N����Z(�Pj��B��R�J-�Z(�Pj��B��R=�/l��S8:��S8:��S8:��S8:�)�Nt
�S ��@� :�)�Nt
�S ��@� :�)�Nt
�S �����ߡƇj|��Ƈj|��P��C�5j0�`��P��C�5j0�`��P��C�5�S��H�Z��U�Z��U�Z��U�Z��U@�jP��Z�*�Mo
xS����7�)�Mo
xS��½)ܛ½)ܛ½)ܛ�><�[�zŋ�/*^T���_�H��"d�@!��E�"d�Y�,�,�^~�$��+��+��+��+ X�
 V �� � ` + X�
 V �� � ` + X�
 V �� � ` + X�
 V �� � `+XA�
V���� `+XAu
�SP���T��:�)�Nu
�S@��P��:�)�NAu
�SP�9����q���?���>�蟋�s2�J�Ɂ;9p(.������r�Z���{9x0/������Gs�j����9x8/�������s�z����9x@��T�TI&~�G�����<�?��R?L�/����	$	D	d    ��} ��E�"d�Y�,B�D�d/��%J>�ЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬ�,��N�+�������<�?��H?�'�Oԟ�?Q��D����'�Oԟ�?Q��D����'���$�${��!rG�;�ܑ�$w$�#�I�H?C�*U�0Ta��P��
C�*U�0Ta��P��
C�*U�0����r��۔ܦ�6%�)�M�mJnS?�4�iLӘ�1Mc��4�i�6Jm��(�Qj��F��R���r!W%�*�UI�JrU���\���S��AŃ�*T<��_��"d�@!��E�"d�Y�,�,�^���\��$W%�*�UI�JrU����PC=�0��PC=�0��PC=�0��PC=�0��PC=�0��PC���j׫]T��vQ���E��j�.�]T��vQ���E��j�.�]T��vQ���E��j=�?��k�\��$�$�&�5I�IrM��0�a��P��C�:u�0�a��P��C�:u�0�a��P��<�/o�$h��I�&	�$h��I�&�l�'���#3CS���鈩�Tb*1��JL%�S%S姫_e`J�)��`J�)���_۟+�sF���!���?�-���9�g������x���a�`�`�`�`�`�`�`*1�>1��JL%�S���Tb�d*𑜏�|$�#9��H�Gr>�󑜏>�H�#��>�H�#��>�H�#��>�H�#��>�H�#��>�H�Gr>�󑜏d_5�J>�|(�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P��Iz����ן^z����ן^��D����'�OT��*QU��DU��U%������_��ˑ\��r$�#���H.Gr9�H�#A�9�H�#A�9�H�#A�9�H�#A�9�H�#A�9�H.Gr9�ˑ\��r$H� =���#H� =�~�lT٨�Qe��F��*U6�lT٨�Q����LB�Er/�{�܋�^$�"�ɽH�"��/�H�"��/�H�"��/�H�"��/�H�"��/�H�"���^$�"�ɽH�Er/�{�܋�^$x��E�	^$x��E�	^$x��E�	^$x��E�	^$x��E�	^$x��E�o���>��P�C��>��P�C-�Z�j1�b��P��C-�Z�j1�b��P��C-�Z�j1�b��P���;��$�'�>��I�Or}��\�7�Hp#��7�Hp#��7�Hp#��7�Hp#��7�Hp#��7�Hp#��7�Ht#эD7�Ht#эD7�Ht#эD7�Ht#эD7�Ht#эD7�Ht#��7�Hp#��7�Hp#��������&�埫�s����a���?���V�˟k���8pn��޸�#7x�����<t��n��޺�c7x����<x�o��޼��7x���T�T��tKJ��tKJ��tKJ��tKJ8P�p��%(�@	J8P�p��%(�@	J8P��@���@���@���@���@	J8P�p��%(�@	J8P�p��%(�@	J8P�(݁�(݁�(݁�(݁�(�@	J8P��*)�UR⫤�WI���_%%l)aK	[J�R�����-%l)aK	[J��t[J��t[J��t[J��t[J���-%l)aK	[J�RB�*�P��
%T(�B	J�PB�*�P�tJW�tJW�tJ��(�{���ҿ'J|O���(�L	eJ(SB�ʔP��2%�)�L	eJ(SB�ʔP��2%�)�L	eJ(SB�ҕ)]�ҕ)]�,�`�%X(�B	J�P��,�`�%X(�B	J�P��,�`�%X(�B�,��B�,��B�,��B�,��B�,�`�%X(�B	J�P��,�`�%X(�B	J�P��,�`�%X(�B	J�P:��P:��P:��P:��P:%X(�B	J�P��,�`�%X(�B	J�P��,�`�%X(�B	J�P��,��B�,��B�,��B�,��B�,��B���%%>JJ|���()�K	\J�R�����% (A	J@P����% (A	J@P�����$%!(	AIJBP�����$%!(	AIJBP�����$%!(	A	J@P����% (A	JBP�����$%!(	AIJBP���&%?MJ�?���?��B����s���ϙ��<p�n��q���y�>�=x�o����҃gz�N��K=x�o���փ�z�^���=x�o��ю'S%S��������������������O�
�D>�*|U���(�@a
+PX��
V���(�@a
+PX��
V���(����)����)����)����)���
V��b��X�* V�
�U@�b��X�*G�r�*G�r�*G�r�*G�r�*G�b��X�* V�
�U@�b��X�* V�
�U@�b��X�* V����������������X�* V�
�U�@���T���R��
V���(�@a
+PX��
V�����U9^��U�
xU��^�W�*�U�
xU��^�W�*�U�
xU��^�W�xU�W�xU�W�H�"U��T�'R�H>�*XX��
V����,�`a+XX��
V����,�`a+XX��
V�����[X���[X��(�@Y�*PV��
�U��e(�@Y�*PV��
�U��e(�@Y�*PV��
�UNY�UNY�UNY�UNY�UNY�*PV��
�U��e(�@Y�*PV��
�U��e(�@Y�*PV��
�U��e�SV9e�SV9e�SV9e�SV9e�SV��
�U��e(�@Y�*PV��
�U�N��T�;��wR��
�Ix��c+�X��
<V��x��c+�X��
<V�"�y��cE+�X�Ǌ�U4��iM�hZE�*�VѴ��U4��iL�`Z�*�V��
�U0��iM�hZE�*�VѴ��U4��iM�hZE�*�VѴ��U4��iM�hZE�*�VѴ�?��x^�����Z���Ϗ�0N0O0P0Q0R0S0T0��J���JL%�S���Tb*1U2L�ݴ�M����I�AR�j�T��$� �I5H�AR�j�T��$� �I5H�AR�j�T��$� �v�j'�v�j'�v�j'�v�j'�v�j�T��_g5��j|���:��uV��Հ�l5`�[�j�V��Հ�l��V;l��V;l��V;l��V;l��V��Հ�l5`�[�j�V��Հ�l5`�[�j�V��Հ�l5`�[���[���[���[���@�J5P��R�j�T�(�@�J5P��R�j�T�(�@�J����}V��Y��g����}V;q�W;q5��A\�jW���� �q5��A\�jW���� �q5��A\�jW����N\���N\���N\���N\���N\�jW���� �q5��A\�jW���� �q5��A\�jW���� �q�W;q�W;q�����W��^�{���0���5��ad#kY��F�0���5t��[�j�VC���Эv�j׭v�j׭v�j׭v�j׭v�j�VC���Э�n5t��[�j�VC���Э�n5t��[�j�VC���Э�n5t�]��u�]��u�]��u�]��u�]���Э�n5t��[�j�VC���Э�n5t��[�j�VC���Э�n5t��[�j�Tå.�t��K5]��RM�j�Tӥ��m5?�j~���l���V�����$�&q5��I\M�jW����� �q5��A\�jW���� �&q5��I\M�jW�����$�&q5��IMMjjRS��`!��«��^��H�����	�	
&
F
f
�
�S��S���Tb*1��JL%�J�rj�gԔϨ)�}>��>��g�O�ϧ���S�̪�U�s���V�ϭ��^H��H��"d�@!��E�"d�Y�,�,�Y޳�gy�B�B�B�B�B�B�B�B�B�B�B�B�B�B�B�B�B�B�B���<���?��    ������c�q�0j��?Q��D����'�Oԟ�?Q��D����'�Oԟ�?Q���%�%��? �;T�P�C�U>T�P�C�U�0Ta��P��
C�*U�0Ta��P��
C�*U�0Ta��P��<�?�;M�4�ӴO�>M�4�ӴOӘ�1M��Fō�7*nTܨ�Qq��Fō�7*nTܨ�_���G/|�����/|�����
�BRbr����Y�>�E�"d�Y�,B!K"K��@�w��C=��Pχz>���0��PC=�0��PC=�0��PC=�0��PC=�0��PC=�0��P����j}���ևZԼ�yQ��E͋�5/j^Լ�yQ��E͋�5/j^Լ�yQ��E͞�v�������k�����c�q�0z��0�a��P��C�:u�0�a��P��C�:u�0�a��P��A�n�ī�j�����ux9`���'��#3CS���鈩�Tb*1��JL%�S%S姫_��ّ�;Ow��<�y��|���9�?�����#�s�����9�?������ƄƄƄƄƄ�p���%<Ń�x�^��s<x���E<Ƀ7y�(^���<x���e<̓�y�8Ǔ��� V�b�.V�b�.V�b�.V�b�.V�b���X-�j!V�Z��B�b���X-�j!V�Z��B�b���X-�j!V�Z����U��%J>�|(�P��C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C�'����(,QX��Da���%
K�(,QX��Da���%
K�(,QX�0!K"K��_YG�u�ZG�u�ZG�u�ZG�u�Z ��H�@�R-�j�T�Z ��H�@�R-�j�T�Z ��H�@�R�#�:R�#�:R�#�:R�#�:R�#��H��M��4�i�4�iLӘ�1Mc��4�i�4�iLӘ�1Mc��4�i��^~e��qk�6����M-ljaS�Z��¦6����M-ljaS�Z��¦6����M-ljaS�Z��u�Z��u�Z��u�Z��u�Z���M-ljaS�Z��¦6����M-ljaS�Z��¦6����M-ljaS�Z��¦�mjݦ�mjݦ�mj�ê�C��>�b��P��C-�Z�j1�b��P��C-�Z�j1�b��P��C-�Z�=e]��uk]��uk]��uk]��uk�[�Z��¥.�p��K-\j�R�Z��¥.�p��K-\j�R�Z��¥.�p��K-\j�RK�Z��ҥ�.�t��K-]j�RK�Z��ҥ�.�t��K-]j�RK�Z��ҥ�.�t��K-\j�R�Z��¥.�p��K-\j�RK�Z��ҥ�.�t��K-]j���*�!���p�Ák8p���A���'q�&���8x���a����q�6���8x�������'r�FƓ��� O��t.O��t.O��t.O��t.O��t���<�� Oy:��A��t���<�� Oy:��A��t���<�� Oy:�ӹ<��ӹ<��ӹ<��ӹ<��ӹ<�� Oy:��A��t���<�� Oy:��A��t���<�� Oy:��sy:����c���?�:����c�s�:8����up��c��X�:8����up��c��X�:8����up��c�ܱ��ܱ��ܱ��ܱ��ܱ�up��c� P�:�A�u��@� P�:�A���\���\���\���\��� P�:�A�u��@� P�:�A�u��@� P�:�A�u�s�:�s�:��ϫ�?�:������ϫ�u �a�@X�:ց��u �a�@X�:ց��u �a�@X�:�s�:�s�:�G8��Q�:pԁ�u�G8��Q�:pԁ�u�G8��Q�:pԁ��9ꜣ�9ꜣ�9ꜣ�9ꜣ�9��Q�:pԁ�u�G8��Q�:pԁ�u�G8��Q�:pԁ�u�s�:�s�:�s�:�s�:|(u�P����C�H@� R�:��� u �H@� R�:��� u �H@� R�:��� u�#HA�RG�:���� u�#HA�RG�:���� u�#HA�RG�:��� u �H@� R�:���� u�#HA�RG�:����J?�:~(u�P������v���c�s����=�9�?=���8�w|��\�S>p����5<��|�^���<x����u<σ�y�@^��=x���T�T._�����|����c�UL���W�1��?&_�����|�������/���	$	D	d��} ��E�"d�Y�,B�D�d/��%J>�ЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬЬ�,��N�+�������<�?�FU?�'�Oԟ�?Q��D����'�Oԟ�?Q��D����'���$�${�G,�*�|��ʇ*�|��
C�*U�0T��B��R�J-�Z(�Pj��B�����������kl������kl�ب�Qc��F��B�@�@�@�@!���Y�,B!��E�"dIdI��@�5>��P�C�5>��P�C�5j0�`��P��C�5j0�`��P��C�5j0�`��P��y��{~��C�=?����C�=?����C�=?����C�=?����C�=?����C�={�����H�?�������<�g��P��C-�Z�j1�b��P��C-�Z�j1�b��P��C-������P�C�u>��P�C�u>�a��P��C�:u�0�a��P��C�:u�0�a��P��C��2�w%^�W�5x=���+��	�s����?)��r���O����j⿛�JL%�S������Y~���3�w4i^�<�yK���5�9�?����\ԟ��sS��ϕ�9s?w����m8n�m��W�5x=��#����$��L��L%�ҧ#�S���Tb*1��JL�LL
ǤpL
ǤpL
ǤpL
ǤpL
Ǥ &0)�IL
`R ���� &0)�IL
`R ���� &0)�IL
`R ��1)��1)��>��;�|(�P򡄡�����������������������������������������O�?������O�?��Dq���%�K�(.Q\��Dq���%�K�(�_ȒȒ�b2�J��J��J��J�P��*T)�JU
�!��P��
C�*U�0Ta��P��
C�*U�0���Րp�
��p�
��p�
��p�
���T�* U�
HU@�R���T�* U�
HU@�R���T�* U�
HU@�¥*\�¥*\�¥*\�¥*\�¥* U�
HU@�R���T�*`Lc
S���0��1�)`La���[��W����?��y��+~���⇊*~���⇊*���Y�>�E�"d�Y�,B!K"K��_	G�p�
G��1�)`Lc
S���0��1�)`Lc
S���0��1�)`Lc
S��)ܘ)ܘ)ܘ)ܘ)`Lc
S���0��1�)`Lc
S���0��1�)`Lc
S���0��1�)`Lc
S���0��wS?#��8�<�@�D�H�L�P�Tb*}:b*1��JL%�S���T�T����%�U�
pU��\� W�*�UA�
rU���\� W�*����v�ٟ+�sf��ϡ��:p\���y��v���؁;xd��������v�����[;xl������w������;xt���ٍ'S%S9fuf�cV;f�cV;f�cV;f�cV;fu8fu8fu8fu8fu8fu8fu8fu8fu8fu8f50��Y�j`V�����f50��Y�j`�ߡ�Cɇ�%J>�|(�P򡄡���������R�R�R�R�R�R�R�R��tzU�U�W�^UzU�U�W�^U��DU��U%��r����Y�>�E�"d�Y�,B!K"K��`��W�|��W�|��W�|��W�|�3Ta��P��
C�*U�0Ta��P    ��
C�*U�0Ta��P��
Cy�D��W�|��W�|��W�|��W�|�Sc��F��56jl�ب�Qc��F��56jl��/d�E�vjj��vjj��vjj��vjj������������ �$�(�,B�d�Y�,B!��EȒȒ�����U;X��U;X��U;X��U;X��0��PC=�0��PC=�0��PC=�0��PC=�0��PC=�0����*�]�vQ���E��j�.�]T��vQ���E��j�.�]T��vQ���E��j�.����T�ݨڍ�ݨڍ�ݨڍ�ݨڍ�g��P��C�:u�0�a��P��C�:u�0�a��P��C����0��Q5��aT�jUèF���L��L�$�������Q�����'����������:H��Ԁ�,5`�KXj������Ο��s=�����9�?���ܴ���s�~�Z\��S6p����58g�l�\���6x����U<k�d�`�`�`�`*1�>1��JL%�S���Tb�d*Б���t$�#9��HNGr:�ӑ��:�H�#��:�H�#��:�H�#��:�H�#��:�H�#��:�HNGr:�ӑ���t$�#9��HNG	t$Б@Gɿ��JJJJJJJJJJJJ
�;I�?������O��(/Q^��Dy���%�K��(/Q^��Dy���%�K��(�_ȒȒ��/�$�$9&�1I�IrL�c��L0I�$�L0I�$�L0I�$�L0I�$�L0I�$�L�c���$�$9&�1I�IrL�c��[��i�4�iLӘ�1Mc��4�i�4�iLӘ�1Mc��4�i�4�iL�/�� r����QDI%A�QDI%A�QDI%A�QDI%A�QDI%A�Q���\��$%�(�EI.JrQ��� J�(	�$�� J�(	�$�� J�(	�$�� J�(	�$�� J�(	�$�� J�(�EI�	�ߡևZj}���ևZj1�b��P��C-�Z�j1�b��P��C-�Z�j1�b��P��C-��Կ""�)�O�}J�Sr����ܧL0I�$�L0I�$�L0I�$�L0I�$�L0I�$�L0I�$�L1I�$�DL1I�$���~���T�t�Tb*1��JL%�S�����ӕ!��R�K	.%���R�K	.%���R�K�.%���R�K�.%���R�O���s2nf�Ɂ;9p(.������r�Z���{9x0/������Gs�j����9x8/�������s�z����9x@/h<�*�
.��R�ƔnL�ƔnL	cJSƔ0��1%�)aL	cJSƔ0��1%�)aL	cJSƔ0��1�S�1�S�1�S�1�S�1�SƔ0��1%�)aL	cJSƔ0��1%�)aL	cJSƔ0�tcJ7�tcJ7�tcJ��)����O��?yJ|�P��R%�*�T	�J(UB�J�P��R%�*�T	�J(UB�J�P��R%�*�T	�JW�t�JW�t�JW�t�JW�t�JW��R%�*�T	�J(UB�J�P��/%|)�K	_J�R���t_J��t_J��t_J��t_J��t_J�R���/%|)�K	_J�R���/%|)�K	_J�R���/%|)ݗ�})ݗ�})�����?�J� *���P	�JpU��\��W%�*�U	�JpU��\��W%�*�U	�JpU��\��t�J�t�J�t�J�t�J窄4%�)!M	iJHSB�Ҕ���4%�)!M	iJHSB�Ҕ���4%�)]�ҥ)]�ҥ)]�ҥ)]�ҥ)]�Ҕ���4%�)!M	iJHSB�Ҕ���4%�)!M	iJHSB�Ҕ���4%�)!M	iJ��tiJ��tiJ��tiJ��tiJ�*�%T�K�ėP�/�_B%�*�W	�J�U�x���^%�*�W	�J�U�x���^%�*�W	�J�U�x���^%�*�WI�J�U��x���8%�))NIqJ�SR�����8%�))N	qJ�SB����8%�)!N	qJ�SR�����8%�))NIqJ�SR��O��o����9p5����8��s�t�΁�9x=����<��t�����#:xE���<���t����c:xM���=�'S%SA��ũ�K��/�ʿ�*��\�ʕ�\�ʕ��T�*(UA�
JUP��R���T�*(UA�
JUP��R���T�*(UA�
JUP�r�*W�r�*W�r�*W�r�*W�r�*(UA�
JUP��R���T�*(UA�
JUP��R���T�*(UA�
JU�T�JU�T�JU�T�JU�T�JU�T_*�R��
�T�/|��K_*�R��
�T�/|��K_*��r_*��r_*��r_*��r_*���/|��K_*�R��
�T��WP���
_A��*|UP��R���T�*(UA�
JU�T�JU�T�JU�T�JU�T�JU�T�*(UA�
JUP��R���T�*(UA�
JUP��R���T�*(UA�
JUP��R�+U�R�+U�R�+U�R�+U�R�+UA�
JUP��R���T�*(U��
�T�/|��K_*�R���}�ܗ�}�ܗ�}�ܗ�}�ܗ�?�*|U���9T�s�R���T�* U�
HU@�R���T�* U�
HU@�R���ʑ��ʑ��ʑ��ʑ��
HU@�R���T�* U�
HU@�R���T�* U�
HU@�R���T�*G�r�*G�r�*G�r�*�R��
�T0��)L�`JS*�R��
�T0��)L�`JS*�R��
�T0��)L�`JS*�R��
�T4��)M�hJES*~U� ��AT��QE�*�T���<U�"Oy��SE�*�T���<U�Ox��S�*�T��
<U�"Oy�hJES*�Rє�_1M��C�^�W��x^���(!��8	��#3CS���鈩�Tb*1��JL%�S%S���M�ݔ�M�ݔ�M�ݔ�M�ݔ�M�aJSj�RÔ��0��)5L�aJSj�RÔ��0��)5L�aJSj�RÔ��0�vSj7�vSj7�5��@j P��@�5��@j P��@�5���������������*5>Uj|���T��R���Ԡ�%5(�AIJjPR���Ԡ�%5(�AIJjPR���)����)����)����)����)�AIJjPR���Ԡ�%5(�AIJjPR���Ԡ�%5(�AIJjPR����NI��NI��NI��p��5��@j8PÁ�p��5��@j8PÁ�p��5��@���@���@���@���@��p��5��@j8PÁ��Z��R�k���J�����Ф�&54��IMjhRC��ԮI�ԮI�ԮI�ԮI�ԮIMjhRC���Ф�&54��IMjhRC���Ф�&54��IMjhRC���Ф�&�cP;�cP;50��Aj`P����50��Aj`P����50��Aj`P�ԎA�ԎA�ԎA����R�K�_,5�Xj|���b��K]j�RC���Х�.5t��K]j�RC���Х�.5t��K]j�RC���Х�.5t��K]j�RS����ԥ�.5u��KM]j�P���$�$�&	5I�IBMj�P��$� �	5H�ABj�P��$�$�&	5�Xj~���b���R󋥦.5u��KM]j~��������ڟc�sm��Ͻ�9�?7����8�w������x-���a�`�`�`�`�`�`�`*1�>1��JL%�S���Tb�d*W�IS�IS����o�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�Qj�s������,����G�c�����8؇N?C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C	C�?�����O�?������O�?��D����'�Oԟ�?Q��D����'�Oԟ�?Q��D�����YY���S��C�U>T�P�C�U>T�P�R�J-�Z(�Pj��B��R�J-�Z(�Pj�T���M���^c{��5���^c{��5��>m����_H�    �H��"d�@!��E�"d�Y�,�,�^���ߡƇj|��Ƈj|��P��C�5j0�`��P��C�5j0�`��P��C�5�S�c��C=��Pχz>���|����z�a����z�a���*~���⇊*~���⇊=�?1�[�z���W�^�z���W��xQ��Eŋ�/*^T�/D	d��} ��E�"d�Y�,B�D�d/����P�C�u>��P�C�u>�a��P��*>T|��P��CŇ�*>T|��P��������+�*�����x^�P?���8�<�@�D�H�L�P�Tb*}:b*1��JL%�S���T�T����I~v��1�c`�����y�n��q���?���>���s�n�ϑ���?g��nƩ���r�Z�ˁ{9p0.������Gs�j����9x8/�������s�z����9x@/��	���Gt��Ɠ���@K�TNK�#����o�Gx�?������`S�*�T��
6U���Ml�`S�*�T��
6U���Ml�`S�*�T���#�����%J>�|(�P��Cɇ�%%%%%%%%%%%%%%%%%%%�����^X��Da���%
K�(,QX��Da���%
K�(,QX��Da����,�,�^~M�|7���ߍ��n��w�?�������~�*U�0Ta��P��
C�*U�0Ta��P��
C�*U�0Ta(��� ���ߍ��n��w�?��������|�3Mc��4�i�4Jm��(�Qj��F��R�6Jm��(�_�7���������67����͍�ln�gs�?���xP��AŃ���� �$�(�,B�d�Y�,B!��EȒȒ��WA�m�|7���ߍ��n��w�?�����PC=�0��PC=�0��PC=�0��PC=�0��PC=�0��PCy�_)*������~�]4�hv���E��f�.�]4�hv���E��f�.�]4�hv��YO�K!�俖�������-���X�?��
�T ���~�:u�0�a��P��C�:u�0�a��P��C�������?���n�����?����g#<�&'�'(�()�)*�JL�OGL%�S���Tb*1��*�*?]��`
?���n�����?���n�������?���6����s�.k���6p������p'n����+7x�����t��n����k7x������x�'o�����7x��^<�*�
�ԮI��?��������~7���ߍ��n��Ф�&54��IMjhRC���Ф�&54��IMjhRC���Ф�&54	?�����P��Cɇ�%J>�P�P�P�P�P�P�P�P�P�P�P�P�P�P�P+��N/+������J/+�,{�?�.IIjHRC��Ԑ��$5$�!IIjHRC��Ԑ��$5$�!IIjHRC��ۻ�o��U>T�P�C�U>T�P�C�U�0Ta��P��
C�*U�0Ta��P��
C�*U�0Ta��P��<�y�K���n��w㿽���O��&M6�l4�h��d��F��&M6�l4�h��d��F��&��,F�|俶�������m7�k��_ۍ����?y!C D E F G H I J ��E�Y�,B!��E�"d�$�${�%�v>�_ۍ��n��v㿶�������m�3��PC=�0��PC=�0��PC=�0��PC=�0��PC=�0��P(}�����K_/}Q���E���/J_��(}Q���E���/J_��(}Q���E���/J�Կ��.K�ӻ�ލ��n��w�?�����O�~�:u�0�a��P��C�:u�0�a��P��C�:u�0�a(�i>ѐ%��n�ӻ�O�?���n�ӻ�O�~6i�q�y�����������������Q�?J�G%���/hL�� ��n�ӻ�O�?���n�ӻ�O��W����֟��s]���}�9�?����ܼ���s���\��S7p�����8w��x=��-a�`�`�`�`�`�`�`*1�>1��JL%�S���Tb�d*�Ҹ,��Ҹ,��Ҹ,��Ҹ,��Ҹ,di KY��@��4���,di KY��@��4���,di KY��@��4.K�4.K�4.K�4.K��)��4�Ni���;��wJ�X���V5���U�j`U�X���V5���U�jܪƭjܪƭjܪƭjܪƭjܪV5���+\i�JW�����4p��+\i�JW�����]iܕ�]iܕ�]iܕ�]iܕ�]i�JW�����4p��+\i�JW�����4p��+\i�JW�����4�J�4�J�4�J�4����J�_(�P|�4�Bi U�@� �P5��T�j U�@� �P5��T�j U�@ո3�;Ӹ3�;����4p��3�i�Lg8����4p��3�i�Lg8����4p��3�i�L��4�L��4�L��4�L��4�L��4p��3�i�Lg8����4p��3�i�Lg8����4p��3�i�Lg8��gJ�)��4��ҸM��ԸM��ԸMlj`S�����65���Mlj`S�����65���Mlj`S�����65nS�65nS�65nS�65��%(i@IJPҀ��4��%(i@IJPҀ��4��%(i@IJPҀ��4��%(iHICJRҐ���4��!%)iHICJ~�4�Hi����#��GJC���P��*5T��JUj�R���@�*5P��JTj�RC���P��*5T��JUj�RCw��Н�?��x^�����Z��Z�Ϗ�0N0O0P0Q0R0S0T0��J���JL%�S���Tb*1U2��;=w����ܝ���swz�N���;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=w����ܝ���swz�N���;=w�wzp�wzp�wzp�wzp�wzp�wzp�wzp�wzp�wzp�wz�N���;=w����ܝ���swz�N���N�H=|#�����7R�H=|#�`Y��`Y��`Y��`Y��`Y��`Y��`Y��ܲ�[�s�znY�-�e=����ܲ,���,���,���������������������;=w����ܝ���swz�N���;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�@��R�?�z��������s�zW������������������������������������9\=�����ܝ�����������������������������������������������swz�N���;=w����ܝ��Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=�Ӄ;=��swz�N���;=w���������D=�&�ᛨ�o���z��tz@�tz@�tz����e�q�����d	/����d��Փ�ʒo_��n�2)�CZ�����SCtj�Nѩ!:5D������SCtj�Nѩ!:5E�������SStj�NMѩ):5E�������SStj�NMѩ):5E�������SStj�Nѩ!:5D������SCtj�Nѩ):5E�������SStj�NMѩ���Ȧ�S�߿���R�K�.���R�K�.U�������67���X\�kcym������6����Xd�lc�m�������6���Z�Xl�m {��԰�������������%�]8�S���pO�o��f~�H����H����H����|����DS��!Ԑj(5,5|4����Y�f]�umֵY�f�w���yIE�L��PC��԰����8��v��c�+�Xi�J;VұP���[-�0�B��[��2�JK��#��l1G��/����jH5��e��/�-s��_����_����_�c�>V�͆6�lh����oZ�j�J��K�Xj�R;�ڱԎ�t �  ��CL��PC��԰Ԁ�-�ڥW��j�^�ҫ]W��3��q�4-�AKc���4-�AKc���^�!�Pj��܏g���At@�b����=p���xK���.��� %�@w�;ЈNbk�~|1�E\�&n�K�&(AZ����Mt�l��Ͻ`�M
P�
�@-�|2��It@v�?�G���".b�Z{�	�p�pM~������%��[���;����{��$�In�!��l�.̜�zڼ3bh5`�x%� ���".b���D�.�)\��%��[���f�f�f�f����O\�&n�!ޮ9y� ��,_��&��������u`�X�E4�5�+�A+C��д24��01�x	��>d���BRMl�&�]��q��q��p
�Θ�"�)\�@~��dv�9�=�=�=�=�=��y��&n�!���?��]�]8�Sx�T�^��N�^�ӯ��'�'OdO�H�<��ϣ>q��M<�Gʟ���#&���0sya����兙�3�?��x��מ���d�٥��1مC8�?/��+���/��o��7�tb�XD���]�S��sވF6�l*�T4��P�7��Ok`���M�z�⹋�.�<D�����c�D��쩟��.��ilT��8��q��0Z�x������=���+��/avaLkϥ��հ�!/x|^H��BB������ń.��I�sR꜔:'��I�s^�ǽ}&1�E4��]H��PU+ּSD��p
ϡ��l연	;y&��$7�*�*�*U.N��S��T�8U.����Hʘ,�Q�)���`����j˘Ֆq:(�tP����/x� ��X���S�u�+��\�����֋�3�1g�c�(�XSN�/ǔr��W/~��W/�j9|�0ل]8��TA�iYҲ
�e%�~I�_��VNv��;+��UP諠�W�쩛�T���*6����U�/��z��z��z��z��z��z��z��z��z�<�|�&"�)řR�)���R��J��+E���]�)�
S���w�!b��O.�\<��d�	ϘT�v�hW�v�hW�w�~W�w��$�-�š�8t�7�Ml"j��fd�.�Yp>/.�{��.�� ���}����~�wLb���MĜ�<����[���cݍo6��CDE�~:�I_Ġ˕���ȋ�wq�.����.d�<����d�/�Oc�y{8�����_:z���-Q�߫�4 �7�N�^�-<f��O�� &��_���gQ f���G��L�\�-�Y�=[��[������{b���Md�Eݧ�G�~��G�~��(��-��-|����/��[F���H7龣�mG��/t�_������
�U���=f�{�J����1+�c���1���?���/<LD      7   x  x�}��n�0�����-��-QӦ�]�6Щc�Yt)��_'C�!O���&a֛ ��9��sE��Ga��VuNխ�nuU��K�*��&�(�b(�)A�kB�2[]���LF�
���7ۨ��ՙ:$Mr.K2E�z�Uה&��]�=��9C9�����x0��vFe_��V��X�X	�$�RO����k���B�sw���Ʉ���CQvΩf�zuKc�UWE�"��%�!�y�����sO�`��&�s���IO�Fo��^e@#G�i]g6g�<���Q�A��J�8p,J��4��h�s[�F���� �+J��{S�*�~R��k�!�b,�4A<��Z��<8+����*����fs�d����O%B�����7q��������u�> S;@���QW�Wd4��E��ߟ	J�,�Yc@9����B��1��8��'M���b�m~�y������ٍ���)a|&n
+�h]OZi�">@�!��� �L��k�E;sx����5��YN����N�t�}�
W�?"�{��}V����	"���.m�S�>�c��5����.Fǚ��+���@������8�~./��21q�[�E�o�����y��Ub2�.���E�!c?�G��?���      8   �   x�u�=�0�g�0��kˌ�`��Ū,�д����0p�^/H��x|���w<���3@��.�y��h�Ja����b4:��s~�l�V�$���Ň�.�f��iK��*��R)]T�)R�@=��_1�����&�K[�Zg9US�+V��u�8 ��|      :   '  x�u��q�0�ϡ�?#^��K��#3��|����0��Z����W��7_����|����?C��x��d�k���(�{�6 S�B���&������X��@�x�B����Jx�hn �����Cw�"��n�`1QI�T�tA����@�	0�U �Z媳7p�Vwj�@w�l�-	��%�ʹ��4�-^�����<�����<��*�=7��v��= В :�p����{*�>��Xy�n���/\ �*z@�%
P^�� >� gju�WN?�D���$       9   �   x�m�Kr1C��]�_�����'+'+C=�U
s�С�%I��YbpDr��4�d�r1o*U�$N+G���nyf��2��mn"$��r�iϾ�G�"���rn�
�d���n�մ=��g͖r��ʊ݉앺�I"�0|�*�6�ga���a���R������c�<&�M0�� �bN�      ;   �  x�m�An�@E��)|�8��eZ @�fW��n&��h#�J��]��X�F#}��q�������{��k�����ھl�7����w����]>�z��a����8�wC{���צ{ٞ��s{i��ѫ����l�yp�0�����y4̣c�y\�G�<N�ꣁꅥ�Ղ����ځ�n"W�\yr��
�U@�&rmɵ'�H��\�z&ז\{r���u@��,�<��L@��L��,9yrBrr
ȩ�ْٓ�d�<�io��#���:
���Y�țG��{�G�>�����P@)P����:���	L�`
L��dMIޔ��$0%��b
[2{2#����g�u����28ȁ�\d� {dp��8��A�2:�� rq����dt��A���4ħ!��@�!%�i�OC0�4$HCJb���`iH���i�%�'���������w����`�I�u����w����f=|��s�y�7�_�ƿ�׷���.����t���C�)kuߞ�~�$���.�f�����0XO�����7�%6S���<U_��1���2��V���ct��s�.Z�1��w��RIQZ�1.��F^��(E]K8Q�3��T�8G���<���9�p��5�>N�Kʲ���;���ϐշ���f�����      <   �   x�m�;�0E�z�
64c;�)%5��RD����q�M �n�#�c^�#�q	�n��p'��-ה�K�?[Rم�=�
�q���)~�s�j�Γ��Џ�Ҁ4 %��]�µp��Y�8a��T�r'p�ܬJ')bAZR��*9�&��U�8o�Gc��o      q   W   x�344�3�`]CCNϼ�����\.###=(�52��/-)MJ�266փb]cc\�cLLL��X��I���T�uMMqK�l����� ��+�      =   �   x�E�1�0E��>������ԉ�j"j�ƕ�V\��9B.F:�Y��~�q�-L��J.-�6	��XF1����W��+w�D���"qs�V��*S~��=�w����%%ON�<&���Pm�;)�Ha-�X�O�����hj�>ff��5�mk.ɢ���3�� ��qJ*      >   �   x�E��!�sR��$��p���j�b:cQbc� ������_����+�d��%t,-���)� ����� �x��h����.mT�I]��'��{c�q<sK�N�ZB/P�?�ҙ@�^�����j�~|���ʊ�	W�E0      ?   R   x�3�4�CΌ���C#c.#��gqjzQjJ�!�1BԘ����̔�!d���^��[���Z��e��2��l
5�+F��� �      @     x�e�KN�0����9Ae;I[�4}�H�v�fdqqmi��Xp�^���q�xi�k��BO.-���x�����D@���J\JD�uhl�<��`�h�`V�������򨊠�j�%�Ŵj���J;"���=9*YA�,��k���P<j�����#�����b��Gb>����_`Ch�J��\�FȊIP��4������xG��w�ȧY9�UC��Ď�H9���/��{4m�&��^fI��B���      A   
  x��V]�� {�KX�`0��� {�s��&�MRҙ�xhPTYmNN5�^�8-ԓ���xa;J��7�e�Dc'��(�d-�k�?�X-?�S���,�FK��ea��_��'� _by���2�5���Qr�:�W�k,O�K�.��f����,,����N��K,O�-�I���C��[�~����?p��s�5uGo���h�����Mk,O�[���C�� ���Q��_n��by��Їs~���U������cy��S+-;a�?w}|��ß������3|�t�O聢��P���[��v?�Ϝ�����w�>���_���X�����6����Чo�{�?����gM%��}�_�;�^������O����˚�j��T(_�?������T-+zl��*�l_��k�����ԇ�ԏR4���+�[���
�a���}����m���`�lЗ��|1��2�s������T{�V�������y�_��3vcy��������t/��������"�&���k>��e�����5S�,o�őr�^��Mgqt=��i	�]�[p��l<��l٣��	mx��S��٢��=td�ή��������?��\�����M��V8����#�Nz/_�V��\L����޿�:�9��!��Nْ�^��Oڨ�ko×��Wq���}S�;���:�pNݜsw�y:����i�f����N��^��7�;	|)O��߇���=rA]�_۽+?��ޝ���5��{[�/��@u�v���~~�QTC)      B   �  x���;��0E��Uh�(�7��x�10��2cш)M�#�l մ�XH���U����㽏��C��2���Qx��w�g�>#?N�5!��'	!�͑��H��GL9�Gp5��G����������4��(d~@��6��>.�}�~(�L���v`D
CW����,�R�w���Z�ƁK�Ö�0���(�i|7���������79�;:��!��ET�5��n������Σ/u�H���&b������#k�]}�}�/2 �=�/R��gy��GYɓ�ߍ��n��ј��Ȑ�	�db&���v�_�C�yk0�sl
Og��b�*^��e1��C�戝d4iF�&��A��
������(mg|���⥹V�e�3�ƦT�[��|ɏ��P�\����Y����-& q�ɬ�lJ2Ƿ_3ޮ�j��vw�"0Ǡ{�Ĺ)��;m�WՊ��%�����"�'l�Z���K��{C�a����j�ucJ      C      x�uV�n�H<s�B?�A�{���A�l ���%nB@!J2��M���~�l�{�R�|�P�������JI��NP}�_��w���%W*EW��5TT����U��Ӑ�}_=4��y��]{:㏅�QF�e �m�����ݟ���iKP�'��R���z���-�� A'�Bu��c�}j�+B�t�����H�k�X���y��˻���)�|�V�(��RDJ�Ծ�<�#&�P��`����=����~����p����D'Vw�{�!���§(=$�wM>��m�_I1�D�+O��BV��NF����ʈ�9�9������Ҝ����#b�xNbS�^��6Jk�|����'���;0N�l�HtɎ"�&xl����1�鈄��fzl��]�{��_'��,b̕�w���C?������IW�?\
�<�ێ(����ї�60�^yn�3��|�&*������c�� �;�<��N+����m�[ፒ1z^����>�vw�0�����M�sE�-�[A6� �;mJZ�ؔ<KM���[�"'��ŕ��96�sw��'ԡ��Q�m�f^�͗N��o���h̨�tT���5�S�=�O,g)�8:\�z����!'D��rz�o���FN2� Άz�b0�������|���`�a������� 5T��y]=�By�\2d(�b�&ܲ��ȁ��2�ç�|n'X^֪�b����WV2��������;����.�'�8v�L,Μ�2A%ڿ������J�ڥa�8����H��f8�1U�������m�!��Dd��a�$��y;�@"mX&�8�T��pIPo���ᢟ���Y*�s��r��� �K��wa���h6�)	Qp5ںQ��t$7*k��^�m��H�DY��^9	q�Q^I���rW�Ď.���m_��`�U�o
 u�`6��T�)=�y|��AI�V�h;ߕq�h�Ԥ�*R�� ��_:�K~>�W�W�x�5w��:��P�"gpBz��j�O�39j%���.�2"�����1�@�v��.���wNoX	10gx0�6f�r��h�7��g���dE�Zj�1��}��dY�O��6X��f'�K��4�P�=O�x=�k|�l.މ��Ru4ވן�n�o8�_�����r"!'�a�_K7G�pY����ѐ쨻�7Iy�Ig�WG=W��ݥ����p�(�o
o��M���Y�&��ę�*W.
��AÂ�6��F��M�Id�0j��~�cO@p}�r���w-���K��}�K��yy��P(�F��fܷ��ͱY�������_R�?��&�      D   6  x���;j�@���)t�~��!����.�,�HdmXY.r�%ˠ�x]E��k��ߏ�V�P�5k��u�}�c�o�bw�k�NXԜ0�!��.w1� ��g�Xؤ��Tﺡ��;&A��3��5��!�CnS��/]lA�q4N#�4��>L}��a���y��K��i��c����^+����n6�R�]�Вb���^�P�t��D
���c/f341��qN1�&*�o�+��ez��t6��0o�)OC��i�x��Â�-g�h>+��;��A�i9�f~����C���sKw����?	_���o���      E   n   x�m��	�0��s2���?�a�T�A�X�U\�^D"��=�e�!KI����!z����%�\璫���qh!�M�f���m}��E�V\���=�O���L�VW��o��0�      K   @  x��V�r�6<C_� 2x��J9�JrRr�O�@��L�T����'�|�,�+�[dtp��Zfz�{ ���D��渉��6���߳.E|W��w���f�1դk��-��q�g�	�ӆ[�
$d���/'E���x?�MW}��aس��}緘Z���-�.�D��\��ω4�u��>�7]��vY;E�C4�C�$j��{���R^�w�� ����������َCu7l�D�4ā?��Yb�j$ ��ß+��T+�t	9�F��k���f�c��ջ8���a��}���p�E���/$���=ZYN&�<��*�ݰ�~k�����T�M�m�l�����x�V@O�hk/�	g�[�<��c�n��i��:|W�y�&�a��`-w�sm��"X�JN��'r�>A�	3�����t0�_�@GQ��[7�X��X�g�]�i��c�����7�{�IHcz�O" '�r
�
���>���%��7/ )��{I�t
k�#�8O�1|j7�a�>����5P��Ox�r2�K$�a kc6
�!9驶 y��Ǔ�w%\���_��BZ�E���엶y<�n������#�ǌ�+2��Ѐ�������Bҧr���@TJ3�+��j*���&5nq��$��~;~����������l哄�͝ώ��%e�763��k�x������}
�-�� iV*%|6�3�ů/�]�n�a���[Rv���ch�e�-� $��J�P}l��	��7)>d���m��)�/����};��B{����B��j�sk���#�]`�,�7��s׼�\2��l}���.u�0.���1s�X%��j�*�T�y����G�~�?�s���Ph�r! J's~,��`���wM�?C�%މ��y�"d����k�al�����������:��}�K�k��I�9��y�׀S�:Op��>U9,P�ų6S8��l&
�M�V��B~��o���a�j��b'�U҂��O��-X^P��5x6[�_j�[����̨��.>��,N��IB����V��%����'3/O�l��w�Dy���Z?󋋋� ����      F   �  x���K��@���S���n�6K��SC��ȫlJCk���~��u���m����`�L� -}�U	1��u˼��<갅��z�F�������8�p\���s����(�@�D)���TSw&Vp[ܛ�!6�9���O�q!�	R��4[o��7���'�j���W
tP����M7��Rk��yd�-B��E7���Ӎ �2��Jg����q�kY�ѝ�3��F�T�p9����+Z�'����D�1��"<����H& ����j�u&��vG��[��L8��\�\f��I�jG�Cu�w��E���|Bۘ��%6�-����Λ."�e	R�l�I�6S3�	�=b爕�xo�3�����3mD{�]���E	%v�8�Ğ����d�����H��"<y�v�G����8]�2O�u�8�����^�V���      G   %   x�30�CNSNCw'.���ӌ����׉+F��� � �      H   !   x�30�#NCNC.���k��5sc���� ]�
/      I   5   x�30�CNcNNCNC.���'��T�p�r� !��)'T+W� ��      J   #   x�30�#NCNC.�����k�i���qqq �h�      L   �   x�}���0Dkj
/�@�Z��M�_"W�l.P%<�~**�ش8UO���x>�P1Y��i���?�!�/֎�0[����3*n������jy�>�q�h4�x�W|u��$�zē'���ށ�2h��w-�E��,	�*-�]N��c� ��an      M   �   x�-�1
�0��Y>�/`a��c��]Ԑ��N���M-����R��P��Q��Zn@�< ��7!�\p��V�Mj���m���Qs1�]jY��?K+��'�)%�\J0ʖ�E옥��Ө��Qs�0��ة��V>W����1_�"3,      N   !   x���+.IL/J��t�<��(3Fs��qqq �!      O   �   x�]�=�0F��>@�
H���P$$YLj�R�40p���A/F��P<~~z��eq�jF
��HLa]=k,�����J^h�S�r'�1&)L<Y��bCUN��[z	�C)}͍T.ս�	X��յ��\x_g_�p+��v���|N�S�/�Yjn�nB?��?;V�"��k�M�M'I�'�b�      P   !   x�3�4�C.#ǘ��1�2ApL�b����  	L      Q   R   x�30� CCΠ���Ңļ����Ԣ�.���sbZjIjQf"BИ38��]Ԅ�9���(�89Eܔ3 ��
,���� !>      R   N   x�30�3N���D.���3$59/?'?=IԂ�=���(?/?Yؒ�%59�(���Ë���>�eE�E@�1z\\\ �X      S   h   x�30 ΠԜĊļ�T.����%�� ��$�,,bh��Z�XpxUiIf2D���-��,5/�895%�*l��W��Z\R�Z\5В38#3����+F��� ;#;      T   �   x���M� D��.�L~�K��F�V��\��f�����).����(����R.��!����Y�Vd^��e��sWߚ0#�,w:v�Fʼj���az��9��G�t�D�N8���u�n����^�6u���c��r[�z���-�;����´i�ѫ�.�ڞ�g˷�u�#I��=�"��������'�]\���a� ⧯"      U   �   x�3�t���?�<�ˈ�+1�$�˘�'1/9#U��A0��M*�l�~�p�1!�g�Pk�� .d���"��a�	�SA�b�e@&�<�Ŧpy ���2����D�d����qqq p<\w      V   E  x�}�=n�0��ٜ�����1��.m�..}"���2�:��=�	IC2 ����G�墈����Y�0=cJ��7	!hW� u�	1t�O1���X�0�U%l�2̦W��=+3�`���mc�ǟ��R�h����s�K�d=ڦuj�Wպ����� +�B�K�0���=^Z�;�/j��-W��B !g��A���A58��,j� ��h��D,�9�2G3�@/b�A5�jL��V|���r�;�8j�_���|k7���oΖ��kЭZa����^��U�vqN-C!����`T��'ݴpT1�{]i0�8��?~��O�(�׏��      Y     x�e�An�0E��S�@�'�B*��Fb�U7���%Gv���	PW=G.VgQ�6������o��� ��9�e9r�E\������`����oU*� �|����.`�qg��[��)�@<,���d+܏�ws��6�P��@���dg銄�׋�A�J1��"�y�ݠ��Ӄ�WO^C�rr�����:���h�wYp"�R�dM��	���� uJ�SvEF���.�_rYbqW�D<�~��&�Fru�V1�g�6��m�B�Dʻj{�3�~씂�      W   �   x�e�K!E�q��"��g/��u��N�8�Ar���j�Ԥt�ه��3��_f�d2C�3�&N	�%C�*/�R�]�W�책[��Db����V�XF�����=(̓�<{��1�S��Ai��݃�<(ͳg���9��Ai��׻�%��bO~h��\8      X   &  x�m��j�0���S�"dٱ�1�xi�.�.WG�E
����ӡS�"/VE�PJ�������R��4\wb!:؆�G`r3��8x����W�A.D����\���a$d�fK��Da�τ`
�薛F�̀�5F;���)Z�x�~l��!�4P��[���bajXyd�F��i�t;Ͳ�FoS]�.��ݕ�����6z�G���R��uE�]���vt��Trj��S�;%����jcVX�9����'?P�� ��j�r�s������������YjOǼI�WU��r�3      Z   �   x���K
�@D�]w�����s�l&�	BTP�O�@��c֯�W]F���mx�/JO����@��X�1�k|�#q!;n��ڸ��
?�������/_�Op�3��ީ��فTP;��2�JX�_��Se�5���e��Q�u��>Ia�      [   "  x�u�Mn�@F��)��X��=?ۤG��P	��p����\��R3D��a�l���x�m��j�ݼ��S{���^��2"%� =Z�Ѯ9L��2��n<�_�0�	��b.��/~Y���ޘ"%�Na,0W-0"	��2Z�׹/��������t�} ��T�y'�g2��Aur*t|<���ro�jg
o�E�*�v{�sq�:����a=�F�v�w�D�~�bڑKh��=wq!�h4�u\�UQ�,I#� ~taǊEHYs)!��B$/�$ k�q׫|c�/"τ      \   {   x�30�C�Í饉
��9��z\0)#ΠԴ���Ԣļ�TcS�s%ƜΩEe�Y�PYYN�����D�n#�tNCTL9��RJ�M� R`d����3 ���J��1z\\\ �./      ]   E   x�34�361�33�з404�56�)-�,��Wp��-H̫Tv��,K-R(H,JT���H,�����  $M      ^   b   x���+.IL/J��JMIU���H,R(H,JT�,K-�44051�4�0�44�361�33�з404�56��/-)MJ�K�JĢ���Ј����=... 7�!�      _   K   x��I�K�H���44�20��46�30�r���?�<���,h�(�44CRꕘW��ih��Џ��Ia� 8��      `   �  x���͎�6���S�"����-P�-�v�n��X���P�t�GI� �"O��<��dTP�^�2i��9�\�҇Ctr͉��ԔV��q�e�X��2d�j�0�>���ئjC��>�F�}�Kc�m�f��/odA4cDrZ��@�1`�ET�J1���Nqo�مӇ��~@���-\��C<Z��t��jo{[�(����4���,,�d9�����'?x��g7 �B!��Z�S7�>�Y�o�`SĮ���]�����ԭ��J �)��P�Y���Q�i�&T���p�;���.o����Ϻ�&9|s��.xF�5�z|?�������]$+�jC���X�*�hC�b��g%A�a߿����i��_�`��>��	[<������=�k�v�\F��I�d��\�̏�~>��?|��G�S��\o����y(@����g8����6��-���z�nNo��
�$%B6��1�HlE��|mwg�����l�x��7c�Ê�E�a�V��� K^sB3���Pl��a_�! ?��s���
c17s���<7�	J�F���a5�J��A�5%�#~J�?��'P��	]F��=d"d[,~�o�0W$�Y���)�Y_1�{�i$a5صx���,Q�6B�R[����OJ��B��^XY�
�DA+��\�I�~q���1�.��|p�Ϡ=��x�܄4�A큠���%�#E��F\m��׫�B���8Ku�s���AF�C��'Noa!���<a�Ɔ�\���� �9�Qx_�2
�f��B���r���#�K�� �n�D��pƬ#m� <��P]���%������Ƶڰ�r�L�OmN�\[�|h��΅8�	D�9B�k)��G��TDA��O�L�d�xY�[^�����L�]�$߽$���7x��      a     x���Kn�0C��],P?K�K��r�h2(R�*B�,Q�kX�8\6�Z��b�.�U�P`�P%�*p��P=�������D`��&�hL��V)m9F�6֮�p6Y(Hj
�+�Im������<�=���(ٔp�:���1���p����ܷ��pF�˭��\���mD�Ĥ�z�V���r�Y����0�]����tr�k烻E�nP�����1�NB������̰ W�w���|=�ҹ%hn�|��w��m�d��i��      b   V   x�E�;
�0D����N̆���6~v����l���&��X���Mf�����~5��:6&0��(D�b���Ğ�ô��P�G�M"��8"�      c   I   x�30�CN##]CC]#Nǒ̲|.���\��]���]���]���]��Ϝ�3/,���� �9%      d   /   x�3�4�4B �b Y�@�	THs��D��ȶ�������� �<�      e   6   x�Ź�0��� :}���:|���+z��+$b��/����#΍X|���      f   �   x�U�M�0FםS�����č�b�ؐ!��)�pz��E������t&���+ϼ�R[Tީ��D���;	�&%����=���;GNo�_�ri�ކ��)�-Y�M>��9�	�`#P]�և�a��*B�5#3��ڪ˪�>F��C~WD*�Y���ew� ����<k' B���G��Y �Qv�      g   �   x�U�AN�0EדS�Eq�UD[� �f�fZ�#;�q�"�A�ls1��3�Ѽ?��4��%�I�:TY��)���^<�A�1�;N�`��5N���B��h�"����+Q�0D�=�w��D�y�r1V�b'6Β��d
%z���A�I�p���K	�<k�3�Y��> +'Jm#*���|��iQE����)GE<�@^C��MK}��-�{�!�NK��R��=��a�v?~s���a���{xP�d����*I�|y�      h   �   x�m�An�0E��)� ��ؤ$�*�v)j�ݸ�*��-�r�,r.VB�����z��oYf�K �!�i�VWuѶs�p>���P�9��ǫn�-���NO]��(����NL���;[z�Q����P^(�P���0�M}��T��mzr>ݴ�E�"���ӹ��/�lW��2��fJ<�)��H���3�s� �W�&�ڱVV��9�6��L����3�A�X$>�_��xJ�� ��V      i   �   x�u�KN�0��N����l�@	THHlbHE�ԁ�p.�ۦMf���/�����{�zABeL��`QJj��F?�69<����k��͙����@_�o^�ͼĭ�v���#��T:��p���M�ƏU� �_������7�4��=6	�
��7�Q}uv0�`�3I��d�8���ŧ���Al��}�?\�ay�8�ŉ�X>�����"�̈́�������Yg���$I~ � y>      j   g   x�3�4�C���D��ԜĊļ�TNK=S.#�#���������NKK=K.c��	X�/���(mj�gn�e��6K��LHL�<����|NS=�=... �"s      k   .   x�30�CNc.������k�i�,k�i��5�4*����� ,b      l   I   x�]��� D�s�f����P��W ��`��g9�B��G+i�}�E�оߣk�G�g�-��}���^��a /�q      m   v  x��U�n�0����q���S�v��:  ���;�t���*'6��:��@Rw�#-�荜~�%;J:KJ�#���e���zv	%����<��y�=]3�4J*��3)+�R�l�SSe��ɐ����~Fn�C���
��ы��y�鳭5�ޟo�f�"ȘA�Ӯ8w��zɰ��.�T��W��4����%'��)�(Z�(#�
�̔n���d�o�ƫ��J_V�����}�V͍����S'92�+Q����czȭ�k��RWs�5��t�ٛ����wឩf|�X*̒�K8���=8�����������
Μ��8U��ˡ�p<��{�.c%�;!�E $�{$��4�[;�Z���)��_���      n   �   x�U�1
�@E��)�B��he[�1��@���l�ױ
�{���q�J������18N/�m�/y$-ʝٓR�Z��Bi���s�T}����޻$=�<����]z��Z�^j,� P�L���9ha���r�����\�{��+���TT�O��8�_�D.M��f$�o���]6Ƙ7R7iK      o   �  x�e���$'�ϳ��m�]r��=D�i#���3ʏ�jo@OS4E�L����������?�����F͞�������h|�V���n�O��H���V������"�x�J6N6N6N6��f�����͈~�fc/�����������ӏ�?�8��ӏ��q��g�~����E���L�v.R-w?y�I����D?y�I�c?���y��B�f�����b��ݚ�ztk�og��:��]�v�vw�=v���Y�4�����׻���i��|X5V��B�z`�E�(F���G��N\�~s�p�p��Ȏ%���A�A�����q������q��I�$n�N(9�$n��[�-�q��-�(�q'q'q'q'q'q'�;�;����-�X�]�]�"�"�"�&��x7q7q7q7q�������#B�<"%����h�#���/�&��¦Rf��ڦ��&�f��*��p&g"j&�f.�"s&:gC�]�E�L=������WE�0��α/y/��=G�t�X�z�aTwC&�L�L�L��0�&�&�f���$�$]j�M�K-2)2�vc�9)�I���7AE*j��	�kP\��נ���H��l&�L�Y�f��"�E6�Wh��"�%Q��T߯nv3�d�;��d�9'�L6�잓-��F{��%�{$�{���.��r�.��r\n6D�C4:D�C4:.7��p�`T�QG%5	H�5F^.Q����Ct<D�Ct<D�Ct�g�.���,C���%�y����f��Gug%�`��u�U«�W]�Jx��7�zj_�^�Z�V睉�u�7�����s.�R�X�:�-�UŰ��a��!�b��y�=���ƪ,��d\���,���#g''''o6N6N6N6�r�F��F/�h�R��U�`9I��g��oc�U�F��7�)�w�;����VC������}�خr\�li=e��˯w��`�zw\�_�k��z������.�ؼ�̋ϼƲ�w���k�l_�^s��s��/�~cW�����z\~E~�;����n\��\���ިa����>�J��zp[����<����`Jgp�ء;։;�;$��pw(

�M�d7%{�&q��I�� ���q��E�"nq�������ĝĝ����]�]Z�"�� qqq7���	�9�M�-[_���H]v�#��I�� <� �j������ޘ���p�[R���'�.��{�އ��!n}|r������E�L�Ɇ��xE�,?T�_T�D�Lt�R�D�L��D�L��D�,O�+�e�X&�e�Ǜ��L1�}��C���)�"V6�||�+�`����a��u��qh��n�z���Ϻ�btktk��c�S�n�n��:�uu��֓�v��Q�.����j����s������N9��ȫ���|���n�o�1a���t:0�{��P�O�Ą�9ݗ3�r�1]���tb:1111��A��{s38�A� f�Z� f3���Lbfyɉ��9��Ӌ93�N/��bޱ�Ӈ9}�Ӈ9}�Ӈy�v����������\�%sz0��3��cN��L�:�ӎ9����bT����l�n�n��KTD����#B����"���#��B&�v	���	�	�j��3�.��Ň��Np�d.�Ń�dP]<��s�	s�d��d}��h����Oڃu�~�����,Q%z/��������qI6�8���'5?����S$c��1���Y��d� �h6A6A6A6��� � �`�0:�d��f&�H�>�&����%m�d��FVIR�E6����G�t�d�%Y_d#�z���^�I6�l&�f��$�IF���I6�l�g��"�EF��V�Gm�͒�<-2�d��h����d�9?��6��~6���J9�R�	)'X^	��+��JI,��f�9�N_�\a/���[��C�1�"Co2Lx��K.3Ln3L�3L�3x��r��֤��)�`�)���#�n�O�ӷ���l�趉pۥ�&�m��<!S2y]���)�e~�8օ��8�)'jJv#�-滫�yZ����V��U1�]��*_��^皥�/����5(�`a�C��Y\Ɋ�qu����zE3	2	2	�K��l�I�	V�x��<��&�BI6�+�d����(�ҋgq�,�W5�"�"�j&E&E&�L�L�L��|6�I&�Lf3�d2�d6�I&�L��f��d��j&�L��f��d��&��L6�l2��d��&�ͯv_&�|Y�������xU      p      x���/-)MJ�t�<��(3�+F��� Y�     