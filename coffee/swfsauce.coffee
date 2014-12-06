fileinfo = $ '.fileinfo'
fileinfo.each ->
	filename = $ '.postfilename', this
	filename = $ '.unimportant > a', this
	swfName = filename.attr "download"
	if swfName.match /\.swf$/
		$(this).append ' <a class="swfsauce" href="http://eye.swfchan.com/search/?q='+swfName+'" target="_blank">[Check Sauce on SWFCHAN]</a>'
