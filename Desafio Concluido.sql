USE Filmes	

--- 1
SELECT Nome, Ano
FROM Filmes;

--- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

--- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

--- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

--- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC;

--- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--- 10
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id;

--- 11
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Generos.Genero = 'Mistério';

--- 12
SELECT Filmes.Nome AS Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id
JOIN Atores ON ElencoFilme.Id = Atores.Id;


