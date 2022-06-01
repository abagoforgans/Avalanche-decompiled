contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ac865a6(?)
#  - sub_586f5850(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of struct stor102;
mapping of uint8 stor103;
mapping of uint8 stor104;

function admin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor103[arg1])
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor104[arg1])
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

function cancelBox(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor102[arg1].field_96 != msg.sender:
        revert with 0, 'not box owner'
    if block.timestamp > stor102[arg1].field_32:
        revert with 0, 'sale started'
    if stor102[arg1].field_256:
        revert with 0, 'sale canceled already'
    stor102[arg1].field_256 = 1
    emit 0x78d35567: arg1, msg.sender
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

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not stor103[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not admin'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not stor103[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'not admin'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 104
        stor104[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3d0950a8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 103
        stor103[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getPurchasedNft(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor102[arg1][6][address(arg2)].field_0:
        mem[128] = stor102[arg1][6][address(arg2)].field_0
        idx = 128
        s = 0
        while (32 * stor102[arg1][6][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = stor102[arg1][6][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor102[arg1][6][address(arg2)].field_0, data=mem[128 len 32 * stor102[arg1][6][address(arg2)].field_0])
    mem[(32 * stor102[arg1][6][address(arg2)].field_0) + 128] = 32
    mem[(32 * stor102[arg1][6][address(arg2)].field_0) + 160] = stor102[arg1][6][address(arg2)].field_0
    mem[(32 * stor102[arg1][6][address(arg2)].field_0) + 192 len 32 * stor102[arg1][6][address(arg2)].field_0] = mem[128 len 32 * stor102[arg1][6][address(arg2)].field_0]
    return memory
      from (32 * stor102[arg1][6][address(arg2)].field_0) + 128
       len (96 * stor102[arg1][6][address(arg2)].field_0) + 64
}

function sub_a7f84f06(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = cd[4]
    mem[32] = 102
    if stor102[cd[4]].field_96 != msg.sender:
        revert with 0, 'not box owner'
    if stor102[cd[4]].field_264:
        revert with 0, 'can not add for sell_all'
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        staticcall stor102[cd[4]].field_272.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15 + 12 len 20]
        if stor102[cd[4]].field_96 != mem[_15 + 12 len 20]:
            revert with 0, 'not nft owner'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        stor102[cd[4]].field_1024++
        mem[0] = sha3(cd[4], 102) + 4
        stor[stor102[cd[4]].field_1024 + ('array', 4, ('map', ('cd', 4), ('name', 'stor102', 102)))].field_0 = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor102[cd[4]].field_1792 > !('cd', 36).length:
        revert with 0, 17
    stor102[cd[4]].field_1792 += ('cd', 36).length
}

function getBoxStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 102
    mem[64] = (32 * stor102[arg1].field_768) + 128
    mem[96] = stor102[arg1].field_768
    s = 128
    idx = 0
    while idx < stor102[arg1].field_768:
        mem[0] = sha3(arg1, 102) + 3
        _24 = mem[64]
        mem[64] = mem[64] + 96
        mem[_24] = stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + (3 * idx)].field_0
        mem[_24 + 32] = stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + (3 * idx)].field_256
        mem[_24 + 64] = stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + (3 * idx)].field_512
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    if not stor102[arg1].field_264:
        _28 = mem[64]
        mem[mem[64]] = 192
        _29 = mem[96]
        mem[mem[64] + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 224
        while idx < _29:
            _43 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_43 + 32]
            mem[t + 64] = mem[_43 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_28 + 32] = block.timestamp > stor102[arg1].field_32
        mem[_28 + 64] = stor102[arg1].field_64 < block.timestamp
        mem[_28 + 96] = bool(stor102[arg1].field_256)
        mem[_28 + 128] = stor102[arg1].field_1024
        mem[_28 + 160] = stor102[arg1].field_1792
        return memory
          from mem[64]
           len _28 + (96 * _29) + -mem[64] + 224
    mem[mem[64] + 4] = stor102[arg1].field_96
    staticcall stor102[arg1].field_272.0x70a08231 with:
            gas gas_remaining wei
           args stor102[arg1].field_0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _27 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _30 = mem[_27]
    _36 = mem[64]
    mem[mem[64]] = 192
    _37 = mem[96]
    mem[mem[64] + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 224
    while idx < _37:
        _47 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_47 + 32]
        mem[t + 64] = mem[_47 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    mem[_36 + 32] = block.timestamp > stor102[arg1].field_32
    mem[_36 + 64] = stor102[arg1].field_64 < block.timestamp
    mem[_36 + 96] = bool(stor102[arg1].field_256)
    mem[_36 + 128] = _30
    mem[_36 + 160] = stor102[arg1].field_1792
    return memory
      from mem[64]
       len _36 + (96 * _37) + -mem[64] + 224
}

function getBoxInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor102[arg1].field_512:
        if stor102[arg1].field_512 == uint255(stor102[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if stor102[arg1].field_512:
            if stor102[arg1].field_512 == uint255(stor102[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102[arg1].field_512):
                if 31 >= uint255(stor102[arg1].field_512) * 0.5:
                    mem[128] = 256 * stor102[arg1].field_520
                else:
                    mem[128] = stor102[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor102[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor102[arg1].field_512 == stor102[arg1].field_513 < 32:
                revert with 0, 34
            if stor102[arg1].field_513:
                if 31 >= stor102[arg1].field_513:
                    mem[128] = 256 * stor102[arg1].field_520
                else:
                    mem[128] = stor102[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor102[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor102[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor102[arg1].field_0, 
               stor102[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor102[arg1].field_512), data=mem[128 len ceil32(uint255(stor102[arg1].field_512) * 0.5)]),
               stor102[arg1].field_0,
               stor102[arg1].field_1280,
               stor102[arg1].field_2048,
               stor102[arg1].field_2304
    if stor102[arg1].field_512 == stor102[arg1].field_513 < 32:
        revert with 0, 34
    if stor102[arg1].field_512:
        if stor102[arg1].field_512 == uint255(stor102[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102[arg1].field_512):
            if 31 >= uint255(stor102[arg1].field_512) * 0.5:
                mem[128] = 256 * stor102[arg1].field_520
            else:
                mem[128] = stor102[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor102[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor102[arg1].field_512 == stor102[arg1].field_513 < 32:
            revert with 0, 34
        if stor102[arg1].field_513:
            if 31 >= stor102[arg1].field_513:
                mem[128] = 256 * stor102[arg1].field_520
            else:
                mem[128] = stor102[arg1][2].field_0
                idx = 128
                s = 0
                while stor102[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor102[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor102[arg1].field_0, 
           stor102[arg1].field_256,
           Array(len=stor102[arg1].field_512, data=mem[128 len ceil32(stor102[arg1].field_513)]),
           stor102[arg1].field_0,
           stor102[arg1].field_1280,
           stor102[arg1].field_2048,
           stor102[arg1].field_2304
}

function getNftListForSale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[0] = arg1
    mem[32] = 102
    if not stor102[arg1].field_264:
        if arg2 >= stor102[arg1].field_1024:
            mem[160 len 1024] = 32, mem[160 len 992]
            return 32, 32, mem[160 len 1024]
        if stor102[arg1].field_1024 < arg2:
            revert with 0, 17
        if arg3 <= stor102[arg1].field_1024 - arg2:
            if arg3 > test266151307():
                revert with 0, 65
            mem[96] = arg3
            mem[64] = (32 * arg3) + 128
            if not arg3:
                if not stor102[arg1].field_264:
                    idx = 0
                    while idx < arg3:
                        if idx > !arg2:
                            revert with 0, 17
                        if idx + arg2 >= stor102[arg1].field_1024:
                            revert with 0, 50
                        mem[0] = sha3(arg1, 102) + 4
                        if idx >= arg3:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    return Array(len=arg3, data=mem[128 len 32 * arg3])
                idx = 0
                while idx < arg3:
                    if idx > !arg2:
                        revert with 0, 17
                    mem[mem[64] + 4] = stor102[arg1].field_96
                    mem[mem[64] + 36] = idx + arg2
                    staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args stor102[arg1].field_0, idx + arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_178]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                if not stor102[arg1].field_264:
                    idx = 0
                    while idx < arg3:
                        if idx > !arg2:
                            revert with 0, 17
                        if idx + arg2 >= stor102[arg1].field_1024:
                            revert with 0, 50
                        mem[0] = sha3(arg1, 102) + 4
                        if idx >= arg3:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    return Array(len=arg3, data=mem[128 len 32 * arg3])
                idx = 0
                while idx < arg3:
                    if idx > !arg2:
                        revert with 0, 17
                    mem[mem[64] + 4] = stor102[arg1].field_96
                    mem[mem[64] + 36] = idx + arg2
                    staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args stor102[arg1].field_0, idx + arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_183]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if stor102[arg1].field_1024 < arg2:
                revert with 0, 17
            if stor102[arg1].field_1024 - arg2 > test266151307():
                revert with 0, 65
            mem[96] = stor102[arg1].field_1024 - arg2
            mem[64] = (32 * stor102[arg1].field_1024 - arg2) + 128
            if not stor102[arg1].field_1024 - arg2:
                if not stor102[arg1].field_264:
                    idx = 0
                    while idx < stor102[arg1].field_1024 - arg2:
                        if idx > !arg2:
                            revert with 0, 17
                        if idx + arg2 >= stor102[arg1].field_1024:
                            revert with 0, 50
                        mem[0] = sha3(arg1, 102) + 4
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 128] = 32
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 160] = mem[96]
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    return 32, mem[(32 * stor102[arg1].field_1024 - arg2) + 160 len (32 * mem[96]) + 32]
                idx = 0
                while idx < stor102[arg1].field_1024 - arg2:
                    if idx > !arg2:
                        revert with 0, 17
                    mem[mem[64] + 4] = stor102[arg1].field_96
                    mem[mem[64] + 36] = idx + arg2
                    staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args stor102[arg1].field_0, idx + arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_188]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * stor102[arg1].field_1024 - arg2] = call.data[calldata.size len 32 * stor102[arg1].field_1024 - arg2]
                if not stor102[arg1].field_264:
                    idx = 0
                    while idx < stor102[arg1].field_1024 - arg2:
                        if idx > !arg2:
                            revert with 0, 17
                        if idx + arg2 >= stor102[arg1].field_1024:
                            revert with 0, 50
                        mem[0] = sha3(arg1, 102) + 4
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 128] = 32
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 160] = mem[96]
                    mem[(32 * stor102[arg1].field_1024 - arg2) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    return 32, mem[(32 * stor102[arg1].field_1024 - arg2) + 160 len (32 * mem[96]) + 32]
                idx = 0
                while idx < stor102[arg1].field_1024 - arg2:
                    if idx > !arg2:
                        revert with 0, 17
                    mem[mem[64] + 4] = stor102[arg1].field_96
                    mem[mem[64] + 36] = idx + arg2
                    staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args stor102[arg1].field_0, idx + arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_193]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
    mem[100] = stor102[arg1].field_96
    staticcall stor102[arg1].field_272.0x70a08231 with:
            gas gas_remaining wei
           args stor102[arg1].field_96
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 160 len 32 * ext_call.return_data[0]])
    if ext_call.return_data[0] < arg2:
        revert with 0, 17
    if arg3 <= ext_call.return_data[0] - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
        if not arg3:
            if not stor102[arg1].field_264:
                idx = 0
                while idx < arg3:
                    if idx > !arg2:
                        revert with 0, 17
                    if idx + arg2 >= stor102[arg1].field_1024:
                        revert with 0, 50
                    mem[0] = sha3(arg1, 102) + 4
                    if idx >= arg3:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=arg3, data=mem[ceil32(return_data.size) + 128 len 32 * arg3])
            idx = 0
            while idx < arg3:
                if idx > !arg2:
                    revert with 0, 17
                mem[mem[64] + 4] = stor102[arg1].field_96
                mem[mem[64] + 36] = idx + arg2
                staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args stor102[arg1].field_0, idx + arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_198]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _197 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64 len 32 * _197] = mem[ceil32(return_data.size) + 128 len 32 * _197]
            return 32, mem[mem[64] + 32 len (32 * _197) + 32]
        mem[ceil32(return_data.size) + 128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        if not stor102[arg1].field_264:
            idx = 0
            while idx < arg3:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor102[arg1].field_1024:
                    revert with 0, 50
                mem[0] = sha3(arg1, 102) + 4
                if idx >= arg3:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return Array(len=arg3, data=mem[ceil32(return_data.size) + 128 len 32 * arg3])
        idx = 0
        while idx < arg3:
            if idx > !arg2:
                revert with 0, 17
            mem[mem[64] + 4] = stor102[arg1].field_96
            mem[mem[64] + 36] = idx + arg2
            staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args stor102[arg1].field_0, idx + arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_203]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _202 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _202] = mem[ceil32(return_data.size) + 128 len 32 * _202]
        return 32, mem[mem[64] + 32 len (32 * _202) + 32]
    if ext_call.return_data[0] < arg2:
        revert with 0, 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        if not stor102[arg1].field_264:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if idx > !arg2:
                    revert with 0, 17
                if idx + arg2 >= stor102[arg1].field_1024:
                    revert with 0, 50
                mem[0] = sha3(arg1, 102) + 4
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 32
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
            return 32, mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32], 
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if idx > !arg2:
                revert with 0, 17
            mem[mem[64] + 4] = stor102[arg1].field_96
            mem[mem[64] + 36] = idx + arg2
            staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args stor102[arg1].field_0, idx + arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_208]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _207 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _207] = mem[ceil32(return_data.size) + 128 len 32 * _207]
        return 32, mem[mem[64] + 32 len (32 * _207) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if not stor102[arg1].field_264:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if idx > !arg2:
                revert with 0, 17
            if idx + arg2 >= stor102[arg1].field_1024:
                revert with 0, 50
            mem[0] = sha3(arg1, 102) + 4
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'stor102', 102))) + idx + arg2].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 32
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192 len 32 * mem[ceil32(return_data.size) + 96]] = mem[ceil32(return_data.size) + 128 len 32 * mem[ceil32(return_data.size) + 96]]
        return 32, mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32], 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if idx > !arg2:
            revert with 0, 17
        mem[mem[64] + 4] = stor102[arg1].field_96
        mem[mem[64] + 36] = idx + arg2
        staticcall stor102[arg1].field_272.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args stor102[arg1].field_0, idx + arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_213]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _212 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _212] = mem[ceil32(return_data.size) + 128 len 32 * _212]
    return 32, mem[mem[64] + 32 len (32 * _212) + 32]
}

function sub_5551bc4b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 102
        if stor102[cd[((32 * idx) + cd[4] + 36)]].field_96 != msg.sender:
            revert with 0, 'not owner'
        if not stor102[cd[((32 * idx) + cd[4] + 36)]].field_264:
            if stor102[cd[((32 * idx) + cd[4] + 36)]].field_64 <= block.timestamp:
                s = 0
                while s < stor102[cd[((32 * s) + cd[4] + 36)]].field_768:
                    mem[0] = sha3(cd[((32 * s) + cd[4] + 36)], 102) + 3
                    if stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 != 0:
                        if s >= stor102[cd[((32 * s) + cd[4] + 36)]].field_768:
                            revert with 0, 50
                        mem[0] = sha3(cd[((32 * s) + cd[4] + 36)], 102) + 3
                        stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 = 0
                        if not stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0:
                            call msg.sender with:
                               value stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                            mem[mem[64] + 32] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            mem[mem[64] + 64] = block.timestamp
                        else:
                            _719 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            _723 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_723 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_723 + 36 len 28]
                            mem[64] = _719 + 164
                            mem[_719 + 100] = 32
                            mem[_719 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _759 = mem[_723]
                            idx = 0
                            while idx < _759:
                                mem[idx + _719 + 164] = mem[idx + _723 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_759) > _759:
                                mem[_759 + _719 + 164] = 0
                            call stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0.mem[_719 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_719 + 168 len _759 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_719 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_719 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _719 + 232] = mem[idx + _719 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_719 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if s >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_719 + 164] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_719 + 196] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_719 + 228] = block.timestamp
                            else:
                                mem[64] = _719 + ceil32(return_data.size) + 165
                                mem[_719 + 164] = return_data.size
                                mem[_719 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_719 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_719 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _719 + ceil32(return_data.size) + 233] = mem[idx + _719 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_719 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_719 + 196] == bool(mem[_719 + 196])
                                    if not mem[_719 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if s >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_719 + ceil32(return_data.size) + 165] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_719 + ceil32(return_data.size) + 197] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_719 + ceil32(return_data.size) + 229] = block.timestamp
                        emit ClaimPayment(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_0, stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 1)), ('cd', 4))), ('name', 'stor102', 102)))].field_512, block.timestamp, msg.sender, cd[((32 * s) + cd[4] + 36)]);
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if stor102[cd[((32 * idx) + cd[4] + 36)]].field_1024:
                revert with 0, 'not expired/sold-out'
            s = 0
            while s < stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                if stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 != 0:
                    if s >= stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                        revert with 0, 50
                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                    stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 = 0
                    if not stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0:
                        call msg.sender with:
                           value stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[mem[64]] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                        mem[mem[64] + 32] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                        mem[mem[64] + 64] = block.timestamp
                    else:
                        _720 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                        _725 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_725 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_725 + 36 len 28]
                        mem[64] = _720 + 164
                        mem[_720 + 100] = 32
                        mem[_720 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _761 = mem[_725]
                        t = 0
                        while t < _761:
                            mem[t + _720 + 164] = mem[t + _725 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_761) > _761:
                            mem[_761 + _720 + 164] = 0
                        call stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0.mem[_720 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_720 + 168 len _761 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_720 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_720 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _720 + 232] = mem[idx + _720 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_720 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[_720 + 164] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                            mem[_720 + 196] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            mem[_720 + 228] = block.timestamp
                        else:
                            mem[64] = _720 + ceil32(return_data.size) + 165
                            mem[_720 + 164] = return_data.size
                            mem[_720 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_720 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_720 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _720 + ceil32(return_data.size) + 233] = mem[idx + _720 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_720 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_720 + 196] == bool(mem[_720 + 196])
                                if not mem[_720 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[_720 + ceil32(return_data.size) + 165] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                            mem[_720 + ceil32(return_data.size) + 197] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            mem[_720 + ceil32(return_data.size) + 229] = block.timestamp
                    emit ClaimPayment(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0, stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512, block.timestamp, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
        else:
            mem[mem[64] + 4] = msg.sender
            staticcall stor102[cd[((32 * idx) + cd[4] + 36)]].field_272.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if stor102[cd[((32 * idx) + cd[4] + 36)]].field_64 <= block.timestamp:
                s = 0
                while s < stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                    if stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 != 0:
                        if s >= stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                            revert with 0, 50
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                        stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 = 0
                        if not stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0:
                            call msg.sender with:
                               value stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                            mem[mem[64] + 32] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            mem[mem[64] + 64] = block.timestamp
                        else:
                            _721 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            _727 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_727 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_727 + 36 len 28]
                            mem[64] = _721 + 164
                            mem[_721 + 100] = 32
                            mem[_721 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _763 = mem[_727]
                            t = 0
                            while t < _763:
                                mem[t + _721 + 164] = mem[t + _727 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_763) > _763:
                                mem[_763 + _721 + 164] = 0
                            call stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0.mem[_721 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_721 + 168 len _763 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_721 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_721 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _721 + 232] = mem[idx + _721 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_721 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_721 + 164] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_721 + 196] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_721 + 228] = block.timestamp
                            else:
                                mem[64] = _721 + ceil32(return_data.size) + 165
                                mem[_721 + 164] = return_data.size
                                mem[_721 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_721 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_721 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _721 + ceil32(return_data.size) + 233] = mem[idx + _721 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_721 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_721 + 196] == bool(mem[_721 + 196])
                                    if not mem[_721 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_721 + ceil32(return_data.size) + 165] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_721 + ceil32(return_data.size) + 197] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_721 + ceil32(return_data.size) + 229] = block.timestamp
                        emit ClaimPayment(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0, stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512, block.timestamp, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                if mem[_357]:
                    revert with 0, 'not expired/sold-out'
                s = 0
                while s < stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                    mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                    if stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 != 0:
                        if s >= stor102[cd[((32 * idx) + cd[4] + 36)]].field_768:
                            revert with 0, 50
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 102) + 3
                        stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 = 0
                        if not stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0:
                            call msg.sender with:
                               value stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                            mem[mem[64] + 32] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            mem[mem[64] + 64] = block.timestamp
                        else:
                            _722 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                            _729 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_729 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_729 + 36 len 28]
                            mem[64] = _722 + 164
                            mem[_722 + 100] = 32
                            mem[_722 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _765 = mem[_729]
                            t = 0
                            while t < _765:
                                mem[t + _722 + 164] = mem[t + _729 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_765) > _765:
                                mem[_765 + _722 + 164] = 0
                            call stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0.mem[_722 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_722 + 168 len _765 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_722 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_722 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _722 + 232] = mem[idx + _722 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_722 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_722 + 164] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_722 + 196] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_722 + 228] = block.timestamp
                            else:
                                mem[64] = _722 + ceil32(return_data.size) + 165
                                mem[_722 + 164] = return_data.size
                                mem[_722 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_722 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_722 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _722 + ceil32(return_data.size) + 233] = mem[idx + _722 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_722 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_722 + 196] == bool(mem[_722 + 196])
                                    if not mem[_722 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[_722 + ceil32(return_data.size) + 165] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0
                                mem[_722 + ceil32(return_data.size) + 197] = stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512
                                mem[_722 + ceil32(return_data.size) + 229] = block.timestamp
                        emit ClaimPayment(stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_0, stor[(3 * s) + ('array', 3, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'stor102', 102)))].field_512, block.timestamp, msg.sender, cd[((32 * idx) + cd[4] + 36)]);
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
