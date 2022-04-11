contract main {




// =====================  Runtime code  =====================


const sub_17171499(?) = address(sha3(block.timestamp + block.difficulty + (sha3(address(block.coinbase)) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) - (0xffffffffffffffffffffffffffffffffffffffff * sha3(block.timestamp + block.difficulty + (sha3(address(block.coinbase)) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) / 0xffffffffffffffffffffffffffffffffffffffff))


address stor0;
address _tokenAddress;

function _token() payable {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    _tokenAddress = arg1
}

function sub_ea06018f(?) payable {
    require calldata.size - 4 >= 64
    require block.timestamp
    require arg2
    return (arg1 + sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) - (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) / arg2 * arg2))
}

function sub_836a6689(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require msg.sender == stor0
    idx = 0
    while idx < arg1 - 1:
        _29 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        _30 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _32 = sha3(mem[_30 + 32 len mem[_30]])
        require block.timestamp
        mem[_29 + 84] = address(block.coinbase)
        mem[_29 + 52] = 20
        mem[_29 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_32 / block.timestamp) + block.number + gas_remaining
        mem[_29 + 104] = 32
        mem[_29 + 200] = address(msg.sender)
        mem[_29 + 168] = 20
        require block.timestamp
        mem[_29 + 252] = address(block.coinbase)
        mem[_29 + 220] = 20
        mem[_29 + 304] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining
        mem[_29 + 272] = 32
        mem[64] = _29 + 336
        require arg3
        mem[_29 + 340] = msg.sender
        mem[_29 + 372] = address(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_32 / block.timestamp) + block.number + gas_remaining) - (0xffffffffffffffffffffffffffffffffffffffff * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_32 / block.timestamp) + block.number + gas_remaining) / 0xffffffffffffffffffffffffffffffffffffffff))
        mem[_29 + 404] = arg2 + sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) - (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) / arg3 * arg3)
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_32 / block.timestamp) + block.number + gas_remaining) - (0xffffffffffffffffffffffffffffffffffffffff * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_32 / block.timestamp) + block.number + gas_remaining) / 0xffffffffffffffffffffffffffffffffffffffff)), arg2 + sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) - (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + gas_remaining) / arg3 * arg3)
        mem[_29 + 336] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
