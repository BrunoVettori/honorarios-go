CREATE TABLE IF NOT EXISTS usuarios(
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  nome VARCHAR (255) NOT NULL,
  sobrenome VARCHAR (255) NOT NULL,
  senha VARCHAR (255) NOT NULL,
  email VARCHAR (255) UNIQUE NOT NULL,
  telefone VARCHAR (255) UNIQUE,
  documento VARCHAR (255) UNIQUE NOT NULL,
  ativo BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP,

  UNIQUE (nome, sobrenome)
);
