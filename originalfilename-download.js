// Generated by CoffeeScript 1.8.0
(function() {
  var fileinfo;

  fileinfo = $('.fileinfo');

  fileinfo.each(function() {
    var fName, filename, orighref;
    orighref = $(this).children('a');
    orighref = orighref.attr("href");
    filename = $('.unimportant > a', this);
    fName = filename.attr("download");
    return $(this).append(' <a class="fdownload" download="' + fName + '" href="' + orighref + '">[Download]</a>');
  });

}).call(this);
