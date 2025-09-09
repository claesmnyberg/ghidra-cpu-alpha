/*
 * gcc -o test-gcc test-gcc.c
 * objcopy -O binary --only-section=.text test-gcc test-gcc.text
 * objdump -D -b binary -m Alpha test-gcc.text
 */

int
main(void)
{
	int a;
	int b;

	a = b++;
}

