UPDATE Users
SET Location = 'Desconocido'
WHERE Location IS NULL OR Location = '';

-- Mensaje de confirmaci�n
PRINT 'La actualizaci�n se realiz� correctamente.';