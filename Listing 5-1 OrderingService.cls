// *Listing 5-1: OrderingService has an explicit dependency on FedExService (from Philippe Ozil's blog post)*


public class OrderingService {

  private FedExService shippingService = new FedExService();
   
  public void ship(Order order) {
    // Do something...
    
    // Use the shipping service to generate a tracking number
    String trackingNumber = shippingService.generateTrackingNumber();
    
    // Do some other things...
  }
}

