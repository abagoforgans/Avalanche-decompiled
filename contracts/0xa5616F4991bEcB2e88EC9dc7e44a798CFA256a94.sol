contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_7325f0f5;
uint256 timestamp;
uint256 hash;
uint256 number;
address senderAddress;
uint256 stor5;

function getTimestamp() {
    return timestamp
}

function getSender() {
    return address(senderAddress)
}

function sub_7325f0f5(?) {
    return sub_7325f0f5
}

function owner() {
    return owner
}

function getHash() {
    return hash
}

function getNumber() {
    return number
}

function sub_6e47c635(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sha3(arg1, address(arg2), 0)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enoughRandom() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7325f0f5 = sha3(block.timestamp, msg.sender, block.hash(block.number))
    timestamp = block.timestamp
    hash = block.hash(block.number)
    number = block.number
    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function approveToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    else:
        if unknown_0x83786f8c(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5e01eb5a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5e01eb5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(senderAddress)
                if unknown_0x6e47c635(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    return sha3(arg1, address(arg2), 0)
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x7325f0f5(?????):
                    require not msg.value
                    return sub_7325f0f5
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x150b7a02(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg4 <= test266151307()
                    require arg4 + 35 < calldata.size
                    if arg4.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg4.length)) + 129 < 128 or ceil32(ceil32(arg4.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg4 + arg4.length + 36 <= calldata.size
                    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                if unknown_0x188ec356(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return timestamp
                if unknown_0x456f760b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_7325f0f5 = sha3(block.timestamp, msg.sender, block.hash(block.number))
                    timestamp = block.timestamp
                    hash = block.hash(block.number)
                    number = block.number
                    uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
        else:
            if unknown_0xbe4b1772(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0xd13319c4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return hash
                    if unknown_0xf2c9ecd8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return number
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
            else:
                if unknown_0x83786f8c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xb7f8aa00(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg2 == address(arg2)
                        require arg3 == address(arg3)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
