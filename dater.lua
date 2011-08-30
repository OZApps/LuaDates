--[[
	Filename : dater.lua
	Author   : Jayant C Varma
	URL      : http://www.oz-apps.com 
	eMail    : dev@oz-apps.com
	Function : This is the dater class that allows working with the lua date/time functions
	
	© 2011, OZ Apps - The class can be used in your projects but may not be modified and redistributed.
--]]

module(...,package.seeall)

function init(thisNumber)
 local dateTable = {}
 
 local temp = os.date("*t", thisNumber)
 
	function dateTable:getMonth()
		return temp.month
	end

	function dateTable:getYear()
		return temp.year
	end

	function dateTable:getDay()
		return temp.day
	end

	function dateTable:getHour()
		return temp.hour
	end
 
	function dateTable:getMinute()
		return temp.min
	end

	function dateTable:getSecond()
		return temp.sec
	end

	function dateTable:dayOfWeek()
		return temp.wday
	end

	function dateTable:dayOfYear()
		return temp.yday
	end
	
	function dateTable:date()
		return string.format("%02d-%02d-%04d", temp.day, temp.month, temp.year)
	end
	
	function dateTable:time()
		return string.format("%02d:%02d:%02d", temp.hour, temp.min, temp.sec)
	end
	
 return dateTable
end
