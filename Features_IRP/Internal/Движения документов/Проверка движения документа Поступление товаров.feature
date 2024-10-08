﻿#language: ru

@tree
@ДвиженияДокументов

Функционал: проверка движения документа Поступление товаров

Как Тестировщик я хочу
проверить движения документа Поступления товаров 
чтобы убедиться, что документ делает движения по нужным регистрам    

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0501 подготовительный сценарий (движения документа Поступление товаров)
	Когда экспорт основных данных
	Когда загрузка документа Поступление товаров и услуг
	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.PurchaseInvoice.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""
Сценарий: _0502 проверка движений документа Поступление товаров по регистру R1001 закупки
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		|'Номер'|
		|'1 001'|
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Да'                |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Да'                |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
	
	И я закрываю все окна клиентского приложения

Сценарий: _0503 проверка движений документа Поступление товаров по регистру R1021 Взаиморасчеты с поставщиками
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице "List" я перехожу к строке
		|'Номер'|
		|'1 001'|
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Да'                |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Услуга'                  | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Да'                |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		| ''                                                         | '10.03.2023 11:52:39' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 10.03.2023 11:52:39' | 'Товар без характеристик' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'Нет'               |
		И я закрываю все окна клиентского приложения
