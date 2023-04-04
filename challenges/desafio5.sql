SELECT
    SpotifyClone.musica.nome_musica AS cancao,
    COUNT(DISTINCT SpotifyClone.historico.id_usuario) AS reproducoes
FROM
    SpotifyClone.musica
    JOIN SpotifyClone.historico ON SpotifyClone.musica.id_musica = SpotifyClone.historico.id_musica
GROUP BY
    SpotifyClone.musica.nome_musica
ORDER BY
    reproducoes DESC, SpotifyClone.musica.nome_musica ASC
LIMIT 2;
