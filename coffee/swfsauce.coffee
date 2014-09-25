fileinfo = $ '.fileinfo'
fileinfo.each ->
	filename = $ '.postfilename', this
	if filename.attr "title" 
		swfName = filename.attr "title"
	else
		swfName = filename.text()
	if swfName.match /\.swf$/
		$(this).append ' <a class="swfsauce" href="http://eye.swfchan.com/search/?q='+swfName+'" target="_blank">[Check Sauce on SWFCHAN]</a>'