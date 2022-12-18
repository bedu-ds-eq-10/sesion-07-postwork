#Postwork sesión 7. SERIES DE TIEMPO

### Objetivo

"Estimar modelos ARIMA y realizar predicciones"

### Requisitos
"Tener instalado R y RStudio
Haber trabajado con el Prework y el Work"


### Desarrollo

"Utilizando el siguiente vector numérico, realiza lo que se indica:"

  
  url <- "https://raw.githubusercontent.com/beduExpert/Programacion-R-Santander-2022/main/Sesion-07/Data/global.txt"

  # Leer datos en vector desde archivo
  Global <- scan(url, sep="")
  

"1) Crea un objeto de serie de tiempo con los datos de Global. La serie debe ser mensual comenzando en enero de 1856."

  Global.ts <- ts(Global, start = c(1856, 1), frequency = 12)


"2) Realiza una gráfica de la serie de tiempo anterior."

  plot(Global.ts, 
     main = "Serie Global",
     xlab = "Tiempo",
     sub = "Serie mensual: Enero de 1856 - Dociembre 2005")


"3) Ahora realiza una gráfica de la serie de tiempo anterior, transformando a la primera diferencia."

  plot(diff(Global.ts), 
       main = "Serie Global", 
       xlab = "Tiempo", ylab = "", 
       sub = "")



"4) ¿Consideras que la serie es estacionaria en niveles o en primera diferencia?"
  
  install.packages("tseries")
  library(tseries)

  adf.test(diff(Global.ts))
  
  # La serie es en primera diferencia

"5) Con base en tu respuesta anterior, obtén las funciones de autocorrelación y autocorrelación parcial."

  # autocorrelación
  acf(diff(Global.ts))


  # autocorrelación parcial
  pacf(diff(Global.ts))




