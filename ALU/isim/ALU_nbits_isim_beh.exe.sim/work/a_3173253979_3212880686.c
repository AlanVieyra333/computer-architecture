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
static const char *ng0 = "/home/developer/Proyectos/xilinx/ALU/Carry.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_3173253979_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 3224);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1192U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t1 = (t0 + 1352U);
    t10 = *((char **)t1);
    t9 = *((unsigned char *)t10);
    t14 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t8, t9);
    t15 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t6, t14);
    t1 = (t0 + 1032U);
    t11 = *((char **)t1);
    t16 = *((unsigned char *)t11);
    t1 = (t0 + 1192U);
    t12 = *((char **)t1);
    t17 = *((unsigned char *)t12);
    t18 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t16, t17);
    t19 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t15, t18);
    t1 = (t0 + 3288);
    t13 = (t1 + 56U);
    t20 = *((char **)t13);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t19;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3144);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_3173253979_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3173253979_3212880686_p_0};
	xsi_register_didat("work_a_3173253979_3212880686", "isim/ALU_nbits_isim_beh.exe.sim/work/a_3173253979_3212880686.didat");
	xsi_register_executes(pe);
}
