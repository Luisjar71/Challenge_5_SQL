UPDATE Users
SET Location = 'Desconocido'
WHERE Location IS NULL OR Location = '';

-- Mensaje de confirmación
PRINT 'La actualización se realizó correctamente.';