#!/usr/bin/env python2

# 1st method
def method_1():
    week_1_gain = 31;
    total_gain = week_1_gain;
    last_week_gain = week_1_gain;
    inc = 1;
    while(total_gain < 150):
        week_gain = (last_week_gain * 0.8);
        total_gain += week_gain;
        last_week_gain = week_gain;
        inc += 1;
        print(str(total_gain));
    print(str(inc));

# 2nd method
def method_2():
    week_1_gain = 31;
    total_gain = week_1_gain;
    last_week_gain = week_1_gain;
    inc = 1;
    while(total_gain < 150):
        week_gain = (last_week_gain - (0.2 * last_week_gain));
        total_gain += week_gain;
        last_week_gain = week_gain;
        inc += 1;
        print(str(total_gain));
    print(str(inc));

method_1();
