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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/XILINX/project/MulCPU/CPU_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_111_0(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 8128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);

LAB4:    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(121, ng0);

LAB5:    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t7 != 0);
    if (t8 > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(121, ng0);

LAB8:    xsi_set_current_line(122, ng0);
    t9 = (t0 + 7936);
    xsi_process_wait(t9, 250000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t9 = *((char **)t3);
    memset(t10, 0, 8);
    t11 = (t9 + 4);
    t4 = *((unsigned int *)t11);
    t5 = (~(t4));
    t6 = *((unsigned int *)t9);
    t7 = (t6 & t5);
    t8 = (t7 & 1U);
    if (t8 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t11) == 0)
        goto LAB10;

LAB12:    t12 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t12) = 1;

LAB13:    t13 = (t10 + 4);
    t14 = (t9 + 4);
    t15 = *((unsigned int *)t9);
    t16 = (~(t15));
    *((unsigned int *)t10) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB15;

LAB14:    t21 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 7208);
    xsi_vlogvar_assign_value(t23, t10, 0, 0, 1);
    goto LAB5;

LAB10:    *((unsigned int *)t10) = 1;
    goto LAB13;

LAB15:    t17 = *((unsigned int *)t10);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t10) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB14;

}


extern void work_m_00000000001173934690_1209620290_init()
{
	static char *pe[] = {(void *)Initial_111_0};
	xsi_register_didat("work_m_00000000001173934690_1209620290", "isim/CPU_test_isim_beh.exe.sim/work/m_00000000001173934690_1209620290.didat");
	xsi_register_executes(pe);
}
