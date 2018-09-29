# NodeRedAzureWebApp
A webapp wrapper for running node-red in an Azure Web App using Windows.
To use it just:

1. Deploy to Azure:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fspecijaa%2FNodeRedAzureWebApp%2Fmaster%2Fwebapp.json" target="_blank"><img src="http://azuredeploy.net/deploybutton.png"/></a>

Or...

1. Create an Azure Web App
1. Open the settings and activate **Web sockets**

    ![Web sockets](./_images/websockets.png)

    **Figure 1** Activate Web sockets
1. Configure the deployment options as an *External repository* pointing to [https://github.com/jmservera/node-red-azure-webapp.git](https://github.com/jmservera/node-red-azure-webapp.git)

    ![External repo](./_images/externalrepo.png)

    **Figure 2** External Repository

> This project currently uses a workaround to avoid a small problem caused with `child_process.execFile`: it uses a fake npm.cmd that points to the real one.

## Usage

Wait until everything is deployed before opening the website, during the deployment a script is executed to download this repo and install all the needed modules. If you see this screen just wait about 30 seconds to let the Node-RED app start:

![Not Started Site](./_images/notstarted.png)

**Figure 3** Not Started Site

You can see the live log in the Azure Portal, in the *Log stream* tab:

![Application logs stream](./_images/logstream.png)

**Figure 4** Application logs stream

It comes with some cool nodes preinstalled:

* Dashboard (create an awesome ui and see it in https://yoursite/ui )
* Azure IoT Hub
* Cognitive Services
* Azure Storage (Blobs & Tables)
* DocumentDB
* Azure SQL
* Swagger node

## Security

Username/password based authentication
To enable user authentication on the Editor and Admin API, add the following to your settings.js file:

adminAuth: {
    type: "credentials",
    users: [{
        username: "admin",
        password: "$2a$08$zZWtXTja0fB1pzD4sHCMyOCMYz2Z6dNbM6tl8sJogENOMcxWV9DN.",
        permissions: "*"
    }]
}

The users property is an array of user objects. This allows you to define multiple users, each of whom can have different permissions.




