## Final Cut Skills
finalcut pro X 10.4.4

### Contents
- [ArcTime Manipulation](#arctime)
- [Import Subtitle into FinalCut](#importsubtitle)
- [Apply LetterBox Effect](#applyletterbox)
- [Logo Addition](#addlogo)
- [Effect Introduction](#effect)
- [Transition Introduction](#transition)

<a id=arctime></a>
### ArcTime Manipulation
- export subtitle and XML

just select `dimension` **1920x1080** and `fps` **23.976**

<div align=left><img src="./res/expfrom_arctime.png" width=95%></div>

- select saved path

you'd better make a **Separated Directory** to store all the **PNGs** and **XML**

<div align=left><img src="./res/selxml_savedpath.png" width=95%></div>

<a id=importsubtitle></a>
### Import Subtitle into FinalCut
- import xml

only import the **XML**, and it will load the **PNGs** automatically

ignore all warnings

<div align=left><img src="./res/fcut_importxml.png" width=95%></div>

- open title safe zone

<div align=center><img src="./res/safe_zone.png" width=55%></div>

- adjust position and scale

select only **one** `PNG`

scale its size to **85%** and put its `Y` position to **-115px**

or `PNG` **90%** and `Y` position **-110px**

<div align=center><img src="./res/subtitle_position.png" width=60%></div>

- paste attribute to other `PNGs`

`CMD-C` the selected `PNG` and `CMD-A` all of them

<div align=left><img src="./res/paste_attribute.png" width=100%></div>

- create new compound clip

<div align=left><img src="./res/create_compoundclip.png" width=100%></div>

- go back in `Timeline`

<div align=left><img src="./res/goback_intimeline.png" width=100%></div>

- drag the created **compound subtitle** to `Timeline`

<div align=left><img src="./res/dragsubtitle_timeline.png" width=100%></div>

<a id=applyletterbox></a>
### Apply LetterBox Effect
- launch effect

`CMD-C` one `Clip` and search `Letterbox` effect

**Double Click** `Letterbox`

<div align=left><img src="./res/applyeffect_letterbox.png" width=100%></div>

- adjust parameter

change `Aspect Ratio` from default **1.85:1** to **2.35:1**

<div align=center><img src="./res/adjust_letterbox.png" width=60%></div>

- paste effect to other `Clips`

`CMD-C` the selected `Clip` and `CMD-A` all of them

<div align=center><img src="./res/paste_effect.png" width=60%></div>

<a id=addlogo></a>
### Logo Addition
scale `logo` size to **23%** and drag it to the right position

<div align=center><img src="./res/logo.png" width=60%></div>

<a id=effect></a>
### Effect Introduction
#### Gaussian
- Add Shape

<div align=center><img src="./res/gaussian_addshape.png" width=60%></div>

change the shape as you wish

If you want to edit it again after first action, sigle click below **rectangle marked with red**.

<div align=center><img src="./res/gaussian_editshape.png" width=60%></div>

#### Censor
used for Mosaic

<a id=transition></a>
### Transition Introduction
#### Cross Dissolve

shortcut key: `CMD-T`
 
#### Fade to Color

The black field transition