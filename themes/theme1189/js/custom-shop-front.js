$(function () {
  $('.mini-picture').on('click', function () {
     $('.big-picture-'+$(this).data('id-creation')).attr('src', $(this).attr('src')); 
  });
});