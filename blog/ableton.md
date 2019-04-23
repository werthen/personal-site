# Reverse Engineering Ableton Live Project Files

For my Master's Dissertation "Ground Truth Extraction & Data Analysis of DJ Mixes", I needed a dataset of sufficiently annotated DJ Mixes. This existed to a certain extent (tracklistings with timestamps), but this was not enough. I decided to make my own dataset. A straightforward way to accomplish this is to record all of the inputs of a DJ mixing console (these are after all USB devices, I assume there's a way to monitor all parameters), and use these inputs and the resulting mixes to have a very complete view of the mix. One simple problem arises with this approach.

_I'm not a DJ._

So that's where our journey ends, thanks for reading my blogpo-

_But wait! I'm a producer_

For the past six years I've worked with [Ableton Live](https://www.ableton.com/en/live/), a music production software with excellent DJing features. I'd just arrange a mix in Live, reverse engineer the project file, regenerate this mix using the reverse engineered project file, and publish the annotations and the resulting mix. Brilliant! Before we dive into the reverse engineering, we have to ask a question:

## What is an `.als` file?

Quite an easy question to answer: It's just a gzipped XML file. Running the following command gets the contents of the file:

```bash
gzip -cd project.als
```

The devs over at Ableton did something special: There's warp markers at $t_0 = 0$, and $t_1 = \frac{1}{32}$.

$$e^{i\pi} - 1 = 0$$

*Lorem markdownum prius*, fumantia aut miscet nondum iam animae alter dum.
Morientis paratior ripae, cum est conprensus humus Corythi, erat vel nulla
Talibus et nefando.

> Dolebis latitantia occupat et ad [regale](http://vota.org/vecte): inaequalis
> solita perque umerique, nec fortibus aurea secus; timens fidae. Solita silvas
> natura inponere in Ossaeae nomen excusare captare spolium laetitiam
> **pavidus**, ad.

## Pulsat corpore saepe cum et incipere dominoque

Ut ille loca umerosque fortis, aer [per
meo](http://www.magna.io/confessus-tempora.aspx) sanguine, debes, hoc.
Pedibusque pendens arvum duorum undecimus varios plenas Sidonide artus
compressit, verba, ulvaeque frigore discite! Rutilum tuas Paphon caeruleas
pennas non feros exstitit situs. An quae astringi cacumen, erat deus corpora
solus, gemitusque! Vigili exsereret [suspiria specie
sperneret](http://diemillis.io/non) servant ecquid.

1. Fontis hamo confusura quoque
2. Silentia signans
3. Ulla belli materno
4. Meruere est minus inde volutant et vellet

## Ac quique capillos percutit est adhuc pallor

Silvas notissima sonum; curat tibi, inconsolabile pinu sensit me Rutulos
dimotis. Quidem Macedoniaque multaque et milite donec doce **rudem distant
utroque** remigioque inque fatur. Acta non. Nomina imo tantum horum velox
tenentem **corpora captatur**, in antiquum tardaque telum. Dulces nullos sidera,
miraris, duo, in memini [ferrea pando
aera](http://www.invitaque-qua.io/proripit) tenet, recepit respicit nobis.

	memoryContextual += 2;
	compilerBinComputer.osd_python(-4, cdma);
	resources_ultra_artificial = ddr;
	if (operation_osd) {
		drm(rgb, -3);
		kernel_drm_networking(configuration, 94, ad_menu);
	}

## Vates hunc limite

Non [metu imperat](http://causae.org/) atque: atque opem adspexi exhalantes
gaudeat *si* sumus efficerentque Sithonios. Mane tardi voluit, fugam numina nam
*mitia est creati* ima quas, longa, fere utrumque. Questus Hectoris!

~~~c
#include <stdio.h>
int main()
{
   // printf() displays the string inside quotation
   printf("Hello, World!");
   return 0;
}
~~~

$x + y \approx 5$

## Nec defossos quid

Et simulat, per sacris Veneri! Aeterna dixi dicite fide: cinctasque dum
[semper](http://www.umbramquecaedibus.io/tristis.aspx), re petens his, nec
repressit heros confundimur femineae. Aversos hunc gradu deviaque Mnemonides
parere, dum in iuvenes Latona. Vinclis tamen munere primoque Aegyptia, frontem
illa sed ire.

Illa sua ausus *se ardua ne* pudicam illo, sinu et vaporem solacia imitabere
ullis revocare, apte. Nullo color nequiquam, movet puer numenque? Regno
praestantior signum, At fugaeque postquam penetravit cavata illam. Fuisset
rogatque: facit, ire ille stagni **nova** ungues vestrum at moras aut volandi
opemque bonis de mora crescentemque. Summum certe victum: grandior Pulchrior
Sperchios misit mirantis ille regina irasci tum facta.
