import 'package:collection/collection.dart';

/// {@template flag_code}
/// A class that provides a mapping between flag codes, country codes and
/// language codes.
/// {@endtemplate}
class FlagCode {
  /// ISO 3166 Country Codes.
  static const Map<String, String> _flagCodesCountries = {
    'ad': 'AD',

    /// Andorra
    'ae': 'AE',

    /// United Arab Emirates
    'af': 'AF',

    /// Afghanistan
    'ag': 'AG',

    /// Antigua and Barbuda
    'ai': 'AI',

    /// Anguilla
    'al': 'AL',

    /// Albania
    'am': 'AM',

    /// Armenia
    'ao': 'AO',

    /// Angola
    'aq': 'AQ',

    /// Antarctica
    'ar': 'AR',

    /// Argentina
    'as': 'AS',

    /// American Samoa
    'at': 'AT',

    /// Austria
    'au': 'AU',

    /// Australia
    'aw': 'AW',

    /// Aruba
    'ax': 'AX',

    /// Åland Islands
    'az': 'AZ',

    /// Azerbaijan
    'ba': 'BA',

    /// Bosnia and Herzegovina
    'bb': 'BB',

    /// Barbados
    'bd': 'BD',

    /// Bangladesh
    'be': 'BE',

    /// Belgium
    'bf': 'BF',

    /// Burkina Faso
    'bg': 'BG',

    /// Bulgaria
    'bh': 'BH',

    /// Bahrain
    'bi': 'BI',

    /// Burundi
    'bj': 'BJ',

    /// Benin
    'bl': 'BL',

    /// Saint Barthélemy
    'bm': 'BM',

    /// Bermuda
    'bn': 'BN',

    /// Brunei Darussalam
    'bo': 'BO',

    /// Bolivia
    'bq': 'BQ',

    /// Bonaire, Sint Eustatius and Saba
    'br': 'BR',

    /// Brazil
    'bs': 'BS',

    /// Bahamas
    'bt': 'BT',

    /// Bhutan
    'bv': 'BV',

    /// Bouvet Island
    'bw': 'BW',

    /// Botswana
    'by': 'BY',

    /// Belarus
    'bz': 'BZ',

    /// Belize
    'ca': 'CA',

    /// Canada
    'cc': 'CC',

    /// Cocos (Keeling) Islands
    'cd': 'CD',

    /// Congo, Democratic Republic of the
    'cefta': 'CEFTA',

    /// Central European Free Trade Agreement
    'cf': 'CF',

    /// Central African Republic
    'cg': 'CG',

    /// Congo
    'ch': 'CH',

    /// Switzerland
    'ci': 'CI',

    /// Côte d'Ivoire
    'ck': 'CK',

    /// Cook Islands
    'cl': 'CL',

    /// Chile
    'cm': 'CM',

    /// Cameroon
    'cn': 'CN',

    /// China
    'cp': 'CP',

    /// Clipperton Island
    'co': 'CO',

    /// Colombia
    'cr': 'CR',

    /// Costa Rica
    'cu': 'CU',

    /// Cuba
    'cv': 'CV',

    /// Cape Verde
    'cw': 'CW',

    /// Curaçao
    'cx': 'CX',

    /// Christmas Island
    'cy': 'CY',

    /// Cyprus
    'cz': 'CZ',

    /// Czech Republic
    'de': 'DE',

    /// Germany
    'dg': 'DG',

    /// Diego Garcia
    'dj': 'DJ',

    /// Djibouti
    'dk': 'DK',

    /// Denmark
    'dm': 'DM',

    /// Dominica
    'do': 'DO',

    /// Dominican Republic
    'dz': 'DZ',

    /// Algeria
    'ec': 'EC',

    /// Ecuador
    'ee': 'EE',

    /// Estonia
    'eg': 'EG',

    /// Egypt
    'eh': 'EH',

    /// Western Sahara
    'er': 'ER',

    /// Eritrea
    'es': 'ES',

    /// Spain
    'ea': 'ES-EA',

    /// Ceuta and Melilla
    'es-ct': 'ES-CT',

    /// Catalonia
    'es-ga': 'ES-GA',

    /// Galicia
    'et': 'ET',

    /// Ethiopia
    'eu': 'EU',

    /// Europe
    'fi': 'FI',

    /// Finland
    'fj': 'FJ',

    /// Fiji
    'fk': 'FK',

    /// Falkland Islands (Malvinas)
    'fm': 'FM',

    /// Micronesia, Federated States of
    'fo': 'FO',

    /// Faroe Islands
    'fr': 'FR',

    /// France
    'ga': 'GA',

    /// Gabon
    'gb': 'GB',

    /// United Kingdom
    'gb-eng': 'GB-ENG',

    /// England
    'gb-nir': 'GB-NIR',

    /// Northern Ireland
    'gb-sct': 'GB-SCT',

    /// Scotland
    'gb-wls': 'GB-WLS',

    /// Wales
    'gd': 'GD',

    /// Grenada
    'ge': 'GE',

    /// Georgia
    'gf': 'GF',

    /// French Guiana
    'gg': 'GG',

    /// Guernsey
    'gh': 'GH',

    /// Ghana
    'gi': 'GI',

    /// Gibraltar
    'gl': 'GL',

    /// Greenland
    'gm': 'GM',

    /// Gambia
    'gn': 'GN',

    /// Guinea
    'gp': 'GP',

    /// Guadeloupe
    'gq': 'GQ',

    /// Equatorial Guinea
    'gr': 'GR',

    /// Greece
    'gs': 'GS',

    /// South Georgia and the South Sandwich Islands
    'gt': 'GT',

    /// Guatemala
    'gu': 'GU',

    /// Guam
    'gw': 'GW',

    /// Guinea-Bissau
    'gy': 'GY',

    /// Guyana
    'hk': 'HK',

    /// Hong Kong
    'hm': 'HM',

    /// Heard Island and McDonald Islands
    'hn': 'HN',

    /// Honduras
    'hr': 'HR',

    /// Croatia
    'ht': 'HT',

    /// Haiti
    'hu': 'HU',

    /// Hungary
    'ic': 'ES-IC',

    /// Canary Islands
    'id': 'ID',

    /// Indonesia
    'ie': 'IE',

    /// Ireland
    'il': 'IL',

    /// Israel
    'im': 'IM',

    /// Isle of Man
    'in': 'IN',

    /// India
    'io': 'IO',

    /// British Indian Ocean Territory
    'iq': 'IQ',

    /// Iraq
    'ir': 'IR',

    /// Iran, Islamic Republic of
    'is': 'IS',

    /// Iceland
    'it': 'IT',

    /// Italy
    'je': 'JE',

    /// Jersey
    'jm': 'JM',

    /// Jamaica
    'jo': 'JO',

    /// Jordan
    'jp': 'JP',

    /// Japan
    'ke': 'KE',

    /// Kenya
    'kg': 'KG',

    /// Kyrgyzstan
    'kh': 'KH',

    /// Cambodia
    'ki': 'KI',

    /// Kiribati
    'km': 'KM',

    /// Comoros
    'kn': 'KN',

    /// Saint Kitts and Nevis
    'kp': 'KP',

    /// Korea, Democratic People's Republic of
    'kr': 'KR',

    /// Korea, Republic of
    'kw': 'KW',

    /// Kuwait
    'ky': 'KY',

    /// Cayman Islands
    'kz': 'KZ',

    /// Kazakhstan
    'la': 'LA',

    /// Lao People's Democratic Republic
    'lb': 'LB',

    /// Lebanon
    'lc': 'LC',

    /// Saint Lucia
    'li': 'LI',

    /// Liechtenstein
    'lk': 'LK',

    /// Sri Lanka
    'lr': 'LR',

    /// Liberia
    'ls': 'LS',

    /// Lesotho
    'lt': 'LT',

    /// Lithuania
    'lu': 'LU',

    /// Luxembourg
    'lv': 'LV',

    /// Latvia
    'ly': 'LY',

    /// Libya
    'ma': 'MA',

    /// Morocco
    'mc': 'MC',

    /// Monaco
    'md': 'MD',

    /// Moldova, Republic of
    'me': 'ME',

    /// Montenegro
    'mf': 'MF',

    /// Saint Martin (French part)
    'mg': 'MG',

    /// Madagascar
    'mh': 'MH',

    /// Marshall Islands
    'mk': 'MK',

    /// North Macedonia
    'ml': 'ML',

    /// Mali
    'mm': 'MM',

    /// Myanmar
    'mn': 'MN',

    /// Mongolia
    'mo': 'MO',

    /// Macao
    'mp': 'MP',

    /// Northern Mariana Islands
    'mq': 'MQ',

    /// Martinique
    'mr': 'MR',

    /// Mauritania
    'ms': 'MS',

    /// Montserrat
    'mt': 'MT',

    /// Malta
    'mu': 'MU',

    /// Mauritius
    'mv': 'MV',

    /// Maldives
    'mw': 'MW',

    /// Malawi
    'mx': 'MX',

    /// Mexico
    'my': 'MY',

    /// Malaysia
    'mz': 'MZ',

    /// Mozambique
    'na': 'NA',

    /// Namibia
    'nc': 'NC',

    /// New Caledonia
    'ne': 'NE',

    /// Niger
    'nf': 'NF',

    /// Norfolk Island
    'ng': 'NG',

    /// Nigeria
    'ni': 'NI',

    /// Nicaragua
    'nl': 'NL',

    /// Netherlands
    'no': 'NO',

    /// Norway
    'np': 'NP',

    /// Nepal
    'nr': 'NR',

    /// Nauru
    'nu': 'NU',

    /// Niue
    'nz': 'NZ',

    /// New Zealand
    'om': 'OM',

    /// Oman
    'pa': 'PA',

    /// Panama
    'pe': 'PE',

    /// Peru
    'pf': 'PF',

    /// French Polynesia
    'pg': 'PG',

    /// Papua New Guinea
    'ph': 'PH',

    /// Philippines
    'pk': 'PK',

    /// Pakistan
    'pl': 'PL',

    /// Poland
    'pm': 'PM',

    /// Saint Pierre and Miquelon
    'pn': 'PN',

    /// Pitcairn
    'pr': 'PR',

    /// Puerto Rico
    'ps': 'PS',

    /// Palestine, State of
    'pt': 'PT',

    /// Portugal
    'pw': 'PW',

    /// Palau
    'py': 'PY',

    /// Paraguay
    'qa': 'QA',

    /// Qatar
    're': 'RE',

    /// Réunion
    'ro': 'RO',

    /// Romania
    'rs': 'RS',

    /// Serbia
    'ru': 'RU',

    /// Russian Federation
    'rw': 'RW',

    /// Rwanda
    'sa': 'SA',

    /// Saudi Arabia
    'sb': 'SB',

    /// Solomon Islands
    'sc': 'SC',

    /// Seychelles
    'sd': 'SD',

    /// Sudan
    'se': 'SE',

    /// Sweden
    'sg': 'SG',

    /// Singapore
    'sh': 'SH',

    /// Saint Helena, Ascension and Tristan da Cunha
    'ac': 'SH-AC',

    /// Ascension Island
    'ta': 'SH-TA',

    /// Tristan da Cunha
    'si': 'SI',

    /// Slovenia
    'sj': 'SJ',

    /// Svalbard and Jan Mayen
    'sk': 'SK',

    /// Slovakia
    'sl': 'SL',

    /// Sierra Leone
    'sm': 'SM',

    /// San Marino
    'sn': 'SN',

    /// Senegal
    'so': 'SO',

    /// Somalia
    'sr': 'SR',

    /// Suriname
    'ss': 'SS',

    /// South Sudan
    'st': 'ST',

    /// Sao Tome and Principe
    'sv': 'SV',

    /// El Salvador
    'sx': 'SX',

    /// Sint Maarten (Dutch part)
    'sy': 'SY',

    /// Syrian Arab Republic
    'sz': 'SZ',

    /// Eswatini
    'tc': 'TC',

    /// Turks and Caicos Islands
    'td': 'TD',

    /// Chad
    'tf': 'TF',

    /// French Southern Territories
    'tg': 'TG',

    /// Togo
    'th': 'TH',

    /// Thailand
    'tj': 'TJ',

    /// Tajikistan
    'tk': 'TK',

    /// Tokelau
    'tl': 'TL',

    /// Timor-Leste
    'tm': 'TM',

    /// Turkmenistan
    'tn': 'TN',

    /// Tunisia
    'to': 'TO',

    /// Tonga
    'tr': 'TR',

    /// Turkey
    'tt': 'TT',

    /// Trinidad and Tobago
    'tv': 'TV',

    /// Tuvalu
    'tw': 'TW',

    /// Taiwan, Province of China
    'tz': 'TZ',

    /// Tanzania, United Republic of
    'ua': 'UA',

    /// Ukraine
    'ug': 'UG',

    /// Uganda
    'um': 'UM',

    /// United States Minor Outlying Islands
    'un': 'UN',

    /// United Nations
    'us': 'US',

    /// United States
    'uy': 'UY',

    /// Uruguay
    'uz': 'UZ',

    /// Uzbekistan
    'va': 'VA',

    /// Vatican City
    'vc': 'VC',

    /// Saint Vincent and the Grenadines
    've': 'VE',

    /// Venezuela
    'vg': 'VG',

    /// British Virgin Islands
    'vi': 'VI',

    /// U.S. Virgin Islands
    'vn': 'VN',

    /// Vietnam
    'vu': 'VU',

    /// Vanuatu
    'wf': 'WF',

    /// Wallis and Futuna
    'ws': 'WS',

    /// Samoa
    'xk': 'XK',

    /// Kosovo
    'ye': 'YE',

    /// Yemen
    'yt': 'YT',

    /// Mayotte
    'za': 'ZA',

    /// South Africa
    'zm': 'ZM',

    /// Zambia
    'zw': 'ZW',

    /// Zimbabwe
  };

  /// ISO 639-1 Language Codes with Two-Letter Country Codes.
  static const Map<String, String> _flagCodesLanguages = {
    'ad': 'ca-ad',

    /// Catalan (Andorra)
    'ae': 'ar-ae',

    /// Arabic (U.A.E.)
    'af': 'ps-af',

    /// Pashto (Afghanistan)
    'ag': 'en-ag',

    /// English (Antigua and Barbuda)
    'ai': 'en-ai',

    /// English (Anguilla)
    'al': 'sq-al',

    /// Albanian (Albania)
    'am': 'hy-am',

    /// Armenian (Armenia)
    'ao': 'pt-ao',

    /// Potuguese (Angola)
    'aq': '',

    /// Antarctica
    'ar': 'es-ar',

    /// Spanish (Argentina)
    'as': 'sm-as',

    /// Samoan (American Samoa)
    'at': 'de-at',

    /// German (Austria)
    'au': 'en-au',

    /// English (Australia)
    'aw': 'pap-aw',

    /// Papiamento (Aruba)
    'ax': '',

    /// Åland Islands
    'az': 'az-az',

    /// Azeri (Azerbaijan)
    'ba': 'bs-ba',

    /// Bosnian (Bosnia and Herzegovina)
    'bb': '',

    /// Barbados
    'bd': '',

    /// Bangladesh
    'be': 'fr-be',

    /// French (Belgium)
    'bf': '',

    /// Burkina Faso
    'bg': 'bg-bg',

    /// Bulgarian (Bulgaria)
    'bh': 'ar-bh',

    /// Arabic (Bahrain)
    'bi': '',

    /// Burundi
    'bj': '',

    /// Benin
    'bl': '',

    /// Saint Barthélemy
    'bm': '',

    /// Bermuda
    'bn': 'ms-bn',

    /// Malay (Brunei Darussalam)
    'bo': 'qu-bo',

    /// Quechua (Bolivia)
    'bq': '',

    /// Bonaire, Sint Eustatius and Saba
    'br': 'pt-br',

    /// Portuguese (Brazil)
    'bs': '',

    /// Bahamas
    'bt': '',

    /// Bhutan
    'bv': '',

    /// Bouvet Island
    'bw': '',

    /// Botswana
    'by': '',

    /// Belarus
    'bz': '',

    /// Belize
    'ca': 'en-ca',

    /// English (Canada)
    'cc': '',

    /// Cocos (Keeling) Islands
    'cd': '',

    /// Congo, Democratic Republic of the
    'cefta': 'CEFTA',

    /// Central European Free Trade Agreement
    'cf': '',

    /// Central African Republic
    'cg': '',

    /// Congo
    'ch': 'fr-ch',

    /// French (Switzerland)
    'ci': '',

    /// Côte d'Ivoire
    'ck': '',

    /// Cook Islands
    'cl': 'es-cl',

    /// Spanish (Chile)
    'cm': '',

    /// Cameroon
    'cn': 'zh-cn',

    /// Chinese (People´s Republic of China)
    'cp': '',

    /// Clipperton Island
    'co': 'es-co',

    /// Spanish (Colombia)
    'cr': 'es-cr',

    /// Spanish (Costa Rica)
    'cu': 'es-cu',

    /// Spanish (Cuba)
    'cv': '',

    /// Cape Verde
    'cw': '',

    /// Curaçao
    'cx': '',

    /// Christmas Island
    'cy': '',

    /// Cyprus
    'cz': 'cs-cz',

    /// Czech (Czech Republic)
    'de': 'de-de',

    /// German (Germany)
    'dg': '',

    /// Diego Garcia
    'dj': '',

    /// Djibouti
    'dk': 'da-dk',

    /// Danish (Denmark)
    'dm': '',

    /// Dominica
    'do': 'es-do',

    /// Spanish (Dominican Republic)
    'dz': 'ar-dz',

    /// Arabic (Algeria)
    'ec': 'qu-ec',

    /// Quechua (Ecuador)
    'ee': 'et-ee',

    /// Estonian (Estonia)
    'eg': 'ar-eg',

    /// Arabic (Egypt)
    'eh': '',

    /// Western Sahara
    'er': '',

    /// Eritrea
    'es': 'es-es',

    /// Spanish (Spain)
    'ea': 'es-ea',

    /// Spanish (Ceuta and Melilla)
    'es-ct': 'es-ca',

    /// Catalan (Spain)
    'es-ga': 'es-gl',

    /// Galician (Spain)
    'et': '',

    /// Ethiopia
    'eu': '',

    /// Europe
    'fi': 'fi-fi',

    /// Finnish (Finland)
    'fj': '',

    /// Fiji
    'fk': '',

    /// Falkland Islands (Malvinas)
    'fm': '',

    /// Micronesia, Federated States of
    'fo': '',

    /// Faroe Islands
    'fr': 'fr-fr',

    /// French (France)
    'ga': '',

    /// Gabon
    'gb': 'en-gb',

    /// English (Great Britain)
    'gb-eng': 'en-uk',

    /// English (United Kingdom)
    'gb-nir': 'en-nir',

    /// English (Northern Ireland)
    'gb-sct': 'en-sct',

    /// English (Scotland)
    'gb-wls': 'en-cy',

    /// Welsh (United Kingdom)
    'gd': '',

    /// Grenada
    'ge': '',

    /// Georgia
    'gf': '',

    /// French Guiana
    'gg': '',

    /// Guernsey
    'gh': '',

    /// Ghana
    'gi': '',

    /// Gibraltar
    'gl': '',

    /// Greenland
    'gm': '',

    /// Gambia
    'gn': '',

    /// Guinea
    'gp': '',

    /// Guadeloupe
    'gq': '',

    /// Equatorial Guinea
    'gr': '',

    /// Greece
    'gs': '',

    /// South Georgia and the South Sandwich Islands
    'gt': '',

    /// Guatemala
    'gu': '',

    /// Guam
    'gw': '',

    /// Guinea-Bissau
    'gy': '',

    /// Guyana
    'hk': '',

    /// Hong Kong
    'hm': '',

    /// Heard Island and McDonald Islands
    'hn': '',

    /// Honduras
    'hr': '',

    /// Croatia
    'ht': '',

    /// Haiti
    'hu': '',

    /// Hungary
    'ic': 'es-ic',

    /// Spanish (Canary Islands)
    'id': '',

    /// Indonesia
    'ie': '',

    /// Ireland
    'il': '',

    /// Israel
    'im': '',

    /// Isle of Man
    'in': '',

    /// India
    'io': '',

    /// British Indian Ocean Territory
    'iq': '',

    /// Iraq
    'ir': '',

    /// Iran, Islamic Republic of
    'is': '',

    /// Iceland
    'it': '',

    /// Italy
    'je': '',

    /// Jersey
    'jm': '',

    /// Jamaica
    'jo': '',

    /// Jordan
    'jp': '',

    /// Japan
    'ke': '',

    /// Kenya
    'kg': '',

    /// Kyrgyzstan
    'kh': '',

    /// Cambodia
    'ki': '',

    /// Kiribati
    'km': '',

    /// Comoros
    'kn': '',

    /// Saint Kitts and Nevis
    'kp': '',

    /// Korea, Democratic People's Republic of
    'kr': '',

    /// Korea, Republic of
    'kw': '',

    /// Kuwait
    'ky': '',

    /// Cayman Islands
    'kz': '',

    /// Kazakhstan
    'la': '',

    /// Lao People's Democratic Republic
    'lb': '',

    /// Lebanon
    'lc': '',

    /// Saint Lucia
    'li': '',

    /// Liechtenstein
    'lk': '',

    /// Sri Lanka
    'lr': '',

    /// Liberia
    'ls': '',

    /// Lesotho
    'lt': '',

    /// Lithuania
    'lu': '',

    /// Luxembourg
    'lv': '',

    /// Latvia
    'ly': '',

    /// Libya
    'ma': '',

    /// Morocco
    'mc': '',

    /// Monaco
    'md': '',

    /// Moldova, Republic of
    'me': '',

    /// Montenegro
    'mf': '',

    /// Saint Martin (French part)
    'mg': '',

    /// Madagascar
    'mh': '',

    /// Marshall Islands
    'mk': '',

    /// North Macedonia
    'ml': '',

    /// Mali
    'mm': '',

    /// Myanmar
    'mn': '',

    /// Mongolia
    'mo': '',

    /// Macao
    'mp': '',

    /// Northern Mariana Islands
    'mq': '',

    /// Martinique
    'mr': '',

    /// Mauritania
    'ms': '',

    /// Montserrat
    'mt': '',

    /// Malta
    'mu': '',

    /// Mauritius
    'mv': '',

    /// Maldives
    'mw': '',

    /// Malawi
    'mx': '',

    /// Mexico
    'my': '',

    /// Malaysia
    'mz': '',

    /// Mozambique
    'na': '',

    /// Namibia
    'nc': '',

    /// New Caledonia
    'ne': '',

    /// Niger
    'nf': '',

    /// Norfolk Island
    'ng': '',

    /// Nigeria
    'ni': '',

    /// Nicaragua
    'nl': '',

    /// Netherlands
    'no': '',

    /// Norway
    'np': '',

    /// Nepal
    'nr': '',

    /// Nauru
    'nu': '',

    /// Niue
    'nz': '',

    /// New Zealand
    'om': '',

    /// Oman
    'pa': '',

    /// Panama
    'pe': '',

    /// Peru
    'pf': '',

    /// French Polynesia
    'pg': '',

    /// Papua New Guinea
    'ph': '',

    /// Philippines
    'pk': '',

    /// Pakistan
    'pl': '',

    /// Poland
    'pm': '',

    /// Saint Pierre and Miquelon
    'pn': '',

    /// Pitcairn
    'pr': '',

    /// Puerto Rico
    'ps': '',

    /// Palestine, State of
    'pt': '',

    /// Portugal
    'pw': '',

    /// Palau
    'py': '',

    /// Paraguay
    'qa': '',

    /// Qatar
    're': '',

    /// Réunion
    'ro': '',

    /// Romania
    'rs': '',

    /// Serbia
    'ru': '',

    /// Russian Federation
    'rw': '',

    /// Rwanda
    'sa': '',

    /// Saudi Arabia
    'sb': '',

    /// Solomon Islands
    'sc': '',

    /// Seychelles
    'sd': '',

    /// Sudan
    'se': '',

    /// Sweden
    'sg': '',

    /// Singapore
    'sh': '',

    /// Saint Helena, Ascension and Tristan da Cunha
    'ac': 'SH-AC',

    /// Ascension Island
    'ta': 'SH-TA',

    /// Tristan da Cunha
    'si': '',

    /// Slovenia
    'sj': '',

    /// Svalbard and Jan Mayen
    'sk': '',

    /// Slovakia
    'sl': '',

    /// Sierra Leone
    'sm': '',

    /// San Marino
    'sn': '',

    /// Senegal
    'so': '',

    /// Somalia
    'sr': '',

    /// Suriname
    'ss': '',

    /// South Sudan
    'st': '',

    /// Sao Tome and Principe
    'sv': '',

    /// El Salvador
    'sx': '',

    /// Sint Maarten (Dutch part)
    'sy': '',

    /// Syrian Arab Republic
    'sz': '',

    /// Eswatini
    'tc': '',

    /// Turks and Caicos Islands
    'td': '',

    /// Chad
    'tf': '',

    /// French Southern Territories
    'tg': '',

    /// Togo
    'th': '',

    /// Thailand
    'tj': '',

    /// Tajikistan
    'tk': '',

    /// Tokelau
    'tl': '',

    /// Timor-Leste
    'tm': '',

    /// Turkmenistan
    'tn': '',

    /// Tunisia
    'to': '',

    /// Tonga
    'tr': '',

    /// Turkey
    'tt': '',

    /// Trinidad and Tobago
    'tv': '',

    /// Tuvalu
    'tw': '',

    /// Taiwan, Province of China
    'tz': '',

    /// Tanzania, United Republic of
    'ua': '',

    /// Ukraine
    'ug': '',

    /// Uganda
    'um': '',

    /// United States Minor Outlying Islands
    'un': '',

    /// United Nations
    'us': '',

    /// United States
    'uy': '',

    /// Uruguay
    'uz': '',

    /// Uzbekistan
    'va': '',

    /// Vatican City
    'vc': '',

    /// Saint Vincent and the Grenadines
    've': '',

    /// Venezuela
    'vg': '',

    /// British Virgin Islands
    'vi': '',

    /// U.S. Virgin Islands
    'vn': '',

    /// Vietnam
    'vu': '',

    /// Vanuatu
    'wf': '',

    /// Wallis and Futuna
    'ws': '',

    /// Samoa
    'xk': '',

    /// Kosovo
    'ye': '',

    /// Yemen
    'yt': '',

    /// Mayotte
    'za': '',

    /// South Africa
    'zm': '',

    /// Zambia
    'zw': '',

    /// Zimbabwe
  };

  /// Get the flag code from a language code.
  ///
  /// Returns `null` if the language code is not found.
  static String? fromLanguageCode(String languageCode) =>
      _flagCodesLanguages.entries
          .singleWhereOrNull((entry) => entry.value == languageCode)
          ?.key;

  /// Get the flag code from a country code.
  ///
  /// Returns `null` if the country code is not found.
  static String? fromCountryCode(String countryCode) =>
      _flagCodesCountries.entries
          .singleWhereOrNull((entry) => entry.value == countryCode)
          ?.key;
}
