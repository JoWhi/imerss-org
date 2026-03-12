---
title: "notes"
author: "Joanne Whitehead"
date: "`r Sys.Date()`"
output: false
draft: true
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(eval = FALSE)
```

```{r}
setwd(".")
library(blogdown)
serve_site()
```


Add a page:
```{r}
new_post(title = "team", file  = "team/index.md")
```


# Team
Code is clean if all photos & bios flow in single column. 

### Ruth Waldick
*Director*
![Ruth](images/Ruth.png)
Since the beginning...


Updated to have photos on left & bios on right:

<span style="display:flex;gap:1.5rem;margin-bottom:2rem;align-items:flex-start;">
  <span style="flex-shrink:0;width:200px;height:200px;">
    <img src="images/Ruth.png" style="width:100%;height:100%;object-fit:cover;border-radius:8px;" alt="Person 1">
  </span>
  <span style="flex:1;">
    <h3 style="margin-bottom:0.5rem;">Ruth Waldick</h3>
    <h4 style="margin-bottom:0.5rem;color:#666;font-weight:500;">Director</h4>
    <p>Since the beginning...</p>
  </span>
</span>



Or photo, name, position on left and bio on right:

<span style="display:flex;gap:1.5rem;margin-bottom:2rem;align-items:flex-start;">
  <!-- LEFT: Photo + Name + Title -->
  <span style="flex-shrink:0;display:flex;flex-direction:column;width:200px;">
    <span style="width:200px;height:200px;">
      <img src="images/Ruth.png" style="width:100%;height:100%;object-fit:cover;border-radius:8px;" alt="Person 1">
    </span>
    <h3 style="margin-top:1rem;margin-bottom:0.25rem;font-size:1.1rem;">Ruth Waldick</h3>
    <h4 style="margin:0;color:#666;font-size:0.9rem;">Director</h4>
  </span>
  
  <!-- RIGHT: Bio -->
  <span style="flex:1;">
    <p>Since the beginning...</p>
  </span>
</span>


Stop serve: 

```{r}
servr::daemon_stop()
```


# Git codes

```{bash}
#navigate to project directory
cd git/immers-org
#check project status
git status
#stage changes
git add .
#commit changes, with notes
git commit -m "description of changes"
#push updates to repository
git push origin main 
```


# Tiles
Makes a tile with image, title, text; links to another page. Alternative to cards, from hextra theme.

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 2rem; padding: 2rem;">
  <a href="/work/sentinels-of-change/" style="display: block; border: 1px solid #ddd; border-radius: 8px; padding: 1.5rem; text-decoration: none; color: inherit; background: white; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <img src="/work/images/Brenna-light-trap.jpg" alt="Brenna" style="width: 100%; height: 200px; object-fit: cover; border-radius: 4px; margin-bottom: 1rem;">
    <h3 style="margin: 0 0 0.5rem 0; font-size: 1.25rem; font-weight: bold;">Sentinels of Change</h3>
    <p style="margin: 0; color: #666; line-height: 1.5;">Light trap in Whaler Bay to collect population data on Dungeness crab larvae.</p>
  </a>
</div>


# Buttons with links

Join the IMERSS community and support our work by becoming a member today! Annual membership fee is $20 and members will receive a charitable tax receipt.

<a href="https://www.zeffy.com/en-CA/ticketing/b0028ba0-0387-49c7-93b3-4081ada3f140" class="imerss-btn" target="_blank">Click to Join</a>
  
## Subscribe to our Newsletter!
Sign up to receive our seasonal e-newsletter about projects, events, opportunities and more.

<a href="https://www.zeffy.com/en-CA/newsletter-form/subscribe-to-get-notified-about-new-events-41012" class="imerss-btn" target="_blank">Click to Subscribe</a>


## Volunteer!
Dive in! Find out about volunteer opportunities such as tabling at outreach booths, helping at events, or joining one of our committees, by contacting us at info@imerss.org. 

## Upcoming Events
Check here, sign up for our list-serv, or follow us on social media to hear about upcoming events.

<img src="images/Instagram_icon.png" alt="Instagram" width="50px" height="50px"/>
[<i class="fab fa-instagram"></i> Follow us on Instagram](https://instagram.com/immers_labs) 



# Paypal
code in original hugo.yaml:
  
- identifier: donate
  name: Donate
  url: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=EHJFF84LNXFES
  weight: 6

