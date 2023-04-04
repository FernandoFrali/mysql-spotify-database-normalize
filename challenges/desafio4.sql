SELECT 
    SpotifyClone.usuario.nome_usuario AS pessoa_usuaria, 
    CASE WHEN MAX(SpotifyClone.historico.data_reproducao) >= '2021-01-01'
        THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM 
    SpotifyClone.usuario
    LEFT JOIN SpotifyClone.historico ON SpotifyClone.usuario.id_usuario = SpotifyClone.historico.id_usuario
GROUP BY 
    SpotifyClone.usuario.nome_usuario
ORDER BY 
    SpotifyClone.usuario.nome_usuario ASC;
