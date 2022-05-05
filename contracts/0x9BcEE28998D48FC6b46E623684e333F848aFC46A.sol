contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - panic()
#  - pause()
#  - retireStrat()
#
const sub_185fcffe(?) = ext_call.return_data[0]

const stor = 0xf0224dc445ab2da9de8dcefcd5a022737c2326f0

const spell = 0xce1bffbd5374dac86a2893119683f4911a2f7814

const masterchef = 0x6408571e0ad5e8f52ead01450bde74e5074dc74

const WITHDRAWAL_MAX = 10000

const WITHDRAWAL_FEE = 3


uint8 stor0; offset 160
address owner;
address lpPairAddress;
mapping of uint8 stor2;
uint256 poolId;
address vaultAddress;
array of address sub_fb226230;
address sub_21d16b8cAddress;

function sub_21d16b8c(?) payable {
    return sub_21d16b8cAddress
}

function sub_3c635ace(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function poolId() payable {
    return poolId
}

function sub_44af87f6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor6.length
    require arg2 < uint256(stor6[arg1])
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor6', 6)) + arg2])
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function sub_fb226230(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fb226230.length
    return sub_fb226230[arg1]
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHarvester(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfPool() payable {
    require ext_code.size(0x6408571e0ad5e8f52ead01450bde74e5074dc74)
    staticcall 0x6408571e0ad5e8f52ead01450bde74e5074dc74.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0]
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x6408571e0ad5e8f52ead01450bde74e5074dc74)
        call 0x06408571e0ad5e8f52ead01450bde74e5074dc74.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0x6408571e0ad5e8f52ead01450bde74e5074dc74)
    staticcall 0x6408571e0ad5e8f52ead01450bde74e5074dc74.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = 0x6408571e0ad5e8f52ead01450bde74e5074dc74
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x6408571e0ad5e8f52ead01450bde74e5074dc74
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = 0x6408571e0ad5e8f52ead01450bde74e5074dc74
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0x6408571e0ad5e8f52ead01450bde74e
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(lpPairAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), 0x6408571e0ad5e8f52ead014, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call lpPairAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), 0x6408571e0ad5e8f52ead014, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), 0x6408571e0ad5e8f52ead014, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, 0x6408571e0ad5e8f52ead01450bde74e == bool(0, 0x6408571e0ad5e8f52ead01450bde74e)
            if not 0, 0x6408571e0ad5e8f52ead01450bde74e:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lpPairAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lpPairAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lpPairAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'not allowed'
    mem[132] = 0
    require ext_code.size(0x6408571e0ad5e8f52ead01450bde74e5074dc74)
    call 0x06408571e0ad5e8f52ead01450bde74e5074dc74.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < stor6.length
    require 0 < uint256(stor6)
    mem[0] = sha3(6)
    mem[100] = this.address
    require ext_code.size(address(stor[sha3(('name', 'stor6', 6))]))
    staticcall address(stor[sha3(('name', 'stor6', 6))]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf0224dc445ab2da9de8dcefcd5a022737c2326f0)
    staticcall 0xf0224dc445ab2da9de8dcefcd5a022737c2326f0.0xbcae25a4 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = 0xf0224dc445ab2da9de8dcefcd5a022737c2326f0
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
    require ext_code.size(address(stor[sha3(('name', 'stor6', 6))]))
    call address(stor[sha3(('name', 'stor6', 6))]).0xa9059cbb with:
         gas gas_remaining wei
        args 0xf0224dc445ab2da9de8dcefcd5a022737c2326f0, ext_call.return_data[0] * ext_call.return_data[0] / 10000
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < sub_fb226230.length:
        mem[0] = 5
        if sub_fb226230[idx] == 57005:
            idx = idx + 1
            continue 
        require idx < sub_fb226230.length
        require idx < stor6.length
        require 0 < uint256(stor6[idx])
        mem[0] = sha3(6) + idx
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor6[idx]))
        staticcall address(stor6[idx]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _78 = mem[_76]
        require idx < stor6.length
        _81 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _78
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = uint256(stor6[idx])
        mem[0] = sha3(6) + idx
        s = 0
        t = mem[64] + 196
        u = sha3(mem[0])
        while s < uint256(stor6[idx]):
            mem[t] = address(stor[u])
            s = s + 1
            t = t + 32
            u = u + 1
            continue 
        mem[_81 + 100] = this.address
        mem[_81 + 132] = 999999999999999999999
        require ext_code.size(sub_fb226230[idx])
        call sub_fb226230[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_114]
        require mem[_114] <= test266151307()
        require _114 + return_data.size > _114 + mem[_114] + 31
        _117 = mem[_114 + mem[_114]]
        require mem[_114 + mem[_114]] <= test266151307()
        require (32 * mem[_114 + mem[_114]]) + 32 >= 0 and _114 + ceil32(return_data.size) + (32 * mem[_114 + mem[_114]]) + 32 <= test266151307()
        mem[64] = _114 + ceil32(return_data.size) + (32 * mem[_114 + mem[_114]]) + 32
        mem[_114 + ceil32(return_data.size)] = _117
        require return_data.size >= _116 + (32 * _117) + 32
        t = _114 + _116 + 32
        u = _114 + ceil32(return_data.size) + 32
        s = 0
        while s < _117:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        t = _114 + _116 + (32 * _117) + 33
        continue 
    mem[mem[64] + 4] = 0
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_70]
    require mem[_70] == mem[_70 + 12 len 20]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_74))
    staticcall address(_74).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _84 = mem[_83]
    mem[mem[64] + 4] = 1
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _92 = mem[_90]
    require mem[_90] == mem[_90 + 12 len 20]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_92))
    staticcall address(_92).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_97]
    mem[mem[64] + 4] = 2
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.coins(uint256 arg1) with:
            gas gas_remaining wei
           args 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] == mem[_101 + 12 len 20]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_102))
    staticcall address(_102).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _106 = mem[_105]
    _107 = mem[64]
    mem[64] = mem[64] + 96
    mem[_107] = _84
    mem[_107 + 32] = _98
    mem[_107 + 64] = _106
    mem[mem[64] + 4 len 96] = _84, _98, _106
    mem[mem[64] + 100] = 0
    require ext_code.size(lpPairAddress)
    call lpPairAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
         gas gas_remaining wei
        args _84, _98, _106 >> 512, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[mem[64] + 4] = this.address
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_123]:
        require ext_code.size(0x6408571e0ad5e8f52ead01450bde74e5074dc74)
        call 0x06408571e0ad5e8f52ead01450bde74e5074dc74.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, mem[_123]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_31243315(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _120 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_120] = cd[(cd[36] + cd[s] + 36)]
        require calldata.size >= cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68
        u = 0
        v = cd[36] + cd[s] + 68
        w = _120 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _120
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'wrong parameters'
    sub_fb226230.length = mem[96]
    if not mem[96]:
        idx = 0
        while sub_fb226230.length > idx:
            sub_fb226230[idx] = 0
            idx = idx + 1
            continue 
        stor6.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 6
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(6) + stor6.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 5
                if sub_fb226230[idx]:
                    require idx < stor6.length
                    require 0 < uint256(stor6[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 5
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor6[idx]))
                    call address(stor6[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_294] == bool(mem[_294])
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _227 = mem[idx]
                _228 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _228:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _227 + 32
                    while _227 + (32 * _228) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _228) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(6) + stor6.length > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 5
                if sub_fb226230[idx]:
                    require idx < stor6.length
                    require 0 < uint256(stor6[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 5
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor6[idx]))
                    call address(stor6[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_330] == bool(mem[_330])
                idx = idx + 1
                continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            sub_fb226230[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while sub_fb226230.length > idx:
            sub_fb226230[idx] = 0
            idx = idx + 1
            continue 
        stor6.length = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = 6
        if not mem[(32 * ('cd', 4).length) + 128]:
            idx = 0
            while sha3(6) + stor6.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + uint256(stor[idx + sha3(mem[0])]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 5
                if sub_fb226230[idx]:
                    require idx < stor6.length
                    require 0 < uint256(stor6[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 5
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor6[idx]))
                    call address(stor6[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_331] == bool(mem[_331])
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * mem[(32 * ('cd', 4).length) + 128]) + 160 > idx:
                _274 = mem[idx]
                _275 = mem[mem[idx]]
                uint256(stor[s + sha3(mem[0])]) = mem[mem[idx]]
                mem[0] = s + sha3(mem[0])
                if not _275:
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    u = sha3(s + sha3(mem[0]))
                    t = _274 + 32
                    while _274 + (32 * _275) + 32 > t:
                        address(stor[u]) = mem[t + 12 len 20]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, (32 * _275) + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
                        address(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(6) + stor6.length > idx:
                uint256(stor[idx]) = 0
                mem[0] = idx
                s = sha3(idx)
                while sha3(idx) + uint256(stor[idx]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            while idx < sub_fb226230.length:
                mem[0] = 5
                if sub_fb226230[idx]:
                    require idx < stor6.length
                    require 0 < uint256(stor6[idx])
                    require idx < sub_fb226230.length
                    mem[0] = 5
                    mem[mem[64] + 4] = sub_fb226230[idx]
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(stor6[idx]))
                    call address(stor6[idx]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_fb226230[idx], -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_345] == bool(mem[_345])
                idx = idx + 1
                continue 
}



}
