contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint8 productID; offset 160
address sub_dc3aaab5Address;
uint256 totalNumberHashesStored;
array of struct stor4;
array of struct fileHashesTo;

function getTokenAddress() {
    return address(stor1.length)
}

function totalNumberHashesStored() {
    return totalNumberHashesStored
}

function owner() {
    return owner
}

function fileHashesToAddress(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < fileHashesTo[arg1].field_0
    return fileHashesTo[arg1][arg2].field_0, fileHashesTo[arg1][arg2].field_256
}

function sub_dc3aaab5(?) {
    return sub_dc3aaab5Address
}

function productID() {
    return productID
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

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_9e9f695d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    productID = uint8(arg1)
}

function sub_7c0bf7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc3aaab5Address = address(arg1)
}

function sub_4bc10ccb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = address(arg1)
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

function getAddressesForHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * fileHashesTo[arg1].field_0) + 128
    mem[96] = fileHashesTo[arg1].field_0
    s = 128
    idx = 0
    while idx < fileHashesTo[arg1].field_0:
        mem[0] = sha3(arg1, 5)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = fileHashesTo[arg1][idx].field_0
        mem[_12 + 32] = fileHashesTo[arg1][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function storeHash(bytes32 arg1, string arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.value < 0:
        revert with 0, 17
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor4[msg.sender].field_0++
    stor4[msg.sender][stor4[msg.sender].field_0].field_0 = arg1
    stor4[msg.sender][stor4[msg.sender].field_0].field_256 = block.timestamp
    if stor4[msg.sender][stor4[msg.sender].field_0].field_512:
        if stor4[msg.sender][stor4[msg.sender].field_0].field_512 == uint255(stor4[msg.sender][stor4[msg.sender].field_0].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3(('map', 'msg.sender', ('name', 'stor4', 4)) + (4 * stor4[msg.sender].field_0) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[msg.sender][stor4[msg.sender].field_0].field_512 = 0
            idx = 0
            while (uint255(stor4[msg.sender][stor4[msg.sender].field_0].field_512) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3(('map', 'msg.sender', ('name', 'stor4', 4)) + (4 * stor4[msg.sender].field_0) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[msg.sender][stor4[msg.sender].field_0].field_512 == stor4[msg.sender][stor4[msg.sender].field_0].field_513 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3(('map', 'msg.sender', ('name', 'stor4', 4)) + (4 * stor4[msg.sender].field_0) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4[msg.sender][stor4[msg.sender].field_0].field_512 = 0
            idx = 0
            while stor4[msg.sender][stor4[msg.sender].field_0].field_513 + 31 / 32 > idx:
                stor[idx + sha3(('map', 'msg.sender', ('name', 'stor4', 4)) + (4 * stor4[msg.sender].field_0) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    stor4[msg.sender][stor4[msg.sender].field_0].field_768 = arg3
    fileHashesTo[arg1].field_0++
    fileHashesTo[arg1][fileHashesTo[arg1].field_0].field_0 = msg.sender
    fileHashesTo[arg1][fileHashesTo[arg1].field_0].field_256 = block.timestamp
    if totalNumberHashesStored == -1:
        revert with 0, 17
    totalNumberHashesStored++
    emit 0xb1e5a334: msg.sender, arg1
}

function addressHashes(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < stor4[arg1].field_0
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == uint255(stor4[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_512:
            if stor4[arg1][arg2].field_512 == uint255(stor4[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1][arg2].field_512):
                if 31 >= uint255(stor4[arg1][arg2].field_512) * 0.5:
                    mem[128] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1][arg2].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_513:
                if 31 >= stor4[arg1][arg2].field_513:
                    mem[128] = 256 * stor4[arg1][arg2].field_520
                else:
                    mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1][arg2].field_0, 
               stor4[arg1][arg2].field_256,
               Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_512), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_512) * 0.5)]),
               stor4[arg1][arg2].field_768
    if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_512:
        if stor4[arg1][arg2].field_512 == uint255(stor4[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1][arg2].field_512):
            if 31 >= uint255(stor4[arg1][arg2].field_512) * 0.5:
                mem[128] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1][arg2].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1][arg2].field_512 == stor4[arg1][arg2].field_513 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_513:
            if 31 >= stor4[arg1][arg2].field_513:
                mem[128] = 256 * stor4[arg1][arg2].field_520
            else:
                mem[128] = stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor4', 4)) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1][arg2].field_0, 
           stor4[arg1][arg2].field_256,
           Array(len=stor4[arg1][arg2].field_512, data=mem[128 len ceil32(stor4[arg1][arg2].field_513)]),
           stor4[arg1][arg2].field_768
}

function getHashesForAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor4[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 4)
        _23 = mem[64]
        mem[64] = mem[64] + 128
        mem[_23] = stor4[address(arg1)][idx].field_0
        mem[_23 + 32] = stor4[address(arg1)][idx].field_256
        if stor4[address(arg1)][idx].field_512:
            if stor4[address(arg1)][idx].field_512 == uint255(stor4[address(arg1)][idx].field_512) * 0.5 < 32:
                revert with 0, 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_512) * 0.5) + 32
            mem[_30] = uint255(stor4[address(arg1)][idx].field_512) * 0.5
            if stor4[address(arg1)][idx].field_512:
                if stor4[address(arg1)][idx].field_512 == uint255(stor4[address(arg1)][idx].field_512) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4[address(arg1)][idx].field_512):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_512) * 0.5:
                        mem[_30 + 32] = 256 * stor4[address(arg1)][idx].field_520
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4)) + 2
                        mem[_30 + 32] = stor[sha3((4 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 2)].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + (uint255(stor4[address(arg1)][idx].field_512) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_23 + 64] = _30
                mem[_23 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _23
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[address(arg1)][idx].field_512 == stor4[address(arg1)][idx].field_513 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_513:
                mem[_23 + 64] = _30
                mem[_23 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _23
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_513:
                mem[_30 + 32] = 256 * stor4[address(arg1)][idx].field_520
                mem[_23 + 64] = _30
                mem[_23 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _23
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4)) + 2
            mem[_30 + 32] = stor[sha3((4 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 2)].field_0
            t = _30 + 32
            u = sha3(mem[0])
            while _30 + stor4[address(arg1)][u].field_513 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_23 + 64] = _30
            mem[_23 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _23
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_512 == stor4[address(arg1)][idx].field_513 < 32:
            revert with 0, 34
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_513) + 32
        mem[_33] = stor4[address(arg1)][idx].field_513
        if stor4[address(arg1)][idx].field_512:
            if stor4[address(arg1)][idx].field_512 == uint255(stor4[address(arg1)][idx].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor4[address(arg1)][idx].field_512):
                mem[_23 + 64] = _33
                mem[_23 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _23
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_512) * 0.5:
                mem[_33 + 32] = 256 * stor4[address(arg1)][idx].field_520
                mem[_23 + 64] = _33
                mem[_23 + 96] = stor4[address(arg1)][idx].field_768
                mem[s] = _23
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4)) + 2
            mem[_33 + 32] = stor[sha3((4 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 2)].field_0
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + (uint255(stor4[address(arg1)][u].field_512) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_23 + 64] = _33
            mem[_23 + 96] = stor4[address(arg1)][u].field_768
            mem[t] = _23
            t = t + 32
            u = u + 1
            continue 
        if stor4[address(arg1)][idx].field_512 == stor4[address(arg1)][idx].field_513 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_513:
            if 31 >= stor4[address(arg1)][idx].field_513:
                mem[_33 + 32] = 256 * stor4[address(arg1)][idx].field_520
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 4)) + 2
                mem[_33 + 32] = stor[sha3((4 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 2)].field_0
                t = _33 + 32
                u = sha3(mem[0])
                while _33 + stor4[address(arg1)][idx].field_513 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_23 + 64] = _33
        mem[_23 + 96] = stor4[address(arg1)][idx].field_768
        mem[s] = _23
        s = s + 32
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _25 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _25:
        mem[u] = t + -_24 - 64
        _41 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_41 + 32]
        _44 = mem[_41 + 64]
        mem[t + 64] = 128
        _46 = mem[_44]
        mem[t + 128] = mem[_44]
        v = 0
        while v < _46:
            mem[v + t + 160] = mem[_44 + v + 32]
            v = v + 32
            continue 
        if ceil32(_46) > _46:
            mem[t + _46 + 160] = 0
        mem[t + 96] = mem[_41 + 96]
        idx = idx + 1
        s = s + 32
        t = ceil32(_46) + t + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
