#pragma rtGlobals=1		// Use modern global access method.
#include <All IP Procedures>

// this function calculates the integral of all waves in a given list and overwrites them

Function integall(prefixlistin)
	String prefixlistin
	
	string listin=wavelist(prefixlistin+"*",";","")
	
	variable i
	
	for (i=0;i<itemsinlist(listin);i+=1)
		integrate $(stringfromlist(i,listin)) 

	endfor
End