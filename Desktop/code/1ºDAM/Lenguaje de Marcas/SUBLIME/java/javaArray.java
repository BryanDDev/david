class javaArray {
    public static void main(String[] args) {
        int[] lista={2,-3,0,1,5,-9,7,-1,-2,6};
        int suma = 0;
        for(int i=0;i< lista.length;i++){
            if(lista[i]>0){
             suma+= lista[i];
        
            }
        }
        
        System.out.println(suma);
    }
}