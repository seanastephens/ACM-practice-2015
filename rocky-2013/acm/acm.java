// Hasi
import java.util.Scanner;

public class acm{
  public static void main(String [] args){
    Scanner s = new Scanner(System.in);
    int cases = Integer.parseInt(s.nextLine());
    for(int i = 1; i <= cases; i++){
      int unis = Integer.parseInt(s.nextLine());
      for(int j = 1; j <= unis; j++){
        String [] str = s.nextLine().split(" ");
        int R = Integer.parseInt(str[0]);
        int T = Integer.parseInt(str[1]);
        int S = Integer.parseInt(str[2]);
        System.out.printf("%d, %d, %d\n", R, T, S);
      }
    }
  }
  /*
   * R: research
   * T: Teaching
   * S: community Service
   * U = aR+ bT + cS
   *  a^2 + b^2 + c^2 = 1
   */
}
