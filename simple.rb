require 'onecloud'

api = Onecloud::Api.new('API_SECRET_TOKEN')  

# Get account balance
api.balance

# Create new server
api.add_server({
    Name: "testAPI",
    CPU: 1,
    RAM: 1024,
    HDD: 40,
    imageID: 1,
    HDDType: "SSD",
    IsHighPerformance: true
})

# List all created servers
api.servers

# Update the server parameters
api.update_server_by_id('SERVER_ID', {
    isHigtPerformance: false, 
    CPU: 2, 
    RAM: 2048, 
    HDD: 80
})
