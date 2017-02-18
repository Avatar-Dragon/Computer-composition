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
static const char *ng0 = "E:/XILINX/project/MulCPU/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};



static void Always_31_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3648);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB12:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);

LAB13:    t2 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t30 == 1)
        goto LAB28;

LAB29:
LAB30:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t8 = (t5 + 4);
    t21 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t21);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t8);
    t17 = *((unsigned int *)t21);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB52;

LAB49:    if (t18 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t6) = 1;

LAB52:    t28 = (t6 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);

LAB55:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(32, ng0);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    t28 = (t0 + 2408);
    xsi_vlogvar_assign_value(t28, t29, 0, 0, 32);
    goto LAB12;

LAB14:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 32, t8, 32);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB30;

LAB16:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 32, t8, 32);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB30;

LAB18:    xsi_set_current_line(37, ng0);

LAB31:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    t21 = (t5 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB33;

LAB32:    t22 = (t8 + 4);
    if (*((unsigned int *)t22) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t5) < *((unsigned int *)t8))
        goto LAB34;

LAB35:    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB39:    goto LAB30;

LAB20:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_rshift(t6, 32, t5, 32, t8, 32);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB30;

LAB22:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 32, t5, 32, t8, 32);
    t21 = (t0 + 2088);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB30;

LAB24:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t8);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t21 = (t5 + 4);
    t22 = (t8 + 4);
    t28 = (t6 + 4);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 | t13);
    *((unsigned int *)t28) = t14;
    t15 = *((unsigned int *)t28);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB40;

LAB41:
LAB42:    t32 = (t0 + 2088);
    xsi_vlogvar_assign_value(t32, t6, 0, 0, 32);
    goto LAB30;

LAB26:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t8);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t21 = (t5 + 4);
    t22 = (t8 + 4);
    t28 = (t6 + 4);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 | t13);
    *((unsigned int *)t28) = t14;
    t15 = *((unsigned int *)t28);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB43;

LAB44:
LAB45:    t32 = (t0 + 2088);
    xsi_vlogvar_assign_value(t32, t6, 0, 0, 32);
    goto LAB30;

LAB28:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t8);
    t11 = (t9 ^ t10);
    *((unsigned int *)t6) = t11;
    t21 = (t5 + 4);
    t22 = (t8 + 4);
    t28 = (t6 + 4);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 | t13);
    *((unsigned int *)t28) = t14;
    t15 = *((unsigned int *)t28);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB46;

LAB47:
LAB48:    t29 = (t0 + 2088);
    xsi_vlogvar_assign_value(t29, t6, 0, 0, 32);
    goto LAB30;

LAB33:    t28 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB35;

LAB34:    *((unsigned int *)t6) = 1;
    goto LAB35;

LAB37:    xsi_set_current_line(38, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 2088);
    xsi_vlogvar_assign_value(t32, t31, 0, 0, 32);
    goto LAB39;

LAB40:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t28);
    *((unsigned int *)t6) = (t17 | t18);
    t29 = (t5 + 4);
    t31 = (t8 + 4);
    t19 = *((unsigned int *)t29);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t33 = (t23 & t20);
    t24 = *((unsigned int *)t31);
    t25 = (~(t24));
    t26 = *((unsigned int *)t8);
    t34 = (t26 & t25);
    t27 = (~(t33));
    t35 = (~(t34));
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & t27);
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & t35);
    goto LAB42;

LAB43:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t28);
    *((unsigned int *)t6) = (t17 | t18);
    t29 = (t5 + 4);
    t31 = (t8 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t31);
    t35 = (~(t27));
    t33 = (t20 & t24);
    t34 = (t26 & t35);
    t36 = (~(t33));
    t37 = (~(t34));
    t38 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t38 & t36);
    t39 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t39 & t37);
    t40 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t40 & t36);
    t41 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t41 & t37);
    goto LAB45;

LAB46:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t28);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB48;

LAB51:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(47, ng0);
    t29 = ((char*)((ng5)));
    t31 = (t0 + 2248);
    xsi_vlogvar_assign_value(t31, t29, 0, 0, 1);
    goto LAB55;

}


extern void work_m_00000000001779873091_0886308060_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000001779873091_0886308060", "isim/CPU_isim_beh.exe.sim/work/m_00000000001779873091_0886308060.didat");
	xsi_register_executes(pe);
}
