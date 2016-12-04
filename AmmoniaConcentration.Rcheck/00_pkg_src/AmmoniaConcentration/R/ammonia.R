ammonia <- function(total_ammonia, temperature, ph, type_of_temperature)
  {

  ## Convert temperature to Kelvin (K) if it is Celsius (C) or Fahrenheit (F)

  if (type_of_temperature == "C"){
  temperature <- temperature +273
  }

  if (type_of_temperature == "F"){
  temperature = 5 * (temperature - 32) / 9 + 273
  }

  ## Calculate pka with the equation provided by Emerson et al. (1975)
  pka <- 0.09018 + 2729.92/temperature


  ## Calculate difference between pka and pH
  pka_ph <- pka-ph


  ## Calculate 10 to the power of the difference calculated
  ten_pka_ph <- 10^pka_ph


  ## Calculate ammonia concentration
  nh3 <- 1/(ten_pka_ph+1)


  ## Transform to percentage
  perc_nh3 <- nh3*100


  ## Calculate the concentration of un-ionized ammonia in the total ammonia aqueous solution
  nh3_mgL <- total_ammonia*perc_nh3/100


  list(pka = pka,
  pka_ph = pka_ph,
  ten_pka_ph = ten_pka_ph,
  nh3 = nh3,
#  perc_nh3 = perc_nh3,
  nh3_mgL = nh3_mgL)

  }


