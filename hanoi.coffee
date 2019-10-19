func = (n,x,y,z)->
	if n>1 then func(n-1,x,z,y)
	console.log x+"=>"+y
	if n>1 then func(n-1,z,y,x)
	return

func(3,"a","b","c")
