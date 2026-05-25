# Criando um Dashboard de Vendas do Xbox com Excel

Este projeto foi desenvolvido como parte da formação **TOTVS - Fundamentos de Engenharia de Dados e Machine Learning**.

O objetivo do desafio é criar um **dashboard de vendas no Excel**, transformando uma base de dados bruta em informações visuais, claras e úteis para análise de desempenho comercial.

A proposta principal é facilitar a tomada de decisão a partir de indicadores como faturamento total, quantidade de assinaturas, ticket médio, desempenho por plano, renovação automática e receita gerada por add-ons.

---

## Objetivo do projeto

O objetivo deste projeto é construir um dashboard profissional no Excel para analisar vendas de assinaturas Xbox.

O dashboard foi criado para responder perguntas como:

- Qual foi o faturamento total?
- Quantas assinaturas foram vendidas?
- Qual foi o ticket médio por assinatura?
- Qual plano gerou mais faturamento?
- Quantos assinantes existem por plano?
- Qual é a taxa de renovação automática?
- Qual add-on gerou mais receita?
- Quanto os add-ons representam no faturamento?
- Quais insights podem apoiar a tomada de decisão?

---

## Dados utilizados

A base de dados contém informações fictícias de assinaturas Xbox.

Cada linha representa uma assinatura realizada por um cliente.

### Principais colunas da base

| Coluna | Descrição |
|---|---|
| Subscriber ID | Identificador único do assinante |
| Name | Nome do cliente |
| Plan | Plano contratado: Ultimate, Core ou Standard |
| Start Date | Data de início da assinatura |
| Auto Renewal | Indica se a renovação automática está ativa |
| Subscription Price | Valor base da assinatura |
| Subscription Type | Tipo de assinatura: Monthly, Quarterly ou Annual |
| EA Play Season Pass | Indica se o cliente comprou o add-on EA Play |
| EA Play Season Pass Price | Valor do add-on EA Play |
| Minecraft Season Pass | Indica se o cliente comprou o add-on Minecraft |
| Minecraft Season Pass Price | Valor do add-on Minecraft |
| Coupon Value | Valor de cupom/desconto aplicado |
| Total Value | Valor final da venda |

---

## Tratamento dos dados

Antes da construção do dashboard, foi criada uma base limpa para evitar problemas de análise.

A limpeza incluiu:

- Remoção de linhas vazias;
- Remoção de linhas duplicadas;
- Substituição de valores `-` por células vazias;
- Padronização da base para cálculos e gráficos.

A fórmula utilizada para criar a base limpa foi:

```excel
=LET(dados;Bases!A1:M1001;filtrados;FILTRO(dados;ARRUMAR(Bases!A1:A1001)<>"");unicos;ÚNICO(filtrados);SE(unicos="-";"";unicos))
```

Essa etapa foi importante para garantir que os indicadores fossem calculados com mais segurança e sem duplicidade.

---

## Indicadores analisados

O dashboard apresenta os principais KPIs de vendas:

| Indicador | Resultado |
|---|---:|
| Faturamento Total | R$ 7.633,00 |
| Total de Assinaturas | 295 |
| Ticket Médio | R$ 25,87 |
| Maior Venda | R$ 62,00 |
| Menor Venda | R$ 3,00 |
| Taxa de Renovação Automática | 50,17% |
| Receita Total com Add-ons | R$ 6.820,00 |

---

## Análise por plano

A base possui três planos principais:

- Ultimate
- Core
- Standard

### Assinantes por plano

| Plano | Assinantes |
|---|---:|
| Core | 101 |
| Ultimate | 98 |
| Standard | 96 |

### Faturamento por plano

| Plano | Faturamento |
|---|---:|
| Ultimate | R$ 5.388,00 |
| Standard | R$ 1.801,00 |
| Core | R$ 444,00 |

### Ticket médio por plano

| Plano | Ticket Médio |
|---|---:|
| Ultimate | R$ 54,98 |
| Standard | R$ 18,76 |
| Core | R$ 4,40 |

---

## Análise de add-ons

O dashboard também analisa a receita gerada por produtos adicionais.

| Add-on | Receita |
|---|---:|
| EA Play Season Pass | R$ 2.940,00 |
| Minecraft Season Pass | R$ 3.880,00 |

O add-on com maior receita foi:

```text
Minecraft Season Pass
```

---

## Renovação automática

A análise de renovação automática permite entender o potencial de retenção dos assinantes.

| Renovação Automática | Quantidade |
|---|---:|
| Yes | 148 |
| No | 147 |

A taxa de renovação automática foi de aproximadamente:

```text
50,17%
```

---

## Principais insights

A análise dos dados mostrou que:

- O plano **Ultimate** é o principal responsável pelo faturamento total;
- O plano **Core** possui a maior quantidade de assinantes, mas baixa participação na receita;
- O plano **Ultimate** concentra aproximadamente **70,59% do faturamento total**;
- A taxa de renovação automática está praticamente dividida entre clientes com e sem renovação ativa;
- Os add-ons têm forte impacto na receita total;
- O **Minecraft Season Pass** foi o add-on com maior faturamento;
- Existe oportunidade para aumentar receita com estratégias de upgrade e incentivo à renovação automática.

---

## Estrutura do dashboard

O dashboard foi organizado com foco em leitura rápida e tomada de decisão.

### Elementos visuais utilizados

- Cards de indicadores principais;
- Gráfico de faturamento por plano;
- Gráfico de assinantes por plano;
- Gráfico de ticket médio por plano;
- Gráfico de renovação automática;
- Gráfico de receita por add-on;
- Caixa de análise executiva.

### Layout sugerido

```text
+------------------------------------------------------------+
| DASHBOARD DE VENDAS XBOX                                  |
| Análise de assinaturas, planos, add-ons e renovação        |
+------------------------------------------------------------+

+-------------+-------------+-------------+-------------+
| Faturamento | Assinaturas | Ticket Médio| Renovação   |
+-------------+-------------+-------------+-------------+

+---------------------------+------------------------------+
| Faturamento por Plano     | Assinantes por Plano         |
+---------------------------+------------------------------+

+---------------------------+------------------------------+
| Ticket Médio por Plano    | Receita por Add-on           |
+---------------------------+------------------------------+

+---------------------------+------------------------------+
| Renovação Automática      | Análise Executiva            |
+---------------------------+------------------------------+
```

---

## Abas do arquivo Excel

O arquivo Excel foi organizado em abas para facilitar a manutenção e análise.

| Aba | Finalidade |
|---|---|
| Bases | Base original de dados |
| Base_Limpa | Base tratada, sem linhas vazias, duplicadas ou valores desnecessários |
| Cálculos | Área com fórmulas, indicadores e tabelas auxiliares |
| Dashboard | Painel visual final |
| README ou Instruções | Explicação do projeto dentro do arquivo |

---

## Fórmulas principais utilizadas

### Faturamento total

```excel
=SOMA(Base_Limpa!M2:M1001)
```

### Total de assinaturas

```excel
=CONT.VALORES(Base_Limpa!A2:A1001)
```

### Ticket médio

```excel
=SEERRO(SOMA(Base_Limpa!M2:M1001)/CONT.VALORES(Base_Limpa!A2:A1001);0)
```

### Maior venda

```excel
=SEERRO(MÁXIMO(Base_Limpa!M2:M1001);0)
```

### Menor venda

```excel
=SEERRO(MÍNIMO(Base_Limpa!M2:M1001);0)
```

### Taxa de renovação automática

```excel
=SEERRO(CONT.SE(Base_Limpa!E2:E1001;"Yes")/CONT.VALORES(Base_Limpa!A2:A1001);0)
```

### Receita total com add-ons

```excel
=SOMA(Base_Limpa!I2:I1001)+SOMA(Base_Limpa!K2:K1001)
```

### Add-on com maior receita

```excel
=SE(SOMA(Base_Limpa!I2:I1001)>=SOMA(Base_Limpa!K2:K1001);"EA Play Season Pass";"Minecraft Season Pass")
```

---

## Como reproduzir o projeto

Para reproduzir este projeto:

1. Baixe ou clone este repositório;
2. Abra o arquivo Excel do dashboard;
3. Acesse a aba `Bases` para visualizar os dados originais;
4. Confira a aba `Base_Limpa`, onde os dados foram tratados;
5. Veja a aba `Cálculos`, onde ficam os indicadores e tabelas auxiliares;
6. Acesse a aba `Dashboard` para visualizar o painel final;
7. Caso altere a base original, atualize as fórmulas e gráficos conforme necessário.

---

## Arquivos do projeto

Estrutura sugerida da pasta:

```text
Desafio - Dashboard de Vendas do Xbox com Excel/
│
├── README.md
├── base.xlsx
└── dashboard_xbox.xlsx
```

Ou, de forma mais organizada:

```text
Desafio - Dashboard de Vendas do Xbox com Excel/
│
├── README.md
│
├── data/
│   └── base.xlsx
│
└── dashboard/
    └── dashboard_xbox.xlsx
```

---

## Ferramentas utilizadas

| Ferramenta | Uso |
|---|---|
| Microsoft Excel | Construção do dashboard |
| Excel Online | Edição e tratamento da planilha |
| Fórmulas Excel | Cálculo dos indicadores |
| Gráficos Excel | Visualização dos dados |
| GitHub | Publicação do projeto |
| Markdown | Documentação do projeto |

---

## Conclusão

O dashboard criado permite visualizar de forma clara o desempenho das vendas de assinaturas Xbox.

A análise mostra que o plano **Ultimate** é o principal destaque financeiro, mesmo não sendo o plano com maior quantidade de assinantes. O plano **Core** possui maior volume de clientes, mas menor impacto no faturamento.

Também foi possível identificar que os add-ons têm grande relevância na composição da receita, com destaque para o **Minecraft Season Pass**. A taxa de renovação automática de **50,17%** indica uma oportunidade de crescimento em retenção e previsibilidade de receita.

Esse projeto demonstra como dados brutos podem ser transformados em informações visuais úteis para tomada de decisão.

---

## Autor

**Emanuel Cosmo**

Projeto desenvolvido para o desafio **Criando um Dashboard de Vendas do Xbox com Excel**.