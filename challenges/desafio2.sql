SELECT
    COUNT(*) AS "cancoes",
    (SELECT COUNT(DISTINCT SpotifyClone.pessoa_artist.id_pessoa_artist) FROM SpotifyClone.pessoa_artist) AS "artistas",
    (SELECT COUNT(DISTINCT SpotifyClone.musica.id_album) FROM SpotifyClone.musica) AS "albuns"
FROM SpotifyClone.musica
JOIN SpotifyClone.album ON SpotifyClone.musica.id_album = SpotifyClone.album.id_album
JOIN SpotifyClone.pessoa_artist ON SpotifyClone.album.id_pessoa_artist = SpotifyClone.pessoa_artist.id_pessoa_artist;
