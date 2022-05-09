contract main {




// =====================  Runtime code  =====================


const random = (sha3((2 * block.timestamp) + block.difficulty + (sha3(address(block.coinbase)) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number) % -block.difficulty + 0x18551d0b3e9ff286000ed80a74) + block.difficulty, (sha3((2 * block.timestamp) + block.difficulty + (sha3(address(block.coinbase)) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number) % -block.difficulty + 0x18551d0b3e9ff286000ed80a74) + block.difficulty % 3

const randome = bool(block.timestamp % 90)


function _fallback() payable {
    revert
}



}
