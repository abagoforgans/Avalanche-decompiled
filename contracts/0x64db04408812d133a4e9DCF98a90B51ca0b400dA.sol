contract main {




// =====================  Runtime code  =====================


address owner;
address nodesAddress;
array of uint256 stor2;
array of uint256 rewardRates;
array of uint256 sub_6288b18f;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
mapping of struct nftInfo;
uint256 stor14;
address sub_9fc8da1fAddress;
mapping of uint256 claimableRewards;
array of uint256 stor17;
array of uint256 sub_9ed2142b;
uint256 stor23;
uint256 stor24;
array of uint256 sub_981962a7;
uint256 sub_eee025c9;
uint256 discount;
mapping of struct lockups;
mapping of uint256 lastClaimed;

function lastClaimed(address arg1) {
    require calldata.size - 4 >= 32
    return lastClaimed[arg1]
}

function sub_1951a7bb(?) {
    return stor17.length
}

function nftInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return nftInfo[arg1].field_0, address(nftInfo[arg1].field_256), nftInfo[arg1].field_512, nftInfo[arg1].field_768
}

function Nodes() {
    return nodesAddress
}

function sub_6288b18f(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_6288b18f[arg1]
}

function discount() {
    return discount
}

function claimableRewards() {
    mem[0] = msg.sender
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768:
            if not block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5:
                    idx = idx + 1
                    continue 
            else:
                if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                    require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512 == 10^9
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5:
                        idx = idx + 1
                        continue 
        else:
            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5:
                    idx = idx + 1
                    continue 
            else:
                if not nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5:
                        idx = idx + 1
                        continue 
                else:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                        require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512 == 10^9
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5:
                            idx = idx + 1
                            continue 
        revert
    return claimableRewards[address(msg.sender)]
}

function owner() {
    return owner
}

function sub_981962a7(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_981962a7[arg1]
}

function sub_9ed2142b(?) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_9ed2142b[arg1]
}

function sub_9fc8da1f(?) {
    return sub_9fc8da1fAddress
}

function lockups(address arg1) {
    require calldata.size - 4 >= 32
    return lockups[arg1].field_0, lockups[arg1].field_256, lockups[arg1].field_512
}

function sub_e09520a8(?) {
    require calldata.size - 4 >= 32
    return claimableRewards[arg1]
}

function pendingOwner() {
    return address(stor2.length)
}

function sub_eee025c9(?) {
    return sub_eee025c9
}

function rewardRates(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return rewardRates[arg1]
}

function _fallback() payable {
    revert
}

function sub_a9058b1a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eee025c9 = arg1
}

function sub_dc1ecac6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodesAddress = arg1
}

function sub_7942c056(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17.length = arg1
}

function updateDiscount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    discount = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function claimOwnership() {
    if address(stor2.length) != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, address(stor2.length));
    owner = address(stor2.length)
    address(stor2.length) = 0
}

function sub_0cc20535(?) {
    require calldata.size - 4 >= 160
    mem[96 len 160] = call.data[4 len 160]
    mem[256] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 8
    idx = 96
    while 256 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_4f0aaa6b(?) {
    require calldata.size - 4 >= 160
    mem[96 len 160] = call.data[4 len 160]
    mem[256] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 18
    idx = 96
    while 256 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 23
    while 23 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1, bool arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        address(stor2.length) = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        address(stor2.length) = 0
}

function sub_8b9b4667(?) {
    require calldata.size - 4 >= 96
    if nodesAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the nodes'
    if address(nftInfo[arg1].field_256):
        revert with 0, 'Node already exists'
    nftInfo[arg1].field_0 = arg2
    address(nftInfo[arg1].field_256) = arg3
    nftInfo[arg1].field_512 = block.timestamp
    nftInfo[arg1].field_768 = block.timestamp + (stor23 * stor17.length)
    stor14++
    return 1
}

function sub_aa0b28ff(?) {
    require calldata.size - 4 >= 32
    if not lastClaimed[address(arg1)]:
        return sub_6288b18f.length
    require stor24
    if not block.timestamp - lastClaimed[address(arg1)] / stor24:
        return sub_6288b18f.length
    if block.timestamp - lastClaimed[address(arg1)] / stor24 == 1:
        return stor9
    if block.timestamp - lastClaimed[address(arg1)] / stor24 == 2:
        return stor10
    if block.timestamp - lastClaimed[address(arg1)] / stor24 == 3:
        return stor11
    if block.timestamp - lastClaimed[address(arg1)] / stor24 != 4:
        return 0
    return stor12
}

function sub_fa7e685b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9fc8da1fAddress)
    staticcall sub_9fc8da1fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9fc8da1fAddress)
    call sub_9fc8da1fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6b7623a9(?) {
    require calldata.size - 4 >= 32
    if block.timestamp <= nftInfo[arg1].field_768:
        if not block.timestamp - nftInfo[arg1].field_512:
            if nftInfo[arg1].field_0 - 1 < 5:
                return 0
        else:
            if block.timestamp - nftInfo[arg1].field_512:
                require (10^9 * block.timestamp) - (10^9 * nftInfo[arg1].field_512) / block.timestamp - nftInfo[arg1].field_512 == 10^9
                if nftInfo[arg1].field_0 - 1 < 5:
                    return ((10^9 * block.timestamp) - (10^9 * nftInfo[arg1].field_512) / 24 * 3600 * uint256(stor2[stor13[arg1].field_0]) / 10^9)
    else:
        if nftInfo[arg1].field_768 <= nftInfo[arg1].field_512:
            if nftInfo[arg1].field_0 - 1 < 5:
                return 0
        else:
            if not nftInfo[arg1].field_768 - nftInfo[arg1].field_512:
                if nftInfo[arg1].field_0 - 1 < 5:
                    return 0
            else:
                if nftInfo[arg1].field_768 - nftInfo[arg1].field_512:
                    require (10^9 * nftInfo[arg1].field_768) - (10^9 * nftInfo[arg1].field_512) / nftInfo[arg1].field_768 - nftInfo[arg1].field_512 == 10^9
                    if nftInfo[arg1].field_0 - 1 < 5:
                        return ((10^9 * nftInfo[arg1].field_768) - (10^9 * nftInfo[arg1].field_512) / 24 * 3600 * uint256(stor2[stor13[arg1].field_0]) / 10^9)
    revert
}

function sub_97749506(?) {
    require calldata.size - 4 >= 64
    if nodesAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the nodes'
    if not address(nftInfo[arg1].field_256):
        revert with 0, 'Node does not exist'
    if block.timestamp <= nftInfo[arg1].field_768:
        if not block.timestamp - nftInfo[arg1].field_512:
            require nftInfo[arg1].field_0 - 1 < 5
        else:
            require block.timestamp - nftInfo[arg1].field_512
            require (10^9 * block.timestamp) - (10^9 * nftInfo[arg1].field_512) / block.timestamp - nftInfo[arg1].field_512 == 10^9
            require nftInfo[arg1].field_0 - 1 < 5
            claimableRewards[address(stor13[arg1].field_256)] += (10^9 * block.timestamp) - (10^9 * nftInfo[arg1].field_512) / 24 * 3600 * uint256(stor2[stor13[arg1].field_0]) / 10^9
    else:
        if nftInfo[arg1].field_768 <= nftInfo[arg1].field_512:
            require nftInfo[arg1].field_0 - 1 < 5
        else:
            if not nftInfo[arg1].field_768 - nftInfo[arg1].field_512:
                require nftInfo[arg1].field_0 - 1 < 5
            else:
                require nftInfo[arg1].field_768 - nftInfo[arg1].field_512
                require (10^9 * nftInfo[arg1].field_768) - (10^9 * nftInfo[arg1].field_512) / nftInfo[arg1].field_768 - nftInfo[arg1].field_512 == 10^9
                require nftInfo[arg1].field_0 - 1 < 5
                claimableRewards[address(stor13[arg1].field_256)] += (10^9 * nftInfo[arg1].field_768) - (10^9 * nftInfo[arg1].field_512) / 24 * 3600 * uint256(stor2[stor13[arg1].field_0]) / 10^9
    nftInfo[arg1].field_512 = block.timestamp
    address(nftInfo[arg1].field_256) = arg2
    return 1
}

function sub_15e50ed0(?) {
    require calldata.size - 4 >= 160
    mem[96 len 160] = call.data[4 len 160]
    mem[256] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx < stor14:
        if block.timestamp <= nftInfo[idx].field_768:
            if not block.timestamp - nftInfo[idx].field_512:
                require nftInfo[idx].field_0 - 1 < 5
            else:
                require block.timestamp - nftInfo[idx].field_512
                require (10^9 * block.timestamp) - (10^9 * nftInfo[idx].field_512) / block.timestamp - nftInfo[idx].field_512 == 10^9
                require nftInfo[idx].field_0 - 1 < 5
                claimableRewards[address(stor13[idx].field_256)] += (10^9 * block.timestamp) - (10^9 * nftInfo[idx].field_512) / 24 * 3600 * uint256(stor2[stor13[idx].field_0]) / 10^9
        else:
            if nftInfo[idx].field_768 <= nftInfo[idx].field_512:
                require nftInfo[idx].field_0 - 1 < 5
            else:
                if not nftInfo[idx].field_768 - nftInfo[idx].field_512:
                    require nftInfo[idx].field_0 - 1 < 5
                else:
                    require nftInfo[idx].field_768 - nftInfo[idx].field_512
                    require (10^9 * nftInfo[idx].field_768) - (10^9 * nftInfo[idx].field_512) / nftInfo[idx].field_768 - nftInfo[idx].field_512 == 10^9
                    require nftInfo[idx].field_0 - 1 < 5
                    claimableRewards[address(stor13[idx].field_256)] += (10^9 * nftInfo[idx].field_768) - (10^9 * nftInfo[idx].field_512) / 24 * 3600 * uint256(stor2[stor13[idx].field_0]) / 10^9
        mem[0] = idx
        mem[32] = 13
        nftInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    s = 3
    idx = 96
    while 256 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while 8 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function nodeStats(address arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    s = 0
    s = 0
    t = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 >= block.timestamp:
            idx = idx + 1
            s = nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768
            s = s
            t = t
            continue 
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5
        idx = idx + 1
        s = nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768
        s = s + stor17[stor13[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0]
        t = t + 1
        continue 
    return t, s
}

function sub_0debc023(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768:
            if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                require block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512
                require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512 == 10^9
        else:
            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 > nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512:
                    require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512
                    require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512 == 10^9
        require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_512 = block.timestamp
        idx = idx + 1
        continue 
    mem[(32 * _7) + ceil32(return_data.size) + 128 len 160] = call.data[calldata.size len 160]
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0xdb00fb20 with:
            gas gas_remaining wei
    mem[(32 * _7) + ceil32(return_data.size) + 288 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require arg1 - 1 < 5
    if not mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288]:
        if claimableRewards[address(msg.sender)] < 0:
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 292] = 32
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 324] = 18
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 356] = 'Not enough rewards'
            revert with memory
              from (32 * _7) + (2 * ceil32(return_data.size)) + 288
               len ceil32(return_data.size) + 100
    else:
        require mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288]
        require mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288] * discount / mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288] == discount
        if claimableRewards[address(msg.sender)] < mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288] * discount / 100:
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 292] = 32
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 324] = 18
            mem[(32 * _7) + (2 * ceil32(return_data.size)) + 356] = 'Not enough rewards'
            revert with memory
              from (32 * _7) + (2 * ceil32(return_data.size)) + 288
               len ceil32(return_data.size) + 100
        claimableRewards[address(msg.sender)] -= mem[(32 * arg1 - 1) + (32 * _7) + ceil32(return_data.size) + 288] * discount / 100
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 292] = arg1
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 324] = msg.sender
    require ext_code.size(nodesAddress)
    call nodesAddress.0xc4427d77 with:
         gas gas_remaining wei
        args mem[(32 * _7) + (2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_61ff8a71(?) payable {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    idx = 0
    s = 0
    s = 0
    t = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768 >= block.timestamp:
            idx = idx + 1
            s = nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768
            s = s
            t = t
            continue 
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 13
        require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0 - 1 < 5
        idx = idx + 1
        s = nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_768
        s = s + stor17[stor13[mem[(32 * idx) + ceil32(return_data.size) + 128]].field_0]
        t = t + 1
        continue 
    if s <= 0:
        revert with 0, 'No fee due to pay'
    if s != msg.value:
        revert with 0, 
                    32,
                    37,
                    0xfe416d6f756e74207061696420646f6573206e6f74206d6174636820616d6f756e74206475,
                    mem[(32 * _7) + ceil32(return_data.size) + 233 len 27]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[(32 * _7) + ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _7) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _7) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _42 = mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _7) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _7) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _7) + ceil32(return_data.size) + 128]
    _45 = mem[_42 + (32 * _7) + ceil32(return_data.size) + 128]
    mem[(32 * _7) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_42 + (32 * _7) + ceil32(return_data.size) + 128])] = mem[_42 + (32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_42 + (32 * _7) + ceil32(return_data.size) + 128])]
    idx = 0
    while idx < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]:
        require idx < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
        if block.timestamp <= nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768:
            if block.timestamp - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512:
                require block.timestamp - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512
                require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512 == 10^9
        else:
            if nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768 > nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512:
                if nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768 - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512:
                    require nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768 - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512
                    require (10^9 * nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512) / nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_768 - nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512 == 10^9
        require nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_0 - 1 < 5
        require idx < mem[(32 * _7) + (2 * ceil32(return_data.size)) + 128]
        mem[0] = mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
        mem[32] = 13
        nftInfo[mem[(32 * idx) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]].field_512 = block.timestamp
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 16
    mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 164] = msg.sender
    require ext_code.size(nodesAddress)
    staticcall nodesAddress.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _134 = mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160] <= 4294967296 and mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]) + 32 <= return_data.size
    mem[(32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 160] = mem[mem[(32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160]
    mem[(32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192 len floor32(mem[_134 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])] = mem[_134 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[_134 + (32 * _45) + (32 * _7) + (2 * ceil32(return_data.size)) + 160])]
    idx = 0
    s = 0
    while idx < mem[(32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 160]:
        require idx < mem[(32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 160]
        mem[0] = mem[(32 * idx) + (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192]
        mem[32] = 13
        if nftInfo[mem[(32 * idx) + (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192]].field_768 < block.timestamp:
            require idx < mem[(32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 160]
            mem[0] = mem[(32 * idx) + (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192]
            mem[32] = 13
            nftInfo[mem[(32 * idx) + (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192]].field_768 = block.timestamp + (stor23 * stor17.length)
        idx = idx + 1
        s = nftInfo[mem[(32 * idx) + (32 * _45) + (32 * _7) + (4 * ceil32(return_data.size)) + 192]].field_768
        continue 
}

function claimRewards() {
    mem[256] = lockups[address(msg.sender)].field_512
    if not lockups[address(msg.sender)].field_0:
        mem[288] = 0x438b630000000000000000000000000000000000000000000000000000000000
        mem[292] = msg.sender
        require ext_code.size(nodesAddress)
        staticcall nodesAddress.0x438b6300 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _14 = mem[288 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_14 + 288])] = mem[_14 + 320 len floor32(mem[_14 + 288])]
        idx = 0
        while idx < mem[ceil32(return_data.size) + 288]:
            require idx < mem[ceil32(return_data.size) + 288]
            if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768:
                if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                    require block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                    require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
            else:
                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 > nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                        require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                        require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
            require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_0 - 1 < 5
            require idx < mem[ceil32(return_data.size) + 288]
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 320]
            mem[32] = 13
            nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if not lastClaimed[address(msg.sender)]:
            require ext_code.size(sub_9fc8da1fAddress)
            call sub_9fc8da1fAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100) / 1000
        else:
            require stor24
            require ext_code.size(sub_9fc8da1fAddress)
            if not block.timestamp - lastClaimed[address(msg.sender)] / stor24:
                call sub_9fc8da1fAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100) / 1000
            else:
                if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 1:
                    call sub_9fc8da1fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * stor9 / 100) / 1000
                else:
                    if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 2:
                        call sub_9fc8da1fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * stor10 / 100) / 1000
                    else:
                        if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 3:
                            call sub_9fc8da1fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * stor11 / 100) / 1000
                        else:
                            if block.timestamp - lastClaimed[address(msg.sender)] / stor24 != 4:
                                call sub_9fc8da1fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 1000 * claimableRewards[address(msg.sender)] / 1000
                            else:
                                call sub_9fc8da1fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (1000 * claimableRewards[address(msg.sender)]) - (1000 * claimableRewards[address(msg.sender)] * stor12 / 100) / 1000
    else:
        if lockups[address(msg.sender)].field_256 > block.timestamp:
            mem[288] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[292] = msg.sender
            require ext_code.size(nodesAddress)
            staticcall nodesAddress.0x438b6300 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _18 = mem[288 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_18 + 288])] = mem[_18 + 320 len floor32(mem[_18 + 288])]
            idx = 0
            while idx < mem[ceil32(return_data.size) + 288]:
                require idx < mem[ceil32(return_data.size) + 288]
                if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768:
                    if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                        require block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                        require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
                else:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 > nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                            require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                            require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
                require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_0 - 1 < 5
                require idx < mem[ceil32(return_data.size) + 288]
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 320]
                mem[32] = 13
                nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if not lastClaimed[address(msg.sender)]:
                require ext_code.size(sub_9fc8da1fAddress)
                call sub_9fc8da1fAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100 * sub_eee025c9) / 1000
            else:
                require stor24
                require ext_code.size(sub_9fc8da1fAddress)
                if not block.timestamp - lastClaimed[address(msg.sender)] / stor24:
                    call sub_9fc8da1fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100 * sub_eee025c9) / 1000
                else:
                    if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 1:
                        call sub_9fc8da1fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * stor9 / 100 * sub_eee025c9) / 1000
                    else:
                        if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 2:
                            call sub_9fc8da1fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * stor10 / 100 * sub_eee025c9) / 1000
                        else:
                            if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 3:
                                call sub_9fc8da1fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * stor11 / 100 * sub_eee025c9) / 1000
                            else:
                                if block.timestamp - lastClaimed[address(msg.sender)] / stor24 != 4:
                                    call sub_9fc8da1fAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claimableRewards[address(msg.sender)] * sub_eee025c9 / 1000
                                else:
                                    call sub_9fc8da1fAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claimableRewards[address(msg.sender)] * sub_eee025c9) - (claimableRewards[address(msg.sender)] * stor12 / 100 * sub_eee025c9) / 1000
        else:
            require lockups[address(msg.sender)].field_512 < 5
            mem[288] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[292] = msg.sender
            require ext_code.size(nodesAddress)
            staticcall nodesAddress.0x438b6300 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _21 = mem[288 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.sender) >> 32 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_21 + 288])] = mem[_21 + 320 len floor32(mem[_21 + 288])]
            idx = 0
            while idx < mem[ceil32(return_data.size) + 288]:
                require idx < mem[ceil32(return_data.size) + 288]
                if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768:
                    if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                        require block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                        require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
                else:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 > nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512:
                            require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512
                            require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 == 10^9
                require nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_0 - 1 < 5
                require idx < mem[ceil32(return_data.size) + 288]
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 320]
                mem[32] = 13
                nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 320]].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if not lastClaimed[address(msg.sender)]:
                require ext_code.size(sub_9fc8da1fAddress)
                call sub_9fc8da1fAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
            else:
                require stor24
                require ext_code.size(sub_9fc8da1fAddress)
                if not block.timestamp - lastClaimed[address(msg.sender)] / stor24:
                    call sub_9fc8da1fAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * sub_6288b18f.length / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
                else:
                    if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 1:
                        call sub_9fc8da1fAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * stor9 / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
                    else:
                        if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 2:
                            call sub_9fc8da1fAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * stor10 / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
                        else:
                            if block.timestamp - lastClaimed[address(msg.sender)] / stor24 == 3:
                                call sub_9fc8da1fAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * stor11 / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
                            else:
                                if block.timestamp - lastClaimed[address(msg.sender)] / stor24 != 4:
                                    call sub_9fc8da1fAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512] / 1000
                                else:
                                    call sub_9fc8da1fAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512]) - (claimableRewards[address(msg.sender)] * stor12 / 100 * sub_981962a7[stor32[address(msg.sender)].field_512]) / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastClaimed[address(msg.sender)] = block.timestamp
    return 1
}

function lockup(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid lockup type'
    if arg1 > 4:
        revert with 0, 'Invalid lockup type'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = lockups[address(msg.sender)].field_0
    mem[224] = lockups[address(msg.sender)].field_256
    mem[256] = lockups[address(msg.sender)].field_512
    if lockups[address(msg.sender)].field_0:
        if lockups[address(msg.sender)].field_256 >= block.timestamp:
            revert with 0, 'You have a lockup in progress'
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[384] = lockups[address(msg.sender)].field_0
        mem[416] = lockups[address(msg.sender)].field_256
        mem[448] = lockups[address(msg.sender)].field_512
        if not lockups[address(msg.sender)].field_0:
            mem[480] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[484] = msg.sender
            require ext_code.size(nodesAddress)
            staticcall nodesAddress.0x438b6300 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 480
            require return_data.size >= 32
            _116 = mem[480 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]
            _130 = mem[_116 + 480]
            mem[ceil32(return_data.size) + 512 len floor32(mem[_116 + 480])] = mem[_116 + 512 len floor32(mem[_116 + 480])]
            idx = 0
            while idx < mem[ceil32(return_data.size) + 480]:
                require idx < mem[ceil32(return_data.size) + 480]
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 512]
                mem[32] = 13
                if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768:
                    if not block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                else:
                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                            idx = idx + 1
                            continue 
                    else:
                        if not nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                        else:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                    idx = idx + 1
                                    continue 
                revert
            mem[0] = msg.sender
            mem[32] = 16
            claimableRewards[address(msg.sender)] = 1000 * claimableRewards[address(msg.sender)] / 1000
            mem[(32 * _130) + ceil32(return_data.size) + 512] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[(32 * _130) + ceil32(return_data.size) + 516] = msg.sender
            require ext_code.size(nodesAddress)
            staticcall nodesAddress.0x438b6300 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _130) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _130) + (2 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _985 = mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
            require mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _130) + ceil32(return_data.size) + 512] <= 4294967296 and mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _130) + ceil32(return_data.size) + 512]) + 32 <= return_data.size
            mem[(32 * _130) + (2 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _130) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _130) + ceil32(return_data.size) + 512]
            mem[(32 * _130) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[_985 + (32 * _130) + ceil32(return_data.size) + 512])] = mem[_985 + (32 * _130) + ceil32(return_data.size) + 544 len floor32(mem[_985 + (32 * _130) + ceil32(return_data.size) + 512])]
            idx = 0
            while idx < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 512]:
                require idx < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 512]
                if block.timestamp <= nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768:
                    if block.timestamp - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512:
                        require block.timestamp - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512
                        require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                else:
                    if nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768 > nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512:
                        if nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512:
                            require nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512
                            require (10^9 * nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512) / nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                require nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_0 - 1 < 5
                require idx < mem[(32 * _130) + (2 * ceil32(return_data.size)) + 512]
                mem[0] = mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]
                mem[32] = 13
                nftInfo[mem[(32 * idx) + (32 * _130) + (2 * ceil32(return_data.size)) + 544]].field_512 = block.timestamp
                idx = idx + 1
                continue 
        else:
            if lockups[address(msg.sender)].field_256 > block.timestamp:
                mem[480] = 0x438b630000000000000000000000000000000000000000000000000000000000
                mem[484] = msg.sender
                require ext_code.size(nodesAddress)
                staticcall nodesAddress.0x438b6300 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 480
                require return_data.size >= 32
                _125 = mem[480 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]
                _133 = mem[_125 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_125 + 480])] = mem[_125 + 512 len floor32(mem[_125 + 480])]
                idx = 0
                while idx < mem[ceil32(return_data.size) + 480]:
                    require idx < mem[ceil32(return_data.size) + 480]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 512]
                    mem[32] = 13
                    if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768:
                        if not block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                        else:
                            if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                    idx = idx + 1
                                    continue 
                    else:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                        else:
                            if not nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                    idx = idx + 1
                                    continue 
                            else:
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                    require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                        idx = idx + 1
                                        continue 
                    revert
                mem[0] = msg.sender
                mem[32] = 16
                claimableRewards[address(msg.sender)] = claimableRewards[address(msg.sender)] * sub_eee025c9 / 1000
                mem[(32 * _133) + ceil32(return_data.size) + 512] = 0x438b630000000000000000000000000000000000000000000000000000000000
                mem[(32 * _133) + ceil32(return_data.size) + 516] = msg.sender
                require ext_code.size(nodesAddress)
                staticcall nodesAddress.0x438b6300 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _133) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _133) + (2 * ceil32(return_data.size)) + 512
                require return_data.size >= 32
                _983 = mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _133) + ceil32(return_data.size) + 512] <= 4294967296 and mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _133) + ceil32(return_data.size) + 512]) + 32 <= return_data.size
                mem[(32 * _133) + (2 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _133) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _133) + ceil32(return_data.size) + 512]
                mem[(32 * _133) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[_983 + (32 * _133) + ceil32(return_data.size) + 512])] = mem[_983 + (32 * _133) + ceil32(return_data.size) + 544 len floor32(mem[_983 + (32 * _133) + ceil32(return_data.size) + 512])]
                idx = 0
                while idx < mem[(32 * _133) + (2 * ceil32(return_data.size)) + 512]:
                    require idx < mem[(32 * _133) + (2 * ceil32(return_data.size)) + 512]
                    if block.timestamp <= nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768:
                        if block.timestamp - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512:
                            require block.timestamp - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512
                            require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                    else:
                        if nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768 > nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512:
                            if nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512:
                                require nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512
                                require (10^9 * nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512) / nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                    require nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_0 - 1 < 5
                    require idx < mem[(32 * _133) + (2 * ceil32(return_data.size)) + 512]
                    mem[0] = mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]
                    mem[32] = 13
                    nftInfo[mem[(32 * idx) + (32 * _133) + (2 * ceil32(return_data.size)) + 544]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                require lockups[address(msg.sender)].field_512 < 5
                mem[480] = 0x438b630000000000000000000000000000000000000000000000000000000000
                mem[484] = msg.sender
                require ext_code.size(nodesAddress)
                staticcall nodesAddress.0x438b6300 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 480
                require return_data.size >= 32
                _128 = mem[480 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, msg.sender) >> 32 + 480]
                _136 = mem[_128 + 480]
                mem[ceil32(return_data.size) + 512 len floor32(mem[_128 + 480])] = mem[_128 + 512 len floor32(mem[_128 + 480])]
                idx = 0
                while idx < mem[ceil32(return_data.size) + 480]:
                    require idx < mem[ceil32(return_data.size) + 480]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 512]
                    mem[32] = 13
                    if block.timestamp <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768:
                        if not block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                        else:
                            if block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                    idx = idx + 1
                                    continue 
                    else:
                        if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 <= nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                            if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                idx = idx + 1
                                continue 
                        else:
                            if not nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                    idx = idx + 1
                                    continue 
                            else:
                                if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512:
                                    require (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512) / nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_768 - nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_512 == 10^9
                                    if nftInfo[mem[(32 * idx) + ceil32(return_data.size) + 512]].field_0 - 1 < 5:
                                        idx = idx + 1
                                        continue 
                    revert
                mem[0] = msg.sender
                mem[32] = 16
                claimableRewards[address(msg.sender)] = claimableRewards[address(msg.sender)] * sub_981962a7[stor32[address(msg.sender)].field_512] / 1000
                mem[(32 * _136) + ceil32(return_data.size) + 512] = 0x438b630000000000000000000000000000000000000000000000000000000000
                mem[(32 * _136) + ceil32(return_data.size) + 516] = msg.sender
                require ext_code.size(nodesAddress)
                staticcall nodesAddress.0x438b6300 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _136) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _136) + (2 * ceil32(return_data.size)) + 512
                require return_data.size >= 32
                _981 = mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
                require mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _136) + ceil32(return_data.size) + 512] <= 4294967296 and mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * mem[mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _136) + ceil32(return_data.size) + 512]) + 32 <= return_data.size
                mem[(32 * _136) + (2 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _136) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, msg.sender) >> 32 + (32 * _136) + ceil32(return_data.size) + 512]
                mem[(32 * _136) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[_981 + (32 * _136) + ceil32(return_data.size) + 512])] = mem[_981 + (32 * _136) + ceil32(return_data.size) + 544 len floor32(mem[_981 + (32 * _136) + ceil32(return_data.size) + 512])]
                idx = 0
                while idx < mem[(32 * _136) + (2 * ceil32(return_data.size)) + 512]:
                    require idx < mem[(32 * _136) + (2 * ceil32(return_data.size)) + 512]
                    if block.timestamp <= nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768:
                        if block.timestamp - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512:
                            require block.timestamp - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512
                            require (10^9 * block.timestamp) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512) / block.timestamp - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                    else:
                        if nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768 > nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512:
                            if nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512:
                                require nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512
                                require (10^9 * nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768) - (10^9 * nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512) / nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_768 - nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512 == 10^9
                    require nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_0 - 1 < 5
                    require idx < mem[(32 * _136) + (2 * ceil32(return_data.size)) + 512]
                    mem[0] = mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]
                    mem[32] = 13
                    nftInfo[mem[(32 * idx) + (32 * _136) + (2 * ceil32(return_data.size)) + 544]].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
    lockups[address(msg.sender)].field_0 = block.timestamp
    if arg1 != 1:
        if arg1 != 2:
            if arg1 != 3:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = 0
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
            else:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (6 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
        else:
            if arg1 != 3:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (3 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
            else:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (6 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
    else:
        if arg1 != 2:
            if arg1 != 3:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + stor23
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
            else:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (6 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
        else:
            if arg1 != 3:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (3 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
            else:
                if arg1 != 4:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (6 * stor23)
                else:
                    lockups[address(msg.sender)].field_256 = block.timestamp + (12 * stor23)
    lockups[address(msg.sender)].field_512 = arg1
}



}
