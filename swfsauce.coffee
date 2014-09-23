fileinfo = $ '.fileinfo'
fileinfo.each ->
	filename = $ '.postfilename', this
	swfName = filename.text()
	if swfName.match /\.swf$/
		$(this).append ' <a class="swfsauce" href="http://eye.swfchan.com/search/?q='+swfName+'" target="_blank">[Check Sauce on SWFCHAN]</a>'