SELECT u.id AS usuario_id, u.nome, e.local, e.estado, e.cidade, e.rua, e.numero
FROM `festora-db`.`usuarios` u
JOIN `festora-db`.`enderecos` e ON u.id = e.id;

SELECT ev.id AS evento_id, ev.titulo, ev.descricao, ev.data, u.nome AS organizador, e.local, e.estado, e.cidade, e.rua, e.numero
FROM `festora-db`.`eventos` ev
JOIN `festora-db`.`usuarios` u ON ev.usuario_id = u.id
JOIN `festora-db`.`enderecos` e ON ev.endereco_id = e.id;

SELECT i.id AS imagem_id, i.nome, i.caminho, ev.titulo AS evento
FROM `festora-db`.`imagens` i
JOIN `festora-db`.`eventos` ev ON i.eventos_id = ev.id;

SELECT n.id AS notificacao_id, n.titulo, n.corpo, n.data, u.nome AS usuario
FROM `festora-db`.`notificacoes` n
JOIN `festora-db`.`notificacao_usuario` nu ON n.id = nu.notificacao_id
JOIN `festora-db`.`usuarios` u ON nu.usuario_id = u.id;

SELECT ds.id AS data_especial_id, ds.data, u.nome
FROM `festora-db`.`datas_especiais` ds
JOIN `festora-db`.`usuarios` u ON ds.usuarios_id = u.id;

SELECT a.id AS amizade_id, u1.nome AS usuario, u2.nome AS amigo, a.status
FROM `festora-db`.`amizades` a
JOIN `festora-db`.`usuarios` u1 ON a.usuarios_id = u1.id
JOIN `festora-db`.`usuarios` u2 ON a.amigo_id = u2.id;

SELECT u.id AS usuario_id, u.nome, ev.titulo AS evento
FROM `festora-db`.`usuario_evento` ue
JOIN `festora-db`.`usuarios` u ON ue.usuarios_id = u.id
JOIN `festora-db`.`eventos` ev ON ue.eventos_id = ev.id;
