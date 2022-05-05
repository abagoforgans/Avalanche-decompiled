contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint256 stor2;
mapping of uint256 stor3;
mapping of struct tokenIdToListing;
mapping of uint8 stor5;
mapping of address claimableByAccount;

function getListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToListing[arg1].field_0, 
           tokenIdToListing[arg1].field_256,
           tokenIdToListing[arg1].field_512,
           tokenIdToListing[arg1].field_768
}

function hasBeenListed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function claimableByAccount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimableByAccount[arg1]
}

function tokenIdToListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToListing[arg1].field_0, 
           tokenIdToListing[arg1].field_256,
           tokenIdToListing[arg1].field_512,
           tokenIdToListing[arg1].field_768
}

function _fallback() payable {
    revert
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

function listItem(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor1)
    staticcall stor1.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only the owner of the token id can call this function.'
    if stor5[arg1]:
        revert with 0, 'The token can only be listed once'
    if stor3[arg1]:
        revert with 0, 'Someting went wrong during listing the item'
    stor2.length++
    stor2[stor2.length] = arg1
    stor3[arg1] = stor2.length
    stor5[arg1] = 1
    claimableByAccount[arg1] = msg.sender
    tokenIdToListing[arg1].field_0 = arg2
    tokenIdToListing[arg1].field_256 = block.timestamp
    tokenIdToListing[arg1].field_512 = arg1
    tokenIdToListing[arg1].field_768 = msg.sender
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x92007ff2: arg1, arg2, msg.sender
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if claimableByAccount[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the address that has listed the token can interact with the listing.'
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Someting went wrong during cancellation'
    if stor3[arg1] < 1:
        revert with 'NH{q', 17
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor2.length - 1 != stor3[arg1] - 1:
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if stor3[arg1] - 1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[arg1]] = stor2[stor2.length]
        stor3[stor2[stor2.length]] = stor3[arg1]
    if not stor2.length:
        revert with 'NH{q', 49
    stor2[stor2.length] = 0
    stor2.length--
    stor3[arg1] = 0
    claimableByAccount[arg1] = 0
    tokenIdToListing[arg1].field_0 = 0
    tokenIdToListing[arg1].field_256 = 0
    tokenIdToListing[arg1].field_512 = 0
    tokenIdToListing[arg1].field_768 = 0
    stor5[arg1] = 0
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8e252822: arg1, msg.sender
}

function buyItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The token needs to be listed in order to be bought.'
    if tokenIdToListing[arg1].field_0 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to pay the correct price.'
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Someting went wrong during cleaning up'
    if stor3[arg1] < 1:
        revert with 'NH{q', 17
    if stor2.length < 1:
        revert with 'NH{q', 17
    if stor2.length - 1 != stor3[arg1] - 1:
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if stor3[arg1] - 1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[arg1]] = stor2[stor2.length]
        stor3[stor2[stor2.length]] = stor3[arg1]
    if not stor2.length:
        revert with 'NH{q', 49
    stor2[stor2.length] = 0
    stor2.length--
    stor3[arg1] = 0
    tokenIdToListing[arg1].field_0 = 0
    tokenIdToListing[arg1].field_256 = 0
    tokenIdToListing[arg1].field_512 = 0
    tokenIdToListing[arg1].field_768 = 0
    claimableByAccount[arg1] = 0
    stor5[arg1] = 0
    call tokenIdToListing[arg1].field_768 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x39cd056b: arg1, msg.value, msg.sender
}

function getListings() {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx]
            mem[32] = 4
            _32 = mem[64]
            mem[64] = mem[64] + 128
            mem[_32] = tokenIdToListing[stor2[idx]].field_0
            mem[_32 + 32] = tokenIdToListing[stor2[idx]].field_256
            mem[_32 + 64] = tokenIdToListing[stor2[idx]].field_512
            mem[_32 + 96] = tokenIdToListing[stor2[idx]].field_768
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _32
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 32]
            mem[t + 64] = mem[_53 + 64]
            mem[t + 96] = mem[_53 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _28 + (128 * _30) + -mem[64] + 64
    mem[64] = (32 * stor2.length) + 256
    mem[(32 * stor2.length) + 128] = 0
    mem[(32 * stor2.length) + 160] = 0
    mem[(32 * stor2.length) + 192] = 0
    mem[(32 * stor2.length) + 224] = 0
    mem[var13001] = (32 * stor2.length) + 128
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * stor2.length) + 128] = 0
        mem[(32 * stor2.length) + 160] = 0
        mem[(32 * stor2.length) + 192] = 0
        mem[(32 * stor2.length) + 224] = 0
        mem[s + 32] = (32 * stor2.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx]
        mem[32] = 4
        _75 = mem[64]
        mem[64] = mem[64] + 128
        mem[_75] = tokenIdToListing[stor2[idx]].field_0
        mem[_75 + 32] = tokenIdToListing[stor2[idx]].field_256
        mem[_75 + 64] = tokenIdToListing[stor2[idx]].field_512
        mem[_75 + 96] = tokenIdToListing[stor2[idx]].field_768
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _75
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _71 = mem[64]
    mem[mem[64]] = 32
    _73 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _73:
        _83 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_83 + 32]
        mem[t + 64] = mem[_83 + 64]
        mem[t + 96] = mem[_83 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _71 + (128 * _73) + -mem[64] + 64
}



}
