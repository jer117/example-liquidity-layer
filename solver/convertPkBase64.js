const privateKey = new Uint8Array([/* your private key bytes */]);
const base64Key = Buffer.from(privateKey).toString('base64');
console.log(base64Key);
