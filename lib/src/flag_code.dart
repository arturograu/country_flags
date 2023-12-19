import 'package:collection/collection.dart';

/// {@template flag_code}
/// A class that provides a mapping between flag codes, country codes and
/// language codes.
/// {@endtemplate}
class FlagCode {
  /// ISO 3166 Country Codes.
  static const Map<String, String> _flagCodesCountries = {
    'ad': 'AD',         /// Andorra
    'ae': 'AE',         /// United Arab Emirates
    'af': 'AF',         /// Afghanistan
    'ag': 'AG',         /// Antigua and Barbuda
    'ai': 'AI',         /// Anguilla
    'al': 'AL',         /// Albania
    'am': 'AM',         /// Armenia
    'ao': 'AO',         /// Angola
    'aq': 'AQ',         /// Antarctica
    'ar': 'AR',         /// Argentina 
    'as': 'AS',         /// American Samoa
    'at': 'AT',         /// Austria
    'au': 'AU',         /// Australia
    'aw': 'AW',         /// Aruba
    'ax': 'AX',         /// Åland Islands
    'az': 'AZ',         /// Azerbaijan
    'ba': 'BA',         /// Bosnia and Herzegovina
    'bb': 'BB',         /// Barbados
    'bd': 'BD',         /// Bangladesh
    'be': 'BE',         /// Belgium
    'bf': 'BF',         /// Burkina Faso
    'bg': 'BG',         /// Bulgaria
    'bh': 'BH',         /// Bahrain
    'bi': 'BI',         /// Burundi
    'bj': 'BJ',         /// Benin
    'bl': 'BL',         /// Saint Barthélemy
    'bm': 'BM',         /// Bermuda
    'bn': 'BN',         /// Brunei Darussalam
    'bo': 'BO',         /// Bolivia
    'bq': 'BQ',         /// Bonaire, Sint Eustatius and Saba
    'br': 'BR',         /// Brazil
    'bs': 'BS',         /// Bahamas
    'bt': 'BT',         /// Bhutan
    'bv': 'BV',         /// Bouvet Island
    'bw': 'BW',         /// Botswana
    'by': 'BY',         /// Belarus
    'bz': 'BZ',         /// Belize
    'ca': 'CA',         /// Canada
    'cc': 'CC',         /// Cocos (Keeling) Islands
    'cd': 'CD',         /// Congo, Democratic Republic of the
    'cefta': 'CEFTA',   /// Central European Free Trade Agreement
    'cf': 'CF',         /// Central African Republic
    'cg': 'CG',         /// Congo
    'ch': 'CH',         /// Switzerland
    'ci': 'CI',         /// Côte d'Ivoire
    'ck': 'CK',         /// Cook Islands
    'cl': 'CL',         /// Chile
    'cm': 'CM',         /// Cameroon
    'cn': 'CN',         /// China
    'cp': 'CP',         /// Clipperton Island
    'co': 'CO',         /// Colombia
    'cr': 'CR',         /// Costa Rica
    'cu': 'CU',         /// Cuba
    'cv': 'CV',         /// Cape Verde
    'cw': 'CW',         /// Curaçao
    'cx': 'CX',         /// Christmas Island
    'cy': 'CY',         /// Cyprus
    'cz': 'CZ',         /// Czech Republic
    'de': 'DE',         /// Germany
    'dg': 'DG',         /// Diego Garcia
    'dj': 'DJ',         /// Djibouti
    'dk': 'DK',         /// Denmark
    'dm': 'DM',         /// Dominica
    'do': 'DO',         /// Dominican Republic
    'dz': 'DZ',         /// Algeria
    'ec': 'EC',         /// Ecuador
    'ee': 'EE',         /// Estonia
    'eg': 'EG',         /// Egypt
    'eh': 'EH',         /// Western Sahara
    'er': 'ER',         /// Eritrea
    'es': 'ES',         /// Spain
    'ea': 'ES-EA',      /// Ceuta and Melilla
    'es-ct': 'ES-CT',   /// Catalonia
    'es-ga': 'ES-GA',   /// Galicia
    'et': 'ET',         /// Ethiopia
    'eu': 'EU',         /// Europe
    'fi': 'FI',         /// Finland
    'fj': 'FJ',         /// Fiji
    'fk': 'FK',         /// Falkland Islands (Malvinas)
    'fm': 'FM',         /// Micronesia, Federated States of
    'fo': 'FO',         /// Faroe Islands
    'fr': 'FR',         /// France
    'ga': 'GA',         /// Gabon
    'gb': 'GB',         /// United Kingdom
    'gb-eng': 'GB-ENG', /// England
    'gb-nir': 'GB-NIR', /// Northern Ireland 
    'gb-sct': 'GB-SCT', /// Scotland
    'gb-wls': 'GB-WLS', /// Wales
    'gd': 'GD',         /// Grenada
    'ge': 'GE',         /// Georgia
    'gf': 'GF',         /// French Guiana
    'gg': 'GG',         /// Guernsey
    'gh': 'GH',         /// Ghana
    'gi': 'GI',         /// Gibraltar
    'gl': 'GL',         /// Greenland
    'gm': 'GM',         /// Gambia
    'gn': 'GN',         /// Guinea
    'gp': 'GP',         /// Guadeloupe
    'gq': 'GQ',         /// Equatorial Guinea
    'gr': 'GR',         /// Greece
    'gs': 'GS',         /// South Georgia and the South Sandwich Islands
    'gt': 'GT',         /// Guatemala
    'gu': 'GU',         /// Guam
    'gw': 'GW',         /// Guinea-Bissau
    'gy': 'GY',         /// Guyana
    'hk': 'HK',         /// Hong Kong
    'hm': 'HM',         /// Heard Island and McDonald Islands
    'hn': 'HN',         /// Honduras
    'hr': 'HR',         /// Croatia
    'ht': 'HT',         /// Haiti
    'hu': 'HU',         /// Hungary
    'ic': 'ES-IC',      /// Canary Islands
    'id': 'ID',         /// Indonesia
    'ie': 'IE',         /// Ireland
    'il': 'IL',         /// Israel
    'im': 'IM',         /// Isle of Man
    'in': 'IN',         /// India
    'io': 'IO',         /// British Indian Ocean Territory
    'iq': 'IQ',         /// Iraq
    'ir': 'IR',         /// Iran, Islamic Republic of
    'is': 'IS',         /// Iceland
    'it': 'IT',         /// Italy
    'je': 'JE',         /// Jersey
    'jm': 'JM',         /// Jamaica
    'jo': 'JO',         /// Jordan
    'jp': 'JP',         /// Japan
    'ke': 'KE',         /// Kenya
    'kg': 'KG',         /// Kyrgyzstan
    'kh': 'KH',         /// Cambodia
    'ki': 'KI',         /// Kiribati
    'km': 'KM',         /// Comoros
    'kn': 'KN',         /// Saint Kitts and Nevis
    'kp': 'KP',         /// Korea, Democratic People's Republic of
    'kr': 'KR',         /// Korea, Republic of
    'kw': 'KW',         /// Kuwait
    'ky': 'KY',         /// Cayman Islands
    'kz': 'KZ',         /// Kazakhstan
    'la': 'LA',         /// Lao People's Democratic Republic
    'lb': 'LB',         /// Lebanon
    'lc': 'LC',         /// Saint Lucia
    'li': 'LI',         /// Liechtenstein
    'lk': 'LK',         /// Sri Lanka
    'lr': 'LR',         /// Liberia
    'ls': 'LS',         /// Lesotho
    'lt': 'LT',         /// Lithuania
    'lu': 'LU',         /// Luxembourg
    'lv': 'LV',         /// Latvia
    'ly': 'LY',         /// Libya
    'ma': 'MA',         /// Morocco
    'mc': 'MC',         /// Monaco
    'md': 'MD',         /// Moldova, Republic of
    'me': 'ME',         /// Montenegro
    'mf': 'MF',         /// Saint Martin (French part)
    'mg': 'MG',         /// Madagascar
    'mh': 'MH',         /// Marshall Islands
    'mk': 'MK',         /// North Macedonia
    'ml': 'ML',         /// Mali
    'mm': 'MM',         /// Myanmar
    'mn': 'MN',         /// Mongolia
    'mo': 'MO',         /// Macao
    'mp': 'MP',         /// Northern Mariana Islands
    'mq': 'MQ',         /// Martinique
    'mr': 'MR',         /// Mauritania
    'ms': 'MS',         /// Montserrat
    'mt': 'MT',         /// Malta
    'mu': 'MU',         /// Mauritius
    'mv': 'MV',         /// Maldives
    'mw': 'MW',         /// Malawi
    'mx': 'MX',         /// Mexico
    'my': 'MY',         /// Malaysia
    'mz': 'MZ',         /// Mozambique
    'na': 'NA',         /// Namibia
    'nc': 'NC',         /// New Caledonia
    'ne': 'NE',         /// Niger
    'nf': 'NF',         /// Norfolk Island
    'ng': 'NG',         /// Nigeria
    'ni': 'NI',         /// Nicaragua
    'nl': 'NL',         /// Netherlands
    'no': 'NO',         /// Norway
    'np': 'NP',         /// Nepal
    'nr': 'NR',         /// Nauru
    'nu': 'NU',         /// Niue
    'nz': 'NZ',         /// New Zealand
    'om': 'OM',         /// Oman
    'pa': 'PA',         /// Panama
    'pe': 'PE',         /// Peru
    'pf': 'PF',         /// French Polynesia
    'pg': 'PG',         /// Papua New Guinea
    'ph': 'PH',         /// Philippines
    'pk': 'PK',         /// Pakistan
    'pl': 'PL',         /// Poland
    'pm': 'PM',         /// Saint Pierre and Miquelon
    'pn': 'PN',         /// Pitcairn
    'pr': 'PR',         /// Puerto Rico
    'ps': 'PS',         /// Palestine, State of
    'pt': 'PT',         /// Portugal
    'pw': 'PW',         /// Palau
    'py': 'PY',         /// Paraguay
    'qa': 'QA',         /// Qatar
    're': 'RE',         /// Réunion
    'ro': 'RO',         /// Romania
    'rs': 'RS',         /// Serbia
    'ru': 'RU',         /// Russian Federation
    'rw': 'RW',         /// Rwanda
    'sa': 'SA',         /// Saudi Arabia
    'sb': 'SB',         /// Solomon Islands
    'sc': 'SC',         /// Seychelles
    'sd': 'SD',         /// Sudan
    'se': 'SE',         /// Sweden
    'sg': 'SG',         /// Singapore
    'sh': 'SH',         /// Saint Helena, Ascension and Tristan da Cunha
    'ac': 'SH-AC',      /// Ascension Island
    'ta': 'SH-TA',      /// Tristan da Cunha
    'si': 'SI',         /// Slovenia
    'sj': 'SJ',         /// Svalbard and Jan Mayen
    'sk': 'SK',         /// Slovakia
    'sl': 'SL',         /// Sierra Leone
    'sm': 'SM',         /// San Marino
    'sn': 'SN',         /// Senegal
    'so': 'SO',         /// Somalia
    'sr': 'SR',         /// Suriname
    'ss': 'SS',         /// South Sudan
    'st': 'ST',         /// Sao Tome and Principe
    'sv': 'SV',         /// El Salvador
    'sx': 'SX',         /// Sint Maarten (Dutch part)
    'sy': 'SY',         /// Syrian Arab Republic
    'sz': 'SZ',         /// Eswatini
    'tc': 'TC',         /// Turks and Caicos Islands
    'td': 'TD',         /// Chad
    'tf': 'TF',         /// French Southern Territories
    'tg': 'TG',         /// Togo
    'th': 'TH',         /// Thailand
    'tj': 'TJ',         /// Tajikistan
    'tk': 'TK',         /// Tokelau
    'tl': 'TL',         /// Timor-Leste
    'tm': 'TM',         /// Turkmenistan
    'tn': 'TN',         /// Tunisia
    'to': 'TO',         /// Tonga
    'tr': 'TR',         /// Turkey
    'tt': 'TT',         /// Trinidad and Tobago
    'tv': 'TV',         /// Tuvalu
    'tw': 'TW',         /// Taiwan, Province of China
    'tz': 'TZ',         /// Tanzania, United Republic of
    'ua': 'UA',         /// Ukraine
    'ug': 'UG',         /// Uganda
    'um': 'UM',         /// United States Minor Outlying Islands
    'un': 'UN',         /// United Nations
    'us': 'US',         /// United States
    'uy': 'UY',         /// Uruguay
    'uz': 'UZ',         /// Uzbekistan
    'va': 'VA',         /// Vatican City
    'vc': 'VC',         /// Saint Vincent and the Grenadines
    've': 'VE',         /// Venezuela
    'vg': 'VG',         /// British Virgin Islands
    'vi': 'VI',         /// U.S. Virgin Islands
    'vn': 'VN',         /// Vietnam
    'vu': 'VU',         /// Vanuatu
    'wf': 'WF',         /// Wallis and Futuna
    'ws': 'WS',         /// Samoa
    'xk': 'XK',         /// Kosovo
    'ye': 'YE',         /// Yemen
    'yt': 'YT',         /// Mayotte
    'za': 'ZA',         /// South Africa
    'zm': 'ZM',         /// Zambia
    'zw': 'ZW',         /// Zimbabwe
  };
  /// ISO 639-1 Language Codes.
  static const Map<String, String> _flagCodesTwoChars = {
    'af': 'fa',         /// Dari Persian
    'az': 'az',         /// Azeri
    'ba': 'bs',         /// Bosnian
    'be': 'de',         /// Dutch
    'bg': 'bg',         /// Bulgarian
    'ca': 'en',         /// English
    'cz': 'cs',         /// Czech
    'cy': 'el',         /// Greek
    'de': 'de',         /// German
    'gr': 'el',         /// Greek
    'gb': 'en',         /// English
    'es': 'es',         /// Spanish
    'et': 'am',         /// Amharic
    'ir': 'fa',         /// Farsi
    'fi': 'fi',         /// Finnish
    'fo': 'fo',         /// Faroese
    'fr': 'fr',         /// French
    'gl': 'kl',         /// Greenlandic
    'gu': 'gu',         /// Gujarati
    'il': 'he',         /// Hebrew
    'in': 'hi',         /// Hindi
    'hr': 'hr',         /// Croatian
    'hu': 'hu',         /// Hungarian
    'am': 'hy',         /// Armenian
    'id': 'id',         /// Indonesian
    'is': 'is',         /// Icelandic
    'it': 'it',         /// Italian
    'sk': 'sk',         /// Slovak
    'se': 'sv',         /// Swedish
    'tr': 'tr',         /// Turkish
    'za': 'zu',         /// Zulu
  };
  /// ISO 639-1 Language Codes with Two-Letter Country Codes.
static const Map<String, String> _flagCodesFiveChars = {
  'ae': 'ar-ae',        /// Arabic (U.A.E.)
  'bh': 'ar-bh',        /// Arabic (Bahrain)
  'dz': 'ar-dz',        /// Arabic (Algeria)
  'eg': 'ar-eg',        /// Arabic (Egypt)
  'iq': 'ar-iq',        /// Arabic (Iraq)
  'jo': 'ar-jo',        /// Arabic (Jordan)
  'kw': 'ar-kw',        /// Arabic (Kuwait)
  'lb': 'ar-lb',        /// Arabic (Lebanon)
  'ly': 'ar-ly',        /// Arabic (Libya)
  'ma': 'ar-ma',        /// Arabic (Morocco)
  'om': 'ar-om',        /// Arabic (Oman)
  'qa': 'ar-qa',        /// Arabic (Qatar)
  'sa': 'ar-sa',        /// Arabic (Saudi Arabia)
  'sy': 'ar-sy',        /// Arabic (Syria)
  'tn': 'ar-tn',        /// Arabic (Tunisia)
  'ye': 'ar-ye',        /// Arabic (Yemen)
  'by': 'be-by',        /// Belarusian (Belarus)
  'dk': 'da-dk',        /// Danish (Denmark)
  'at': 'de-at',        /// German (Austria)
  'ch': 'de-ch',        /// German (Switzerland)
  'li': 'de-li',        /// German (Liechtenstein)
  'lu': 'de-lu',        /// German (Luxembourg)
  'mv': 'dv-mv',        /// Divehi (Maldives)
  'au': 'en-au',        /// English (Australia)
  'bz': 'en-bz',        /// English (Belize)
  'ie': 'en-ie',        /// English (Ireland)
  'jm': 'en-jm',        /// English (Jamaica)
  'nz': 'en-nz',        /// English (New Zealand)
  'ph': 'en-ph',        /// English (Philippines)
  'tt': 'en-tt',        /// English (Trinidad and Tobago)
  'us': 'en-us',        /// English (United States)
  'zw': 'en-zw',        /// English (Zimbabwe)
  'ar': 'es-ar',        /// Spanish (Argentina)
  'bo': 'es-bo',        /// Spanish (Bolivia)
  'cl': 'es-cl',        /// Spanish (Chile)
  'co': 'es-co',        /// Spanish (Colombia)
  'cr': 'es-cr',        /// Spanish (Costa Rica)
  'do': 'es-do',        /// Spanish (Dominican Republic)
  'ec': 'es-ec',        /// Spanish (Ecuador)
  'gt': 'es-gt',        /// Spanish (Guatemala)
  'hn': 'es-hn',        /// Spanish (Honduras)
  'mx': 'es-mx',        /// Spanish (Mexico)
  'ni': 'es-ni',        /// Spanish (Nicaragua)
  'pa': 'es-pa',        /// Spanish (Panama)
  'pe': 'es-pe',        /// Spanish (Peru)
  'pr': 'es-pr',        /// Spanish (Puerto Rico)
  'py': 'es-py',        /// Spanish (Paraguay)
  'sv': 'es-sv',        /// Spanish (El Salvador)
  'uy': 'es-uy',        /// Spanish (Uruguay)
  've': 'es-ve',        /// Spanish (Venezuela)
  'ee': 'et-ee',        /// Estonian (Estonia)
  'mc': 'fr-mc',        /// French (Monaco)
};

  /// Get the flag code from a language code.
  ///
  /// Returns `null` if the language code is not found.
  static String? fromLanguageCode(String languageCode) {
    if (languageCode.length == 2) {
      return _flagCodesTwoChars.entries
          .singleWhereOrNull((entry) => entry.value == languageCode)
          ?.key;
    } else if (languageCode.length == 5) {
      return _flagCodesFiveChars.entries
          .singleWhereOrNull((entry) => entry.value == languageCode)
          ?.key;
    }
    /// Language code not found.
    return null; 
  }

  /// Get the flag code from a country code.
  ///
  /// Returns `null` if the country code is not found.
  static String? fromCountryCode(String countryCode) =>
      _flagCodesCountries.entries
          .singleWhereOrNull((entry) => entry.value == countryCode)
          ?.key;
}
