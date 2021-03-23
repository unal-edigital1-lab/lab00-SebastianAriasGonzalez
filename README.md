# lab01- sumador 
laboratorio 01 introducción a HDL

En esta plantilla debe adicionar la documentación del laboratorio

* Sebastian David Arias Gonzalez

Archivo sum1bcc_primitive.v
![image](https://user-images.githubusercontent.com/79991587/112210407-a7462e00-8be8-11eb-93c9-bcfd2b0c7477.png)
Archivo sum1bcc.v
![image](https://user-images.githubusercontent.com/79991587/112210817-2dfb0b00-8be9-11eb-955e-3aa07413a946.png)
Si bien ambos programas manejan los datos de manera distinta el resultado es el mismo
Simulación
![image](https://user-images.githubusercontent.com/79991587/112211445-e628b380-8be9-11eb-97ba-8705caf93c2c.png)
Para esta simulación se uso el siguiente archivo bench.
![image](https://user-images.githubusercontent.com/79991587/112215760-bcbe5680-8bee-11eb-9be1-4c4148c7c7a4.png)
Se uso el mismo archivo bench porque las entradas y las salidas de ambos programas son las mismas.

Una vez se comprobo que el sumador de un bit funciona correctamente se implemento un sumador de 4 bits usando como base este programa.
Como resultado se obtiene el siguiente programa.
![image](https://user-images.githubusercontent.com/79991587/112225246-7bcc3f00-8bfa-11eb-9b9d-4f6806b80dcf.png)
Para realizar la simulación del programa se uso el siguiente archivo de testbench.
![image](https://user-images.githubusercontent.com/79991587/112225652-19c00980-8bfb-11eb-9840-29ee016d542b.png)
El resultado de la simulación es el siguiente.
![image](https://user-images.githubusercontent.com/79991587/112225777-4d029880-8bfb-11eb-96f1-ec9792ee82ae.png)
