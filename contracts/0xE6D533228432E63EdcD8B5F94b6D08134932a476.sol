contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw_ETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function a(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if not block.timestamp:
        revert with 'NH{q', 18
    if sha3(block.coinbase) / block.timestamp > -3:
        revert with 'NH{q', 17
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp) - 3:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + 2 > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + 2 > -(sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) + 2 > -block.number - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) + block.number + 2 > -arg1 + -arg2 - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) + block.number + arg1 + arg2 + 2 > -eth.balance(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) + block.number + arg1 + arg2 + eth.balance(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) + 2 < 1:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(0xe06c796ec6ba59d965e0033f03497869c9118701) / block.timestamp) + block.number + arg1 + arg2 + eth.balance(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) + 1) % test266151307() % 100 >= 89:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
