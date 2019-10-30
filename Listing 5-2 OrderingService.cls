// *Listing 5-2: OrderingService refactored to use inversion of control to determine the ShippingService indirectly (from Philippe Ozil's blog post)*


public class DHLImpl implements ShippingService {
  public String generateTrackingNumber() {
    return 'DHL-XXXX';
  }
}

public class FedExImpl implements ShippingService {
  public String generateTrackingNumber() {
    return 'FEX-XXXX';
  }
}

public class ShippingStrategy {   
  public static ShippingService getShippingService(Order order) {
    // Use FedEx in the US or DHL otherwise
    if (order.ShippingCountry == 'United States') {
      return new FedExImpl();
    }
    else {
      return new DHLImpl();
    }
  }
}

public class OrderingService {
  public void ship(Order order) {
    // Do something...
    
    // Get the appropriate shipping service
    // We only see the interface here, not the implementation class
    ShippingService shipping = ShippingStrategy.getShippingService(order);

    // Use the shipping service to generate a tracking number
    String trackingNumber = shipping.generateTrackingNumber();
    
    // Do some other things...
  }
}


