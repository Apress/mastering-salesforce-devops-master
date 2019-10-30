// *Listing 5-3: OrderingService refactored to use dependency injection to determine the behavior at runtime. (from Philippe Ozil's blog post)*


public class Injector {   
  public static Object instantiate(String className) {
    // Load the Type corresponding to the class name
    Type t = Type.forName(className);
    // Create a new instance of the class
    // and return it as an Object
    return t.newInstance();
  }
}

// Get the service implementation from a custom metadata type
// ServiceImplementation.load() runs a SOQL query to retrieve the metadata
Service_Implementation__mdt services = ServiceImplementation.load();

// Inject the shipping service implementation
// (services.shipping is either FedExImpl, DHLImpl or any other implementation)
ShippingService shipping = (ShippingService)Injector.instantiate(services.shipping);

// Use the shipping service to generate a tracking number
String trackingNumber = shipping.generateTrackingNumber();


