//= require activestorage
//= require turbolinks
//= require jquery3
//= require_tree .

$( document ).on('turbolinks:load', function() {
// Strikethrough
$('a').addClass('strikethrough').hover(
    (e) => $(e.target).stop().addClass('mouseenter'),
    (e) => {
        $(e.target).stop().removeClass('mouseenter');
        setTimeout(() => {
            $(e.target).stop().removeClass('mouseleave').addClass('no-transition');
        }, STIKETHROUGH_DURATION - STIKETHROUGH_OFFSET);
        setTimeout(() => {
            $(e.target).stop().removeClass('no-transition');
        }, STIKETHROUGH_DURATION + STIKETHROUGH_OFFSET);
    }
);

// Strikethrough End
})