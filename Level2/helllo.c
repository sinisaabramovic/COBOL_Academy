 #include <libcob.h>
     
extern int say(char *hello, char *world);

int
main()
{
  int ret;
  char hello[8] = "Hello, ";
  char world[7] = "world!";

  /* initialize the COBOL run-time library */
  cob_init(0, NULL);

  /* call the static module and store its return code */
  ret = say(hello, world);

  /* shutdown the COBOL run-time library, keep program running */
  (void)cob_tidy();

  return ret;
}