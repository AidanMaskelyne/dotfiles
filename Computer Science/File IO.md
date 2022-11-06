``# File IO
- A serial file (simplest file) is one in which data has been stored in the order in which it occured.
- To write to a file, either create a new file or append to the end of the file line by line
- To search in a file (read), start at the top of the file and read line by line until you find what you are looking for or reach the end of the file
- Data cannot be deleted or changed in the file directly. Instead, create a new file and copy all the lines (inserting and changes), except the lines to be deleted, to the new file
- You cannot read or write to a file at the same time

## In pseudocode:

``` c++
// Reading one line from a file
myFile = openRead("test.txt")
line = myFile.readLine()
myFile.close()

// Printing all lines
myFile = openRead("sample.txt")
while NOT myFile.endOfFile()
	print(myFile.readLine())
endwhile
myFile.close()

// Writing one line to a file
myFile = openWrite("sample.txt")
myFile.writeLine("Hello, World!")
myFile.close()
```
**ALWAYS CLOSE THE FILE USING `myFile.close()`!**


## In Java:
``` java
import java.io.BufferedReader;
import java.io.FileReader;

public class App
{
	public static void main(String[] args)
	{
		FileReader fr = new FileReader("$HOME/Documents/test.txt");
		BufferedReader myFile = new BufferedReader(fr);
		
		String myText = myFile.readLine();
		System.out.println(mytext);
		
		myFile.close();
	}
}
```

### Links:
- [[Programming]]