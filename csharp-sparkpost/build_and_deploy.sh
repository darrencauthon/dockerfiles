git pull origin master

nuget restore
xbuild /p:Configuration=Release

nuget pack SparkPost/SparkPost.nuspec -Prop Configuration=Release
