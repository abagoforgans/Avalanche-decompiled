contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of uint8 stor2;
array of uint8 stor315;
uint256 totalClaimable;
uint256 stor629;
mapping of uint256 stor630;
uint256 stor631;
uint256 stor632;
array of uint256 stor633;
address devAddress;
uint256 stor298A;

function devAddress() {
    return address(devAddress)
}

function totalClaimable() {
    return totalClaimable
}

function owner() {
    return owner
}

function isClaimed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10001
    return bool(uint8(stor315[uint8(arg1)]))
}

function isWon(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10001
    return bool(uint8(stor2[uint8(arg1)]))
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

function sub_80b03219(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor631 = arg1
}

function sub_ebe77884(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor632 = arg1
}

function sub_510670d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalClaimable = arg1
}

function sub_c54a2e7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(devAddress) = arg1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    call address(devAddress) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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

function sub_c109e58b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor632:
        return 0
    if arg1 >= 10001:
        revert with 'NH{q', 50
    if stor633[arg1] >= totalClaimable:
        return 0
    if arg1 >= 10001:
        revert with 'NH{q', 50
    if totalClaimable < stor633[arg1]:
        revert with 'NH{q', 17
    if 0 > -totalClaimable + stor633[arg1] - 1:
        revert with 'NH{q', 17
    return (totalClaimable - stor633[arg1])
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

function sub_f89e67b8(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, 'AvaxMeerkats: must be less than 10000'
    if arg1 >= 10001:
        revert with 'NH{q', 50
    uint256(stor2[0.03125 / arg1]) = 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor2[0.03125 / arg1])
    uint256(stor315[0.03125 / arg1]) = 0
    stor629++
    emit 0xc0cb648f: Array(len=arg2.length, data=arg2[all]), arg1
}

function sub_18d4e9d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if not uint8(stor2[uint8(mem[(32 * idx) + ceil32(return_data.size) + 128])]):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        return memory
          from mem[64]
           len 32
    return 0
}

function sub_eeb0f4e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if not uint8(stor2[uint8(mem[(32 * idx) + ceil32(return_data.size) + 128])]):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        mem[mem[64]] = not not mem[(32 * idx) + ceil32(return_data.size) + 128]
        return memory
          from mem[64]
           len 32
    return 0
}

function sub_ee4dabf7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= stor632:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if stor633[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= totalClaimable:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        return memory
          from mem[64]
           len 32
    return 0
}

function sub_9cb3d066(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = 0
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= stor632:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if stor633[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= totalClaimable:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if totalClaimable < stor633[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            revert with 'NH{q', 17
        if s > -totalClaimable + stor633[mem[(32 * idx) + ceil32(return_data.size) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalClaimable - stor633[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        continue 
    return s
}

function sub_b2e787f0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'AvaxMeerkats: Doesn't have any MEERKATS'
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxMeerkats: sender is not own given token'
    if arg1 >= stor632:
        revert with 0, 'AvaxMeerkats: This address can't claim free meerkats'
    if arg1 >= 10001:
        revert with 'NH{q', 50
    if stor633[arg1] >= totalClaimable:
        revert with 0, 'AvaxMeerkats: This address can't claim free meerkats'
    if arg1 >= 10001:
        revert with 'NH{q', 50
    if totalClaimable < stor633[arg1]:
        revert with 'NH{q', 17
    if 0 > -totalClaimable + stor633[arg1] - 1:
        revert with 'NH{q', 17
    if totalClaimable - stor633[arg1] <= 0:
        revert with 0, 'AvaxMeerkats: This address can't claim free meerkats'
    mem[0] = msg.sender
    mem[32] = 630
    if stor630[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    stor630[address(msg.sender)]++
    if arg1 >= 10001:
        revert with 'NH{q', 50
    if stor633[arg1] == -1:
        revert with 'NH{q', 17
    stor633[arg1]++
    mem[(2 * ceil32(return_data.size)) + 96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = address(devAddress)
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args address(devAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _23 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A)
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _24 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor298A) + 96]
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _23 + 128
    s = (4 * ceil32(return_data.size)) + 128
    while idx < (2 * ceil32(return_data.size)) + _23 + (32 * _24) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= _24:
        revert with 'NH{q', 50
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args address(devAddress), msg.sender, mem[(4 * ceil32(return_data.size)) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x86f37bfe: mem[(4 * ceil32(return_data.size)) + 128], msg.sender
}

function claimReward() {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x438b6300 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 128] >= 10001:
            revert with 'NH{q', 50
        if not uint8(stor2[uint8(mem[(32 * idx) + ceil32(return_data.size) + 128])]):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + ceil32(return_data.size) + 128]:
            revert with 0, 'adress didn't win any giveaway'
        mem[mem[64] + 4] = address(devAddress)
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(devAddress)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_134] == mem[_134]
        if mem[_134] <= 0:
            revert with 0, 'there is not enough meerkats to give'
        mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(stor1)
        staticcall stor1.0x438b6300 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _141 = mem[_140]
        require mem[_140] <= test266151307()
        require _140 + mem[_140] + 31 < _140 + return_data.size
        _142 = mem[_140 + mem[_140]]
        if mem[_140 + mem[_140]] > test266151307():
            revert with 'NH{q', 65
        if _140 + ceil32(return_data.size) + floor32(mem[_140 + mem[_140]]) + 1 > test266151307() or floor32(mem[_140 + mem[_140]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _140 + ceil32(return_data.size) + floor32(mem[_140 + mem[_140]]) + 1
        mem[_140 + ceil32(return_data.size)] = _142
        require _141 + (32 * _142) + 32 <= return_data.size
        idx = _140 + _141 + 32
        s = _140 + ceil32(return_data.size) + 32
        while idx < _140 + _141 + (32 * _142) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        idx = 0
        while idx < _142:
            if idx >= _142:
                revert with 'NH{q', 50
            if mem[(32 * idx) + _140 + ceil32(return_data.size) + 32] >= 10001:
                revert with 'NH{q', 50
            if not uint8(stor2[uint8(mem[(32 * idx) + _140 + ceil32(return_data.size) + 32])]):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= _142:
                revert with 'NH{q', 50
            _221 = mem[(32 * idx) + _140 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(devAddress)
            require ext_code.size(stor1)
            staticcall stor1.0x438b6300 with:
                    gas gas_remaining wei
                   args address(devAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _229 = mem[_227]
            require mem[_227] <= test266151307()
            require _227 + mem[_227] + 31 < _227 + return_data.size
            _230 = mem[_227 + mem[_227]]
            if mem[_227 + mem[_227]] > test266151307():
                revert with 'NH{q', 65
            if _227 + ceil32(return_data.size) + floor32(mem[_227 + mem[_227]]) + 1 > test266151307() or floor32(mem[_227 + mem[_227]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _227 + ceil32(return_data.size) + floor32(mem[_227 + mem[_227]]) + 1
            mem[_227 + ceil32(return_data.size)] = _230
            require _229 + (32 * _230) + 32 <= return_data.size
            idx = _227 + _229 + 32
            s = _227 + ceil32(return_data.size) + 32
            while idx < _227 + _229 + (32 * _230) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 0 >= _230:
                revert with 'NH{q', 50
            _256 = mem[_227 + ceil32(return_data.size) + 32]
            if _221 >= 10001:
                revert with 'NH{q', 50
            uint256(stor2[0.03125 / _221]) = 0
            uint256(stor315[0.03125 / _221]) = 256^(_221 % 32) or !(255 * 256^(_221 % 32)) and uint256(stor315[0.03125 / _221])
            mem[mem[64] + 4] = _221
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _221
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_262] == mem[_262 + 12 len 20]
            require ext_code.size(stor1)
            call stor1.0x42842e0e with:
                 gas gas_remaining wei
                args address(devAddress), address(mem[_262]), _256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(devAddress)
        require ext_code.size(stor1)
        staticcall stor1.0x438b6300 with:
                gas gas_remaining wei
               args address(devAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _225 = mem[_224]
        require mem[_224] <= test266151307()
        require _224 + mem[_224] + 31 < _224 + return_data.size
        _228 = mem[_224 + mem[_224]]
        if mem[_224 + mem[_224]] > test266151307():
            revert with 'NH{q', 65
        if _224 + ceil32(return_data.size) + floor32(mem[_224 + mem[_224]]) + 1 > test266151307() or floor32(mem[_224 + mem[_224]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _224 + ceil32(return_data.size) + floor32(mem[_224 + mem[_224]]) + 1
        mem[_224 + ceil32(return_data.size)] = _228
        require _225 + (32 * _228) + 32 <= return_data.size
        idx = _224 + _225 + 32
        s = _224 + ceil32(return_data.size) + 32
        while idx < _224 + _225 + (32 * _228) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 0 >= _228:
            revert with 'NH{q', 50
        _255 = mem[_224 + ceil32(return_data.size) + 32]
        uint8(stor2.length) = 0
        uint8(stor315.length) = 1
        mem[mem[64] + 4] = 0
        require ext_code.size(stor1)
        staticcall stor1.0x6352211e with:
                gas gas_remaining wei
               args 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _261 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_261] == mem[_261 + 12 len 20]
        require ext_code.size(stor1)
        call stor1.0x42842e0e with:
             gas gas_remaining wei
            args address(devAddress), address(mem[_261]), _255
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'adress didn't win any giveaway'
}



}
