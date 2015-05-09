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
static const char *ng0 = "C:/Users/Cavan/Documents/compe475/hw4pipeline/aluone.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};



static void Always_37_0(char *t0)
{
    char t10[8];
    char t42[16];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3304);
    *((int *)t2) = 1;
    t3 = (t0 + 3016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);

LAB5:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = (t0 + 1344U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t3, 32, t4, 32);
    t2 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t2, t10, 0, 0, 32, 0LL);

LAB24:    goto LAB2;

LAB6:    xsi_set_current_line(40, ng0);
    t7 = (t0 + 1184U);
    t8 = *((char **)t7);
    t7 = (t0 + 1344U);
    t9 = *((char **)t7);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t7 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB25;

LAB26:
LAB27:    t41 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t41, t10, 0, 0, 32, 0LL);
    goto LAB24;

LAB8:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB28;

LAB29:
LAB30:    t23 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t23, t10, 0, 0, 32, 0LL);
    goto LAB24;

LAB10:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    goto LAB24;

LAB12:    xsi_set_current_line(43, ng0);

LAB31:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    xsi_vlog_unsigned_multiply(t42, 64, t4, 32, t7, 32);
    t3 = (t0 + 2064);
    xsi_vlogvar_assign_value(t3, t42, 0, 0, 64);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t8 = (t4 + 4);
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t8);
    t16 = (t13 >> 0);
    *((unsigned int *)t7) = t16;
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t17 & 4294967295U);
    t18 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t18 & 4294967295U);
    t9 = (t0 + 1904);
    xsi_vlogvar_assign_value(t9, t10, 0, 0, 32);
    goto LAB24;

LAB14:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    *((unsigned int *)t10) = t12;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB33;

LAB32:    t19 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t19 & 4294967295U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 4294967295U);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t10);
    t25 = (t21 & t22);
    *((unsigned int *)t43) = t25;
    t9 = (t4 + 4);
    t14 = (t10 + 4);
    t15 = (t43 + 4);
    t26 = *((unsigned int *)t9);
    t27 = *((unsigned int *)t14);
    t28 = (t26 | t27);
    *((unsigned int *)t15) = t28;
    t29 = *((unsigned int *)t15);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB34;

LAB35:
LAB36:    t41 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t41, t43, 0, 0, 32, 0LL);
    goto LAB24;

LAB16:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    *((unsigned int *)t10) = t12;
    *((unsigned int *)t3) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB38;

LAB37:    t19 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t19 & 4294967295U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 4294967295U);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t10);
    t25 = (t21 | t22);
    *((unsigned int *)t43) = t25;
    t9 = (t4 + 4);
    t14 = (t10 + 4);
    t15 = (t43 + 4);
    t26 = *((unsigned int *)t9);
    t27 = *((unsigned int *)t14);
    t28 = (t26 | t27);
    *((unsigned int *)t15) = t28;
    t29 = *((unsigned int *)t15);
    t30 = (t29 != 0);
    if (t30 == 1)
        goto LAB39;

LAB40:
LAB41:    t41 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t41, t43, 0, 0, 32, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1344U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB43;

LAB42:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB44;

LAB45:    t14 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t14, t10, 0, 0, 32, 0LL);
    goto LAB24;

LAB25:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t8 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB27;

LAB28:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB30;

LAB33:    t13 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t10) = (t13 | t16);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t3) = (t17 | t18);
    goto LAB32;

LAB34:    t31 = *((unsigned int *)t43);
    t32 = *((unsigned int *)t15);
    *((unsigned int *)t43) = (t31 | t32);
    t23 = (t4 + 4);
    t24 = (t10 + 4);
    t35 = *((unsigned int *)t4);
    t36 = (~(t35));
    t37 = *((unsigned int *)t23);
    t38 = (~(t37));
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t44 = *((unsigned int *)t24);
    t45 = (~(t44));
    t33 = (t36 & t38);
    t34 = (t40 & t45);
    t46 = (~(t33));
    t47 = (~(t34));
    t48 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t48 & t46);
    t49 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t49 & t47);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t50 & t46);
    t51 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t51 & t47);
    goto LAB36;

LAB38:    t13 = *((unsigned int *)t10);
    t16 = *((unsigned int *)t8);
    *((unsigned int *)t10) = (t13 | t16);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t3) = (t17 | t18);
    goto LAB37;

LAB39:    t31 = *((unsigned int *)t43);
    t32 = *((unsigned int *)t15);
    *((unsigned int *)t43) = (t31 | t32);
    t23 = (t4 + 4);
    t24 = (t10 + 4);
    t35 = *((unsigned int *)t23);
    t36 = (~(t35));
    t37 = *((unsigned int *)t4);
    t33 = (t37 & t36);
    t38 = *((unsigned int *)t24);
    t39 = (~(t38));
    t40 = *((unsigned int *)t10);
    t34 = (t40 & t39);
    t44 = (~(t33));
    t45 = (~(t34));
    t46 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t46 & t44);
    t47 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t47 & t45);
    goto LAB41;

LAB43:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB45;

LAB44:    *((unsigned int *)t10) = 1;
    goto LAB45;

}


extern void work_m_00000000000994832623_2432674531_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000000994832623_2432674531", "isim/testbench_isim_beh.exe.sim/work/m_00000000000994832623_2432674531.didat");
	xsi_register_executes(pe);
}
