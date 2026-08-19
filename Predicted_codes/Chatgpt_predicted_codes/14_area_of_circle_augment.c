#include <stdio.h>
#include <math.h>

int entry_point(int rad, int *temptemp1, int *temptemp2) {
    double conv_reg_76;
    double reg_60;
    double grp_fu_55_p0;
    double grp_fu_55_p1;
    double grp_fu_55_p2;
    double area_circle_fu_49_p1;

    conv_reg_76 = (double)rad;
    grp_fu_55_p0 = conv_reg_76;
    grp_fu_55_p1 = 3.141592653589793;
    grp_fu_55_p2 = grp_fu_55_p0 * grp_fu_55_p1;
    reg_60 = grp_fu_55_p2;
    grp_fu_55_p0 = reg_60;
    grp_fu_55_p1 = conv_reg_76;
    grp_fu_55_p2 = grp_fu_55_p0 * grp_fu_55_p1;
    reg_60 = grp_fu_55_p2;
    area_circle_fu_49_p1 = (float)reg_60;

    *temptemp1 = (int)area_circle_fu_49_p1;
    *temptemp2 = rad;

    return 0;
}