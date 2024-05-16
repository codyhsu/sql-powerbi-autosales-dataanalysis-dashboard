# Part III Interactive Dashboard

Building upon the insights gained in the previous chapter, I have delved deeper into the autosales dataset, identified suitable visualizations, and devised an SQL script to establish connectivity between MySQL and Power BI. 

This chapter now proceeds to construct an interactive dashboard within Power BI, detailing the key steps undertaken:

1. Connect to Power BI :

   - Establish connection with Power BI to begin dashboard creation.

2. Dashboard Creation:

   - Implement a variety of visualization tools including scorecards, treemaps, histograms, and maps to present data effectively.
   - Incorporate a distinct logo to personalize the dashboard and enhance brand identity.

3. Storytelling Elements:

   - Utilize bookmarks and narrative techniques to weave a cohesive storyline throughout the dashboard, guiding users through the data insights and interpretations seamlessly.


## 3.1 Connect to Power BI

Here are the steps I took for establishing connection with Power BI to begin dashboard creation
* Step 1: Initiate Data Import: In Power BI Desktop, navigate to the Home tab and click Get Data. Then, select MySQL from the list of data sources.

* Step 2: Specify Connection Details: Enter the server name and database name in the corresponding fields. You can refer to the image below.

* Step 3: Import with SQL Script : Use the prepared (SQL script)[SQL_script/autosales_powerbi.sql] 


![301](images/301_import.png)
![302](images/302_import.png)


## 3.2 Dashboard Creation

With teh Dashboard Creation Phase, I have Implement a variety of visualization including scorecards, treemaps, histograms, and maps to present data effectively.

I have created 2 pages dashboard, one the current year (let's pretend it's 2022 since the lastest timestamp is on may of 2022)
the second one is the data insight over the whole time 2018-2022, including for example margin of the product categories, order activities over time, top 5 clients' information and the porportion of dealsize.

you may have notice at the first glance that i have incorporate a distinct logo to personalize the dashboard and enhance brand identity.

unfortunately, i dont have the pro version of Power Bi thus cannot share. i try my best to capture the details and the capability of the board I've created.


### **Board 1** 




### **Board 2** 

## 3.3 Storytelling 

add the bookmark button and let the audience be able to follow and guide themselve through the dashboard without missing important insight.
