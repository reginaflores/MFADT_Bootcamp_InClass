
Table table;

int numRows;

void setup(){
  background(255);
  size(displayWidth, displayHeight);
  table = loadTable("nyWeather.csv", "header");

  numRows = table.getRowCount();
  println(numRows);
  
  int [] year = new int[numRows];
  int [] hight = new int[numRows];
  int [] low = new int[numRows];
  
  for(int i = 0; i < numRows; i++){
  
    year[i] = table.getInt(i,0);
    low[i] = table.getInt(i,1);
    hight[i] = table.getInt(i,2);
  
  }
  
  
  
  
}
