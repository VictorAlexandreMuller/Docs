-- Inserir usuários
INSERT INTO `festora-db`.`usuarios` (id, nome, email, senha) VALUES
('1', 'João Silva', 'joao@exemplo.com', 'senha123'),
('2', 'Maria Oliveira', 'maria@exemplo.com', 'senha456'),
('3', 'Carlos Souza', 'carlos@exemplo.com', 'senha789');

-- Inserir endereços
INSERT INTO `festora-db`.`enderecos` (id, local, estado, cidade, rua, numero) VALUES
('1', 'Rua A, 123', 'SP', 'São Paulo', 'Rua X', 10),
('2', 'Avenida B, 456', 'RJ', 'Rio de Janeiro', 'Avenida Y', 20),
('3', 'Rua C, 789', 'MG', 'Belo Horizonte', 'Rua Z', 30);

-- Inserir eventos
INSERT INTO `festora-db`.`eventos` (id, titulo, descricao, data, endereco_id, usuario_id) VALUES
('1', 'Evento A', 'Descrição do Evento A', '2025-03-10 18:00:00', '1', '1'),
('2', 'Evento B', 'Descrição do Evento B', '2025-03-12 19:00:00', '2', '2'),
('3', 'Evento C', 'Descrição do Evento C', '2025-03-14 20:00:00', '3', '3');

-- Inserir imagens
INSERT INTO `festora-db`.`imagens` (id, nome, caminho, eventos_id) VALUES
('1', 'Imagem A', 'caminho/a.jpg', '1'),
('2', 'Imagem B', 'caminho/b.jpg', '2'),
('3', 'Imagem C', 'caminho/c.jpg', '3');

-- Inserir notificações
INSERT INTO `festora-db`.`notificacoes` (id, titulo, corpo, data) VALUES
('1', 'Notificação 1', 'Corpo da notificação 1', '2025-03-05 10:00:00'),
('2', 'Notificação 2', 'Corpo da notificação 2', '2025-03-06 11:00:00'),
('3', 'Notificação 3', 'Corpo da notificação 3', '2025-03-07 12:00:00');

-- Inserir datas especiais
INSERT INTO `festora-db`.`datas_especiais` (id, data, usuarios_id) VALUES
('1', '2025-03-10', '1'),
('2', '2025-03-12', '2'),
('3', '2025-03-14', '3');

-- Inserir amizades
INSERT INTO `festora-db`.`amizades` (id, usuarios_id, amigo_id, status) VALUES
('1', '1', '2', 'aceito'),
('2', '2', '3', 'pendente'),
('3', '1', '3', 'aceito');

-- Inserir usuário_evento
INSERT INTO `festora-db`.`usuario_evento` (usuarios_id, eventos_id) VALUES
('1', '1'),
('2', '2'),
('3', '3');

-- Inserir notificacao_usuario
INSERT INTO `festora-db`.`notificacao_usuario` (notificacao_id, usuario_id) VALUES
('1', '1'),
('2', '2'),
('3', '3');