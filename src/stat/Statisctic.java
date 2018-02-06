package stat;

import java.util.concurrent.atomic.AtomicIntegerArray;

public class Statisctic {

    private static AtomicIntegerArray[] questionBox = { new AtomicIntegerArray(5), new AtomicIntegerArray(5),
                                 new AtomicIntegerArray(5), new AtomicIntegerArray(5), new AtomicIntegerArray(4)};

    public static void update(String[] values){
        for (int i = 0; i < values.length; i++) {

            if (values[i] != null) {
                int value = Integer.parseInt(values[i]);
                questionBox[i].incrementAndGet(value - 1);
            }
        }
    }

    public static String getPercentageValue(int boxIndex, int index){
        int sum = 0;
        for (int i = 0; i < questionBox[boxIndex].length(); i++) {
            sum += questionBox[boxIndex].get(i);
        }

        float value = questionBox[boxIndex].get(index);

        if (sum == 0) return "";
        value = (value / sum)*100;

        return checkedFloat(String.format("%.1f", value));
    }

    private static String checkedFloat(String value){
        if (value.endsWith(".0")) return value.substring(0,(value.length()-2) ).concat("%");
        return value.concat("%");
    }
}


