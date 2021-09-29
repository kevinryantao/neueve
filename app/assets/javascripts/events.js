/**
 * User: ktao
 * Date: 7/6/14
 * Time: 1:13 AM
 *
 * Event Tracking with Google Analytics and Bing and Facebook Standard Events.
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/events
 * http://help.bingads.microsoft.com/apex.aspx?product=bing_ads&market=en&sku=&query=hlp_ba_proc_uet.htm&view=summary_reportinggoals&inst=1
 * https://www.facebook.com/business/help/402791146561655
 */

// Event snippet for Add to cart conversion page
// In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button.
 function gtag_report_conversion(url) {
   var callback = function () {
     if (typeof(url) != 'undefined') {
       window.location = url;
     }
   };
   gtag('event', 'conversion', {
     'send_to': 'AW-1039056375/OMbTCMj7lvgCEPf7uu8D',
     'event_callback': callback
   });
   return false;
 }

$('.view-cart').on('click', function () {
  ga('send', 'event', 'button', 'click', 'View Cart');
  fbq('track', 'InitiateCheckout');
});

$('.add-to-cart').on('click', function () {

  gtag_report_conversion();

  // Google Adwords Add to Cart support.google.com/google-ads/answer/7305793
  gtag('event', 'add_to_cart', {
    'send_to': 'AW-1039056375',
    'items': [{
      'id': this.data('sku'),
      'google_business_vertical': 'retail'
    }],
    'ecomm_prodid': this.data('sku')
  });

  
  // BING CONVERSION TRACKING https://help.ads.microsoft.com/#apex/ads/en/60118/-1
  window.uetq = window.uetq || [];
  window.uetq.push('event', 'add_to_cart', {
      'ecomm_prodid': [this.data('sku')],
      'currency': 'USD',
      'items': [
        {
          'id': this.data('sku'),
          'quantity': 1
        }
      ]
    }
  );

  // Facebook Add to Cart
  fbq('track', 'AddToCart', {
    content_type: 'product',
    content_ids: [this.data('sku')],
    value: 0.50,
    currency: 'USD'});

  // https://help.pinterest.com/en/business/article/add-event-codes
  pintrk('track', 'addtocart', {
    product_id: this.data('sku'),
    order_quantity: 1,
    currency: 'USD'
  });

  // Google Analytics 4 https://developers.google.com/analytics/devguides/collection/ga4/reference/events#add_to_cart
  gtag("event", "add_to_cart", {
    currency: "USD",
    items: [
      {
        item_id: this.data('sku'),
        quantity: 1
      }
    ]
  });

  // Google Analytics UA analytics.js https://developers.google.com/analytics/devguides/collection/analyticsjs/enhanced-ecommerce#add-remove-cart
  ga('ec:addProduct', {
    'id': this.data('sku'),
    'quantity': 1
  });
  ga('ec:setAction', 'add');
  ga('send', 'event', 'UX', 'click', 'add to cart');     // Send data using an event.
});

$('.subscribe-button').on('click', function () {
  gtag_report_conversion();

  // Google Adwords Add to Cart support.google.com/google-ads/answer/7305793
  gtag('event', 'add_to_cart', {
    'send_to': 'AW-1039056375',
    'items': [{
      'id': this.data('sku'),
      'google_business_vertical': 'retail'
    }],
    'ecomm_prodid': this.data('sku')
  });


  // BING CONVERSION TRACKING https://help.ads.microsoft.com/#apex/ads/en/60118/-1
  window.uetq = window.uetq || [];
  window.uetq.push('event', 'add_to_cart', {
      'ecomm_prodid': [this.data('sku')],
      'currency': 'USD',
      'items': [
        {
          'id': this.data('sku'),
          'quantity': 1
        }
      ]
    }
  );

  // Facebook Add to Cart
  fbq('track', 'AddToCart', {
    content_type: 'product',
    content_ids: [this.data('sku')],
    value: 0.50,
    currency: 'USD'});

  // https://help.pinterest.com/en/business/article/add-event-codes
  pintrk('track', 'addtocart', {
    product_id: this.data('sku'),
    order_quantity: 1,
    currency: 'USD'
  });

  // Google Analytics 4 https://developers.google.com/analytics/devguides/collection/ga4/reference/events#add_to_cart
  gtag("event", "add_to_cart", {
    currency: "USD",
    items: [
      {
        item_id: this.data('sku'),
        quantity: 1
      }
    ]
  });

  // Google Analytics UA analytics.js https://developers.google.com/analytics/devguides/collection/analyticsjs/enhanced-ecommerce#add-remove-cart
  ga('ec:addProduct', {
    'id': this.data('sku'),
    'quantity': 1
  });
  ga('ec:setAction', 'add');
  ga('send', 'event', 'UX', 'click', 'add to cart');     // Send data using an event.

});

$('a.amazon-review').on('click', function () {
  ga('send', 'event', 'amazon-review-link', 'click', "Viewed Amazon Review for " + this.id);
});

setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 15)", 15000);