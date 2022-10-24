using System;

namespace MyProject
{
    public class Scanner
    {
        // Data members
        //struct StepperMotor *   mot1;
        //struct StepperMotor *   mot2;
       Laser           laser;
        //struct Light *          light;
        //Camera * 				camera;
        //GPContext *				cameraContext;
       private Status 			status;

       // Constructor
       public Scanner()
       {
            laser = new Laser();
            status = Status.DISABLED;
       }

        public ~Scanner()
        {
            Console.WriteLine("Scanner destroyed!");
        }

       public void Enable()
       {
            status = Status.ENABLED;
       }

       public void SomethingSuperSecret()
        {
            // Trade secret
        }
    }
}