public with sharing class ShowCountryController {

    private ResponseCities[] allCountries;
    private Set<String> allRegions = new Set<String>();

    public String regionChosen {get; set;}
    public List<SelectOption> regionsOptList {get;set;}
    

    
    public ShowCountryController() {
    	String jsonAll = HttpCalloutHandler.getCalloutResponseContents('https://restcountries.eu/rest/v1/all');
    	allCountries = ResponseCities.parse(jsonAll);


    	for(ResponseCities country : allCountries){
    		allRegions.add(country.region);
    	}

    	regionsOptList = new List<SelectOption>();
    	for(String a : allRegions){
    		regionsOptList.add(new SelectOption(a,a));
    	}

    }

    public ResponseCities[] getCountriesInRegion(){
    	ResponseCities[] countriesInRegion = new List<ResponseCities>();
    	if(regionChosen != null){
    		String url = 'https://restcountries.eu/rest/v1/region/'+regionChosen;
    		system.debug('@@url: '+url);
	    	String json = HttpCalloutHandler.getCalloutResponseContents(url);
	    	countriesInRegion = ResponseCities.parse(json);
    	}
		return countriesInRegion;
    }

	
	

}