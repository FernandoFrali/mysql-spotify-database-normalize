DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano (
  id_plano INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(50) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  UNIQUE(nome_plano)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.pessoa_artist (
  id_pessoa_artist INT PRIMARY KEY AUTO_INCREMENT,
  nome_pessoa_artist VARCHAR(100) NOT NULL,
  UNIQUE(nome_pessoa_artist)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.album (
  id_album INT PRIMARY KEY AUTO_INCREMENT,
  id_pessoa_artist INT NOT NULL,
  nome_album VARCHAR(100) NOT NULL,
  ano_lancamento YEAR NOT NULL,
  FOREIGN KEY (id_pessoa_artist) REFERENCES SpotifyClone.pessoa_artist(id_pessoa_artist),
  UNIQUE(id_pessoa_artist, nome_album)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.musica (
  id_musica INT PRIMARY KEY AUTO_INCREMENT,
  id_album INT NOT NULL,
  nome_musica VARCHAR(100) NOT NULL,
  duracao TIME NOT NULL,
  FOREIGN KEY (id_album) REFERENCES SpotifyClone.album(id_album),
  UNIQUE(id_album, nome_musica)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuario (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(100) NOT NULL,
  id_plano INT NOT NULL,
  FOREIGN KEY (id_plano) REFERENCES SpotifyClone.plano(id_plano),
  UNIQUE(nome_usuario)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.segue (
  id_usuario INT NOT NULL,
  id_pessoa_artist INT NOT NULL,
  PRIMARY KEY (id_usuario, id_pessoa_artist),
  FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario(id_usuario),
  FOREIGN KEY (id_pessoa_artist) REFERENCES SpotifyClone.pessoa_artist(id_pessoa_artist)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.historico (
  id_usuario INT NOT NULL,
  id_musica INT NOT NULL,
  data_reproducao DATE NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario(id_usuario),
  FOREIGN KEY (id_musica) REFERENCES SpotifyClone.musica(id_musica),
  UNIQUE(id_usuario, id_musica, data_reproducao)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.plano (nome_plano, valor) VALUES
('Grátis', 0.00),
('Premium', 19.90),
('Família', 29.90),
('Duo', 24.90);

INSERT INTO SpotifyClone.pessoa_artist (nome_pessoa_artist) VALUES
('Adele'),
('Ed Sheeran'),
('Taylor Swift'),
('Maroon 5'),
('Coldplay'),
('Michael Jackson');

INSERT INTO SpotifyClone.album (id_pessoa_artist, nome_album, ano_lancamento) VALUES
(1, '21', '2011'),
(1, '25', '2015'),
(2, '+', '2011'),
(2, 'x', '2014'),
(3, 'Red', '2012'),
(3, '1989', '2014'),
(4, 'Parachutes', '2000'),
(4, 'A Rush of Blood to the Head', '2002');

INSERT INTO SpotifyClone.musica (id_album, nome_musica, duracao) VALUES
(1, 'Rolling in the Deep', '00:03:48'),
(2, 'When We Were Young', '00:04:50'),
(3, 'The A Team', '00:04:21'),
(3, 'Lego House', '00:03:04'),
(4, 'Sing', '00:03:55'),
(4, 'Photograph', '00:04:19'),
(5, 'I Knew You Were Trouble', '00:03:39'),
(6, 'Yellow', '00:04:32'),
(7, 'Yellow', '00:04:30'),
(8, 'Clocks', '00:05:08');

INSERT INTO SpotifyClone.usuario (nome_usuario, id_plano) VALUES
('joao123', 2),
('maria456', 1),
('test22', 1),
('ant123', 3),
('ouser0943', 4),
('mordeka22', 1),
('edfan', 1),
('lovemusic1', 2),
('lovemusic', 1),
('carlos789', 3);

INSERT INTO SpotifyClone.segue (id_usuario, id_pessoa_artist) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6);

INSERT INTO SpotifyClone.historico (id_usuario, id_musica, data_reproducao) VALUES
(1, 1, '2022-03-30'),
(1, 2, '2022-03-30'),
(1, 3, '2022-03-31'),
(1, 4, '2022-04-01'),
(1, 5, '2022-04-01'),
(1, 6, '2022-04-01'),
(2, 1, '2022-03-30'),
(2, 2, '2022-04-02'),
(2, 3, '2022-04-02'),
(2, 4, '2022-04-02'),
(2, 5, '2022-04-02'),
(2, 6, '2022-04-02'),
(3, 1, '2022-04-03'),
(3, 2, '2022-04-04'),
(3, 3, '2022-04-04'),
(3, 4, '2022-04-04');