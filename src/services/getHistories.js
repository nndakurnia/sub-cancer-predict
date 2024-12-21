const { Firestore } = require('@google-cloud/firestore');

async function getHistories() {
    const db = new Firestore();
    const predictCollection = db.collection('predictions');
    
    const histories = await predictCollection.get();

    return histories;
}

module.exports = getHistories;