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
static const char *ng0 = "/home/developer/Proyectos/xilinx/ProcesadorESCOMpis/ProcesadorESCOMips/modules/logFiles/logFiles.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_12303121079769504865_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_24166140421859237_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_3730903820_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(30, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 9464U);
    t4 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5392);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5280);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3730903820_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(31, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 9480U);
    t4 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5456);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5296);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3730903820_3212880686_p_2(char *t0)
{
    char t35[16];
    char t36[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    char *t31;
    unsigned char t32;
    unsigned char t33;
    unsigned char t34;
    unsigned int t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t24 = *((unsigned char *)t2);
    t25 = (t24 == (unsigned char)2);
    if (t25 == 1)
        goto LAB18;

LAB19:    t23 = (unsigned char)0;

LAB20:    if (t23 == 1)
        goto LAB15;

LAB16:    t4 = (unsigned char)0;

LAB17:    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t26 = (t25 == (unsigned char)2);
    if (t26 == 1)
        goto LAB32;

LAB33:    t24 = (unsigned char)0;

LAB34:    if (t24 == 1)
        goto LAB29;

LAB30:    t23 = (unsigned char)0;

LAB31:    if (t23 == 1)
        goto LAB26;

LAB27:    t4 = (unsigned char)0;

LAB28:    if (t4 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t26 = (t25 == (unsigned char)2);
    if (t26 == 1)
        goto LAB48;

LAB49:    t24 = (unsigned char)0;

LAB50:    if (t24 == 1)
        goto LAB45;

LAB46:    t23 = (unsigned char)0;

LAB47:    if (t23 == 1)
        goto LAB42;

LAB43:    t4 = (unsigned char)0;

LAB44:    if (t4 == 1)
        goto LAB39;

LAB40:    t3 = (unsigned char)0;

LAB41:    if (t3 != 0)
        goto LAB37;

LAB38:
LAB3:    t1 = (t0 + 5312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 9901);
    *((int *)t1) = 0;
    t7 = (t0 + 9905);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(39, ng0);
    t10 = xsi_get_transient_memory(16U);
    memset(t10, 0, 16U);
    t11 = t10;
    memset(t11, (unsigned char)2, 16U);
    t12 = (t0 + 9901);
    t13 = *((int *)t12);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (16U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 5520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 16U);
    xsi_driver_first_trans_delta(t18, t17, 16U, 0LL);

LAB7:    t1 = (t0 + 9901);
    t8 = *((int *)t1);
    t2 = (t0 + 9905);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 9901);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 1992U);
    t12 = *((char **)t7);
    t7 = (t0 + 2152U);
    t18 = *((char **)t7);
    t7 = (t0 + 9448U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t18, t7);
    t6 = (t5 - 0);
    t15 = (t6 * 1);
    t16 = (16U * t15);
    t17 = (0U + t16);
    t19 = (t0 + 5520);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t31 = *((char **)t22);
    memcpy(t31, t12, 16U);
    xsi_driver_first_trans_delta(t19, t17, 16U, 0LL);
    goto LAB3;

LAB12:    t7 = (t0 + 1352U);
    t11 = *((char **)t7);
    t29 = *((unsigned char *)t11);
    t30 = (t29 == (unsigned char)2);
    t3 = t30;
    goto LAB14;

LAB15:    t7 = (t0 + 1512U);
    t10 = *((char **)t7);
    t27 = *((unsigned char *)t10);
    t28 = (t27 == (unsigned char)3);
    t4 = t28;
    goto LAB17;

LAB18:    t1 = (t0 + 1152U);
    t26 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t23 = t26;
    goto LAB20;

LAB21:    xsi_set_current_line(53, ng0);
    t7 = (t0 + 2952U);
    t18 = *((char **)t7);
    t7 = (t0 + 2472U);
    t19 = *((char **)t7);
    t7 = (t0 + 9480U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t19, t7);
    t6 = (t5 - 0);
    t15 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t20 = (t18 + t17);
    t21 = (t36 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 15;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t8 = (0 - 15);
    t37 = (t8 * -1);
    t37 = (t37 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t37;
    t22 = ieee_p_2592010699_sub_12303121079769504865_503743352(IEEE_P_2592010699, t35, t20, t36, (unsigned char)0);
    t31 = (t0 + 3488U);
    t38 = *((char **)t31);
    t31 = (t38 + 0);
    t39 = (t35 + 12U);
    t37 = *((unsigned int *)t39);
    t37 = (t37 * 1U);
    memcpy(t31, t22, t37);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 9416U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t7, t1);
    t10 = xsi_vhdl_bitvec_srl(t10, t2, 16U, t5);
    t11 = (t0 + 3488U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    memcpy(t11, t10, 16U);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 9560U);
    t7 = ieee_p_2592010699_sub_24166140421859237_503743352(IEEE_P_2592010699, t35, t2, t1);
    t10 = (t35 + 12U);
    t15 = *((unsigned int *)t10);
    t15 = (t15 * 1U);
    t3 = (16U != t15);
    if (t3 == 1)
        goto LAB35;

LAB36:    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t11 = (t0 + 9448U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t12, t11);
    t6 = (t5 - 0);
    t16 = (t6 * 1);
    t17 = (16U * t16);
    t37 = (0U + t17);
    t18 = (t0 + 5520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 16U);
    xsi_driver_first_trans_delta(t18, t37, 16U, 0LL);
    goto LAB3;

LAB23:    t7 = (t0 + 1672U);
    t12 = *((char **)t7);
    t33 = *((unsigned char *)t12);
    t34 = (t33 == (unsigned char)2);
    t3 = t34;
    goto LAB25;

LAB26:    t7 = (t0 + 1352U);
    t11 = *((char **)t7);
    t30 = *((unsigned char *)t11);
    t32 = (t30 == (unsigned char)3);
    t4 = t32;
    goto LAB28;

LAB29:    t7 = (t0 + 1512U);
    t10 = *((char **)t7);
    t28 = *((unsigned char *)t10);
    t29 = (t28 == (unsigned char)3);
    t23 = t29;
    goto LAB31;

LAB32:    t1 = (t0 + 1152U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t24 = t27;
    goto LAB34;

LAB35:    xsi_size_not_matching(16U, t15, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(62, ng0);
    t7 = (t0 + 2952U);
    t18 = *((char **)t7);
    t7 = (t0 + 2472U);
    t19 = *((char **)t7);
    t7 = (t0 + 9480U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t19, t7);
    t6 = (t5 - 0);
    t15 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t20 = (t18 + t17);
    t21 = (t36 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 15;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t8 = (0 - 15);
    t37 = (t8 * -1);
    t37 = (t37 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t37;
    t22 = ieee_p_2592010699_sub_12303121079769504865_503743352(IEEE_P_2592010699, t35, t20, t36, (unsigned char)0);
    t31 = (t0 + 3488U);
    t38 = *((char **)t31);
    t31 = (t38 + 0);
    t39 = (t35 + 12U);
    t37 = *((unsigned int *)t39);
    t37 = (t37 * 1U);
    memcpy(t31, t22, t37);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 9416U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t7, t1);
    t10 = xsi_vhdl_bitvec_sll(t10, t2, 16U, t5);
    t11 = (t0 + 3488U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    memcpy(t11, t10, 16U);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t1 = (t0 + 9560U);
    t7 = ieee_p_2592010699_sub_24166140421859237_503743352(IEEE_P_2592010699, t35, t2, t1);
    t10 = (t35 + 12U);
    t15 = *((unsigned int *)t10);
    t15 = (t15 * 1U);
    t3 = (16U != t15);
    if (t3 == 1)
        goto LAB51;

LAB52:    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t11 = (t0 + 9448U);
    t5 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t12, t11);
    t6 = (t5 - 0);
    t16 = (t6 * 1);
    t17 = (16U * t16);
    t37 = (0U + t17);
    t18 = (t0 + 5520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 16U);
    xsi_driver_first_trans_delta(t18, t37, 16U, 0LL);
    goto LAB3;

LAB39:    t7 = (t0 + 1672U);
    t12 = *((char **)t7);
    t33 = *((unsigned char *)t12);
    t34 = (t33 == (unsigned char)3);
    t3 = t34;
    goto LAB41;

LAB42:    t7 = (t0 + 1352U);
    t11 = *((char **)t7);
    t30 = *((unsigned char *)t11);
    t32 = (t30 == (unsigned char)3);
    t4 = t32;
    goto LAB44;

LAB45:    t7 = (t0 + 1512U);
    t10 = *((char **)t7);
    t28 = *((unsigned char *)t10);
    t29 = (t28 == (unsigned char)3);
    t23 = t29;
    goto LAB47;

LAB48:    t1 = (t0 + 1152U);
    t27 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    t24 = t27;
    goto LAB50;

LAB51:    xsi_size_not_matching(16U, t15, 0);
    goto LAB52;

}


extern void work_a_3730903820_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3730903820_3212880686_p_0,(void *)work_a_3730903820_3212880686_p_1,(void *)work_a_3730903820_3212880686_p_2};
	xsi_register_didat("work_a_3730903820_3212880686", "isim/Main_TB_isim_beh.exe.sim/work/a_3730903820_3212880686.didat");
	xsi_register_executes(pe);
}
