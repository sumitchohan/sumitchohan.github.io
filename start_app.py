import os, requests
from azure.identity import ManagedIdentityCredential

audience = 'api://2aa9a136-2275-4cae-9ae3-7fee9eaff787'
#webhook_url = os.environ['WEBHOOK_URL']

credential = ManagedIdentityCredential()
token = credential.get_token(f'{audience}/.default')
access_token = token.token

try:
  # response = requests.post(
  #     webhook_url,
  #     headers={'Authorization': f'Bearer {access_token}'},
  #     json={'message': 'Token posted successfully'}
  # )
  print('Access Token:', access_token)
  #print('Webhook response:', response.status_code)
except Exception as e:
  print('Webhook call failed:', e)
