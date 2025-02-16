package EjerciciosTrimestreUno;

import java.util.Scanner;

public class AdopcionAnimales {
    static Scanner sc = new Scanner(System.in);
    public static String[] animalesAdopcion = {"gato", "perro"};
    public static String[] gatos = {"Persa", "Siames", "Maine Coon", "Bengala", "Sphynx", "British Shorthair"};
    public static String[] perros = {"Labrador Retriever", "Pastor Alemán", "Bulldog", "Beagle", "Poodle", "Chihuahua"};

    public static void main(String[] args) {
        int opcion = 0;
        System.out.println("Bienvenido a la web de adopcion de animales!!");
        menuPrincipal();
        System.out.println("Elige una opcion:");
        while (opcion != 2) {
            opcion = sc.nextInt();
            if (opcion == 1) {
                seleccionAnimal();
                menuPrincipal();

            }

        }
        System.out.println("Hasta Pronto!!");
    }

    public static void menuPrincipal() {
        System.out.println("------------------------------");
        System.out.println("1)seleccionar tipo de animal");
        System.out.println("2)salir");
        System.out.println("-------------------------------");

    }

    public static void seleccionAnimal() {
        System.out.println("1)Gato");
        System.out.println("2)Perro");
        int seleccion = sc.nextInt();


            if (seleccion == 1) {
                System.out.println("¡Has elegidos gatos!, Aqui tienes la lista de razas disponibles:");
                for (int i = 0; i < gatos.length; i++) {
                    System.out.println(i + "-" + gatos[i]);
                }
                System.out.println("Que raza quieres adoptar?");
                int razaElegida = sc.nextInt();
                if ( razaElegida< gatos.length) {
                        System.out.println("Enorabuena has adoptado un: " + gatos[razaElegida]);
                   }else {
                       System.out.println("numero invalido, ingrese un numero comprendido entre 0 y "+ gatos.length);
                   }


            } else if (seleccion == 2) {
                System.out.println("¡Has elegidos perros!, Aqui tienes la lista de razas disponibles:");
                for (int i = 0; i < perros.length; i++) {
                    System.out.println(i + "-" + perros[i]);
                }
                    System.out.println("¿Que raza quieres adoptar?");
                    int razaElegida = sc.nextInt();
                    System.out.println("Enorabuena has adoptado un: " + perros[razaElegida]);

            } else {
                System.out.println("numero invalido, ingrese un numero comprendido entre 0 y " + perros.length);
            }
            int razaElegida = sc.nextInt();
            System.out.println(razaElegida);



    }
}

