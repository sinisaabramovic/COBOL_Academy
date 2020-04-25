#include <libcob.h>
     
     static int (*GETSUM)(int *hello, int *world);
     
     int main()
     {
       int ret;
       char hello[8] = "Hello, ";
       char world[7] = "world!";
     
       /* initialize the COBOL run-time library */
       cob_init(0, NULL);
     
       /* Find the module with PROGRAM-ID "say". */
       say = cob_resolve("say");
     
       /* If there is no such module, show error and exit. */
       if(say == NULL) {
         exit(1);
       }
     
       /* Call the module found ... */
       ret = say(hello, world);
     
       /* ...and exit with the return code. */
       cob_stop_run(ret);
     }