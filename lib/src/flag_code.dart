import 'package:collection/collection.dart';

/// {@template flag_code}
/// A class that provides a mapping between flag codes, country codes and
/// language codes.
/// {@endtemplate}
class FlagCode {
  static const Map<List<String>, String> _flagCodesCountries = {
    ['AND', 'AD']: 'ad',
    ['ARE', 'AE']: 'ae',
    ['AFG', 'AF']: 'af',
    ['ATG', 'AG']: 'ag',
    ['AIA', 'AI']: 'ai',
    ['ALB', 'AL']: 'al',
    ['ARM', 'AM']: 'am',
    ['AGO', 'AO']: 'ao',
    ['ATA', 'AQ']: 'aq',
    ['ARG', 'AR']: 'ar',
    ['ASM', 'AS']: 'as',
    ['AUT', 'AT']: 'at',
    ['AUS', 'AU']: 'au',
    ['ABW', 'AW']: 'aw',
    ['ALA', 'AX']: 'ax',
    ['AZE', 'AZ']: 'az',
    ['BIH', 'BA']: 'ba',
    ['BRB', 'BB']: 'bb',
    ['BGD', 'BD']: 'bd',
    ['BEL', 'BE']: 'be',
    ['BFA', 'BF']: 'bf',
    ['BGR', 'BG']: 'bg',
    ['BHR', 'BH']: 'bh',
    ['BDI', 'BI']: 'bi',
    ['BEN', 'BJ']: 'bj',
    ['BLM', 'BL']: 'bl',
    ['BMU', 'BM']: 'bm',
    ['BRN', 'BN']: 'bn',
    ['BOL', 'BO']: 'bo',
    ['BES', 'BQ']: 'bq',
    ['BRA', 'BR']: 'br',
    ['BHS', 'BS']: 'bs',
    ['BTN', 'BT']: 'bt',
    ['BVT', 'BV']: 'bv',
    ['BWA', 'BW']: 'bw',
    ['BLR', 'BY']: 'by',
    ['BLZ', 'BZ']: 'bz',
    ['CAN', 'CA']: 'ca',
    ['CCK', 'CC']: 'cc',
    ['COD', 'CD']: 'cd',
    ['CAF', 'CF']: 'cf',
    ['COG', 'CG']: 'cg',
    ['CHE', 'CH']: 'ch',
    ['CIV', 'CI']: 'ci',
    ['COK', 'CK']: 'ck',
    ['CHL', 'CL']: 'cl',
    ['CMR', 'CM']: 'cm',
    ['CHN', 'CN']: 'cn',
    ['COL', 'CO']: 'co',
    ['CRI', 'CR']: 'cr',
    ['CUB', 'CU']: 'cu',
    ['CPV', 'CV']: 'cv',
    ['CUW', 'CW']: 'cw',
    ['CXR', 'CX']: 'cx',
    ['CYP', 'CY']: 'cy',
    ['CZE', 'CZ']: 'cz',
    ['DEU', 'DE']: 'de',
    ['DJI', 'DJ']: 'dj',
    ['DNK', 'DK']: 'dk',
    ['DMA', 'DM']: 'dm',
    ['DOM', 'DO']: 'do',
    ['DZA', 'DZ']: 'dz',
    ['ECU', 'EC']: 'ec',
    ['EST', 'EE']: 'ee',
    ['EGY', 'EG']: 'eg',
    ['ESH', 'EH']: 'eh',
    ['ERI', 'ER']: 'er',
    ['ESP', 'ES']: 'es',
    ['ETH', 'ET']: 'et',
    ['FIN', 'FI']: 'fi',
    ['FJI', 'FJ']: 'fj',
    ['FLK', 'FK']: 'fk',
    ['FSM', 'FM']: 'fm',
    ['FRO', 'FO']: 'fo',
    ['FRA', 'FR']: 'fr',
    ['GAB', 'GA']: 'ga',
    ['GBR', 'GB']: 'gb',
    ['GB-SCT']: 'gb-sct',
    ['GB-WLS']: 'gb-wls',
    ['GB-ENG']: 'gb-eng',
    ['GB-NIR']: 'gb-nir',
    ['GRD', 'GD']: 'gd',
    ['GEO', 'GE']: 'ge',
    ['GUF', 'GF']: 'gf',
    ['GGY', 'GG']: 'gg',
    ['GHA', 'GH']: 'gh',
    ['GIB', 'GI']: 'gi',
    ['GRL', 'GL']: 'gl',
    ['GMB', 'GM']: 'gm',
    ['GIN', 'GN']: 'gn',
    ['GLP', 'GP']: 'gp',
    ['GNQ', 'GQ']: 'gq',
    ['GRC', 'GR']: 'gr',
    ['SGS', 'GS']: 'gs',
    ['GTM', 'GT']: 'gt',
    ['GUM', 'GU']: 'gu',
    ['GNB', 'GW']: 'gw',
    ['GUY', 'GY']: 'gy',
    ['HKG', 'HK']: 'hk',
    ['HMD', 'HM']: 'hm',
    ['HND', 'HN']: 'hn',
    ['HRV', 'HR']: 'hr',
    ['HTI', 'HT']: 'ht',
    ['HUN', 'HU']: 'hu',
    ['IDN', 'ID']: 'id',
    ['IRL', 'IE']: 'ie',
    ['ISR', 'IL']: 'il',
    ['IMN', 'IM']: 'im',
    ['IND', 'IN']: 'in',
    ['IOT', 'IO']: 'io',
    ['IRQ', 'IQ']: 'iq',
    ['IRN', 'IR']: 'ir',
    ['ISL', 'IS']: 'is',
    ['ITA', 'IT']: 'it',
    ['JEY', 'JE']: 'je',
    ['JAM', 'JM']: 'jm',
    ['JOR', 'JO']: 'jo',
    ['JPN', 'JP']: 'jp',
    ['KEN', 'KE']: 'ke',
    ['KGZ', 'KG']: 'kg',
    ['KHM', 'KH']: 'kh',
    ['KIR', 'KI']: 'ki',
    ['COM', 'KM']: 'km',
    ['KNA', 'KN']: 'kn',
    ['PRK', 'KP']: 'kp',
    ['KOR', 'KR']: 'kr',
    ['KWT', 'KW']: 'kw',
    ['CYM', 'KY']: 'ky',
    ['KAZ', 'KZ']: 'kz',
    ['LAO', 'LA']: 'la',
    ['LBN', 'LB']: 'lb',
    ['LCA', 'LC']: 'lc',
    ['LIE', 'LI']: 'li',
    ['LKA', 'LK']: 'lk',
    ['LBR', 'LR']: 'lr',
    ['LSO', 'LS']: 'ls',
    ['LTU', 'LT']: 'lt',
    ['LUX', 'LU']: 'lu',
    ['LVA', 'LV']: 'lv',
    ['LBY', 'LY']: 'ly',
    ['MAR', 'MA']: 'ma',
    ['MCO', 'MC']: 'mc',
    ['MDA', 'MD']: 'md',
    ['MNE', 'ME']: 'me',
    ['MAF', 'MF']: 'mf',
    ['MDG', 'MG']: 'mg',
    ['MHL', 'MH']: 'mh',
    ['MKD', 'MK']: 'mk',
    ['MLI', 'ML']: 'ml',
    ['MMR', 'MM']: 'mm',
    ['MNG', 'MN']: 'mn',
    ['MAC', 'MO']: 'mo',
    ['MNP', 'MP']: 'mp',
    ['MTQ', 'MQ']: 'mq',
    ['MRT', 'MR']: 'mr',
    ['MSR', 'MS']: 'ms',
    ['MLT', 'MT']: 'mt',
    ['MUS', 'MU']: 'mu',
    ['MDV', 'MV']: 'mv',
    ['MWI', 'MW']: 'mw',
    ['MEX', 'MX']: 'mx',
    ['MYS', 'MY']: 'my',
    ['MOZ', 'MZ']: 'mz',
    ['NAM', 'NA']: 'na',
    ['NCL', 'NC']: 'nc',
    ['NER', 'NE']: 'ne',
    ['NFK', 'NF']: 'nf',
    ['NGA', 'NG']: 'ng',
    ['NIC', 'NI']: 'ni',
    ['NLD', 'NL']: 'nl',
    ['NOR', 'NO']: 'no',
    ['NPL', 'NP']: 'np',
    ['NRU', 'NR']: 'nr',
    ['NIU', 'NU']: 'nu',
    ['NZL', 'NZ']: 'nz',
    ['OMN', 'OM']: 'om',
    ['PAN', 'PA']: 'pa',
    ['PER', 'PE']: 'pe',
    ['PYF', 'PF']: 'pf',
    ['PNG', 'PG']: 'pg',
    ['PHL', 'PH']: 'ph',
    ['PAK', 'PK']: 'pk',
    ['POL', 'PL']: 'pl',
    ['SPM', 'PM']: 'pm',
    ['PCN', 'PN']: 'pn',
    ['PRI', 'PR']: 'pr',
    ['PSE', 'PS']: 'ps',
    ['PRT', 'PT']: 'pt',
    ['PLW', 'PW']: 'pw',
    ['PRY', 'PY']: 'py',
    ['QAT', 'QA']: 'qa',
    ['REU', 'RE']: 're',
    ['ROU', 'RO']: 'ro',
    ['SRB', 'RS']: 'rs',
    ['RUS', 'RU']: 'ru',
    ['RWA', 'RW']: 'rw',
    ['SAU', 'SA']: 'sa',
    ['SLB', 'SB']: 'sb',
    ['SYC', 'SC']: 'sc',
    ['SDN', 'SD']: 'sd',
    ['SWE', 'SE']: 'se',
    ['SGP', 'SG']: 'sg',
    ['SHN', 'SH']: 'sh',
    ['SVN', 'SI']: 'si',
    ['SJM', 'SJ']: 'sj',
    ['SVK', 'SK']: 'sk',
    ['SLE', 'SL']: 'sl',
    ['SMR', 'SM']: 'sm',
    ['SEN', 'SN']: 'sn',
    ['SOM', 'SO']: 'so',
    ['SUR', 'SR']: 'sr',
    ['SSD', 'SS']: 'ss',
    ['STP', 'ST']: 'st',
    ['SLV', 'SV']: 'sv',
    ['SXM', 'SX']: 'sx',
    ['SYR', 'SY']: 'sy',
    ['SWZ', 'SZ']: 'sz',
    ['TCA', 'TC']: 'tc',
    ['TCD', 'TD']: 'td',
    ['ATF', 'TF']: 'tf',
    ['TGO', 'TG']: 'tg',
    ['THA', 'TH']: 'th',
    ['TJK', 'TJ']: 'tj',
    ['TKL', 'TK']: 'tk',
    ['TLS', 'TL']: 'tl',
    ['TKM', 'TM']: 'tm',
    ['TUN', 'TN']: 'tn',
    ['TON', 'TO']: 'to',
    ['TUR', 'TR']: 'tr',
    ['TTO', 'TT']: 'tt',
    ['TUV', 'TV']: 'tv',
    ['TWN', 'TW']: 'tw',
    ['TZA', 'TZ']: 'tz',
    ['UKR', 'UA']: 'ua',
    ['UGA', 'UG']: 'ug',
    ['UMI', 'UM']: 'um',
    ['USA', 'US']: 'us',
    ['URY', 'UY']: 'uy',
    ['UZB', 'UZ']: 'uz',
    ['VAT', 'VA']: 'va',
    ['VCT', 'VC']: 'vc',
    ['VEN', 'VE']: 've',
    ['VGB', 'VG']: 'vg',
    ['VIR', 'VI']: 'vi',
    ['VNM', 'VN']: 'vn',
    ['VUT', 'VU']: 'vu',
    ['WLF', 'WF']: 'wf',
    ['WSM', 'WS']: 'ws',
    ['XKX', 'XK']: 'xk',
    ['YEM', 'YE']: 'ye',
    ['MYT', 'YT']: 'yt',
    ['ZAF', 'ZA']: 'za',
    ['ZMB', 'ZM']: 'zm',
    ['ZWE', 'ZW']: 'zw',
  };

  static const Map<String, String> _flagCodesLanguages = {
    'af': 'af',
    'am': 'et',
    'ar': 'sa',
    'ar-ae': 'ae',
    'ar-bh': 'bh',
    'ar-dz': 'dz',
    'ar-eg': 'eg',
    'ar-iq': 'iq',
    'ar-jo': 'jo',
    'ar-kw': 'kw',
    'ar-lb': 'lb',
    'ar-ly': 'ly',
    'ar-ma': 'ma',
    'ar-om': 'om',
    'ar-qa': 'qa',
    'ar-sa': 'sa',
    'ar-sy': 'sy',
    'ar-tn': 'tn',
    'ar-ye': 'ye',
    'az': 'az',
    'ba': 'ba',
    'be': 'be',
    'be-by': 'by',
    'bg': 'bg',
    'bn': 'bd',
    'bs': 'ba',
    'ca': 'ca',
    'ceb': 'ph',
    'cs': 'cz',
    'cs-cz': 'cz',
    'cy': 'cy',
    'da': 'dk',
    'da-dk': 'dk',
    'de': 'de',
    'de-at': 'at',
    'de-ch': 'ch',
    'de-li': 'li',
    'de-lu': 'lu',
    'dv-mv': 'mv',
    'el': 'gr',
    'en': 'gb',
    'en-au': 'au',
    'en-bz': 'bz',
    'en-ie': 'ie',
    'en-jm': 'jm',
    'en-nz': 'nz',
    'en-ph': 'ph',
    'en-tt': 'tt',
    'en-us': 'us',
    'en-zw': 'zw',
    'es': 'es',
    'es-ar': 'ar',
    'es-bo': 'bo',
    'es-cl': 'cl',
    'es-co': 'co',
    'es-cr': 'cr',
    'es-do': 'do',
    'es-ec': 'ec',
    'es-gt': 'gt',
    'es-hn': 'hn',
    'es-mx': 'mx',
    'es-ni': 'ni',
    'es-pa': 'pa',
    'es-pe': 'pe',
    'es-pr': 'pr',
    'es-py': 'py',
    'es-sv': 'sv',
    'es-uy': 'uy',
    'es-ve': 've',
    'et': 'et',
    'et-ee': 'ee',
    'eu': 'es',
    'fa': 'ir',
    'fi': 'fi',
    'fo': 'fo',
    'fr': 'fr',
    'fr-mc': 'mc',
    'gl': 'gl',
    'gu': 'gu',
    'he': 'il',
    'hi': 'in',
    'hr': 'hr',
    'ht': 'ht',
    'hu': 'hu',
    'hy': 'am',
    'id': 'id',
    'is': 'is',
    'it': 'it',
    'ja': 'jp',
    'jv': 'id',
    'kk': 'kz',
    'km': 'kh',
    'kn': 'in',
    'ko': 'kr',
    'ku': 'iq',
    'ky': 'kg',
    'lo': 'la',
    'lt': 'lt',
    'lv': 'lv',
    'mg': 'mg',
    'mk': 'mk',
    'ml': 'in',
    'mn': 'mn',
    'mr': 'in',
    'ms': 'my',
    'mt': 'mt',
    'ne': 'np',
    'nl': 'nl',
    'no': 'no',
    'or': 'in',
    'pa': 'in',
    'pl': 'pl',
    'ps': 'af',
    'pt': 'pt',
    'pt-br': 'br',
    'ro': 'ro',
    'ru': 'ru',
    'sk': 'sk',
    'sl': 'si',
    'sm': 'ws',
    'so': 'so',
    'sq': 'al',
    'sr': 'rs',
    'sv': 'se',
    'sw': 'tz',
    'ta': 'in',
    'te': 'in',
    'th': 'th',
    'tl': 'ph',
    'tr': 'tr',
    'uk': 'ua',
    'ur': 'pk',
    'uz': 'uz',
    'vi': 'vn',
    'xh': 'za',
    'yi': 'il',
    'za': 'za',
    'zh-cn': 'cn',
    'zh-tw': 'tw',
    'zu': 'za',
  };

  static const Map<String, String> _flagCodesCurrencies = {
    'AED': 'ae',
    'AFN': 'af',
    'ALL': 'al',
    'AMD': 'am',
    'ANG': 'an',
    'AOA': 'ao',
    'ARS': 'ar',
    'AUD': 'au',
    'AWG': 'aw',
    'AZN': 'az',
    'BAM': 'ba',
    'BBD': 'bb',
    'BDT': 'bd',
    'BGN': 'bg',
    'BHD': 'bh',
    'BIF': 'bi',
    'BMD': 'bm',
    'BND': 'bn',
    'BOB': 'bo',
    'BRL': 'br',
    'BSD': 'bs',
    'BTN': 'bt',
    'BWP': 'bw',
    'BYN': 'by',
    'BZD': 'bz',
    'CAD': 'ca',
    'CDF': 'cd',
    'CHF': 'ch',
    'CLP': 'cl',
    'CNY': 'cn',
    'COP': 'co',
    'CRC': 'cr',
    'CUP': 'cu',
    'CVE': 'cv',
    'CZK': 'cz',
    'DJF': 'dj',
    'DKK': 'dk',
    'DOP': 'do',
    'DZD': 'dz',
    'EGP': 'eg',
    'ERN': 'er',
    'ETB': 'et',
    'EUR': 'eu',
    'FJD': 'fj',
    'FKP': 'fk',
    'GBP': 'gb',
    'GEL': 'ge',
    'GHS': 'gh',
    'GIP': 'gi',
    'GMD': 'gm',
    'GNF': 'gn',
    'GTQ': 'gt',
    'GYD': 'gy',
    'HKD': 'hk',
    'HNL': 'hn',
    'HRK': 'hr',
    'HTG': 'ht',
    'HUF': 'hu',
    'IDR': 'id',
    'ILS': 'il',
    'INR': 'in',
    'IQD': 'iq',
    'IRR': 'ir',
    'ISK': 'is',
    'JMD': 'jm',
    'JOD': 'jo',
    'JPY': 'jp',
    'KES': 'ke',
    'KGS': 'kg',
    'KHR': 'kh',
    'KID': 'ki',
    'KMF': 'km',
    'KRW': 'kr',
    'KWD': 'kw',
    'KYD': 'ky',
    'KZT': 'kz',
    'LAK': 'la',
    'LBP': 'lb',
    'LKR': 'lk',
    'LRD': 'lr',
    'LSL': 'ls',
    'LYD': 'ly',
    'MAD': 'ma',
    'MDL': 'md',
    'MGA': 'mg',
    'MKD': 'mk',
    'MMK': 'mm',
    'MNT': 'mn',
    'MOP': 'mo',
    'MRU': 'mr',
    'MUR': 'mu',
    'MVR': 'mv',
    'MWK': 'mw',
    'MXN': 'mx',
    'MYR': 'my',
    'MZN': 'mz',
    'NAD': 'na',
    'NGN': 'ng',
    'NIO': 'ni',
    'NOK': 'no',
    'NPR': 'np',
    'NZD': 'nz',
    'OMR': 'om',
    'PAB': 'pa',
    'PEN': 'pe',
    'PGK': 'pg',
    'PHP': 'ph',
    'PKR': 'pk',
    'PLN': 'pl',
    'PYG': 'py',
    'QAR': 'qa',
    'RON': 'ro',
    'RSD': 'rs',
    'RUB': 'ru',
    'RWF': 'rw',
    'SAR': 'sa',
    'SBD': 'sb',
    'SCR': 'sc',
    'SDG': 'sd',
    'SEK': 'se',
    'SGD': 'sg',
    'SHP': 'sh',
    'SLL': 'sl',
    'SOS': 'so',
    'SRD': 'sr',
    'SSP': 'ss',
    'STN': 'st',
    'SYP': 'sy',
    'SZL': 'sz',
    'THB': 'th',
    'TJS': 'tj',
    'TMT': 'tm',
    'TND': 'tn',
    'TOP': 'to',
    'TRY': 'tr',
    'TTD': 'tt',
    'TWD': 'tw',
    'TZS': 'tz',
    'UAH': 'ua',
    'UGX': 'ug',
    'USD': 'us',
    'UYU': 'uy',
    'UZS': 'uz',
    'VES': 've',
    'VND': 'vn',
    'VUV': 'vu',
    'WST': 'ws',
    'XAF': 'cm',
    'XCD': 'gd',
    'XOF': 'ci',
    'XPF': 'pf',
    'YER': 'ye',
    'ZAR': 'za',
    'ZMW': 'zm',
  };

  /// Get the flag code from a language code.
  ///
  /// Returns `null` if the language code is not found.
  ///
  /// Source of the language codes:
  /// http://www.lingoes.net/en/translator/langcode.htm
  static String? fromLanguageCode(String languageCode) =>
      _flagCodesLanguages.entries
          .singleWhereOrNull((entry) => entry.key == languageCode)
          ?.value;

  /// Get the flag code from a country code.
  ///
  /// Returns `null` if the country code is not found.
  static String? fromCountryCode(String countryCode) =>
      _flagCodesCountries.entries
          .singleWhereOrNull((entry) => entry.key.contains(countryCode))
          ?.value;

  /// Get the flag code from a currency code.
  /// Returns `null` if the currency code is not found.
  static String? fromCurrencyCode(String currencyCode) =>
      _flagCodesCurrencies.entries
          .singleWhereOrNull((entry) => entry.key == currencyCode)
          ?.value;
}
