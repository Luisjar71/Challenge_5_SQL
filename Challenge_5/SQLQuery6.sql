
DECLARE @CuentaBorrada INT;

-- Eliminar los comentarios realizados por usuarios con menos de 100 de reputación
DELETE FROM Comments
WHERE UserId IN (
    SELECT Id
    FROM Users
    WHERE Reputation < 100
);

-- Obtener el número de filas eliminadas
SET @CuentaBorrada = @@ROWCOUNT;

-- Mostrar el mensaje con el número de comentarios eliminados
PRINT CAST(@CuentaBorrada AS VARCHAR) + ' comentarios fueron eliminados.';