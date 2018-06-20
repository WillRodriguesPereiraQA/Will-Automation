Dado(/^visualizo duas colunas A e B$/) do
  @dragNdrop.validar_colunas
end

Quando(/^arrasto a coluna A para a coluna B$/) do
  @dragNdrop.arrastar_coluna
end

Entao(/^valido as colunas$/) do
  @dragNdrop.validar_colunas_AB
end
