const { Client } = require('plivo');

(async () => {
  try {
    const client = new Client(process.env.PLIVO_AUTH_ID, process.env.PLIVO_AUTH_TOKEN);

    // Replace with the actual message UUID
    const messageUuid = '306625dd-814b-4ddc-8b06-05d3f9c9c9a6';

    const messageDetails = await client.messages.get(messageUuid);
    console.log('Message details:', messageDetails);
  } catch (error) {
    console.error('Error retrieving message details:', error);
  }
})();
