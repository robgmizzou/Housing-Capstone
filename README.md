# Housing-Capstone

[Wake County Housing Market Tableau Public Link](https://public.tableau.com/app/profile/robert.goldman6612/viz/HousingCapstonev1/PricebyZIP#1)

[google slides link](https://docs.google.com/presentation/d/10USQNb0KSiE5zFjwAf4Sc2X2k86vipconO21IdbKrnU/edit?usp=sharing)

Team Seven - Marla, Yolanda, Robert<br>

### Project Concept
Modeling Wake County Real Estate - Model to compare and analyse price based on living area, bedrooms, bathrooms, and lot size.  Using property types and zip codes as categorical bounds, we analysed factors driving the total sale price of a property, and the differences in weight of those features based on the property type and location.   <br>

### Project Methodology
Using API data from recent Zillow sales in Wake County, North Carolina, we established a database to integrate the feature components of recent sales for our machine earning model.<br>  
Our multiple linear regression model includes four features:<br>-living area<br>-lot size<br>-bedroom<br>-bathrooms<br>
These variables are modeled to determinetheir impact on sales price.<br>  
Incorporating ZIP code as a categorical variable allowed able to determine the geographical impact of the features across the county.  Splitting the data by property type also allowed us to model the implied value of the land itself without the building improvments - a useful tool in a location with some aging housing stock that may be candidates for 'knockdown' redevelopment.<br>

### Results
#### County-wide Results
As a baseline, our model was executed against all samples in our dataset regardless of property type or ZIP code.<br><br>  Summary stats for our model:<br>
<img width="800" alt="image" src="https://user-images.githubusercontent.com/100323377/183260227-d366b067-ea27-4d28-96f7-7eb952569deb.png"><br><br>
Our model showed and effective fit with an R-Squared of 81.3%.<br>


### Model Limitations and Opportunities
#### Data Integrity
Our machine learning model required no nulls, so a choice was required to fill null values.  Given unlimited resources of time or a pristine dataset, we coud have avoided some distortion in our data.  Many null values were able to be filled with zeros correcty, but in certain cases this was less than ideal.  In lieu of intervening on the data in a call by cell fashion, we opted to make the fill in this project, and address that concern as an area that could be improved in future iterations of the model.  The distortion shown below had little impact on the model, but due to the small number of entries in this subset of data, there was an impact in the model<br>

Evidence of the fillNA operation can be seen by the cluster of results sitting on the "0" Living Area below:
<img width="800" alt="image" src="https://user-images.githubusercontent.com/100323377/183260196-c2666610-acac-4144-82ab-2dbf2a9740ac.png"><br>




