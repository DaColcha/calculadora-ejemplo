package com.example.calculadoraejemplo;

public class Utils {

    public static double calculadorInteresComp(double capital, double interes, double anios, double perd){

        return capital * Math.pow((1+ (interes / perd)), perd * anios);

    }
}
