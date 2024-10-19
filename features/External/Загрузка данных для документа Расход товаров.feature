﻿#language: ru
@ExportScenarios
@IgnoreONCIMainBuild
@tree

Функционал: Загрузка данных для документа Расход товаров

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка данных для документа Расход товаров
	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'    | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка' | '14'  | '+7(999)528-96-21' | 'techno@techno.ru' | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург'    | 'Лесная'   | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'     | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'   | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                | ''                                                                   | ''       | ''       | ''                | ''         | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'                | ''                                                                   | ''       | ''       | ''                | ''         | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"' | 'True'         |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'            |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc91039d7fd10b' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'     | '000000033' | 'VekoNT02'      | 'NT02'    | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc91090c861da5' | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style=" font-weight: bold;">Потребляемая мощность </span> - 2200 Вт</p>\n<p><span style=" font-weight: bold;">Максимальный  объем </span>- 0.5 л</p>\n<p><span style=" font-weight: bold;">Материал корпуса</span> - пластик</p>\n<p><span style=" font-weight: bold;">Материал ручки </span>- пластик</p>\n<p><span style=" font-weight: bold;">Цвет</span> - белый</p>\n<p><span style=" font-weight: bold;">Вес</span> - 0.9 кг</p>\n<p><span style=" font-weight: bold;">Страна-производитель</span> - КНР</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'     | '000000034' | 'Veko876N'      | '876N'    | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc9110bafbeebf' | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style="font-size: 12pt;">Пылесос Veko - 876N</span><span style="font-size: 12pt;"> с контейнером для пыли</span></p>\n<p><br></p>\n<p>Добротный пылесос для сухой уборки в помещениях. Качество, проверенное временем. В комплекте телескопическая ручка, насадка для пола и обивки мебели.<br></p>\n<p><br></p>\n<p><span style=" text-decoration: underline;">Характеристики</span><br></p>\n<p><span style=" font-weight: bold;">Потребляемая мощность - </span>1300 Вт.</p>\n<p><span style=" font-weight: bold;">Максимальная мощность всасывания -</span> 350 Вт.</p>\n<p><span style=" font-weight: bold;">Уровень шума -</span> 85 дБ.</p>\n<p><span style=" font-weight: bold;">HEPA-фильтр - </span>отсутствует.</p>\n<p><span style=" font-weight: bold;">Объем контейнера для пыли - </span>5 л.</p>\n<p><span style=" font-weight: bold;">Длина сетевого шнура -</span> 5 м.</p>\n<p><span style=" font-weight: bold;">Количество насадок </span>- 2.</p>\n<p><span style=" font-weight: bold;">Вес </span>- 9 кг.</p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb53' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000013' | 'Чайники'       | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000014' | 'Пылесосы'      | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'     | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc91090c861da5' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc91039d7fd10b' | '000000014' | 'VekoNT02'     | 'ValueStorage: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' | 'Чайник.jpg'   | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc9110bafbeebf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | '000000015' | 'Veko876N'     | 'ValueStorage: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' | 'Пылесос1.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=8788000c2981f73511ee2558d8b199b9' | 'False'           | '000000108' | '18.07.2023 13:57:13' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=8788000c2981f73511ee2558d8b199b9' | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc91039d7fd10b' | 7500   | 1            | 7500    |
		| 'e1cib/data/Документ.РасходТовара?ref=8788000c2981f73511ee2558d8b199b9' | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | 6000   | 1            | 6000    |