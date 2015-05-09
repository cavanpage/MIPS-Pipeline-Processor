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
static const char *ng0 = "C:/Users/Cavan/Documents/compe475/hw4pipeline/clk2.v";
static int ng1[] = {0, 0};



static void Initial_54_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(55, ng0);

LAB2:    xsi_set_current_line(56, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3664);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4144);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4464);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 3, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4304);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4784);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4944);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 5, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5104);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 5, 0LL);
    xsi_set_current_line(66, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5264);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 5, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 5424);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Always_70_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 6592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 7160);
    *((int *)t2) = 1;
    t3 = (t0 + 6624);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(73, ng0);

LAB9:    xsi_set_current_line(74, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3664);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4464);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4144);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4304);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4784);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4944);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5264);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5424);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Always_89_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 6840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 7176);
    *((int *)t2) = 1;
    t3 = (t0 + 6872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);

LAB5:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t0 + 3664);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1664U);
    t3 = *((char **)t2);
    t2 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1824U);
    t3 = *((char **)t2);
    t2 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2144U);
    t3 = *((char **)t2);
    t2 = (t0 + 4144);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2304U);
    t3 = *((char **)t2);
    t2 = (t0 + 4304);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1984U);
    t3 = *((char **)t2);
    t2 = (t0 + 4464);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2624U);
    t3 = *((char **)t2);
    t2 = (t0 + 4784);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2784U);
    t3 = *((char **)t2);
    t2 = (t0 + 4944);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2944U);
    t3 = *((char **)t2);
    t2 = (t0 + 5104);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3104U);
    t3 = *((char **)t2);
    t2 = (t0 + 5264);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3264U);
    t3 = *((char **)t2);
    t2 = (t0 + 5424);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB2;

}


extern void work_m_00000000001921474499_2850168338_init()
{
	static char *pe[] = {(void *)Initial_54_0,(void *)Always_70_1,(void *)Always_89_2};
	xsi_register_didat("work_m_00000000001921474499_2850168338", "isim/testbench_isim_beh.exe.sim/work/m_00000000001921474499_2850168338.didat");
	xsi_register_executes(pe);
}
