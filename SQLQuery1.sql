
--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao from filmes
WHERE Nome = 'De volta para o Futuro'

--4
SELECT * from filmes
WHERE Ano = 1997

--5
SELECT * from filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT Ano,
	COUNT(*) Quantidade,
	SUM(Duracao) SomaDuracao 

FROM Filmes
GROUP BY Ano
ORDER BY SomaDuracao DESC;

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Genero 
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

--11
SELECT Filmes.Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.Id
INNER JOIN Generos ON  Generos.id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--12
SELECT filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
From Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor