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

char *IEEE_P_3620187407;
char *WORK_P_0970346349;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3564397177;
char *WORK_P_2984550833;
char *IEEE_P_0774719531;
char *STD_STANDARD;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2984550833_init();
    work_p_0970346349_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_0143937076_3212880686_init();
    work_a_3320179311_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_1710397419_3212880686_init();
    work_a_1473844683_3212880686_init();
    work_a_2922992289_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_2599578570_3212880686_init();
    work_a_1637947560_3212880686_init();
    work_a_4106131694_3212880686_init();
    work_a_0598308462_3212880686_init();
    work_a_1353912292_3212880686_init();
    work_a_1130988942_3212880686_init();
    work_a_2633138767_3212880686_init();
    work_a_3453718486_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1809836099_2372691052_init();


    xsi_register_tops("work_a_1809836099_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_0970346349 = xsi_get_engine_memory("work_p_0970346349");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    WORK_P_2984550833 = xsi_get_engine_memory("work_p_2984550833");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
