fileinfo = $ '.fileinfo'
fileinfo.each ->
	orighref = $(this).children 'a'
	orighref = orighref.attr "href"
	filename = $ '.unimportant > a', this
	swfName = filename.attr "download"
	if swfName.match /\.swf$/
		###Move the line below to above the "if" statement if you want it to apply to all files, not just swfs.###
		$(this).append ' <a class="swfdownload" download="'+swfName+'" href="'+orighref+'">[Download]</a>'
		$(this).append ' <a class="swfsauce" href="http://eye.swfchan.com/search/?q='+swfName+'" target="_blank">[Check Sauce on SWFCHAN]</a>'
