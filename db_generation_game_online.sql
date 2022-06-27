CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

	id BIGINT auto_increment,
	PRIMARY KEY(id),
    arma VARCHAR(20),
    tipo VARCHAR(20)
);

CREATE TABLE tb_personagens(

	id BIGINT auto_increment,
    PRIMARY KEY(id),
    nome VARCHAR(30),
    ataque INT,
    defesa INT,
    
    classes_id BIGINT,
    FOREIGN KEY(classes_id)REFERENCES tb_classes(id)

);

INSERT INTO tb_classes(arma,tipo)
	VALUES
    ("machado","Bárbaro"),
    ("adagas","Bardo"),
    ("cajado","Bruxo"),
    ("espada","Ladino"),
    ("bastão","Monge");
    
    SELECT * FROM tb_classes;
    
    INSERT INTO tb_personagens(nome,ataque,defesa,classes_id)
		VALUES
        ("Fergus",2100,1700,1),
        ("Jaskier",700,500,2),
        ("Geralt",2500,2300,3),
        ("Calahan",900,1100,4),
        ("Lucio",1500,1500,5),
        ("Corgoth",2200,1900,1),
        ("Lurian",800,900,5),
        ("Gandalf",2050,2300,3);
        
	SELECT * FROM tb_personagens;
    
    SELECT * FROM tb_personagens WHERE ataque>2000;
    SELECT * FROM tb_personagens WHERE defesa>1000 && defesa<2000;
    SELECT * FROM tb_personagens WHERE nome LIKE "C%";
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classes_id = tb_classes.id;
    
    SELECT *  FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classes_id = tb_classes.id
    WHERE tb_classes.tipo = "Bárbaro";  
        