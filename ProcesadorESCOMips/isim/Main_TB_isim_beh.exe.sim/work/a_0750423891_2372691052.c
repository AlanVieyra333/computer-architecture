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
static const char *ng0 = "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/Main_TB.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3564397177;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_2258168291854845616_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_0750423891_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3200U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3008);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0750423891_2372691052_p_1(char *t0)
{
    char t5[16];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    int t11;
    int64 t12;
    unsigned char t13;
    int t16;

LAB0:    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2376U);
    t3 = (t0 + 6816);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 10;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (10 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)1);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 6826);
    t7 = (t5 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 1;
    t10 = (t7 + 4U);
    *((int *)t10) = 2;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t8 = (2 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t9;
    t11 = (2 + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t5, (unsigned char)0, t11);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 6828);
    t7 = (t5 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 1;
    t10 = (t7 + 4U);
    *((int *)t10) = 11;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t8 = (11 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t9;
    t11 = (11 + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t5, (unsigned char)0, t11);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 6839);
    t7 = (t5 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 1;
    t10 = (t7 + 4U);
    *((int *)t10) = 15;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t8 = (15 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t9;
    t11 = (15 + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t5, (unsigned char)0, t11);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 6854);
    t7 = (t5 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 1;
    t10 = (t7 + 4U);
    *((int *)t10) = 28;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t8 = (28 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t9;
    t11 = (28 + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t5, (unsigned char)0, t11);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2376U);
    t4 = (t0 + 2552U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(76, ng0);
    t12 = (10 * 1000LL);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t12);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t12 = (7 * 1000LL);
    t2 = (t0 + 3256);
    xsi_process_wait(t2, t12);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6882);
    *((int *)t2) = 1;
    t3 = (t0 + 6886);
    *((int *)t3) = 80;
    t8 = 1;
    t11 = 80;

LAB12:    if (t8 <= t11)
        goto LAB13;

LAB15:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2376U);
    std_textio_file_close(t2);
    xsi_set_current_line(95, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(83, ng0);

LAB18:    t4 = (t0 + 3768);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 6882);
    t8 = *((int *)t2);
    t3 = (t0 + 6886);
    t11 = *((int *)t3);
    if (t8 == t11)
        goto LAB15;

LAB20:    t16 = (t8 + 1);
    t8 = t16;
    t4 = (t0 + 6882);
    *((int *)t4) = t8;
    goto LAB12;

LAB16:    t7 = (t0 + 3768);
    *((int *)t7) = 0;
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 2048U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 8U);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 8U);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 2048U);
    t6 = *((char **)t4);
    memcpy(t14, t6, 8U);
    t4 = (t0 + 6672U);
    ieee_p_3564397177_sub_2258168291854845616_91900896(IEEE_P_3564397177, t2, t3, t14, t4, (unsigned char)0, 3);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2552U);
    t4 = (t0 + 1928U);
    t6 = *((char **)t4);
    memcpy(t15, t6, 8U);
    t4 = (t0 + 6656U);
    ieee_p_3564397177_sub_2258168291854845616_91900896(IEEE_P_3564397177, t2, t3, t15, t4, (unsigned char)0, 28);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3256);
    t3 = (t0 + 2376U);
    t4 = (t0 + 2552U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB14;

LAB17:    t6 = (t0 + 1152U);
    t13 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t6, 0U, 0U);
    if (t13 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_0750423891_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0750423891_2372691052_p_0,(void *)work_a_0750423891_2372691052_p_1};
	xsi_register_didat("work_a_0750423891_2372691052", "isim/Main_TB_isim_beh.exe.sim/work/a_0750423891_2372691052.didat");
	xsi_register_executes(pe);
}
