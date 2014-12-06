fileinfo = $ '.fileinfo'
fileinfo.each ->
	orighref = $(this).children 'a'
	orighref = orighref.attr "href"
	filename = $ '.unimportant > a', this
	swfName = filename.attr "download"
	if swfName.match /\.swf$/
		$(this).append ' <a class="swfdownload" download="'+swfName+'" href="'+orighref+'">[Download]</a>'
