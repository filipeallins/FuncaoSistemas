﻿CREATE PROC FI_SP_VerificaBeneficiario
	@CPF BIGINT
AS
BEGIN
	IF(ISNULL(@CPF,0) = 0)
		SELECT NOME, CPF, IDCLIENTE, ID FROM BENEFICIARIOS WITH(NOLOCK)
	ELSE
		SELECT NOME, CPF, IDCLIENTE, ID FROM BENEFICIARIOS WITH(NOLOCK) WHERE CPF = @CPF
END