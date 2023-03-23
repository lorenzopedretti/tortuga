{smcl}
{hi:help tortugapalette}{...}
{right:{browse "https://github.com/lorenzopedretti/tortuga":tortugapalette v2 (GitHub)}}

{hline}

{title:TORTUGAPALETTE}

{p 4 4 2}
{it:NOTE: This package requires Stata v15 or higher. Most schemes are defined using RGB colors, which can only be read in newer Stata versions.}

{title:Schemes}

1. Click on a scheme

{it:Series:}
    Arlecchino - {stata set scheme tortuga_arlecchino}
    
{it:Series:}
    Classic - {stata set scheme tortuga_classic}

2. Download Poppins font, generate a new graph. Go to Edit>Preferences and set Poppins as a font.
A quick way to do it is to download the font and then install it (available {browse "https://fonts.google.com/specimen/Poppins":here}). Finally you have to set it as Stata font for plots through
{stata graph set window fontface "Poppins"}

{hline}

Keywords: Stata, graphs, schemes
Version: {bf:tortugapalette} version 2
Date: 23 March 2023
License: {browse "https://opensource.org/licenses/MIT":MIT}

Author: {browse "https://pedretti.netlify.app/":Lorenzo Pedretti} (UniBocconi and Tortuga)
E-mail: lorenzo.pedretti@studbocconi.it
