#include <sdcc-lib.h>
#include <at89x51.h>

#include <serial_IO.h>
#include <string.h>
#include <stdint.h>

//#define MICROCONTROLLER_8051
//#include <mcs51reg.h>

#define MAX_CMD_LINE_BUFF     80
#define CMD_DELIMITER         "="
#define CMD_PROMT_CHAR        "> "
#define HIGH                  1
#define LOW                   0

#define CMD_GEN_ERROR         -1
#define CMD_SUCCESS           1
#define CMD_ERROR             0

// порты для i2c
//__sbit __at 0x86 SDA;
//__sbit __at 0x87 SCL;

typedef unsigned char byte;
typedef unsigned char bool;
typedef unsigned int word;
typedef unsigned long l_word;

byte g_char;
byte cmd_index, last_cmd_index = 0;
byte cmd_buff[MAX_CMD_LINE_BUFF+1];
int8_t cmd_res;

bool SHELL_STATE = LOW;

void s_printf(char *str);
void delay_us(uint16_t us_count);
void delay_ms(uint16_t ms_count);
void delay_sec(unsigned char sec_count);

void setup();

typedef const static struct {
	const char *name;
	int8_t (*run)(char *);
} InternalCMD[];

int8_t at_p0(char *args);
int8_t at_p3(char *args);
int8_t at_p0_0(char *args);
int8_t at_p0_1(char *args);
int8_t at_p0_2(char *args);
int8_t at_p0_3(char *args);
int8_t at_p0_4(char *args);
int8_t at_p0_5(char *args);
int8_t at_p0_6(char *args);
int8_t at_p0_7(char *args);
int8_t at_p3_2(char *args);
int8_t at_p3_4(char *args);
int8_t at_p3_5(char *args);
int8_t at_p3_6(char *args);
int8_t at_p3_7(char *args);
