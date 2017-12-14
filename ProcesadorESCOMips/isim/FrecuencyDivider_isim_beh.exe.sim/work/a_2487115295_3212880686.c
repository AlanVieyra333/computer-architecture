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
static const char *ng0 = "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/FrecuencyDivider.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3299428170688237929_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2487115295_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3608);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3512);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2487115295_3212880686_p_1(char *t0)
{
    char t10[16];
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3528);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 3672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(25, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3736);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 5984U);
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t10, t5, t2, 1);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t4 = (32U != t12);
    if (t4 == 1)
        goto LAB7;

LAB8:    t8 = (t0 + 3736);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5984U);
    t5 = (t0 + 6075);
    t7 = (t0 + 5968U);
    t8 = ieee_p_1242562249_sub_3299428170688237929_1035706684(IEEE_P_1242562249, t16, t5, t7, 2);
    t9 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t10, t8, t16, 1);
    t3 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t2, t1, t9, t10);
    if (t3 != 0)
        goto LAB9;

LAB11:
LAB10:    goto LAB3;

LAB7:    xsi_size_not_matching(32U, t12, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(30, ng0);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t4 = *((unsigned char *)t14);
    t17 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t13 = (t0 + 3672);
    t15 = (t13 + 56U);
    t18 = *((char **)t15);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t17;
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(31, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3736);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

}


extern void work_a_2487115295_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2487115295_3212880686_p_0,(void *)work_a_2487115295_3212880686_p_1};
	xsi_register_didat("work_a_2487115295_3212880686", "isim/FrecuencyDivider_isim_beh.exe.sim/work/a_2487115295_3212880686.didat");
	xsi_register_executes(pe);
}
