/**
 * User: ktao
 * Date: 7/6/14
 * Time: 1:13 AM
 *
 * Event Tracking with Google Analytics.
 * https://developers.google.com/analytics/devguides/collection/analyticsjs/events
 */

$('.view-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'View Cart');
});

$('.add-to-cart').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Add To Cart ' + this.id);
});

$('.subscribe-button').on('click', function () {
    ga('send', 'event', 'button', 'click', 'Subscribe');
});

$('.amazon-review').on('click', function () {
    ga('send', 'event', 'amazon-review-link', 'click', "Viewed Amazon Review for " + this.id);
});