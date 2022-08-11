# Housing-Capstone

#### [Tableau Public Dashboard](https://public.tableau.com/app/profile/robert.goldman6612/viz/HousingCapstonev1/PPSFbyZIP) <br>

#### [Google Slides Link](https://docs.google.com/presentation/d/10USQNb0KSiE5zFjwAf4Sc2X2k86vipconO21IdbKrnU/edit?usp=sharing) <br>

[Wake County Housing Market Tableau Public Link](https://public.tableau.com/app/profile/robert.goldman6612/viz/HousingCapstonev1/PricebyZIP#1)

[google slides link](https://docs.google.com/presentation/d/10USQNb0KSiE5zFjwAf4Sc2X2k86vipconO21IdbKrnU/edit?usp=sharing)


Team Seven - Marla, Yolanda, Robert<br>

### Project Concept
Modeling Wake County Real Estate - Model to compare and analyse price based on living area, bedrooms, bathrooms, and lot size.  Using property types and zip codes as categorical bounds, we analysed factors driving the total sale price of a property, and the differences in weight of those features based on the property type and location.   <br>

### Project Methodology
Using API data from recent Zillow sales in Wake County, North Carolina, we established a database to integrate the feature components of recent sales for our machine earning model.<br>  
Our multiple linear regression model includes four features:<br>-living area<br>-lot size<br>-bedroom<br>-bathrooms<br>
These variables are modeled to determine their impact on sales price.<br>  
Incorporating ZIP code as a categorical variable allowed able to determine the geographical impact of the features across the county.  Splitting the data by property type also allowed us to model the implied value of the land itself without the building improvments - a useful tool in a location with some aging housing stock that may be candidates for 'knockdown' redevelopment.<br>

### Results
#### County-wide Results
As a baseline, our model was executed against all samples in our dataset regardless of property type or ZIP code.<br><br>  Summary stats for our model:<br>
<img width="800" alt="image" src="https://user-images.githubusercontent.com/100323377/183260227-d366b067-ea27-4d28-96f7-7eb952569deb.png"><br><br>
Our model showed and effective fit with an R-Squared of 81.3%.<br>

#### Using Machine Learning Results To Predict Price
Given our results for our total sample and some of our segmented data, we can make well informed estimates to predict a sale price range for a property based on the four feature inputs used in our model.  If a hypothetical 2268 square foot single family home with 3 bedrooms, 3 bathrooms on a .71 acre lot was input to the model, we would expect a sale price of $642,045.<br><br>

#### Estimation procedure through our housing model:<br> 
Reminder of our feature weights and confidence intervals:<br>
<img width="600" alt="image" src="https://user-images.githubusercontent.com/100323377/183303292-2698ed5c-121d-4cfe-ab67-b35d6a405c30.png">

Our model caculated the price by weighting the coefficeints of the model (coef) again the hypothetical values listed above.<br>  To explode our model and show the math we have the following fomula to generate price estimate<br>

Estimated Price = constant + (number of bedrooms * -4.487e+04) + (number of bathrooms * -1.415e+04) + (acres of lot * 2.335e+05) + (square feet of living area * 200.1412)<br> 

Now the same formula with our hypothetical sample property (and eliminating the pesky scientific notation):<br>
$642,045 = 199,400 + (3 * -44,870) + (3 * -14,150) + (0.71 * 233500) + (2268 * 200.1412)<br>

The model can be adapted to drill down to isolate particular zip codes and property types, but as those slices are made from the total sample, we lose strength of fit in the model.  As indicated by such a large span on the confidence of the bathroom feature, our model struggles to narrow the range on this feature.  Cleaner input data would help the model, as would being able to avoid some of the data fill operations mentioned below.


Unfortunately the precision of this model is such that no one could use this tool to realistically bid on a property, but as a proof of concept, this model was able to execute the goal of the project.

### Model Limitations and Opportunities
#### Data Integrity
Our machine learning model required no nulls, so a choice was required to fill null values.  Given unlimited resources of time or a pristine dataset, we coud have avoided some distortion in our data.  Many null values were able to be filled with zeros correcty, but in certain cases this was less than ideal.  In lieu of intervening on the data in a call by cell fashion, we opted to make the fill in this project, and address that concern as an area that could be improved in future iterations of the model.  The distortion shown below had little impact on the model, but due to the small number of entries in this subset of data, there was an impact in the model<br>

Evidence of the fillNA operation can be seen by the cluster of results sitting on the "0" Living Area below:
<img width="800" alt="image" src="https://user-images.githubusercontent.com/100323377/183260196-c2666610-acac-4144-82ab-2dbf2a9740ac.png"><br>








