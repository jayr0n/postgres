-- Ranqueamento
-- Agregação
-- Posição

-- A cláusula SELECT DISTINCT é utilizada para retornar apenas valores únicos nas colunas selecionadas.
SELECT DISTINCT
	employee_id,
  
  -- A função FIRST_VALUE retorna o primeiro valor de uma expressão para cada linha dentro de uma janela (window) especificada.
  -- A cláusula OVER define a janela e pode incluir uma PARTITION BY, que divide os resultados em partições baseadas em uma coluna específica.
  -- Neste caso, a janela é particionada pela coluna employee_id e ordenada pela coluna order_date.
  -- O resultado desta função é o primeiro valor de order_date dentro de cada partição.
	first_value(order_date) OVER (PARTITION BY employee_id ORDER BY order_date) AS first_date,
  
  -- Similar à explicação anterior, a função FIRST_VALUE é utilizada para obter o primeiro valor da coluna product_name dentro de cada partição.
	first_value(product_name) OVER (PARTITION BY employee_id ORDER BY order_date) AS first_product
FROM orders

-- As cláusulas INNER JOIN são utilizadas para combinar registros de duas ou mais tabelas com base em uma condição de junção.
-- Neste caso, estamos realizando duas INNER JOINs: uma para unir a tabela orders com a tabela order_details e outra para unir a tabela order_details com a tabela products.
INNER JOIN order_details ON
	orders.order_id = order_details.order_id
INNER JOIN products ON
	products.product_id = order_details.product_id;

	
