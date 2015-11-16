@isTest
private class TEST_ResponseCities {
	
	 static testMethod void testParse() {
        String json=        '{'+
        '    "name": "Colombia",'+
        '    "capital": "Bogotá",'+
        '    "altSpellings": ['+
        '        "CO",'+
        '        "Republic of Colombia",'+
        '        "República de Colombia"'+
        '    ],'+
        '    "relevance": "0",'+
        '    "region": "Americas",'+
        '    "subregion": "South America",'+
        '    "translations": {'+
        '        "de": "Kolumbien",'+
        '        "es": "Colombia",'+
        '        "fr": "Colombie",'+
        '        "ja": "コロンビア",'+
        '        "it": "Colombia"'+
        '    },'+
        '    "population": 48266600,'+
        '    "latlng": ['+
        '        4,'+
        '        -72'+
        '    ],'+
        '    "demonym": "Colombian",'+
        '    "area": 1141748,'+
        '    "gini": 55.9,'+
        '    "timezones": ['+
        '        "UTC−05:00"'+
        '    ],'+
        '    "borders": ['+
        '        "BRA",'+
        '        "ECU",'+
        '        "PAN",'+
        '        "PER",'+
        '        "VEN"'+
        '    ],'+
        '    "nativeName": "Colombia",'+
        '    "callingCodes": ['+
        '        "57"'+
        '    ],'+
        '    "topLevelDomain": ['+
        '        ".co"'+
        '    ],'+
        '    "alpha2Code": "CO",'+
        '    "alpha3Code": "COL",'+
        '    "currencies": ['+
        '        "COP"'+
        '    ],'+
        '    "languages": ['+
        '        "es"'+
        '    ]'+
        '}';
        ResponseCities[] obj = ResponseCities.parse(json);
        System.assert(obj != null);
    }
	
}