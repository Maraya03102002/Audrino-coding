/*

*/
# include <string.h>

enum differentStates{
  
  State1,
  State2,
  State3
};

differentStates currentState;
int counter;

void setup() {
    currentState = State1;
    counter = 1;
    Serial.begin(9600);
}

void loop() {
    delay(500);
    if (currentState == State1 && counter > 10) {
      currentState = State2;
      counter = 1;
      Serial.println("Loading");
    }
    else if (currentState == State2 && counter > 5) {
      currentState = State3;
      counter = 1;
      Serial.println("Confirmation");
    }
    else if (currentState == State3 && counter > 10) {
      currentState = State1;
      counter = 1;
      Serial.println("Success!!");
 }

    else {
      counter += 1;
    }
    
    switch(currentState) {
      case State1:
        Serial.println(String(11 - counter) + " Loading...");
        break;
      case State2:
        Serial.println(String(6 - counter) + " seconds to complete...");
        break;
      case State3:
        Serial.println(String(11 - counter) + " Success!!...");
        break; 
    }
}
