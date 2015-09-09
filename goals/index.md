---
layout: article
title: "Goals"
excerpt: "OHI goals for Golfo de Guayaquil"
share: false
ads: false
branch_scenario: published/region2015
toc: true
output: html_document
---

The following goal models are from the global assessment in 2014. These models should be modified when better data or indicators are available.

<nav class="navbar navbar-default" role="navigation">   <div class="container-fluid">     <div class="navbar-header">       <a class="navbar-brand" href="#">Branch/Scenario</a>     </div>     <div class="collapse navbar-collapse" id="navbar-1">       <ul class="nav navbar-nav">         <li class="dropdown">           <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">published/region2015<span class="caret"></span></a>           <ul class="dropdown-menu" role="menu">                       <li><a href="{{ site.baseurl }}/draft/region2015/goals/">draft/region2015</a></li>                     </ul>         </li>       </ul>     </div>   </div> </nav> 

<h2>Food Provision: Fisheries</h2>

<p>Amount of sustainable wild-caught seafood compared to the max sustainable</p>

<p>\[
x_{FIS} =  (\prod_{g=1}^{6} SS_{i,g}^{C_{i,g}})^\frac{1}{\sum{C_{i,g}}}
\]</p>

<ul>
<li><p>\(SS_{i,g}\) stock status score, based on B/Bmsy (biomass / maximum sustainable yield of biomass) and an underharvest penalty adjustment for reporting region \(i\) and taxonomic level \(g\)</p></li>
<li><p>\(C_{i,g}\) total catch for reporting region \(i\) and taxonomic level \(g\)</p></li>
<li><p>\(i\) OHI reporting region</p></li>
<li><p>\(g\) level of taxonomic grouping (ISSCAAP)</p></li>
</ul>

<h2>Food Provision: Mariculture</h2>

<p>Amount of sustainable farm-raised seafood compared to max sustainable</p>

<p>\[
x_{MAR} =  \frac{Y_{c}}{Y_{r}}
\]</p>

<p>\[
Y_{c} = \frac{\sum{k=1}^{N} Y_{k} * S_{M,k}}{P_{c}}
\]</p>

<ul>
<li><p>\(Y\) = current sustainably harvested total yield, current [\(c\)] or reference [\(r\)] </p></li>
<li><p>\(S_{M,k}\) = Sustainability score for each species \(k\)</p></li>
<li><p>\(P_{c}\) = Coastal population within 100km</p></li>
<li><p>\(Y_{r} = max(Y_{c})\)</p></li>
<li><p>\(N\) = number of mariculture species</p></li>
</ul>

<h2>Artisanal Fishing Opportunity</h2>

<p>the opportunity to fish artisanally, independent of how many fish are caught</p>

<p>\[
x_{AO} = (1 - D_{U}) * S_{AO}
\]</p>

<p>\[
D_{U} = (1 - NBI) * (1 - O_{AO})
\]</p>

<ul>
<li><p>\(D_{U}\) = unmet demand</p></li>
<li><p>\(S_{AO}\) = sustainability of fishing methods   </p></li>
<li><p>\(O_{AO}\) = access to artisanal fishing</p></li>
<li><p>\(NBI\) = unsatisfied basic needs as a percentage</p></li>
</ul>

<h2>Natural Products</h2>

<p>People access to coastal resources, whether or not they do actually fish in coastal waters</p>

<p>\[
x_{NP} = \frac{\sum_{p=1}^{N} w_p * x_p}{N}  
\]</p>

<p>\[
x_p = H_p * S_p
\]</p>

<p>\[
S_p = 1 - (\frac{E + R}{N})  
\]</p>

<ul>
<li><p>\(w_p\) = proportional peak US dollar value of product \(p\)  </p></li>
<li><p>\(x_p\) = sustainable-harvest score for product \(p\)  </p></li>
<li><p>\(H_p\) = harvest yield for product \(p\)  </p></li>
<li><p>\(S_p\) = sustainability of product \(p\) </p></li>
<li><p>\(E\) = exposure term </p></li>
<li><p>\(R\) = risk term</p></li>
<li><p>\(N\) = Number of Natural Products</p></li>
</ul>

<p>￼products:aquaria fishes, corals, shells, sponges, seaweeds, fish oil</p>

<h2>Carbon Storage</h2>

<p>Extent and condition of coastal habitats that store and sequester atmospheric carbon </p>

<p>\[
x_{CS} =  \sum_{k=1}^{N} \frac{C_{s,k}}{C_{r,k}} * \frac{A_{k}}{A_{T}}
\]</p>

<ul>
<li><p>\(C_{.,k}\) = condition of habitat \(k\), current [\(c\)] or reference[\(r\)]</p></li>
<li><p>\(A_{k}\) = area of habitat \(k\), current [\(c\)] or total area covered by all habitats assessed [T]</p></li>
<li><p>\(N\) = number of habitats</p></li>
</ul>

<p>habitats: seagrass beds, salt marshes, mangroves</p>

<h2>Coastal Protection</h2>

<p>Protection from inundation or erosion compared to the local natural potential</p>

<p>\[
x_{CP} =  \sum_{k=1}^{N} \alpha_{k} * \frac{C_{c,k}}{C_{r,k}}
\]</p>

<p>\[
\alpha_{k} = \frac{w_{k}*A_{k}}{\sum{w_{k}*A_{k}}}
\]</p>

<p>\[
w_{k} = \frac{r_{k}}{\sum{r_{k}}}
\]</p>

<ul>
<li><p>\(C_{.,k}\) = condition of habitat \(k\), current [\(c\)] or reference [\(r\)]</p></li>
<li><p>\(\alpha\) = weighted area of habitat \(k\)  </p></li>
<li><p>\(A_{k}\) = area of habitat \(k\) </p></li>
<li><p>\(r\) = habitat protective ability rank weight </p></li>
<li><p>\(N\) = number of habitats</p></li>
</ul>

<p>habitats: salt marshes, seagrass beds, mangroves, coral reefs, sea ice</p>

<h2>Tourism &amp; Recreation</h2>

<p>Tourism &amp; recreation value, independent of monetary exchange</p>

<p>\[
x_{TR} = \frac{VL_{c}*  %VL + VI_{c}* %VI}{VL_{r}+VI_{r}} * S_{t} 
\]</p>

<ul>
<li><p>\(VL_{.}\) = total number of local visitors, current [\(c\)] or reference [\(r\)]</p></li>
<li><p>\(%VL\) = percentage of local visitors for each region</p></li>
<li><p>\(VI_{.}\) = total number of international visitors, current [\(c\)] or reference [\(r\)]</p></li>
<li><p>\(%VL\) = percentage of international visitors for each region</p></li>
<li><p>\(S_{t}\) = sustainability measure</p></li>
<li><p>\(t\) = current year</p></li>
</ul>

<h2>Livelihoods &amp; Economies: Livelihoods</h2>

<p>Number of jobs and job quality from marine-associated sectors</p>

<p>\[
x_{LIV} = \frac{\frac{\sum_{i=1}^{k} j_{c,k}}{\sum_{i=1}^{k} j_{r,k}} + \frac{\sum_{i=1}^{k} g_{m,k}}{\sum_{i=1}^{k} g_{r,k}}}{2}
\]</p>

<ul>
<li><p>\(j_{.,k}\) = number of jobs within sector \(k\) at current [\(c\)] or reference [\(r\)] time</p></li>
<li><p>\(g_{.,k}\) = average wages per job for sector \(k\)  at current [\(m\)] or reference [\(r\)] region</p></li>
<li><p>sectors (\(k\)): tourism, commercial fishing, marine mammal watching, aquarium fishing, wave &amp; tidal energy, mariculture, transportation &amp; shipping, ports &amp; harbors, ship &amp; boatbuilding</p></li>
</ul>

<h2>Livelihoods &amp; Economies: Economies</h2>

<p>Revenue from marine associated sectors</p>

<p>\[
x_{ECO} = \sum_{i=1}^{k} \frac{vab_{c,k}}{vab_{r,k}} 
\]</p>

<ul>
<li><p>\(vab_{.,k}\) = aggregate gross value from each sector \(k\) at current [\(c\)] or reference [\(r\)] time</p></li>
<li><p>sectors (\(k\)): tourism, commercial fishing, marine mammal watching, aquarium fishing, wave &amp; tidal energy, mariculture, transportation &amp; shipping, ports &amp; harbors, ship &amp; boatbuilding, sea salt extraction</p></li>
</ul>

<h2>Sense of Place: Iconic Species</h2>

<p>Aesthetic connections to and cultural identity with a given region measured through the status of iconic species</p>

<p>\[
x_{ICO} = \frac{\sum_{i=1}^{N} S_{i} * w_{i}}{\sum_{i=1}^{N} S_{i}} 
\]</p>

<ul>
<li><p>\(S\) = number of assessed species in each threat category \(i\) </p></li>
<li><p>\(w\) = status weight assigned per threat category \(i\) </p></li>
<li><p>\(N\) = 6 threat categories </p></li>
</ul>

<p>iconic species list: WWF Priority Species</p>

<p>threat categories: IUCN</p>

<h1>Sense of Place: Lasting Special Places</h1>

<p>Aesthetic connections to and cultural identity with a given region measured through the status of meaningful locations</p>

<p>\[
x_{LSP} = \frac{(\frac{M}{M_{r}} + \frac{C}{C_{r}})}{2} 
\]</p>

<ul>
<li><p>\(M\) = percent protected marine coastal area compared to reference [\(r\).] \(C\) = percent protected coastline compared to reference [\(r\)]</p></li>
<li><p>\(C\) = managed area on coastal land (0-1km)</p></li>
<li><p>\(C_{t}\) = total coastal land area </p></li>
</ul>

<h2>Clean Waters</h2>

<p>The degree to which coastal waters are free of contaminants</p>

<p>\[
x_{CW} = \sqrt[4]{a * u * l * d}
\]</p>

<ul>
<li><p>\(a\)  = number of coastal people without access to sanitation  </p></li>
<li><p>\(u\) = 1 – (nutrient input)  </p></li>
<li><p>\(l\) = 1 – (chemical input)  </p></li>
<li><p>\(d\) = 1 – (marine debris input, by country)  </p></li>
</ul>

<h2>Biodiversity: Habitats</h2>

<p>Existence values people hold for biodiversity measured through the status of key habitats</p>

<p>\[
x_{HAB} =  \sum_{k=1}^{N} \frac{C_{c,k}}{C_{r,k}} * \frac{A_{c,k}}{A_{T}}
\]</p>

<ul>
<li><p>\(C_{.,k}\) = condition of habitat k, current [\(c\)] or reference[\(r\)]</p></li>
<li><p>\(A_{.,k}\) = area of habitat k, current [\(c\)] or total of all habitats [T]</p></li>
<li><p>\(N\) = number of habitats</p></li>
</ul>

<p>habitats: seagrass beds, salt marshes, subtidal soft-bottom habitats, mangroves, coral reefs, sea ice edge</p>

<h2>Biodiversity: Species</h2>

<p>Existence values people hold for biodiversity measured through the status of native species</p>

<p>\[
x_{SPP} = \frac{\sum_{k=1}^{M} (\frac{\sum_{i=1}^{N_{k}} w_{i}}{N_{k}}) * A_{k}}{A_{T}} 
\]</p>

<ul>
<li><p>\(M\) = number of habitats in the assessment region</p></li>
<li><p>\(N_{k}\) = number species in a habitat \(k\)</p></li>
<li><p>\(A_{.}\) = total area of habitat [\(k\)] or the assessment region [T]</p></li>
<li><p>\(w_{i}\) = status weight assigned per threat </p></li>
</ul>

<p>assessed species list and maps: IUCN</p>


<script>
// add bootstrap table styles to pandoc tables
$(document).ready(function () {
  $('tr.header').parent('thead').parent('table').addClass('table table-condensed');
});

// dynamically load mathjax for compatibility with self-contained
(function () {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src  = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
  document.getElementsByTagName("head")[0].appendChild(script);
})();
</script>

