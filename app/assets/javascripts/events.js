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

$('.view-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'View Cart');
    fbq('track', 'InitiateCheckout');
});

$('.add-to-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Add To Cart ' + this.id);
    var value = 52;
    if (this.id == 'neueve-cream') {
        value = 35;
    }
    var uetq = uetq || [];
    uetq.push({'ec': 'button', 'ea': 'click', 'el': 'Add To Cart ' + this.id, 'ev': value });
    fbq('track', 'AddToCart');
});

$('.subscribe-button').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Subscribe');
    var uetq = uetq || [];
    uetq.push({'ec': 'button', 'ea': 'click', 'el': 'Subscribe', 'ev': 52 });
    // Send to Facebook Pixel
    fbq('track', 'Purchase', {value: 52, currency: 'USD'});
});

$('a.amazon-review').on('click', function () {
    ga('send', 'event', 'amazon-review-link', 'click', "Viewed Amazon Review for " + this.id);
});

$('a.below-your-belt').on('click', function () {
  ga('send', 'event', 'below-your-belt', 'click', "Clicked on Below Your Belt");
});

setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 15)", 15000);
setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 30)", 30000);
setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 60)", 60000);
setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 120)",120000);
setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 240)",240000);
setTimeout("ga('send', 'event', 'adjusted bounce rate', 'page visit seconds', 480)",480000);