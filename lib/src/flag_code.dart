import 'package:collection/collection.dart';

/// {@template flag_code}
/// A class that provides a mapping between flag codes, country codes and
/// language codes.
/// {@endtemplate}
class FlagCode {
  /// ISO 3166 Country Codes
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
    'at': 'AT',         /// 
    'au': 'AU',         ///
    'aw': 'AW',         ///
    'ax': 'AX',         ///
    'az': 'AZ',         ///
    'ba': 'BA',         ///
    'bb': 'BB',         ///
    'bd': 'BD',         ///
    'be': 'BE',         ///
    'bf': 'BF',         ///
    'bg': 'BG',         ///
    'bh': 'BH',         ///
    'bi': 'BI',         ///
    'bj': 'BJ',         ///
    'bl': 'BL',         ///
    'bm': 'BM',         ///
    'bn': 'BN',         ///
    'bo': 'BO',         ///
    'bq': 'BQ',         ///
    'br': 'BR',         ///
    'bs': 'BS',         ///
    'bt': 'BT',         ///
    'bv': 'BV',         ///
    'bw': 'BW',         ///
    'by': 'BY',         ///
    'bz': 'BZ',         ///
    'ca': 'CA',         ///
    'cc': 'CC',         ///
    'cd': 'CD',         ///
    'cefta': 'CEFTA',   /// Central European Free Trade Agreement
    'cf': 'CF',         ///
    'cg': 'CG',         ///
    'ch': 'CH',         ///
    'ci': 'CI',         ///
    'ck': 'CK',         ///
    'cl': 'CL',         ///
    'cm': 'CM',         ///
    'cn': 'CN',         ///
    'cp': 'CP',         /// Clipperton Island
    'co': 'CO',         ///
    'cr': 'CR',         ///
    'cu': 'CU',         ///
    'cv': 'CV',         ///
    'cw': 'CW',         ///
    'cx': 'CX',         ///
    'cy': 'CY',         ///
    'cz': 'CZ',         ///
    'de': 'DE',         ///
    'dg': 'DG',         /// Diego Garcia
    'dj': 'DJ',         ///
    'dk': 'DK',         ///
    'dm': 'DM',         ///
    'do': 'DO',         ///
    'dz': 'DZ',         ///
    'ec': 'EC',         ///
    'ee': 'EE',         ///
    'eg': 'EG',         ///
    'eh': 'EH',         ///
    'er': 'ER',         ///
    'es': 'ES',         ///
    'ea': 'ES-EA',      /// Ceuta & Melilla
    'es-ct': 'ES-CT',   /// Cataluña
    'es-ga': 'ES-GA',   /// Galicia
    'et': 'ET',         ///
    'eu': 'EU',         /// Europe
    'fi': 'FI',         ///
    'fj': 'FJ',         ///
    'fk': 'FK',         ///
    'fm': 'FM',         ///
    'fo': 'FO',         ///
    'fr': 'FR',         ///
    'ga': 'GA',         ///
    'gb': 'GB',         ///
    'gb-eng': 'GB-ENG', /// England
    'gb-nir': 'GB-NIR', /// Northern Ireland 
    'gb-sct': 'GB-SCT', /// Scotland
    'gb-wls': 'GB-WLS', /// Wales
    'gd': 'GD',         ///
    'ge': 'GE',         ///
    'gf': 'GF',         ///
    'gg': 'GG',         ///
    'gh': 'GH',         ///
    'gi': 'GI',         ///
    'gl': 'GL',         ///
    'gm': 'GM',         ///
    'gn': 'GN',         ///
    'gp': 'GP',         ///
    'gq': 'GQ',         ///
    'gr': 'GR',         ///
    'gs': 'GS',         ///
    'gt': 'GT',         ///
    'gu': 'GU',         ///
    'gw': 'GW',         ///
    'gy': 'GY',         ///
    'hk': 'HK',         ///
    'hm': 'HM',         ///
    'hn': 'HN',         ///
    'hr': 'HR',         ///
    'ht': 'HT',         ///
    'hu': 'HU',         ///
    'ic': 'ES-IC',      /// Canary Islands
    'id': 'ID',         ///
    'ie': 'IE',         ///
    'il': 'IL',         ///
    'im': 'IM',         ///
    'in': 'IN',         ///
    'io': 'IO',         ///
    'iq': 'IQ',         ///
    'ir': 'IR',         ///
    'is': 'IS',         ///
    'it': 'IT',         ///
    'je': 'JE',         ///
    'jm': 'JM',         ///
    'jo': 'JO',         ///
    'jp': 'JP',         ///
    'ke': 'KE',         ///
    'kg': 'KG',         ///
    'kh': 'KH',         ///
    'ki': 'KI',         ///
    'km': 'KM',         ///
    'kn': 'KN',         ///
    'kp': 'KP',         ///
    'kr': 'KR',         ///
    'kw': 'KW',         ///
    'ky': 'KY',         ///
    'kz': 'KZ',         ///
    'la': 'LA',         ///
    'lb': 'LB',         ///
    'lc': 'LC',         ///
    'li': 'LI',         ///
    'lk': 'LK',         ///
    'lr': 'LR',         ///
    'ls': 'LS',         ///
    'lt': 'LT',         ///
    'lu': 'LU',         ///
    'lv': 'LV',         ///
    'ly': 'LY',         ///
    'ma': 'MA',         ///
    'mc': 'MC',         ///
    'md': 'MD',         ///
    'me': 'ME',         ///
    'mf': 'MF',         ///
    'mg': 'MG',         ///
    'mh': 'MH',         ///
    'mk': 'MK',         ///
    'ml': 'ML',         ///
    'mm': 'MM',         ///
    'mn': 'MN',         ///
    'mo': 'MO',         ///
    'mp': 'MP',         ///
    'mq': 'MQ',         ///
    'mr': 'MR',         ///
    'ms': 'MS',         ///
    'mt': 'MT',         ///
    'mu': 'MU',         ///
    'mv': 'MV',         ///
    'mw': 'MW',         ///
    'mx': 'MX',         ///
    'my': 'MY',         ///
    'mz': 'MZ',         ///
    'na': 'NA',         ///
    'nc': 'NC',         ///
    'ne': 'NE',         ///
    'nf': 'NF',         ///
    'ng': 'NG',         ///
    'ni': 'NI',         ///
    'nl': 'NL',         ///
    'no': 'NO',         ///
    'np': 'NP',         ///
    'nr': 'NR',         ///
    'nu': 'NU',         ///
    'nz': 'NZ',         ///
    'om': 'OM',         ///
    'pa': 'PA',         ///
    'pe': 'PE',         ///
    'pf': 'PF',         ///
    'pg': 'PG',         ///
    'ph': 'PH',         ///
    'pk': 'PK',         ///
    'pl': 'PL',         ///
    'pm': 'PM',         ///
    'pn': 'PN',         ///
    'pr': 'PR',         ///
    'ps': 'PS',         ///
    'pt': 'PT',         ///
    'pw': 'PW',         ///
    'py': 'PY',         ///
    'qa': 'QA',         ///
    're': 'RE',         ///
    'ro': 'RO',         ///
    'rs': 'RS',         ///
    'ru': 'RU',         ///
    'rw': 'RW',         ///
    'sa': 'SA',         ///
    'sb': 'SB',         ///
    'sc': 'SC',         ///
    'sd': 'SD',         ///
    'se': 'SE',         ///
    'sg': 'SG',         ///
    'sh': 'SH',         ///
    'ac': 'SH-AC',      /// Ascension Island
    'ta': 'SH-TA',      /// Tristan da Cunha
    'si': 'SI',         ///
    'sj': 'SJ',         ///
    'sk': 'SK',         ///
    'sl': 'SL',         ///
    'sm': 'SM',         ///
    'sn': 'SN',         ///
    'so': 'SO',         ///
    'sr': 'SR',         ///
    'ss': 'SS',         ///
    'st': 'ST',         ///
    'sv': 'SV',         ///
    'sx': 'SX',         ///
    'sy': 'SY',         ///
    'sz': 'SZ',         ///
    'tc': 'TC',         ///
    'td': 'TD',         ///
    'tf': 'TF',         ///
    'tg': 'TG',         ///
    'th': 'TH',         ///
    'tj': 'TJ',         ///
    'tk': 'TK',         ///
    'tl': 'TL',         ///
    'tm': 'TM',         ///
    'tn': 'TN',         ///
    'to': 'TO',         ///
    'tr': 'TR',         ///
    'tt': 'TT',         ///
    'tv': 'TV',         ///
    'tw': 'TW',         ///
    'tz': 'TZ',         ///
    'ua': 'UA',         ///
    'ug': 'UG',         ///
    'um': 'UM',         ///
    'un': 'UN',         /// United Nations
    'us': 'US',         ///
    'uy': 'UY',         ///
    'uz': 'UZ',         ///
    'va': 'VA',         ///
    'vc': 'VC',         ///
    've': 'VE',         ///
    'vg': 'VG',         ///
    'vi': 'VI',         ///
    'vn': 'VN',         ///
    'vu': 'VU',         ///
    'wf': 'WF',         ///
    'ws': 'WS',         ///
    'xk': 'XK',         /// Kosovo
    'ye': 'YE',         ///
    'yt': 'YT',         ///
    'za': 'ZA',         ///
    'zm': 'ZM',         ///
    'zw': 'ZW',         ///
  };
  /// ISO 639-1 Language Codes with Two-Letter Country Codes.
  static const Map<String, String> _flagCodesLanguages = {
    'af': 'af',
    'ae': 'ar-ae',
    'bh': 'ar-bh',
    'dz': 'ar-dz',
    'eg': 'ar-eg',
    'iq': 'ar-iq',
    'jo': 'ar-jo',
    'kw': 'ar-kw',
    'lb': 'ar-lb',
    'ly': 'ar-ly',
    'ma': 'ar-ma',
    'om': 'ar-om',
    'qa': 'ar-qa',
    'sa': 'ar-sa',
    'sy': 'ar-sy',
    'tn': 'ar-tn',
    'ye': 'ar-ye',
    'az': 'az',
    'be': 'be',
    'by': 'be-by',
    'bg': 'bg',
    'ca': 'ca',
    'cs': 'cz',
    'tr': 'tr',
    'sk': 'sk',
    'cy': 'cy',
    'dk': 'da-dk',
    'de': 'de',
    'at': 'de-at',
    'ch': 'de-ch',
    'li': 'de-li',
    'lu': 'de-lu',
    'mv': 'dv-mv',
    'gr': 'el',
    'au': 'en-au',
    'bz': 'en-bz',
    'gb': 'en',
    'ie': 'en-ie',
    'jm': 'en-jm',
    'nz': 'en-nz',
    'ph': 'en-ph',
    'tt': 'en-tt',
    'us': 'en-us',
    'zw': 'en-zw',
    'es': 'es',
    'ar': 'es-ar',
    'bo': 'es-bo',
    'cl': 'es-cl',
    'co': 'es-co',
    'cr': 'es-cr',
    'do': 'es-do',
    'ec': 'es-ec',
    'gt': 'es-gt',
    'hn': 'es-hn',
    'mx': 'es-mx',
    'ni': 'es-ni',
    'pa': 'es-pa',
    'pe': 'es-pe',
    'pr': 'es-pr',
    'py': 'es-py',
    'sv': 'es-sv',
    'uy': 'es-uy',
    've': 'es-ve',
    'et': 'et',
    'ee': 'et-ee',
    'ir': 'fa',
    'fi': 'fi',
    'fo': 'fo',
    'fr': 'fr',
    'mc': 'fr-mc',
    'gl': 'gl',
    'gu': 'gu',
    'il': 'he',
    'in': 'hi',
    'hr': 'hr',
    'ba': 'ba',
    'hu': 'hu',
    'am': 'hy',
    'id': 'id',
    'is': 'is',
    'it': 'it',
    'se': 'sv',
    'za': 'za',
  };

  /// Get the flag code from a language code.
  ///
  /// Returns `null` if the language code is not found.
  ///
  /// Source of the language codes:
  /// http://www.lingoes.net/en/translator/langcode.htm
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
