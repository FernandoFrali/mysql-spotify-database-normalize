SELECT COUNT(*) AS musicas_no_historico
FROM SpotifyClone.historico
WHERE id_usuario = (SELECT id_usuario FROM SpotifyClone.usuario WHERE nome_usuario = 'Barbara Liskov');
