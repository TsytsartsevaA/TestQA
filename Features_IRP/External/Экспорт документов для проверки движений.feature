﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт документов для проверки движений

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: загрузка документа Поступление товаров и услуг

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | 'False'        | 1001     | '10.03.2023 11:52:39' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=94c918c04dd3055d11edbf187f99fcd5' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | 'afbf58d6-a134-437d-a910-c57949622e08' | 'afbf58d6-a134-437d-a910-c57949622e08' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=94c918c04dd3055d11edbf187f99fcd6' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=94c918c04dd3055d11edbf187f99fcd8' | '0aaaab58-c989-4db8-b6f3-5e069f002836' | '0aaaab58-c989-4db8-b6f3-5e069f002836' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=94c918c04dd3055d11edbf187f99fcd7' | ''         |


