import os, requests
from azure.identity import ManagedIdentityCredential
from azure.servicebus import ServiceBusClient, ServiceBusMessage

audience = f'api://{os.getenv("AMA_PUBLISHER_ID")}'
url=os.getenv("URL1")
resourceGroupId=os.getenv("RESOURCE_GROUP_ID")
installQueueName=os.getenv("INSTALL_QUEUE_NAME")
connectionString=f"Endpoint=sb://{installQueueName}.servicebus.windows.net/;SharedAccessKeyName=Send;SharedAccessKey={url}"
servicebus_client = ServiceBusClient.from_connection_string(conn_str=connectionString, logging_enable=True)
queue_name = "install-requests"
credential = ManagedIdentityCredential()
token = credential.get_token(f'{audience}/.default')
access_token = token.token
with servicebus_client:
    sender = servicebus_client.get_queue_sender(queue_name=queue_name)
    with sender:
        jsonPayload="{"+f"\"resourceGroupId\":\"{resourceGroupId}\",\"access_token\":\"{access_token}\""+"}"
        message = ServiceBusMessage(jsonPayload)
        sender.send_messages(message)
        print("Message sent to Azure Service Bus queue.") 
