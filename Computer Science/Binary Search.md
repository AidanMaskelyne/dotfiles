## Definition:
A binary search is where the value at the midpoint of the array is checked and compared to the search query, and determins if the value comes before or after the midpoint value, essentially eliminating half the array at a time. In order for the binary search to work, however, the array must be **sorted**.

## In pseudocode:
``` python
array myIntegers[5] = [12, 16, 19, 22, 25]
start = 0
end = 4
found = false
searchItem = input("Enter a search item: ")
midpoint = 0

while(found == false AND start <= end)
	midpoint = (start + end) DIV 2
	
	if(myIntegers[midpoint] == searchItems) then
		found = true
	elseif (myIntegers[midpoint] > searchItem) then
		end = midpoint -1
	else
		start = midPoint + 1
	endif
endwhile

if (found == true) then
	print("Item found at index " + midpoint)
endif
```


### Links
- [[Searches]]