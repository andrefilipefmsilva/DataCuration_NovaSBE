
SELECT * FROM Customer
WHERE FirstName = 'Madalena';

--

SELECT CustomerId, FirstName, LastName
FROM Customer
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId;

--

SELECT * 
FROM Track
WHERE GenreId = 6;

--

SELECT * 
FROM Genre;

--

SELECT * , 
FROM Track 
Where GenreId = 6
ORDER BY;

--

SELECT Genre.GenreId, Track.AlbumId
FROM Track 
INNER JOIN Genre on Genre.GenreId = Track.GenreId 
WHERE Genre.GenreId = 2;

--

SELECT FirstName, LastName, Email, CustomerId
FROM Customer 
WHERE 
Country = 'Portugal' or Country = 'USA' or Country = 'Germany'
ORDER BY Email;

--

SELECT CustomerId, Total
FROM Invoice
WHERE CustomerId IN (
SELECT CustomerId
FROM Customer 
WHERE
Country = 'Portugal' or Country = 'USA' or Country = 'Germany')
Order by CustomerId;