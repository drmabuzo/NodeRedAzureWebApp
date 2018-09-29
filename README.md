# NodeRedAzureWebApp
A webapp wrapper for running node-red in an Azure Web App using Windows.
To use it just:

1. Deploy to Azure:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fspecijaa%2FNodeRedAzureWebApp%2Fmaster%2Fwebapp.json" target="_blank"><img src="http://azuredeploy.net/deploybutton.png"/></a>

It comes with some cool nodes preinstalled:

* node-red-contrib-blockly --> https://flows.nodered.org/node/node-red-contrib-blockly
* node-red-contrib-java-function --> https://flows.nodered.org/node/node-red-contrib-java-function

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




