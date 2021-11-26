package Verificador;
public class VerifcadorEmail {
    public String Vry (){
        String VrySeg = verificador1();
        return VrySeg;
    }
    private String verificador1(){
        int key[] = new int [6], keyPart;
        String keyComp = "";
        boolean keyVry = false;
        for (int i = 0; i < 6; i++){
            key[i] = (int)(Math.random() * 9 + 1) - 1;
            if(i > 0)
                for(int j = 0; j < i; j++)
                    if(key[j] == key [i]){
                        keyVry = true;
                        j = i;
                    }
            if(keyVry){
                i--;
                keyVry = false;
            }
        }
        for(int i = 0; i < 6; i++){
            keyPart = key[i];
            keyComp = keyComp + (Integer.toString(keyPart));
        }
        return keyComp;
    }
}