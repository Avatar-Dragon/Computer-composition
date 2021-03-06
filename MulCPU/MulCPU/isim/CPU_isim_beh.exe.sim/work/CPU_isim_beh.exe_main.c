/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003996006001_3966769531_init();
    work_m_00000000000293178894_2937169066_init();
    work_m_00000000001253780427_2411315895_init();
    work_m_00000000000677096772_4066630463_init();
    work_m_00000000000873000538_1733832700_init();
    work_m_00000000003226030338_1128553341_init();
    work_m_00000000000158721494_0181579643_init();
    work_m_00000000003996230734_0490733100_init();
    work_m_00000000001859928383_0707132209_init();
    work_m_00000000002922815164_1536036516_init();
    work_m_00000000001168589895_0855933332_init();
    work_m_00000000001454332465_3674772129_init();
    work_m_00000000000022815615_3509440917_init();
    work_m_00000000001779873091_0886308060_init();
    work_m_00000000000435679635_2461264495_init();
    work_m_00000000003341064860_4032020776_init();
    work_m_00000000004116458311_4185893606_init();
    work_m_00000000004069036532_3508565487_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004069036532_3508565487");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
