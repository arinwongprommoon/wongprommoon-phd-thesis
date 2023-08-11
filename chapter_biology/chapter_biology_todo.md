# general

## Ask Peter

-   [ ] Discuss the distribution & KS plots with Peter?  These are new ones, and they are also difficult to interpret.
-   [ ] How do I deal with experiment repeats?  Do I pile the data together, or do I put them in the appendix?

## New text

-   [ ] Explain how growth rate and budding probability were calculated in the main text.  I wrote a short bit in the captions.
    -   Probably requires describing how bud volume was computed using aliby.
    -   This may fit better in the methods chapter.  Let&rsquo;s see how it goes.

## Minor formatting

-   [ ] change single-plot colours to match the new blue-orange colour scheme
-   [ ] shorten section titles
    -   Remove full stops
    -   Make the long ones shorter, or come up with shortened versions for TOC

# sync

## New figures

-   [ ] Figure: mutual information does not show a significant difference between GFP and superfolder GFP traces.
-   [ ] Figure: some cases in which there was an oscillation without cell division cycle progression or bud formation.
-   [ ] Add CEN.PK results after BY4741 and use a similar logic to the BY4741 stuff for discussion.  This is useful to show robustness.

## Facts

-   [ ] Citations needed re 90-min CDC

## New text

-   [ ] Add references to chapter 3 re the analysis methods
-   [ ] Discussion (probably in discussion section at the end): to be &rsquo;proper&rsquo;, I should perform an experiment with the BY4741 HTB2::mCherry I engineered.

# abrupt

## New figures

-   [ ] Add 10 g/L results.
    -   This is an islay experiment, was this segmented and HDF5 files backed up?
    -   Explain why 7.5 g/L & discuss contradictory results when cells start with 10 g/L glucose.  Could be e.g. glucose stores, glucose sensing.
-   [ ] Plot growth rates on single plots to show that cells are at different CDC stages but YMCs still sync upon starvation.
-   [ ] Check images to see if budded cells.
-   [ ] Re-create heatmap but using Butterworth instead of detrending

## Facts

-   [ ] Check with Papagiannakis et al. re their experiments to abruptly starve cells of glucose.  Did we get the same results?
-   [ ] Discuss the publications that show that bulk addition of certain carbon sources reset phase.
-   [ ] Citations re chemostat-based studies that suggested a diffusible metabolite.  Consult intro.

## New text

-   [ ] More discussion/analysis re CDC-YMC relationship, esp. cell stuck in G1/G2.  Plus interpretation re cell biology during starvation

# carbon

## general

-   [ ] Read Papagiannakis et al. again re their varying carbon sources.  Do my results agree?

## pyruvate

### New figures

-   [ ] Figure: pyruvate &#x2013; show that there were more cases in which the flavin signal peaks without a budding event

### New analysis

-   [ ] Add statistical tests to reject the null hypothesis that the mean duration of metabolic cycles in pyruvate is equal to the mean duration of metabolic cycles in high glucose.

### New text

-   [ ] Discussion/interpretation: Longer CDCs point of discussion cf Mellor (2016) and Slavov & Botstein

## low glucose

### New figures

-   [ ] Figure: low glucose &#x2013; plot low-glucose and high-glucose growth rates on same axes, same for budding probability, to strengthen comparison between conditions
-   [ ] Limiting glucose: My Monod experiment/Hongpei&rsquo;s data to justify choice of concentration.

### New analysis

-   [ ] KS test to compare the distributions of SNRs.

# potassium deficient

## New analysis

-   [ ] KS: Conclusions are a bit iffy.  I probably need to think of new statistical tests.

## New text

-   How are potassium-deficiency experiments linked to e.g. O&rsquo;Neill et al.?  Why was potassium important for them, and why did they expect YMCs to die?  Did they give an explanation as to why potassium-deficiency killed YMCs?

# deletions

## general

### New figures

-   [ ] Adding swe1, rim11
-   [ ] Figure: Add single time series to be consistent with other sections

### New text

-   [ ] Sub-population discussion cf Jane Mellor

## zwf1

### New figures/analysis

-   [ ] Proof that zwf1 does not grow well in high glucose

### New text

-   [ ] Elaborate more about compensating NADPH production in zwf1 strain, consult Minard et al. (2005).  Perhaps also FBA discussion re zwf1.  Refer to org note &ldquo;ZWF1&rdquo;.
-   [ ] Sub-population model likely applies to zwf1.  Fourier spectrum may show this better than SNR because the former shows two peaks.

## tsa1/2

### New analysis

-   [ ] tsa1/2: Is the bad ACF because of a wide variety of oscillation frequencies?  Look at the FFT inset, or do additional investigations.

# discussion

## interpretation

-   [ ] Check whether the CDC sequence described conforms with literature knowledge re CDC.
-   [ ] Check whether this recapitulates the hypothesis/aims I presented at the beginning of the chapter.
-   [ ] Check how repetitive this is with the main part of the chapter, and kill stuff accordingly.
-   [ ] Read the main part as I&rsquo;ve come up with some re-interpretations.  The interpretation here must take these into account and also sum them up concisely.
-   [ ] Re CDC pause in abrupt: Come up with new analysis to prove/disprove this.  Or link this with existing results.  It&rsquo;s still quite unclear to me.

## caveats

-   [ ] Caveats part: Worth reading with the introduction to iron out any logical inconsistencies.
-   [ ] Sub-populations of time series: There are methods that don&rsquo;t rely on machine learning &#x2013; consult notes with Andrew Millar
-   [ ] Fact-check feast & famine
