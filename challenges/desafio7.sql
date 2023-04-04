SELECT 
    pessoa_artist.nome_pessoa_artist AS artista,
    album.nome_album AS album,
    COUNT(DISTINCT segue.id_usuario) AS pessoas_seguidoras
FROM 
    SpotifyClone.pessoa_artist 
    JOIN SpotifyClone.album ON pessoa_artist.id_pessoa_artist = album.id_pessoa_artist
    LEFT JOIN SpotifyClone.segue ON pessoa_artist.id_pessoa_artist = segue.id_pessoa_artist
GROUP BY 
    pessoa_artist.id_pessoa_artist, album.id_album
ORDER BY 
    pessoas_seguidoras DESC, pessoa_artist.nome_pessoa_artist ASC, album.nome_album ASC;
