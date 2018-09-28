(if not exist \home mkdir \home)
(if not exist \home\nodered mkdir \home\nodered)
(if not exist \home\nodered\.node-red mkdir \home\nodered\.node-red)
copy npm_.cmd \home\nodered\.node-red\npm_.cmd
pushd \home\nodered\.node-red
npm install node-red-contrib-blockly node-red-contrib-java-function & (
     copy npm_.cmd npm.cmd /y
     popd 
     copy npm_.cmd npm.cmd /y
)