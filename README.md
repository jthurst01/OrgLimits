# Salesforce REST API /limits Resource Viewer
This repository contains all the code you need to set up a Visualforce page in your Salesforce Org that can be used to display the current limit usage for your org.  The page gathers the information from the Salesforce REST API resource `/services/data/v37.0/limits' which is fully documented [in the REST API Documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/resources_limits.htm).

Up

The Visualforce page uses an open source JavaScript library called [JustGage](http://justgage.com/) to simply display the results in a series of gauges on the Visualforce page.  The JSON response coming to the Visualforce page can also be used to generate the information in any format you choose.

## Installation Instructions
1. Download this repo as zip file
2. Deploy the code to your Salesforce org using the MdAPI through Workbench, Force.com IDE, or Ant Migration Tool
3. Assign the included OrgLimits permission set to your user
4. Create a Remote Site Setting to allow the Apex Class to call the Salesforce REST API
    1. Navigate to Setup > Security Controls > Remote Site Settings
    2. Find the Remote Site Setting names "OrgLimits" and click Edit
    3. Change the Remote Site URL field from `https://c.instance.visual.force.com` to your Visualforce instance
        * You can find this in the browser address bar when you are Displayiong a Visualforce Page.  
        * Alternatively, if you proceed to Step 5 you will see an error with the appropriate instance if you have not completed this step.  Simply copy the domain from the error and add that to the Remote Site Setting.  The error will say something like:
            *  `Unauthorized endpoint, please check Setup->Security->Remote site settings. endpoint = https://c.na3.visual.force.com/services/data/v35.0/limits`
5. Add the Custom Tab "OrgLimits" to your Tab Layout, or go to `/apex/OrgLimits` to view your daily limits

## Open Issues to Remember
<<<<<<< HEAD
1. If there is an error from the API call, the Visualforce Page will not have any data in the gauges
2. The running user must have access to the Salesforce API by enabling in remote site settings

To install as unmanaged package click [here](https://login.salesforce.com/packaging/installPackage.apexp?p0=04t36000000wJHO)
=======
1. There are no tests included in the package
2. If there is an error form the API call, the Visualforce Page will not have any data in the gauges
3. The running user must have access to the Salesforce API
>>>>>>> jthurst01/master
