# 📈 VIEW `VENDAS_INTERNET` + Exportação para Excel  
**Visualização e atualização de dados de vendas online** com integração direta para Excel. Ideal para análise de desempenho comercial.  

---

## 🔍 **Visão Geral**  
View SQL que consolida dados de vendas da tabela `FactInternetSales` com:  
- **Detalhes de produtos** (categorias, subcategorias)  
- **Informações de clientes** (nome, gênero, país)  
- **Métricas financeiras** (custo, receita, quantidade)  

**Destaques**:  
✅ Filtro automático para o ano **2013**  
✅ Transação de exemplo para **atualização de estoque** (ProductKey 361)  
✅ Pronta para exportação 1-clique para Excel  

---

## 📊 **Estrutura da View**  
### Colunas Exportadas:  
| Nome no Excel          | Descrição                          | Origem no SQL               |  
|------------------------|------------------------------------|-----------------------------|  
| `Nº PEDIDO`            | ID único do pedido                | `FactInternetSales.SalesOrderNumber` |  
| `DATA DO PEDIDO`       | Data da compra                    | `FactInternetSales.OrderDate` |  
| `CATEGORIA DO PRODUTO` | Categoria (ex: Bikes, Clothing)   | `DimProductCategory.EnglishProductCategoryName` |  
| `NOME CLIENTE`         | Nome completo do cliente          | Concatenado: `DimCustomer.FirstName + ' ' + LastName` |  
| `SEXO`                 | Gênero (M/F)                      | `DimCustomer.Gender` |  
| `PAÍS`                 | País do cliente                   | `DimSalesTerritory.SalesTerritoryCountry` |  
| `QTD VENDIDA`          | Unidades vendidas                 | `FactInternetSales.OrderQuantity` |  
| `CUSTO VENDA`          | Custo total do produto            | `FactInternetSales.TotalProductCost` |  
| `RECEITA VENDA`        | Valor bruto da venda              | `FactInternetSales.SalesAmount` |  

---

## ⚙️ **Pré-requisitos**  
- **Banco de Dados**: SQL Server com tabelas do schema **AdventureWorksDW** (ou adapte os JOINs).  
- **Permissões**: `SELECT` nas tabelas relacionadas + `UPDATE` para a transação de exemplo.  

---

## Como usar
### Conectar ao Banco de Dados:
- Abra sua ferramenta de SQL Server e conecte-se ao banco de dados onde os dados estão armazenados.

### Executar a Consulta SQL:
- Utilize a consulta SQL fornecida (Query com integração e commit com Excel.sql) para extrair os dados desejados. O arquivo contém a query que pode ser executada diretamente no seu banco de dados.

### Exportar para Excel:
- Após executar a consulta, os dados podem ser exportados para um arquivo Excel diretamente pela ferramenta de SQL que você está utilizando. A maioria das ferramentas permite exportar o resultado de uma consulta para formatos como .xlsx.

### Abrir o Arquivo Excel:

- O arquivo gerado estará pronto para ser aberto no Excel, permitindo a visualização e manipulação dos dados extraídos.
<br><br>
![Demonstração do Projeto](img/Projeto%20Integração%20EXCEL%20e%20SQ.png
)
