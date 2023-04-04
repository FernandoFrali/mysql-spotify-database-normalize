SELECT 
    ROUND(MIN(plano.valor), 2) AS faturamento_minimo,
    ROUND(MAX(plano.valor), 2) AS faturamento_maximo,
    ROUND(AVG(plano.valor), 2) AS faturamento_medio,
    ROUND(SUM(plano.valor), 2) AS faturamento_total
FROM 
    SpotifyClone.usuario 
    JOIN SpotifyClone.plano ON SpotifyClone.usuario.id_plano = SpotifyClone.plano.id_plano;
