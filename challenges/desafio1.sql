DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano (
  id_plano INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(50) NOT NULL,
  valor DECIMAL(10,2) UNSIGNED ZEROFILL NOT NULL,
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
  duracao INT NOT NULL,
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
  data_reproducao DATETIME NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario(id_usuario),
  FOREIGN KEY (id_musica) REFERENCES SpotifyClone.musica(id_musica),
  UNIQUE(id_usuario, id_musica, data_reproducao)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.plano (nome_plano, valor) VALUES
('gratuito', 0),
('pessoal', 6.99),
('universitário', 5.99),
('familiar', 7.99);
INSERT INTO SpotifyClone.pessoa_artist (nome_pessoa_artist) VALUES
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO SpotifyClone.album (id_pessoa_artist, nome_album, ano_lancamento) VALUES
(1, 'Renaissance', '2022'),
(2, 'Jazz', '1978'),
(2, 'Hot Space', '1982'),
(3, 'Falso Brilhante', '1998'),
(3, 'Vento de Maio', '2001'),
(4, 'QVVJFA?', '2003'),
(5, 'Somewhere Far Beyond', '2007'),
(6, 'I Put A Spell On You', '2012');

INSERT INTO SpotifyClone.musica (id_album, nome_musica, duracao) VALUES
(1, 'BREAK MY SOUL', 279),
(1, 'VIRGO''s GROOVE', 369),
(1, 'ALIEN SUPERSTAR', 116),
(2, 'Don''t Stop Me Now', 203),
(3, 'Under Pressure', 152),
(4, 'Como Nossos Pais', 105),
(5, 'O Medo de Amar é o Medo de Ser Livre', 207),
(6, 'Samba em Paris', 267),
(7, 'The Bard''s Song', 244),
(8, 'Feeling Good', 100);

INSERT INTO SpotifyClone.usuario (nome_usuario, id_plano) VALUES
('Barbara Liskov', 1),
('Robert Cecil Martin', 1),
('Ada Lovelace', 4),
('Martin Fowler', 4),
('Sandi Metz', 4),
('Paulo Freire', 3),
('Bell Hooks', 3),
('Christopher Alexander', 2),
('Judith Butler', 2),
('Jorge Amado', 2);

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
(1, 8, '2022-02-28 10:45:55'),
(1, 2, '2020-05-02 05:30:35'),
(1, 10, '2020-03-06 11:22:33'),
(2, 10, '2022-08-05 08:05:17'),
(2, 7, '2020-01-02 07:40:33'),
(3, 10, '2020-11-13 16:55:13'),
(3, 2, '2020-12-05 18:38:30'),
(4, 8, '2021-08-15 17:10:10'),
(5, 8, '2022-01-09 01:44:33'),
(5, 5, '2020-08-06 15:23:43'),
(6, 7, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 4, '2011-12-15 22:30:49'),
(8, 4, '2012-03-17 14:56:41'),
(9, 9, '2022-02-24 21:14:22'),
(10, 3, '2015-12-13 08:30:22');