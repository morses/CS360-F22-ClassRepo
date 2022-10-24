using System;

namespace MyProject
{
    #nullable disable
    enum Status
    {
        ENABLED,
        DISABLED,
        BUSY		// the machine is busy doing something in another thread, i.e. a scan
    }

    public class Program
    {
        public double DoSomething(int a, double b)
        {
            return 5.6;
        }

        public double DoSomething(string a, float b)
        {
            return 5.4;
        }

        List<int> s_45ab9(string x, double y)
        {
            return null;
        }

        public static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            int a = 5;
            Console.WriteLine(a);
            //a = "a string";

            Scanner scanner = new Scanner();    // object allocated on the heap
            Scanner scanner2 = scanner;

            Console.WriteLine("Hello WOU Scanner!\n");
            //scanner.status = DISABLED;
            scanner.Enable();

            List<int> list = new List<int>();

        }
    }
}
