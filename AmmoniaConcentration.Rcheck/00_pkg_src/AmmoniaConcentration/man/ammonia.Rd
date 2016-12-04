\name{ammonia}
\alias{ammonia}
\title{Calculation of un-ionized ammonia (NH3) in total ammonia aqueous solution}
\usage{
ammonia(total_ammonia, temperature, ph, type_of_temperature)
}
\arguments{
\item{total_ammonia}{Total ammonia (NH3 + NH4) in the aqueous solution}

\item{temperature}{Temperature of the aqueous solution}

\item{ph}{pH of the aqueous solution}

\item{type_of_temperature}{Unit of measure of temperature, "K" for Kelvin, "C" for Celsius and "F" for Fahrenheit }}


\description{
The total ammonia in aqueous solution is present in two chemical species: un-ionized
ammonia, NH 3 , and the ionized form, NH 4 +. The NH 3 species is the one more toxic for
aquatic organisms, but current analytical methods do not permit measurement of NH 3,
 and NH 4 + separately. The concentration of each chemical species in the total ammonia is dependent of a number of factors, with the pH and the temperature being the most
important.

The equation presented by Emerson et al. (1975) permits the calculation of
the NH 3 fraction from the total ammonia measured in freshwater, as long as you also
have the pH and temperature data from the sample.
The calculus first calculates the pK a, which is the ionization constant of the ammonium ion.
To calculate the pK a value of the sample, we use the equation:

\deqn{ pKa = 0.09018 + 2727.92/T}

where T is the temperature in Kelvin.

To calculate the fraction of NH3 , we use the equation:

\deqn{f = 1/(10^(pKa-pH)+1)}

Note: the equation for pK a is invalid outside the temperature range of 0-50 C (273-323
Kelvin), because is the range where the pK a values used to make the equation were
obtained empirically.
}
\value{
The function returns a list with all steps of the calculation.
pka: the immunization constant;
pka_ph: the difference between pka and the informed pH;
ten_pka_ph: 10 to the power of pka_ph;
nh3: the fraction of NH3;
nh3_mgL: the concentration of un-ionized ammonia in the acqueous solution.
}

\references{
EMERSON, K.; RUSSO, R.C.; LUND, R.E. et al. \emph{Aqueous ammonia
equilibrium calculations: Effect of pH and temperature.} Journal of Fisheries Research
Board of Canada, v.32, p.2379-2383, 1975.
}


\examples{
ammonia(5.14, 294.4, 6.9, "K")
ammonia(0.98, 27.7, 8.05, "C")

}
