// Listing 10-3: CallingCode.cls after adding the abstraction layer instead of directly accessing configuration data

public with sharing class CallingCode {
    public CallingCode() {
        String product = 'myProduct';
        Boolean enabled = ConfigService.isFeatureEnabled(product);
    }
}
