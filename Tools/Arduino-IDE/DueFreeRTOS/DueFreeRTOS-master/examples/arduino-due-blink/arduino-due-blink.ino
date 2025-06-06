#include <FreeRTOS.h>
#include <task.h>

void blink(void *pvParameters)
{
  Serial.println("Blink task started");
  pinMode(LED_BUILTIN, OUTPUT);
  
  for( ;; ) {
    digitalWrite(LED_BUILTIN, HIGH);
//    vTaskDelay(1000);
    Serial.println("Blink task1: HIGH");
    digitalWrite(LED_BUILTIN, LOW);
//    vTaskDelay(1000);
    Serial.println("Blink task1: LOW");
  }
}

void blink2(void *pvParameters)
{
  Serial.println("Blink task2 started");
  pinMode(LED_BUILTIN, OUTPUT);
  
  for( ;; ) {
    digitalWrite(LED_BUILTIN, HIGH);
//    vTaskDelay(500);
    Serial.println("Blink task2: HIGH");
    digitalWrite(LED_BUILTIN, LOW);
//    vTaskDelay(500);
    Serial.println("Blink task2: LOW");
  }
}

void setup() 
{
  Serial.begin(9600);

  xTaskCreate(blink, (const portCHAR *)"blink", 128, NULL, 2, NULL);
  xTaskCreate(blink2, (const portCHAR *)"blink", 128, NULL, 2, NULL);
  vTaskStartScheduler();

  Serial.println("Failed to start FreeRTOS scheduler");
  while(1);
}

void loop()
{
}
