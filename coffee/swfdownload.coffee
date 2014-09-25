fileinfo = $ '.fileinfo'
fileinfo.each ->
	filename = $ '.postfilename', this
	orighref = $(this).children 'a'
	orighref = orighref.attr "href"
	if filename.attr "title" 
		swfName = filename.attr "title"
	else
		swfName = filename.text()
	if swfName.match /\.swf$/
		$(this).append ' <a class="swfdownload" download="'+swfName+'" href="'+orighref+'">[Download]</a>'