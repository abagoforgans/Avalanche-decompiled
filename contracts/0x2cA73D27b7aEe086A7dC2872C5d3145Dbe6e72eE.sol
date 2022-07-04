contract main {




// =====================  Runtime code  =====================


address owner;
address distributorAddress;
uint256 sub_aab1676e;
uint256 sub_b2500756;
uint256 totalDistributed;
array of address shareholders;
array of uint256 shares;
uint256 totalShares;
mapping of uint256 sub_9f113d1b;
mapping of uint8 stor9;
uint8 sub_c6770ab1;
address NEXUSAddress; offset 8
address vaultAddress;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function NEXUS() {
    return NEXUSAddress
}

function totalShares() {
    return totalShares
}

function shares(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shares.length
    return shares[arg1]
}

function sub_8aaed6f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function sub_9f113d1b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9f113d1b[arg1]
}

function sub_aab1676e(?) {
    return sub_aab1676e
}

function shareholders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shareholders.length
    return address(shareholders[arg1])
}

function sub_b2500756(?) {
    return sub_b2500756
}

function distributor() {
    return distributorAddress
}

function sub_c6770ab1(?) {
    return bool(sub_c6770ab1)
}

function totalDistributed() {
    return totalDistributed
}

function vault() {
    return vaultAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_356f1505(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aab1676e = arg1
}

function setDistributorAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributorAddress = arg1
}

function sub_5d2f34ef(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    sub_b2500756 = 3600 * arg1
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function resetData() {
    if distributorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReflectionManager: unauthorized address'
    idx = 0
    while idx < shareholders.length:
        mem[0] = address(shareholders[idx])
        mem[32] = 9
        stor9[address(stor5[idx])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_c6770ab1 = 0
    shareholders.length = 0
    idx = 0
    while shareholders.length > idx:
        uint256(shareholders[idx]) = 0
        idx = idx + 1
        continue 
    shares.length = 0
    idx = 0
    while shares.length > idx:
        shares[idx] = 0
        idx = idx + 1
        continue 
    totalShares = 0
}

function distribute() payable {
    mem[64] = 96
    require not msg.value
    if distributorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReflectionManager: unauthorized address'
    if not sub_c6770ab1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReflectionManager: data not calculated'
    idx = 0
    while idx < shareholders.length:
        if idx >= shares.length:
            revert with 0, 50
        if not totalShares:
            revert with 0, 18
        if shares[idx] / totalShares and eth.balance(this.address) > -1 / shares[idx] / totalShares:
            revert with 0, 17
        if idx >= shareholders.length:
            revert with 0, 50
        mem[0] = 5
        mem[mem[64]] = shares[idx] / totalShares * eth.balance(this.address)
        mem[mem[64] + 32] = address(shareholders[idx])
        emit 0xc33d0589: shares[idx] / totalShares * eth.balance(this.address), address(shareholders[idx])
        if eth.balance(this.address) < shares[idx] / totalShares * eth.balance(this.address):
            revert with 0, 'Address: insufficient balance'
        call address(shareholders[idx]) with:
           value shares[idx] / totalShares * eth.balance(this.address) wei
             gas gas_remaining wei
        if return_data.size:
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_33] = return_data.size
            mem[_33 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if sub_9f113d1b[address(stor5[idx])] > !(shares[idx] / totalShares * eth.balance(this.address)):
            revert with 0, 17
        sub_9f113d1b[address(stor5[idx])] += shares[idx] / totalShares * eth.balance(this.address)
        mem[0] = address(shareholders[idx])
        mem[32] = 9
        stor9[address(stor5[idx])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_c6770ab1 = 0
    if block.timestamp > !sub_b2500756:
        revert with 0, 17
    sub_aab1676e = block.timestamp + sub_b2500756
    if totalDistributed > !eth.balance(this.address):
        revert with 0, 17
    totalDistributed += eth.balance(this.address)
    emit Distributed(eth.balance(this.address));
}

function populateData() {
    if distributorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ReflectionManager: unauthorized address'
    mem[96] = 0
    shareholders.length = 0
    idx = 0
    while shareholders.length > idx:
        uint256(shareholders[idx]) = 0
        idx = idx + 1
        continue 
    mem[128] = 0
    shares.length = 0
    mem[0] = 6
    idx = 0
    while shares.length > idx:
        shares[idx] = 0
        idx = idx + 1
        continue 
    totalShares = 0
    mem[164] = vaultAddress
    staticcall NEXUSAddress.0x70a08231 with:
            gas gas_remaining wei
           args vaultAddress
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = vaultAddress
        mem[mem[64] + 36] = idx
        staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args vaultAddress, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _248 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _253 = mem[_248]
        mem[mem[64] + 4] = mem[_248]
        staticcall vaultAddress.0x8c6f90ba with:
                gas gas_remaining wei
               args _253
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _264 = mem[_258]
        require mem[_258] == mem[_258 + 12 len 20]
        mem[0] = mem[_258 + 12 len 20]
        mem[32] = 9
        if not stor9[mem[0]]:
            mem[0] = address(_264)
            mem[32] = 9
            stor9[address(_264)] = 1
            mem[mem[64] + 4] = address(_264)
            staticcall vaultAddress.0x362a3fad with:
                    gas gas_remaining wei
                   args address(_264)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_285]
            if totalShares > !mem[_285]:
                revert with 0, 17
            totalShares += mem[_285]
            shareholders.length++
            stor36B6[stor5.length] = address(_264)
            shares.length++
            mem[0] = 6
            shares[shares.length] = _289
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_c6770ab1 = 1
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit 0x3ee6ec8b: msg.value, msg.sender
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xbfe10928(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x9f113d1b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_9f113d1b[arg1]
                if unknown_0xaab1676e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_aab1676e
                if uint32(call.func_hash) >> 224 != unknown_0xab377daa(?????):
                    require unknown_0xb2500756(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_b2500756
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 < shareholders.length
                return address(shareholders[arg1])
            if unknown_0xbfe10928(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return distributorAddress
            if unknown_0xc6770ab1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(sub_c6770ab1)
            if uint32(call.func_hash) >> 224 != unknown_0xe4fc6b6d(?????):
                if unknown_0xefca2eed(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalDistributed
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return vaultAddress
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
                require not msg.value
                if distributorAddress != msg.sender:
                    revert with 0, 'ReflectionManager: unauthorized address'
                if not sub_c6770ab1:
                    revert with 0, 'ReflectionManager: data not calculated'
                idx = 0
                while idx < shareholders.length:
                    if idx >= shares.length:
                        revert with 0, 50
                    if not totalShares:
                        revert with 0, 18
                    if shares[idx] / totalShares and eth.balance(this.address) > -1 / shares[idx] / totalShares:
                        revert with 0, 17
                    if idx >= shareholders.length:
                        revert with 0, 50
                    mem[0] = 5
                    mem[mem[64]] = shares[idx] / totalShares * eth.balance(this.address)
                    mem[mem[64] + 32] = address(shareholders[idx])
                    emit 0xc33d0589: shares[idx] / totalShares * eth.balance(this.address), address(shareholders[idx])
                    if eth.balance(this.address) < shares[idx] / totalShares * eth.balance(this.address):
                        revert with 0, 'Address: insufficient balance'
                    call address(shareholders[idx]) with:
                       value shares[idx] / totalShares * eth.balance(this.address) wei
                         gas gas_remaining wei
                    if return_data.size:
                        _219 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_219] = return_data.size
                        mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if sub_9f113d1b[address(stor5[idx])] > !(shares[idx] / totalShares * eth.balance(this.address)):
                        revert with 0, 17
                    sub_9f113d1b[address(stor5[idx])] += shares[idx] / totalShares * eth.balance(this.address)
                    mem[0] = address(shareholders[idx])
                    mem[32] = 9
                    stor9[address(stor5[idx])] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_c6770ab1 = 0
                if block.timestamp > !sub_b2500756:
                    revert with 0, 17
                sub_aab1676e = block.timestamp + sub_b2500756
                if totalDistributed > !eth.balance(this.address):
                    revert with 0, 17
                totalDistributed += eth.balance(this.address)
                emit Distributed(eth.balance(this.address));
        else:
            if unknown_0x57a858fc(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x239131af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return NEXUSAddress
                if unknown_0x356f1505(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_aab1676e = arg1
                else:
                    if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalShares
                    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        require unknown_0x478c4e0e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if distributorAddress != msg.sender:
                            revert with 0, 'ReflectionManager: unauthorized address'
                        idx = 0
                        while idx < shareholders.length:
                            mem[0] = address(shareholders[idx])
                            mem[32] = 9
                            stor9[address(stor5[idx])] = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        sub_c6770ab1 = 0
                        shareholders.length = 0
                        idx = 0
                        while shareholders.length > idx:
                            uint256(shareholders[idx]) = 0
                            idx = idx + 1
                            continue 
                        shares.length = 0
                        idx = 0
                        while shares.length > idx:
                            shares[idx] = 0
                            idx = idx + 1
                            continue 
                        totalShares = 0
            else:
                if unknown_0x57a858fc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < shares.length
                    return shares[arg1]
                if uint32(call.func_hash) >> 224 != unknown_0x5aa5af96(?????):
                    if unknown_0x5d2f34ef(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
                            revert with 0, 17
                        sub_b2500756 = 3600 * arg1
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x87950f49(?????):
                                require unknown_0x8aaed6f2(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                return bool(stor9[arg1])
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            distributorAddress = address(arg1)
                else:
                    require not msg.value
                    if distributorAddress != msg.sender:
                        revert with 0, 'ReflectionManager: unauthorized address'
                    mem[128] = 0
                    shareholders.length = 0
                    idx = 0
                    while shareholders.length > idx:
                        uint256(shareholders[idx]) = 0
                        idx = idx + 1
                        continue 
                    mem[160] = 0
                    shares.length = 0
                    mem[0] = 6
                    idx = 0
                    while shares.length > idx:
                        shares[idx] = 0
                        idx = idx + 1
                        continue 
                    totalShares = 0
                    mem[196] = vaultAddress
                    staticcall NEXUSAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args vaultAddress
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    idx = 0
                    while idx < ext_call.return_data[0]:
                        mem[mem[64] + 4] = vaultAddress
                        mem[mem[64] + 36] = idx
                        staticcall NEXUSAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args vaultAddress, idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _395 = mem[_387]
                        mem[mem[64] + 4] = mem[_387]
                        staticcall vaultAddress.0x8c6f90ba with:
                                gas gas_remaining wei
                               args _395
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _407 = mem[_400]
                        require mem[_400] == mem[_400 + 12 len 20]
                        mem[0] = mem[_400 + 12 len 20]
                        mem[32] = 9
                        if not stor9[mem[0]]:
                            mem[0] = address(_407)
                            mem[32] = 9
                            stor9[address(_407)] = 1
                            mem[mem[64] + 4] = address(_407)
                            staticcall vaultAddress.0x362a3fad with:
                                    gas gas_remaining wei
                                   args address(_407)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _428 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _432 = mem[_428]
                            if totalShares > !mem[_428]:
                                revert with 0, 17
                            totalShares += mem[_428]
                            shareholders.length++
                            stor36B6[stor5.length] = address(_407)
                            shares.length++
                            mem[0] = 6
                            shares[shares.length] = _432
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    sub_c6770ab1 = 1
}



}
