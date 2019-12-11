Feature: adicionar_item_ao_carrinho
	
	Scenario Outline: 

	Given o cliente acessa "http://localhost:8282" de listagem de produtos
	When chamar a funcionalidade de "adicionar_item_ao_carrinho_btn" 
	When aparece um alert confirmando a adição do item
	When o cliente acessa "http://localhost:8282/cliente/carrinho"
	Then é retornado a listagem com os itens que foram adicionados na linha "<linha>" e coluna "<coluna>" tem "<valor>"

	Examples:
		| nome | quantidade | categoria | linha | coluna | valor |
		| teclado | 1 | Informática | 1 | 2 | 20.00 | 
		| mouse | 1 | Informática | 2 | 2 | 10.00 |
		| monitor | 1 | Informática | 1 | 1 | 100.00 |
		| memória RAM 4GB | 2 | Informática | 1 | 1 | 200.00 |
