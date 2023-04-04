SELECT
    SpotifyClone.usuario.nome_usuario AS pessoa_usuaria,
    COUNT(DISTINCT SpotifyClone.historico.id_musica) AS musicas_ouvidas,
    ROUND(SUM(SpotifyClone.musica.duracao)/60, 2) AS total_minutos
FROM
    SpotifyClone.usuario
    JOIN SpotifyClone.historico ON SpotifyClone.usuario.id_usuario = historico.id_usuario
    JOIN SpotifyClone.musica ON historico.id_musica = musica.id_musica
GROUP BY
    usuario.nome_usuario
ORDER BY
    usuario.nome_usuario ASC;
