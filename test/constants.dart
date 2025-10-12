const countriesList = [
  'AD',
  'AE',
  'AF',
  'AG',
  'AI',
  'AL',
  'AM',
  'AO',
  'AQ',
  'AR',
  'AS',
  'AT',
  'AU',
  'AW',
  'AX',
  'AZ',
  'BA',
  'BB',
  'BD',
  'BE',
  'BF',
  'BG',
  'BH',
  'BI',
  'BJ',
  'BL',
  'BM',
  'BN',
  'BO',
  'BQ',
  'BR',
  'BS',
  'BT',
  'BV',
  'BW',
  'BY',
  'BZ',
  'CA',
  'CC',
  'CD',
  'CF',
  'CG',
  'CH',
  'CI',
  'CK',
  'CL',
  'CM',
  'CN',
  'CO',
  'CR',
  'CU',
  'CV',
  'CW',
  'CX',
  'CY',
  'CZ',
  'DE',
  'DJ',
  'DK',
  'DM',
  'DO',
  'DZ',
  'EC',
  'EE',
  'EG',
  'EH',
  'ER',
  'ES',
  'ET',
  'FI',
  'FJ',
  'FK',
  'FM',
  'FO',
  'FR',
  'GA',
  'GB',
  'GD',
  'GE',
  'GF',
  'GG',
  'GH',
  'GI',
  'GL',
  'GM',
  'GN',
  'GP',
  'GQ',
  'GR',
  'GS',
  'GT',
  'GU',
  'GW',
  'GY',
  'HK',
  'HM',
  'HN',
  'HR',
  'HT',
  'HU',
  'ID',
  'IE',
  'IL',
  'IM',
  'IN',
  'IO',
  'IQ',
  'IR',
  'IS',
  'IT',
  'JE',
  'JM',
  'JO',
  'JP',
  'KE',
  'KG',
  'KH',
  'KI',
  'KM',
  'KN',
  'KP',
  'KR',
  'KW',
  'KY',
  'KZ',
  'LA',
  'LB',
  'LC',
  'LI',
  'LK',
  'LR',
  'LS',
  'LT',
  'LU',
  'LV',
  'LY',
  'MA',
  'MC',
  'MD',
  'ME',
  'MF',
  'MG',
  'MH',
  'MK',
  'ML',
  'MM',
  'MN',
  'MO',
  'MP',
  'MQ',
  'MR',
  'MS',
  'MT',
  'MU',
  'MV',
  'MW',
  'MX',
  'MY',
  'MZ',
  'NA',
  'NC',
  'NE',
  'NF',
  'NG',
  'NI',
  'NL',
  'NO',
  'NP',
  'NR',
  'NU',
  'NZ',
  'OM',
  'PA',
  'PE',
  'PF',
  'PG',
  'PH',
  'PK',
  'PL',
  'PM',
  'PN',
  'PR',
  'PS',
  'PT',
  'PW',
  'PY',
  'QA',
  'RE',
  'RO',
  'RS',
  'RU',
  'RW',
  'SA',
  'SB',
  'SC',
  'SD',
  'SE',
  'SG',
  'SH',
  'SI',
  'SJ',
  'SK',
  'SL',
  'SM',
  'SN',
  'SO',
  'SR',
  'SS',
  'ST',
  'SV',
  'SX',
  'SY',
  'SZ',
  'TC',
  'TD',
  'TF',
  'TG',
  'TH',
  'TJ',
  'TK',
  'TL',
  'TM',
  'TN',
  'TO',
  'TR',
  'TT',
  'TV',
  'TZ',
  'UA',
  'UG',
  'UM',
  'US',
  'UY',
  'UZ',
  'VA',
  'VC',
  'VE',
  'VG',
  'VI',
  'VN',
  'VU',
  'WF',
  'WS',
  'YE',
  'YT',
  'ZA',
  'ZM',
  'ZW',
];

const threeLetterCountriesList = [
  'AFG',
  'ALA',
  'ALB',
  'DZA',
  'ASM',
  'AND',
  'AGO',
  'AIA',
  'ATA',
  'ATG',
  'ARG',
  'ARM',
  'ABW',
  'AUS',
  'AUT',
  'AZE',
  'BHS',
  'BHR',
  'BGD',
  'BRB',
  'BLR',
  'BEL',
  'BLZ',
  'BEN',
  'BMU',
  'BTN',
  'BOL',
  'BES',
  'BIH',
  'BWA',
  'BVT',
  'BRA',
  'IOT',
  'BRN',
  'BGR',
  'BFA',
  'BDI',
  'CPV',
  'KHM',
  'CMR',
  'CAN',
  'CYM',
  'CAF',
  'TCD',
  'CHL',
  'CHN',
  'CXR',
  'CCK',
  'COL',
  'COM',
  'COG',
  'COD',
  'COK',
  'CRI',
  'CIV',
  'HRV',
  'CUB',
  'CUW',
  'CYP',
  'CZE',
  'DNK',
  'DJI',
  'DMA',
  'DOM',
  'ECU',
  'EGY',
  'SLV',
  'GNQ',
  'ERI',
  'EST',
  'SWZ',
  'ETH',
  'FLK',
  'FRO',
  'FJI',
  'FIN',
  'FRA',
  'GUF',
  'PYF',
  'ATF',
  'GAB',
  'GMB',
  'GEO',
  'DEU',
  'GHA',
  'GIB',
  'GRC',
  'GRL',
  'GRD',
  'GLP',
  'GUM',
  'GTM',
  'GGY',
  'GIN',
  'GNB',
  'GUY',
  'HTI',
  'HMD',
  'VAT',
  'HND',
  'HKG',
  'HUN',
  'ISL',
  'IND',
  'IDN',
  'IRN',
  'IRQ',
  'IRL',
  'IMN',
  'ISR',
  'ITA',
  'JAM',
  'JPN',
  'JEY',
  'JOR',
  'KAZ',
  'KEN',
  'KIR',
  'PRK',
  'KOR',
  'KWT',
  'KGZ',
  'LAO',
  'LVA',
  'LBN',
  'LSO',
  'LBR',
  'LBY',
  'LIE',
  'LTU',
  'LUX',
  'MAC',
  'MDG',
  'MWI',
  'MYS',
  'MDV',
  'MLI',
  'MLT',
  'MHL',
  'MTQ',
  'MRT',
  'MUS',
  'MYT',
  'MEX',
  'FSM',
  'MDA',
  'MCO',
  'MNG',
  'MNE',
  'MSR',
  'MAR',
  'MOZ',
  'MMR',
  'NAM',
  'NRU',
  'NPL',
  'NLD',
  'NCL',
  'NZL',
  'NIC',
  'NER',
  'NGA',
  'NIU',
  'NFK',
  'MNP',
  'NOR',
  'OMN',
  'PAK',
  'PLW',
  'PSE',
  'PAN',
  'PNG',
  'PRY',
  'PER',
  'PHL',
  'PCN',
  'POL',
  'PRT',
  'PRI',
  'QAT',
  'MKD',
  'ROU',
  'RUS',
  'RWA',
  'REU',
  'BLM',
  'SHN',
  'KNA',
  'LCA',
  'MAF',
  'SPM',
  'VCT',
  'WSM',
  'SMR',
  'STP',
  'SAU',
  'SEN',
  'SRB',
  'SYC',
  'SLE',
  'SGP',
  'SXM',
  'SVK',
  'SVN',
  'SLB',
  'SOM',
  'ZAF',
  'SGS',
  'SSD',
  'ESP',
  'LKA',
  'SDN',
  'SUR',
  'SJM',
  'SWE',
  'CHE',
  'SYR',
  'TWN',
  'TJK',
  'TZA',
  'THA',
  'TLS',
  'TGO',
  'TKL',
  'TON',
  'TTO',
  'TUN',
  'TUR',
  'TKM',
  'TCA',
  'TUV',
  'UGA',
  'UKR',
  'ARE',
  'GBR',
  'USA',
  'UMI',
  'URY',
  'UZB',
  'VUT',
  'VEN',
  'VNM',
  'VGB',
  'VIR',
  'WLF',
  'ESH',
  'YEM',
  'ZMB',
  'ZWE',
];

const languageCodes = [
  'aa', // Afar
  'ab', // Abkhazian
  'ae', // Avestan
  'af', // Afrikaans
  'ak', // Akan
  'am', // Amharic
  'an', // Aragonese
  'ar', // Arabic
  'as', // Assamese
  'av', // Avaric
  'ay', // Aymara
  'az', // Azerbaijani
  'ba', // Bashkir
  'be', // Belarusian
  'bg', // Bulgarian
  'bh', // Bihari languages
  'bi', // Bislama
  'bm', // Bambara
  'bn', // Bengali
  'bo', // Tibetan
  'br', // Breton
  'bs', // Bosnian
  'ca', // Catalan
  'ce', // Chechen
  'ch', // Chamorro
  'co', // Corsican
  'cr', // Cree
  'cs', // Czech
  'cu', // Church Slavic
  'cv', // Chuvash
  'cy', // Welsh
  'da', // Danish
  'de', // German
  'dv', // Divehi
  'dz', // Dzongkha
  'ee', // Ewe
  'el', // Greek
  'en', // English
  'eo', // Esperanto
  'es', // Spanish
  'et', // Estonian
  'eu', // Basque
  'fa', // Persian
  'ff', // Fulah
  'fi', // Finnish
  'fj', // Fijian
  'fo', // Faroese
  'fr', // French
  'fy', // Western Frisian
  'ga', // Irish
  'gd', // Scottish Gaelic
  'gl', // Galician
  'gn', // Guarani
  'gu', // Gujarati
  'gv', // Manx
  'ha', // Hausa
  'he', // Hebrew
  'hi', // Hindi
  'ho', // Hiri Motu
  'hr', // Croatian
  'ht', // Haitian Creole
  'hu', // Hungarian
  'hy', // Armenian
  'hz', // Herero
  'ia', // Interlingua
  'id', // Indonesian
  'ie', // Interlingue
  'ig', // Igbo
  'ii', // Sichuan Yi
  'ik', // Inupiaq
  'io', // Ido
  'is', // Icelandic
  'it', // Italian
  'iu', // Inuktitut
  'ja', // Japanese
  'jv', // Javanese
  'ka', // Georgian
  'kg', // Kongo
  'ki', // Kikuyu
  'kj', // Kuanyama
  'kk', // Kazakh
  'kl', // Kalaallisut
  'km', // Khmer
  'kn', // Kannada
  'ko', // Korean
  'kr', // Kanuri
  'ks', // Kashmiri
  'ku', // Kurdish
  'kv', // Komi
  'kw', // Cornish
  'ky', // Kirghiz
  'la', // Latin
  'lb', // Luxembourgish
  'lg', // Ganda
  'li', // Limburgan
  'ln', // Lingala
  'lo', // Lao
  'lt', // Lithuanian
  'lu', // Luba-Katanga
  'lv', // Latvian
  'mg', // Malagasy
  'mh', // Marshallese
  'mi', // Māori
  'mk', // Macedonian
  'ml', // Malayalam
  'mn', // Mongolian
  'mr', // Marathi
  'ms', // Malay
  'mt', // Maltese
  'my', // Burmese
  'na', // Nauru
  'nb', // Norwegian Bokmål
  'nd', // North Ndebele
  'ne', // Nepali
  'ng', // Ndonga
  'nl', // Dutch
  'nn', // Norwegian Nynorsk
  'no', // Norwegian
  'nr', // South Ndebele
  'nv', // Navajo
  'ny', // Chichewa
  'oc', // Occitan
  'oj', // Ojibwa
  'om', // Oromo
  'or', // Oriya
  'os', // Ossetian
  'pa', // Punjabi
  'pi', // Pali
  'pl', // Polish
  'ps', // Pashto
  'pt', // Portuguese
  'qu', // Quechua
  'rm', // Romansh
  'rn', // Rundi
  'ro', // Romanian
  'ru', // Russian
  'rw', // Kinyarwanda
  'sa', // Sanskrit
  'sc', // Sardinian
  'sd', // Sindhi
  'se', // Northern Sami
  'sg', // Sango
  'si', // Sinhala
  'sk', // Slovak
  'sl', // Slovenian
  'sm', // Samoan
  'sn', // Shona
  'so', // Somali
  'sq', // Albanian
  'sr', // Serbian
  'ss', // Swati
  'st', // Southern Sotho
  'su', // Sundanese
  'sv', // Swedish
  'sw', // Swahili
  'ta', // Tamil
  'te', // Telugu
  'tg', // Tajik
  'th', // Thai
  'ti', // Tigrinya
  'tk', // Turkmen
  'tl', // Tagalog
  'tn', // Tswana
  'to', // Tonga
  'tr', // Turkish
  'ts', // Tsonga
  'tt', // Tatar
  'tw', // Twi
  'ty', // Tahitian
  'ug', // Uighur
  'uk', // Ukrainian
  'ur', // Urdu
  'uz', // Uzbek
  've', // Venda
  'vi', // Vietnamese
  'vo', // Volapük
  'wa', // Walloon
  'wo', // Wolof
  'xh', // Xhosa
  'yi', // Yiddish
  'yo', // Yoruba
  'za', // Zhuang
  'zh', // Chinese
  'zu', // Zulu
];

const currencyCodes = [
  'AED', // UAE Dirham
  'AFN', // Afghani
  'ALL', // Lek
  'AMD', // Armenian Dram
  'ANG', // Netherlands Antillean Guilder
  'AOA', // Kwanza
  'ARS', // Argentine Peso
  'AUD', // Australian Dollar
  'AWG', // Aruban Florin
  'AZN', // Azerbaijan Manat
  'BAM', // Convertible Mark
  'BBD', // Barbados Dollar
  'BDT', // Taka
  'BGN', // Bulgarian Lev
  'BHD', // Bahraini Dinar
  'BIF', // Burundi Franc
  'BMD', // Bermudian Dollar
  'BND', // Brunei Dollar
  'BOB', // Boliviano
  'BOV', // Mvdol (funds code)
  'BRL', // Brazilian Real
  'BSD', // Bahamian Dollar
  'BTN', // Ngultrum
  'BWP', // Pula
  'BYN', // Belarusian Ruble
  'BZD', // Belize Dollar
  'CAD', // Canadian Dollar
  'CDF', // Congolese Franc
  'CHE', // WIR Euro (funds code)
  'CHF', // Swiss Franc
  'CHW', // WIR Franc (funds code)
  'CLF', // Unidad de Fomento (funds code)
  'CLP', // Chilean Peso
  'CNY', // Yuan Renminbi
  'COP', // Colombian Peso
  'COU', // Unidad de Valor Real (funds code)
  'CRC', // Costa Rican Colon
  'CUC', // Peso Convertible
  'CUP', // Cuban Peso
  'CVE', // Cabo Verde Escudo
  'CZK', // Czech Koruna
  'DJF', // Djibouti Franc
  'DKK', // Danish Krone
  'DOP', // Dominican Peso
  'DZD', // Algerian Dinar
  'EGP', // Egyptian Pound
  'ERN', // Nakfa
  'ETB', // Ethiopian Birr
  'EUR', // Euro
  'FJD', // Fiji Dollar
  'FKP', // Falkland Islands Pound
  'GBP', // Pound Sterling
  'GEL', // Lari
  'GHS', // Ghana Cedi
  'GIP', // Gibraltar Pound
  'GMD', // Dalasi
  'GNF', // Guinean Franc
  'GTQ', // Quetzal
  'GYD', // Guyana Dollar
  'HKD', // Hong Kong Dollar
  'HNL', // Lempira
  'HTG', // Gourde
  'HUF', // Forint
  'IDR', // Rupiah
  'ILS', // New Israeli Sheqel
  'INR', // Indian Rupee
  'IQD', // Iraqi Dinar
  'IRR', // Iranian Rial
  'ISK', // Iceland Krona
  'JMD', // Jamaican Dollar
  'JOD', // Jordanian Dinar
  'JPY', // Yen
  'KES', // Kenyan Shilling
  'KGS', // Som
  'KHR', // Riel
  'KMF', // Comorian Franc
  'KPW', // North Korean Won
  'KRW', // Won
  'KWD', // Kuwaiti Dinar
  'KYD', // Cayman Islands Dollar
  'KZT', // Tenge
  'LAK', // Lao Kip
  'LBP', // Lebanese Pound
  'LKR', // Sri Lanka Rupee
  'LRD', // Liberian Dollar
  'LSL', // Loti
  'LYD', // Libyan Dinar
  'MAD', // Moroccan Dirham
  'MDL', // Moldovan Leu
  'MGA', // Malagasy Ariary
  'MKD', // Denar
  'MMK', // Kyat
  'MNT', // Tugrik
  'MOP', // Pataca
  'MRU', // Ouguiya
  'MUR', // Mauritius Rupee
  'MVR', // Rufiyaa
  'MWK', // Malawi Kwacha
  'MXN', // Mexican Peso
  'MXV', // Mexican Unidad de Inversion (funds code)
  'MYR', // Malaysian Ringgit
  'MZN', // Mozambique Metical
  'NAD', // Namibia Dollar
  'NGN', // Naira
  'NIO', // Cordoba Oro
  'NOK', // Norwegian Krone
  'NPR', // Nepalese Rupee
  'NZD', // New Zealand Dollar
  'OMR', // Rial Omani
  'PAB', // Balboa
  'PEN', // Sol
  'PGK', // Kina
  'PHP', // Philippine Peso
  'PKR', // Pakistan Rupee
  'PLN', // Zloty
  'PYG', // Guarani
  'QAR', // Qatari Rial
  'RON', // Romanian Leu
  'RSD', // Serbian Dinar
  'RUB', // Russian Ruble
  'RWF', // Rwanda Franc
  'SAR', // Saudi Riyal
  'SBD', // Solomon Islands Dollar
  'SCR', // Seychelles Rupee
  'SDG', // Sudanese Pound
  'SEK', // Swedish Krona
  'SGD', // Singapore Dollar
  'SHP', // Saint Helena Pound
  'SLL', // Leone
  'SOS', // Somali Shilling
  'SRD', // Surinam Dollar
  'SSP', // South Sudanese Pound
  'STN', // Dobra
  'SVC', // El Salvador Colon
  'SYP', // Syrian Pound
  'SZL', // Lilangeni
  'THB', // Baht
  'TJS', // Somoni
  'TMT', // Turkmenistan New Manat
  'TND', // Tunisian Dinar
  'TOP', // Pa’anga
  'TRY', // Turkish Lira
  'TTD', // Trinidad and Tobago Dollar
  'TWD', // New Taiwan Dollar
  'TZS', // Tanzanian Shilling
  'UAH', // Hryvnia
  'UGX', // Uganda Shilling
  'USD', // US Dollar
  'USN', // US Dollar (Next day) (funds code)
  'UYI', // Uruguay Peso en Unidades Indexadas (funds code)
  'UYU', // Peso Uruguayo
  'UYW', // Unidad Previsional
  'UZS', // Uzbekistan Sum
  'VED', // Bolívar Soberano (Venezuela, digital)
  'VES', // Bolívar Soberano (Venezuela)
  'VND', // Dong
  'VUV', // Vatu
  'WST', // Tala
  'XAF', // CFA Franc BEAC
  'XAG', // Silver (one troy ounce, precious metals)
  'XAU', // Gold (one troy ounce, precious metals)
  'XBA', // Bond Markets Unit European Composite Unit (EURCO)
  'XBB', // Bond Markets Unit European Monetary Unit (E.M.U.-6)
  'XBC', // Bond Markets Unit European Unit of Account 9 (E.U.A.-9)
  'XBD', // Bond Markets Unit European Unit of Account 17 (E.U.A.-17)
  'XCD', // East Caribbean Dollar
  'XDR', // SDR (Special Drawing Right, IMF)
  'XOF', // CFA Franc BCEAO
  'XPD', // Palladium
  'XPF', // CFP Franc
  'XPT', // Platinum
  'XSU', // Sucre
  'XTS', // Codes specifically reserved for testing
  'XUA', // ADB Unit of Account
  'XXX', // No currency
  'YER', // Yemeni Rial
  'ZAR', // Rand
  'ZMW', // Zambian Kwacha
  'ZWL', // Zimbabwe Dollar
];
