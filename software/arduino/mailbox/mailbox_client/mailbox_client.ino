/*
 * Project: nRF905 AVR/Arduino Library/Driver (Low power ping client example)
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2017 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/nrf905-avrarduino-librarydriver/
 */

/*
 * Similar to the ping client example
 * Power up the nRF905 to transmit some data, wait for a reply, turn off and wait for a second.
 * Output power is set to the lowest setting, receive sensitivity is lowered and uses the power up/down feature of the nRF905.
 *
 * 7 -> CE
 * 8 -> PWR
 * 9 -> TXE
 * 4 -> CD
 * 3 -> DR
 * 2 -> AM
 * 10 -> CSN
 * 12 -> SO
 * 11 -> SI
 * 13 -> SCK
 * 
 * 5 -> power detect 1 (mail set)
 * 6 -> power detect 2 (mail reset)
 *
 * Powerconsumption @Vcc = 8.3 Volt:
 * TX + RX on             = 28.3 mA
 * Sleep NRF905           = 16.0 mA
 * Sleep NRF905 + Arduino = 12.8 mA
 */

#include <nRF905.h>
#include <avr/sleep.h>

#define RXADDR 0xFE4CA6E5 // Address of this device
#define TXADDR 0x586F2E10 // Address of device to send to

#define TIMEOUT 1000 // 1 second ping timeout

#define PACKET_NONE		0
#define PACKET_OK		1
#define PACKET_INVALID	2

static volatile uint8_t packetStatus;

void NRF905_CB_RXCOMPLETE(void)
{
	packetStatus = PACKET_OK;
}

void NRF905_CB_RXINVALID(void)
{
	packetStatus = PACKET_INVALID;
}

void setup()
{
	Serial.begin(115200);
	Serial.println(F("Client started"));
	
	pinMode(A5, OUTPUT); // LED
  pinMode( 5, INPUT_PULLUP);  // Switch mail set
  pinMode( 6, INPUT_PULLUP);  // Switch mail set

	// Start up
	nRF905_init();
	
	// Set address of this device
	nRF905_setListenAddress(RXADDR);

	// Lowest transmit level -10db
	nRF905_setTransmitPower(NRF905_PWR_10);
	
	// Reduce receive sensitivity to save a few mA
	//nRF905_setLowRxPower(NRF905_LOW_RX_ENABLE);
}

void loop()
{
	static uint8_t counter;
	static uint32_t sent;
  static uint8_t payload_size;
  static uint16_t state1, state2;


  while(sent<11)
  {
    payload_size = 1;
  
    // Make data
    char data[1] = {0};
    sprintf(data, "A");
    counter++;
	
    packetStatus = PACKET_NONE;
  
    Serial.print(F("Sending data: "));
    Serial.println(data);
	
        // Send the data (send fails if other transmissions are going on, keep trying until success) and enter RX mode on completion
    // If the radio is powered down then this function will take an additional 3ms to complete
    while(!nRF905_TX(TXADDR, data, sizeof(data), NRF905_NEXTMODE_RX));
    sent++;

    Serial.println(F("Data sent, waiting for reply..."));

    uint8_t success;

    while(1)
    {
      success = packetStatus;
      if(success != PACKET_NONE)
        break;
    }

    if(success == PACKET_INVALID)
    {
      Serial.println(F("Invalid packet!"));
    }
    else
    {
      // If success toggle LED and send ping time over UART

      static uint8_t ledState;
      digitalWrite(A5, ledState ? HIGH : LOW);
      ledState = !ledState;

      // Get the ping data
      uint8_t replyData[1];
      nRF905_read(replyData, sizeof(replyData));

      // Print out ping contents
      Serial.print(F("Data from server: "));
      Serial.write(replyData,sizeof(replyData));
      Serial.println();

      state1 = digitalRead(5);
      state2 = digitalRead(6);

      Serial.print(F("Status inputs: "));
      Serial.print(state1+65);
      Serial.print(state2+65);
      Serial.println();
    }

    Serial.print(F("Totals: "));
    Serial.print(sent);
    Serial.println(F("------"));

    delay(100);
  }  

    // Turn off module
    nRF905_powerDown();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);   // sleep mode is set here
    sleep_enable(); //saves 3.2 mA
    sleep_mode(); 

  while(1);
}
