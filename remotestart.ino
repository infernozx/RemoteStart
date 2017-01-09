# Copyright (C) 2016 Infernozx
# This file is part of RemoteStart.
#
# RemoteStartis free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# RemoteStart is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.


// Code "listens" on digital pin 0, it's looking for a 5 voltish signal from the vehicles "im running" circuit, provided by a 12-14.4 signal put through a voltage divider 10khigh side resistor, and 4.7k lowside resistor.
// Code "listens" on digital pin 1, it's looking for a 5 voltish signal from the vehicles "door unlock", provided by a 12-14.4 signal put through a voltage divider as above.
// Code "listens" on digital pin 2, it's looking for a 5 voltish signal from the vehicles "door lock", provided by a 12-14.4 signal put through a voltage divider as above.
// Code commands digital pin 3 to energize relay to send 12v to vehicles regular ignition circuit. Keeps it energized until 10 min has passed.
// Code commands digital pin 4 to energize relay to send 12v to vehicles stsarter circuit. Keeps it energized 5 seconds.


// constants won't change
// digital pin 0 listens for 5v
const int runningListen = 3;
// digital pin 1 listens for 5v
const int unlockListen = 4;
// digital pin 2 listens for 5v
const int lockListen = 5;
// digital pin 3 commands ign relay
const int ignPower = 1;
// digital pin 4 commands starter relay
const int starterPower = 2;

// variables will change:
int runningState = 0;         // variable for reading the runningState
int unlockState = 0;          // variable for reading the unlockState
int lockState = 0;            // variable for reading the lockState
int starterAttempts = 0;      // counter for the number of attempts at start


// time setup, for delays.
unsigned long time = millis();

void setup() {
  // put your setup code here, to run once:
  // make the voltageListen pin an input:
  pinMode(runningListen, INPUT);
  // make the unlockListen pin an input:
  pinMode(unlockListen, INPUT);
  // make the lockListen pin an input:
  pinMode(lockListen, INPUT);
  // make the ignPower an output:
  pinMode(ignPower, OUTPUT);
  // make the starterPower and output:
  pinMode(starterPower, OUTPUT);
  digitalWrite(starterPower, HIGH);
  
}

void loop()
{
  // put your main code here, to run repeatedly:
begining:
  // read the state of the runningListen value:
  runningState = digitalRead(runningListen);

  // check if there is voltage present (aka vehicle is running)
  // if it is, the runningState is HIGH:
  if (runningState == LOW)
  {
    // read the state of the unlockListen value:
    unlockState = digitalRead(unlockListen);

    // check if there is voltage present (aka door has been unlocked)
    if (unlockState == HIGH)
    {
      // delay (250); //debounce
      time = millis();           //reset time.
unlockwait:
      if (millis() - time > 5000)  //Has five seconds passed?
      {
        goto begining;
      }

      else
      {
        // check if there is voltage present (aka door has been unlocked)
        if (unlockState == HIGH)
        {
          //delay (250); //debounce
          time = millis();    //reset time.
lockwait:
            if (millis() - time > 5000) //Has five seconds passed?
            {
              goto begining;
            }
            else
            {
              // read the state of the lockListen value:
              lockState = digitalRead(lockListen);

              if (lockState == HIGH)
              {
                //delay (250); //debounce
                // device turns the ignition to the on position:
                digitalWrite(ignPower, HIGH);
starterrun:
                delay (10000);
                // crank the starter for 5 seconds.
                runningState = digitalRead(runningListen);
                if (runningState == HIGH)
                {
                  goto warmup;
                }
                digitalWrite(starterPower, LOW);
                delay (3000);
                digitalWrite(starterPower, HIGH);
                starterAttempts++;    // add 1 to the starter attempts counter

                // now check to see if the engine is running.
                // read the state of the runningListen value:
                runningState = digitalRead(runningListen);
                if (runningState == HIGH)
                {
                  // reset the timer
                  time = millis();
warmup:
                  if (millis() - time > 600000) //Has 10 minuites passed?
                  {
                    digitalWrite(ignPower, LOW);
                    goto begining;
                  }
                  else
                  {
                    goto warmup;
                  }
                }
                else
                {
                  if (starterAttempts >= 3)
                  {
                    starterAttempts = 0;
                    digitalWrite(ignPower, LOW);
                    goto begining;
                  }
                  else
                  {
                    goto starterrun;
                  }
                }
              }

              else
              {
                // return to the top of the 5 second timer for a first pulse of the lock button
                goto lockwait;
              }
            }
           
          }
        }
        // return to top of 5 second timer for second pulse of unlock button
        goto unlockwait;
      }
  }
  else
  {
    // return to begining:
    goto begining;
  }
}
