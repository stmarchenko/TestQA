﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
И я запоминаю текущее окно как "ЗаголовокОкнаПоступлениеТОваров"
И я вывожу значение переменной "ЗаголовокОкнаПоступлениеТОваров"
Когда открылось окно 'Поступление товаров и услуг * от *'
И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
Тогда открылось окно 'Движения документа'
И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
И я нажимаю на кнопку с именем 'GenerateReport'
И в табличном документе 'ResultTable' я перехожу к ячейке "R6C11"
Тогда табличный документ "ResultTable" равен:
	| '$ЗаголовокОкнаПоступлениеТОваров$' | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                    | ''                        | ''                                     | ''                  |
	| 'Движения документа по регистрам'                     | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                    | ''                        | ''                                     | ''                  |
	| 'Регистр  "R1001 Закупки"'                            | ''                   | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                    | ''                        | ''                                     | ''                  |
	| ''                                                    | 'Period'             | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                    | ''                        | ''                                     | 'Attributes'        |
	| ''                                                    | ''                   | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                              | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
	| ''                                                    | '22.07.2021 9:38:02' | '9'          | ''      | ''                  | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 2 от 22.07.2021 9:38:02' | 'Товар без характеристик' | '414cff43-632f-4b1e-b4e8-619473e3b3b6' | 'Да'                |
	| ''                                                    | '22.07.2021 9:38:02' | '9'          | '773,1' | '644,25'            | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 2 от 22.07.2021 9:38:02' | 'Товар без характеристик' | '414cff43-632f-4b1e-b4e8-619473e3b3b6' | 'Нет'               |
	| ''                                                    | '22.07.2021 9:38:02' | '9'          | '900'   | '750'               | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 2 от 22.07.2021 9:38:02' | 'Товар без характеристик' | '414cff43-632f-4b1e-b4e8-619473e3b3b6' | 'Нет'               |
	| ''                                                    | '22.07.2021 9:38:02' | '9'          | '900'   | '750'               | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 2 от 22.07.2021 9:38:02' | 'Товар без характеристик' | '414cff43-632f-4b1e-b4e8-619473e3b3b6' | 'Нет'               |
	| ''                                                    | '22.07.2021 9:38:02' | '9'          | '900'   | '750'               | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 2 от 22.07.2021 9:38:02' | 'Товар без характеристик' | '414cff43-632f-4b1e-b4e8-619473e3b3b6' | 'Нет'               |
Сценарий: Глобальные переменные
	И я закрываю все окна клиентского приложения
	И я удаляю переменную '$$СсылкаТоварБезХарактеристик$$'	 
	И я сохраняю навигационную ссылку текущего окна в переменную "$$СсылкаТоварБезХарактеристик$$"
	И Я открываю навигационную ссылку "$$СсылкаТоварБезХарактеристик$$"
	




