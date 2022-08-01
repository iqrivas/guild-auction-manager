import consumer from "channels/consumer"

const auction_item = document.getElementById('auction_item_id').value

consumer.subscriptions.create( {channel: "BidChannel", auction_item_id: auction_item}, {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    document.getElementById('bid_wrapper').innerHTML += data

    console.log(data)
  }
});
