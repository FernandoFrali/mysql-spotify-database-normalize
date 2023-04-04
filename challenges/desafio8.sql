SELECT 
  SpotifyClone.pessoa_artist.nome_pessoa_artist AS artista, 
  SpotifyClone.album.nome_album AS album 
FROM 
  SpotifyClone.pessoa_artist 
  JOIN SpotifyClone.album ON SpotifyClone.pessoa_artist.id_pessoa_artist = SpotifyClone.album.id_pessoa_artist 
WHERE 
  nome_pessoa_artist = 'Elis Regina' 
ORDER BY 
  album ASC;
