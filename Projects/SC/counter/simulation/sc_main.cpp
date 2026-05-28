#include "sc_counter_TB.h"

int sc_main(int argc, char** argv)
{
    //Verilated::commandArgs(argc, argv);

    //sc_counter_TB u_sc_counter_TB("u_sc_counter_TB");
    sc_counter_TB* u_sc_counter_TB;
    u_sc_counter_TB = new sc_counter_TB("u_sc_counter_TB");

    char szCmd[PATH_MAX], *_szCmd;

    while(true)
    {
        do
        {
            fputs("> ", stdout);
            fflush(stdout);
            _szCmd = fgets(szCmd, sizeof(szCmd), stdin);
            szCmd[strcspn(szCmd, "\n")] = '\0';
        } while( strlen(szCmd) == 0);
        //fputs(szCmd, stdout);
        //fflush(stdout);

        if (strcmp(szCmd, "help")==0)
        {
            printf("Help:\n");
            printf("\treset\n");
            printf("\tnreset\n");
            printf("\trun\n");
            printf("\tquit\n");
            fflush(stdout);
        }
        else if (strcmp(szCmd, "quit")==0)
        {
            sc_close_vcd_trace_file(u_sc_counter_TB->fp);
            u_sc_counter_TB->tfp->close();
            sc_stop();
            break;
        }
        else if (strcmp(szCmd, "reset")==0)
            u_sc_counter_TB->nreset.write(1);
        else if (strcmp(szCmd, "nreset")==0)
            u_sc_counter_TB->nreset.write(0);
        else if (strcmp(szCmd, "run")==0)
        {
            sc_start(CLOCK_PERIOD/2, SC_NS);
        }

        fflush(nullptr);
        u_sc_counter_TB->tfp->flush();
    }

    return 0;
}
