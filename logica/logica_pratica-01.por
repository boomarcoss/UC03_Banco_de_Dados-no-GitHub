programa
{
    funcao inicio()
    {
// Constantes
const inteiro CAIXAS_POR_PALETE = 40
const real TEMPERATURA_LIMITE = -18.0
// Variáveis
inteiro quantidadeCaixas
inteiro paletesCompletos
inteiro caixasRestantes
real pesoPorCaixa
real temperaturaCamara
real pesoTotal
// Entrada de dados
escreva("Quantidade de caixas produzidas: ")
leia(quantidadeCaixas)
escreva("Peso de cada caixa (kg): ")
leia(pesoPorCaixa)
escreva("Temperatura da camara fria (°C): ")
leia(temperaturaCamara)
// Cálculos
pesoTotal = quantidadeCaixas * pesoPorCaixa
paletesCompletos = quantidadeCaixas / CAIXAS_POR_PALETE
caixasRestantes = quantidadeCaixas % CAIXAS_POR_PALETE
// Resultados
escreva("\nPeso total produzido: ", pesoTotal, " kg\n")
escreva("Paletes completos: ", paletesCompletos, "\n")
escreva("Caixas restantes: ", caixasRestantes, "\n")
// Verificação das condições de carregamento
se (temperaturaCamara <= TEMPERATURA_LIMITE e paletesCompletos >= 1)
{
escreva("Carregamento liberado\n")
}
 senao
{
 se (temperaturaCamara > TEMPERATURA_LIMITE)
 {
escreva("Bloqueio: camara acima de -18 °C\n")
}
se (paletesCompletos < 1)
{
escreva("Bloqueio: nenhum palete completo\n")
}
}
}
}