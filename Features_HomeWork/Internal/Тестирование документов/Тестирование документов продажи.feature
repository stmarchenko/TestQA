#language: ru

@tree
@Отчеты

Функционал: тестирование документа РасходТовара

Как Тестировщик я хочу
протестировать документ РасходТовара
чтобы проверить правильное заполнение, проведение и печатные формы

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	
Сценарий: _2001 подготовительный сценарий (тестирование документа расход товаров)
	Когда Экспорт основных данных
	Когда экспорт документов закупок
	Когда экспорт документов продаж
И я выполняю код встроенного языка на сервере	
		|'Документы.ПриходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000002").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.ПриходТовара.НайтиПоНомеру("000000003").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.РасходТовара.НайтиПоНомеру("000000001").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		
Сценарий: _2002 проверка, что документ не проведется при отсутствии товара на складе
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/ЖурналДокументов.ДокументыПродаж"
	И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	Когда открылось окно 'Контрагенты'	
	//И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'    |
		| '000000015' | 'Магазин "Обувь"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'		
	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'	
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку	
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '100,00'
	И в таблице "Товары" я завершаю редактирование строки		

	
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'	
	Когда открылось окно 'Продажа * от *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ФормаПровести'	
	Тогда появилось предупреждение, содержащее текст "Не удалось провести"
	И я нажимаю на кнопку с именем 'OK'
	И Я закрываю окно 'Продажа * от *'		
Сценарий: _2003 проверка, что документ проведется при наличии остатков на складе
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/ЖурналДокументов.ДокументыПродаж"
	Когда открылось окно 'Документы продаж'
	И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'
	Тогда открылось окно 'Продажа товара (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'	
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'    |
		| '000000015' | 'Магазин "Обувь"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Продажа товара (создание) *'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Босоножки'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 000,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Продажа * от *'
	И я нажимаю на кнопку с именем 'ФормаПровести'
Сценарий: _2004 проверка движений по регистру Взаиморасчеты с контрагентами
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	И таблица "Список" равна макету "Взаиморасчеты" по шаблону	
Сценарий: _2005 проверка движений по регистру Продажи
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	И таблица "Список" равна макету "Продажи" по шаблону
Сценарий: _2006 проверка движений по регистру Товарные запасы
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	И таблица "Список" равна макету "Запасы" по шаблону
Сценарий: _2007 проверка печатной формы Расходная товарная накладная
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда Табличный документ "SpreadsheetDocument" равен макету "РасходнаяНакладная" по шаблону
		
	//Тогда табличный документ "SpreadsheetDocument" равен:
	//	| 'Расход товара' | ''                                  | ''           | ''      |
	//	| ''              | ''                                  | ''           | ''      |
	//	| 'Номер'         | '000000005'                         | ''           | ''      |
	//	| 'Дата'          | '*'                                 | ''           | ''      |
	//	| 'Покупатель'    | 'Магазин "Обувь"'                   | ''           | ''      |
	//	| 'Склад'         | 'Малый'                             | ''           | ''      |
	//	| 'Сумма'         | '6 000 рублей (Шесть тысяч рублей)' | ''           | ''      |
	//	| ''              | ''                                  | ''           | ''      |
	//	| 'Товар'         | 'Цена'                              | 'Количество' | 'Сумма' |
	//	| 'Босоножки'     | '2 000'                             | '3'          | '6 000' |
	
	

		
	
	
		


		

	
		
		
	
		
			
	//
	
	
		
	