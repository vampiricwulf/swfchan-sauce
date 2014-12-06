fileinfo = $ '.fileinfo'
fileinfo.each ->
	orighref = $(this).children 'a'
	orighref = orighref.attr "href"
	orighref = orighref.replace('media.','')
	filename = $ '.unimportant > a', this
	fName = filename.attr "download"
	$(this).append ' <a class="fdownload" download="'+fName+'" href="'+orighref+'">[Download]</a>'
