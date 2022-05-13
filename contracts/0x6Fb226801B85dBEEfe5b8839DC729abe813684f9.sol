contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address collectionAddress;
array of address sub_21930d35;
mapping of address tokenOwners;
array of uint256 ownerTokens;
mapping of uint8 stor105;
address stor106;

function sub_21930d35(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_21930d35.length
    return address(sub_21930d35[arg1])
}

function ownerTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < ownerTokens[arg1]
    return ownerTokens[arg1][arg2]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenOwners[arg1]
}

function collectionAddress() payable {
    return collectionAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerTokens[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_a5b8f210(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor105[arg1])
}

function tokenOwners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenOwners[arg1]
}

function _fallback() payable {
    revert
}

function agree() payable {
    stor105[address(msg.sender)] = 1
    emit 0xe5d1a046: msg.sender
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function totalSupply() payable {
    require ext_code.size(stor106)
    staticcall stor106.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function isStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor106)
    staticcall stor106.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return (ext_call.return_data[12 len 20] == this.address)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        collectionAddress = arg1
        emit 0x3ac24f50: collectionAddress
        stor106 = collectionAddress
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            collectionAddress = arg1
            emit 0x3ac24f50: collectionAddress
            stor106 = collectionAddress
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            collectionAddress = arg1
            emit 0x3ac24f50: collectionAddress
            stor106 = collectionAddress
            Mask(248, 0, stor0.field_8) = 0
}

function tokensOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerTokens[address(arg1)]:
        return ''
    if ownerTokens[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if ownerTokens[address(arg1)]:
        mem[128 len 32 * ownerTokens[address(arg1)]] = call.data[calldata.size len 32 * ownerTokens[address(arg1)]]
    idx = 0
    while idx < ownerTokens[address(arg1)]:
        mem[32] = 104
        if idx >= ownerTokens[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 104)
        if idx >= ownerTokens[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = ownerTokens[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=ownerTokens[address(arg1)], data=mem[128 len 32 * ownerTokens[address(arg1)]])
}

function sub_8bdb4b85(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_21930d35.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_21930d35.length > idx:
            uint256(sub_21930d35[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_21930d35[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_21930d35.length > idx:
            uint256(sub_21930d35[idx]) = 0
            idx = idx + 1
            continue 
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 105
    if not stor105[address(msg.sender)]:
        revert with 0, 'Not agreed to terms'
    mem[96] = 1
    mem[64] = 160
    mem[128] = arg1
    idx = 0
    while idx < sub_21930d35.length:
        mem[0] = 102
        mem[mem[64]] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 68
        while s < mem[96]:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(sub_21930d35[mem[96]]))
        call address(sub_21930d35[mem[96]]).deposit(uint256[] arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] == -1:
            revert with 'NH{q', 17
        s = mem[96] + 1
        continue 
    require ext_code.size(stor106)
    call stor106.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    tokenOwners[arg1] = msg.sender
    ownerTokens[address(msg.sender)]++
    ownerTokens[address(msg.sender)][ownerTokens[address(msg.sender)]] = arg1
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor106)
    staticcall stor106.0xc87b56dd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 103
    if tokenOwners[arg1] != msg.sender:
        revert with 0, 'Not owner of token'
    mem[96] = 1
    mem[64] = 160
    mem[128] = arg1
    idx = 0
    while idx < sub_21930d35.length:
        mem[0] = 102
        mem[mem[64]] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 68
        while s < mem[96]:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(sub_21930d35[mem[96]]))
        call address(sub_21930d35[mem[96]]).deposit(uint256[] arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] == -1:
            revert with 'NH{q', 17
        s = mem[96] + 1
        continue 
    require ext_code.size(stor106)
    call stor106.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tokenOwners[arg1], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ownerTokens[stor103[arg1]]:
        if idx >= ownerTokens[stor103[arg1]]:
            revert with 'NH{q', 50
        if ownerTokens[stor103[arg1]][idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = tokenOwners[arg1]
            mem[32] = 104
            idx = idx + 1
            continue 
        if ownerTokens[stor103[arg1]] < 1:
            revert with 'NH{q', 17
        if ownerTokens[stor103[arg1]] - 1 >= ownerTokens[stor103[arg1]]:
            revert with 'NH{q', 50
        if idx >= ownerTokens[stor103[arg1]]:
            revert with 'NH{q', 50
        ownerTokens[stor103[arg1]][idx] = ownerTokens[stor103[arg1]][ownerTokens[stor103[arg1]]]
        if not ownerTokens[stor103[arg1]]:
            revert with 'NH{q', 49
        ownerTokens[stor103[arg1]][ownerTokens[stor103[arg1]]] = 0
        ownerTokens[stor103[arg1]]--
        tokenOwners[arg1] = 0
    tokenOwners[arg1] = 0
}

function sub_e3c7309b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 105
    if not stor105[address(msg.sender)]:
        revert with 0, 'Not agreed to terms'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = 0
    idx = 0
    while idx < sub_21930d35.length:
        mem[0] = 102
        mem[mem[64]] = 0x598b8e7100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 68
        while s < mem[96]:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(sub_21930d35[mem[96]]))
        call address(sub_21930d35[mem[96]]).deposit(uint256[] arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] == -1:
            revert with 'NH{q', 17
        s = mem[96] + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor106)
        call stor106.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tokenOwners[cd[((32 * idx) + cd[4] + 36)]] = msg.sender
        mem[32] = 104
        ownerTokens[address(msg.sender)]++
        mem[0] = sha3(address(msg.sender), 104)
        ownerTokens[address(msg.sender)][ownerTokens[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawBatch(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < sub_21930d35.length:
        mem[0] = 102
        mem[mem[64]] = 0x983d95ce00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 68
        while s < mem[96]:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(sub_21930d35[mem[96]]))
        call address(sub_21930d35[mem[96]]).withdraw(uint256[] arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] == -1:
            revert with 'NH{q', 17
        s = mem[96] + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if tokenOwners[cd[((32 * idx) + arg1 + 36)]] != msg.sender:
            revert with 0, 'Not owner of token'
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = tokenOwners[cd[((32 * idx) + arg1 + 36)]]
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor106)
        call stor106.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), tokenOwners[cd[((32 * idx) + arg1 + 36)]], cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 0
        while s < ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]:
            if s >= ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]:
                revert with 'NH{q', 50
            if ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]][s] != cd[((32 * idx) + arg1 + 36)]:
                if s == -1:
                    revert with 'NH{q', 17
                mem[0] = tokenOwners[cd[((32 * idx) + arg1 + 36)]]
                mem[32] = 104
                s = s + 1
                continue 
            if ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]] < 1:
                revert with 'NH{q', 17
            if ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]] - 1 >= ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]:
                revert with 'NH{q', 50
            if s >= ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]:
                revert with 'NH{q', 50
            ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]][s] = ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]][ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]]
            if not ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]:
                revert with 'NH{q', 49
            ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]][ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]] = 0
            ownerTokens[stor103[cd[((32 * idx) + arg1 + 36)]]]--
            tokenOwners[cd[((32 * idx) + arg1 + 36)]] = 0
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = tokenOwners[cd[((32 * idx) + arg1 + 36)]]
            mem[32] = 104
            idx = idx + 1
            continue 
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 103
        tokenOwners[cd[((32 * idx) + arg1 + 36)]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_70ec77e6(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 128] = 0
    idx = 0
    while idx < sub_21930d35.length:
        mem[0] = 102
        mem[mem[64]] = 0x983d95ce00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 68
        while s < mem[96]:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(sub_21930d35[mem[96]]))
        call address(sub_21930d35[mem[96]]).withdraw(uint256[] arg1) with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[96] == -1:
            revert with 'NH{q', 17
        s = mem[96] + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = tokenOwners[cd[((32 * idx) + cd[4] + 36)]]
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor106)
        call stor106.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), tokenOwners[cd[((32 * idx) + cd[4] + 36)]], cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 0
        while s < ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]:
            if s >= ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]:
                revert with 'NH{q', 50
            if ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]][s] != cd[((32 * idx) + cd[4] + 36)]:
                if s == -1:
                    revert with 'NH{q', 17
                mem[0] = tokenOwners[cd[((32 * idx) + cd[4] + 36)]]
                mem[32] = 104
                s = s + 1
                continue 
            if ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]] < 1:
                revert with 'NH{q', 17
            if ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]] - 1 >= ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]:
                revert with 'NH{q', 50
            if s >= ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]:
                revert with 'NH{q', 50
            ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]][s] = ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]][ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]]
            if not ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]:
                revert with 'NH{q', 49
            ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]][ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]] = 0
            ownerTokens[stor103[cd[((32 * idx) + cd[4] + 36)]]]--
            tokenOwners[cd[((32 * idx) + cd[4] + 36)]] = 0
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = tokenOwners[cd[((32 * idx) + cd[4] + 36)]]
            mem[32] = 104
            idx = idx + 1
            continue 
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 103
        tokenOwners[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
