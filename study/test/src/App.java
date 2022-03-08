import java.util.Calendar;

public class App {
    public static void main(String[] args) throws Exception {
        Calendar cal = Calendar.getInstance();
        Calendar cal2 = Calendar.getInstance();

        int i = 0, count = 1;
        int j = 0;

        int year = 2022, month = 0, date = 1;
        while (date <= 500) {

            cal2.set(Calendar.YEAR, year);
            cal2.set(Calendar.MONTH, month);
            cal2.set(Calendar.DATE, date);

            int SetYear = cal2.get(cal2.YEAR);
            int SetMonth = cal2.get(cal2.MONTH);
            int SetDate = cal2.get(cal2.DATE);

            if (SetDate == 1) {

                if (SetMonth > 0) {
                    System.out.println("\n");
                    count = 1;
                } else if (SetMonth == 0 && count > 0) {
                    System.out.println("\n");
                    System.out.printf("%d년\n", SetYear);
                    count = 1;
                }
                System.out.printf("%d월\n", SetMonth + 1);

            }
            System.out.printf("%d\t", SetDate);
            if (count >= 7) {
                System.out.printf("\n");
                count = 0;
            }
            date++;
            count++;
        }

        // System.out.printf("Year: %d, Month: %d, Date: %d", SetYear, SetMonth,
        // SetDate);

        // System.out.printf("%d\n", SetYear);
        // System.out.printf("%d\n", SetMonth);
        // while (SetDate < 40) {
        // count++;

        // System.out.printf("%d\t", SetDate);
        // if (count == 7) {
        // System.out.printf("\n");
        // count = 0;
        // }

        // if (SetDate > 30)
        // System.out.printf("month: %d\n", SetMonth);
        // SetDate++;

        // }

        /*
         * int GetMon = cal.get(Calendar.MONTH);
         * 
         * int GetDat = cal.get(Calendar.DAY_OF_MONTH);
         * int GetMaxDate = cal.getMaximum(cal.DAY_OF_MONTH);
         * int GetMinDate = cal.getMinimum(Calendar.DAY_OF_MONTH);
         */
        /*
         * while (i < 12) {
         * i++;
         * System.out.printf("Month: %d\n", i);
         * count = 0;
         * do {
         * if (count == 7) {
         * System.out.printf("\n");
         * count = 0;
         * }
         * if (j > 0) {
         * System.out.printf("%d \t", j);
         * count++;
         * }
         * j++;
         * } while (j <= s);
         * j = 0;
         * System.out.printf("\n");
         * }
         */

        /*
         * System.out.printf("====== MONTH ======\n");
         * System.out.printf("Month: %d, Max : %d, Min: %d\n", GetMon + 1);
         * 
         * System.out.printf("====== DATE ======\n");
         * System.out.printf("date : %d, Max : %d, Min: %d", GetDat, GetMaxDate,
         * GetMinDate);
         */
    }
}
