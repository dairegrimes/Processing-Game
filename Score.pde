// class for reading in the high scores from the file

class Score
{
  int scores;
  
  Score(String line)
  {
    String[] fields = line.split(",");
    scores = Integer.parseInt(fields[0]);
  }
}