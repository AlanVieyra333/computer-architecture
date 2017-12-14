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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/modules/stack/stack.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_3983655784_3212880686_p_0(char *t0)
{
    char t26[16];
    char t27[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    int t21;
    int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t21 = *((int *)t5);
    t22 = (t21 - 0);
    t6 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t9 = (16U * t6);
    t23 = (0 + t9);
    t1 = (t2 + t23);
    t7 = (t0 + 4128);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);
    t1 = (t0 + 3984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(256U);
    memset(t1, 0, 256U);
    t5 = t1;
    t6 = (16U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4064);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 256U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    t9 = (256U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)3);
    if (t16 == 1)
        goto LAB15;

LAB16:    t8 = (unsigned char)0;

LAB17:    if (t8 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t15 = (t8 == (unsigned char)3);
    if (t15 == 1)
        goto LAB23;

LAB24:    t4 = (unsigned char)0;

LAB25:    if (t4 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB18;

LAB19:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t15 = (t8 == (unsigned char)2);
    if (t15 == 1)
        goto LAB31;

LAB32:    t4 = (unsigned char)0;

LAB33:    if (t4 == 1)
        goto LAB28;

LAB29:    t3 = (unsigned char)0;

LAB30:    if (t3 != 0)
        goto LAB26;

LAB27:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t21 = *((int *)t5);
    t22 = (t21 - 0);
    t6 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t9 = (16U * t6);
    t23 = (0 + t9);
    t1 = (t2 + t23);
    t7 = (t27 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 15;
    t10 = (t7 + 4U);
    *((int *)t10) = 0;
    t10 = (t7 + 8U);
    *((int *)t10) = -1;
    t28 = (0 - 15);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t29;
    t10 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t26, t1, t27, 1);
    t11 = (t26 + 12U);
    t29 = *((unsigned int *)t11);
    t30 = (1U * t29);
    t3 = (16U != t30);
    if (t3 == 1)
        goto LAB36;

LAB37:    t12 = (t0 + 2688U);
    t13 = *((char **)t12);
    t31 = *((int *)t13);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    t34 = (16U * t33);
    t35 = (0U + t34);
    t12 = (t0 + 4064);
    t14 = (t12 + 56U);
    t24 = *((char **)t14);
    t25 = (t24 + 56U);
    t36 = *((char **)t25);
    memcpy(t36, t10, 16U);
    xsi_driver_first_trans_delta(t12, t35, 16U, 0LL);

LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1832U);
    t11 = *((char **)t2);
    t2 = (t0 + 2688U);
    t12 = *((char **)t2);
    t21 = *((int *)t12);
    t22 = (t21 - 0);
    t6 = (t22 * 1);
    t9 = (16U * t6);
    t23 = (0U + t9);
    t2 = (t0 + 4064);
    t13 = (t2 + 56U);
    t14 = *((char **)t13);
    t24 = (t14 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t11, 16U);
    xsi_driver_first_trans_delta(t2, t23, 16U, 0LL);
    goto LAB10;

LAB12:    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t19 = *((unsigned char *)t10);
    t20 = (t19 == (unsigned char)2);
    t4 = t20;
    goto LAB14;

LAB15:    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t17 = *((unsigned char *)t7);
    t18 = (t17 == (unsigned char)2);
    t8 = t18;
    goto LAB17;

LAB18:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2688U);
    t10 = *((char **)t1);
    t21 = *((int *)t10);
    t22 = (t21 + 1);
    t1 = (t0 + 2688U);
    t11 = *((char **)t1);
    t1 = (t11 + 0);
    *((int *)t1) = t22;
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t21 = *((int *)t5);
    t22 = (t21 - 0);
    t6 = (t22 * 1);
    t9 = (16U * t6);
    t23 = (0U + t9);
    t1 = (t0 + 4064);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_delta(t1, t23, 16U, 0LL);
    goto LAB10;

LAB20:    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t18 = *((unsigned char *)t7);
    t19 = (t18 == (unsigned char)2);
    t3 = t19;
    goto LAB22;

LAB23:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t4 = t17;
    goto LAB25;

LAB26:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2688U);
    t10 = *((char **)t1);
    t21 = *((int *)t10);
    t22 = (t21 - 1);
    t1 = (t0 + 2688U);
    t11 = *((char **)t1);
    t1 = (t11 + 0);
    *((int *)t1) = t22;
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t21 = *((int *)t5);
    t22 = (t21 - 0);
    t6 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t9 = (16U * t6);
    t23 = (0 + t9);
    t1 = (t2 + t23);
    t7 = (t27 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 15;
    t10 = (t7 + 4U);
    *((int *)t10) = 0;
    t10 = (t7 + 8U);
    *((int *)t10) = -1;
    t28 = (0 - 15);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t29;
    t10 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t26, t1, t27, 1);
    t11 = (t26 + 12U);
    t29 = *((unsigned int *)t11);
    t30 = (1U * t29);
    t3 = (16U != t30);
    if (t3 == 1)
        goto LAB34;

LAB35:    t12 = (t0 + 2688U);
    t13 = *((char **)t12);
    t31 = *((int *)t13);
    t32 = (t31 - 0);
    t33 = (t32 * 1);
    t34 = (16U * t33);
    t35 = (0U + t34);
    t12 = (t0 + 4064);
    t14 = (t12 + 56U);
    t24 = *((char **)t14);
    t25 = (t24 + 56U);
    t36 = *((char **)t25);
    memcpy(t36, t10, 16U);
    xsi_driver_first_trans_delta(t12, t35, 16U, 0LL);
    goto LAB10;

LAB28:    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t18 = *((unsigned char *)t7);
    t19 = (t18 == (unsigned char)3);
    t3 = t19;
    goto LAB30;

LAB31:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)2);
    t4 = t17;
    goto LAB33;

LAB34:    xsi_size_not_matching(16U, t30, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(16U, t30, 0);
    goto LAB37;

}


extern void work_a_3983655784_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3983655784_3212880686_p_0};
	xsi_register_didat("work_a_3983655784_3212880686", "isim/Main_TB_isim_beh.exe.sim/work/a_3983655784_3212880686.didat");
	xsi_register_executes(pe);
}
