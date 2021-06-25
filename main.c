#include "main.h"

// sdcc main.c -V

InternalCMD cmd_list = { // до 255 команд
	{ "AT+P0", &at_p0 },
	{ "AT+P3", &at_p3 },
	{ "AT+P0.0", &at_p0_0 },
	{ "AT+P0.1", &at_p0_1 },
	{ "AT+P0.2", &at_p0_2 },
	{ "AT+P0.3", &at_p0_3 },
	{ "AT+P0.4", &at_p0_4 },
	{ "AT+P0.5", &at_p0_5 },
	{ "AT+P0.6", &at_p0_6 },
	{ "AT+P0.7", &at_p0_7 },
	{ "AT+P3.2", &at_p3_2 },
	{ "AT+P3.4", &at_p3_4 },
	{ "AT+P3.5", &at_p3_5 },
	{ "AT+P3.6", &at_p3_6 },
	{ "AT+P3.7", &at_p3_7 }
};

void s_printf(char *str) {
	while (*str)
		putchar(*str++);
}

void delay_us(uint16_t us_count) {
	while(us_count!=0)
		us_count--;
}

void delay_ms(uint16_t ms_count) {
	while(ms_count!=0) {
		delay_us(112);
		ms_count--;
	}
}

void delay_sec(unsigned char sec_count) {
	while(sec_count!=0) {
		delay_ms(1000);
		sec_count--;
	}
}

int8_t cmd_handler(char *cmd_buff) {
	uint8_t i = 0;
	char *cmd = NULL;

	cmd = strtok(cmd_buff, CMD_DELIMITER);
	for (i = 0; i < (sizeof(cmd_list) / sizeof(cmd_list[0])) 
		        && cmd != NULL; i++) {

		if (strcmp(cmd_list[i].name, cmd) == 0)
			return (int8_t) cmd_list[i].run(strtok(NULL, CMD_DELIMITER)); // запускаем целевую функцию и отдаем ей аргументы команды
	}

	return CMD_GEN_ERROR;
}

void setup() {
	inituart(0xff);

	P0_0, P0_1, P0_2, P0_3, P0_4, P0_5, P0_6, P0_7 = 0x00; // пины как OUTPUT
	P3_2, P3_4, P3_5, P3_6, P3_7 = 0x00;                   // ^

	P0 = 0x00; // LOW на все порты
	P3 &= ~((1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7));
}

void main(void) {
	setup();

	s_printf("Toggle PIN v0.1 alpha by Yury Martynov (email@linxon.ru)\n\n");
	s_printf("Наберите 'shell', чтобы перейти в режим управления\n");
	for (;;) {
		if (SIO_RI) {  // если у нас есть новые данные в RX, то...
			g_char = getchar();
			SIO_RI = 0;  // сбрасываем RX флаг как написано по документации

			putchar(g_char);

			if ((g_char == 0x0d) || (g_char == 0x0a)) {
				putchar(0xd);  // CR (винда!!)
				putchar(0xa);  // LF

				cmd_buff[cmd_index] = 0;
				cmd_index = 0;

				cmd_res = cmd_handler(cmd_buff);

				if (cmd_res == CMD_ERROR)
					s_printf("Команда сообщила об ошибке!");

				if (strcmp(cmd_buff, "shell") == 0 && SHELL_STATE == LOW) {
					SHELL_STATE = HIGH;
					s_printf("Вы сейчас в 'shell' режме. Введите 'help', чтобы увидеть список команд\n");
				}

				if (SHELL_STATE) {
					if (strcmp(cmd_buff, "help") == 0) {
						s_printf("  help - показать справку\n");
						s_printf("  exit - выйти из оболочки\n");
					} else if (strcmp(cmd_buff, "exit") == 0) {
						SHELL_STATE = LOW;
						continue;
					}

					s_printf(CMD_PROMT_CHAR);
				}
			} else if (g_char == 0x7f) { // клавиша "Delete"
				--cmd_index;
			} else {
				cmd_buff[cmd_index] = g_char;
				if (cmd_index < (MAX_CMD_LINE_BUFF + 1))
					++cmd_index;
			}
		}
	}
}

int8_t at_p0(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 = 0xFF;
		if (strcmp(args, "LOW") == 0)
			P0 = 0x00;
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~((1 << 2) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7));
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_0(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 0);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 0);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_1(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 1);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 1);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_2(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 2);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 2);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_3(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 3);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 3);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_4(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 4);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 4);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_5(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 5);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 5);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_6(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 6);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 6);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p0_7(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P0 |= (1 << 7);
		if (strcmp(args, "LOW") == 0)
			P0 &= ~(1 << 7);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3_2(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 2);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~(1 << 2);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3_4(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 4);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~(1 << 4);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3_5(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 5);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~(1 << 5);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3_6(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 6);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~(1 << 6);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

int8_t at_p3_7(char *args) {
	if (args != NULL) {
		if (strcmp(args, "HIGH") == 0)
			P3 |= (1 << 7);
		if (strcmp(args, "LOW") == 0)
			P3 &= ~(1 << 7);
	} else {
		if (SHELL_STATE)
			return CMD_ERROR;
	}

	return CMD_SUCCESS;
}

