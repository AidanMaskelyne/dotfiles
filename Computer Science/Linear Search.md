# Linear Search
A linear search is where each item in the array is checked consecutively until the search item is found. The list doesn't need to be in order for this, however it will be extremely slow on large data sets, unless the search item happens to be at index 0.

## In pseudocode:
``` python
array arr[5] = [1, 2, 3, 4, 5]
found = false
index = 0
searchItem = intput("Enter the number you want to search for: ")

for(i = 0 to arr.length - 1)
	if(arr[i] == searchItem) then
		found = true
		index = i
		break
	endif
next i

if(found) then
	print("Item found at index " + index)
endif
```

### Links
- [[Searches]]