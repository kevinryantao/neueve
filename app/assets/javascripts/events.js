/**
 * User: ktao
 * Date: 7/6/14
 * Time: 1:13 AM
 *
 * Event Tracking with Google Analytics and Bing.
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/events
 * http://help.bingads.microsoft.com/apex.aspx?product=bing_ads&market=en&sku=&query=hlp_ba_proc_uet.htm&view=summary_reportinggoals&inst=1
 */

$('.view-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'View Cart');
});

$('.add-to-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Add To Cart ' + this.id);
    var value = 50;
    if (this.id == 'neueve-cream') {
        value = 33;
    }
    var uetq = uetq || [];
    uetq.push({'ec': 'button', 'ea': 'click', 'el': 'Add To Cart ' + this.id, 'ev': value });
});

$('.subscribe-button').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Subscribe');
    var uetq = uetq || [];
    uetq.push({'ec': 'button', 'ea': 'click', 'el': 'Subscribe', 'ev': 50 });
});

$('a.amazon-review').on('click', function () {
    ga('send', 'event', 'amazon-review-link', 'click', "Viewed Amazon Review for " + this.id);
});