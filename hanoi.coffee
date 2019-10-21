hanoi = (n,x,y,z)->
	if n>1 then hanoi n-1,x,z,y
	console.log x+"=>"+y
	if n>1 then hanoi n-1,z,y,x
	return

hanoi readline(),"a","b","c"
