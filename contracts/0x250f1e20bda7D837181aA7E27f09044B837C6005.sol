contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct stor2;
uint256 sub_f5e4ee84;
uint256 sub_2e8fcb15;
uint256 sub_356c4a3f;
uint256 sub_42a2828f;
uint256 sub_9827d463;
uint256 sub_c0d058ba;
uint256 sub_6129c57e;
uint256 sub_f0f5485d;
uint256 sub_29aab165;
uint256 sub_9b7d2851;
uint256 sub_1029e38b;
uint256 sub_30fdaa74;
mapping of uint8 stor15;
address stor16;
uint8 stor17; offset 160
uint128 stor17; offset 160
address stor17;

function sub_1029e38b(?) payable {
    return sub_1029e38b
}

function sub_29aab165(?) payable {
    return sub_29aab165
}

function sub_2e8fcb15(?) payable {
    return sub_2e8fcb15
}

function sub_30fdaa74(?) payable {
    return sub_30fdaa74
}

function sub_356c4a3f(?) payable {
    return sub_356c4a3f
}

function sub_42a2828f(?) payable {
    return sub_42a2828f
}

function sub_6129c57e(?) payable {
    return sub_6129c57e
}

function owner() payable {
    return owner
}

function isTest() payable {
    return bool(uint8(stor17.field_160))
}

function sub_9827d463(?) payable {
    return sub_9827d463
}

function sub_9b7d2851(?) payable {
    return sub_9b7d2851
}

function sub_c0d058ba(?) payable {
    return sub_c0d058ba
}

function sub_f0f5485d(?) payable {
    return sub_f0f5485d
}

function sub_f5e4ee84(?) payable {
    return sub_f5e4ee84
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTestMode(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor17.field_160) = Mask(96, 0, arg1)
}

function sub_6ccf5452(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = address(arg1)
    address(stor17.field_0) = address(arg2)
}

function sub_046935e5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0d058ba = arg2
    sub_9827d463 = arg3
    sub_42a2828f = arg1
}

function setLimit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f5e4ee84 = arg2
    sub_2e8fcb15 = arg3
    sub_356c4a3f = arg1
}

function setPrice(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9b7d2851 = arg1
    sub_30fdaa74 = arg2
    sub_1029e38b = arg3
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

function setDescription(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasury wallet address does not set!'
    if not address(stor17.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasury wallet address does not set!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 85 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor16, 85 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and 85 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 85 * ext_call.return_data[0] / 100:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor17.field_0), ext_call.return_data[0] - (85 * ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and 85 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and 85 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 85 * ext_call.return_data[0] / 100:
        revert with 'NH{q', 17
    emit Withdraw(stor16, 85 * ext_call.return_data[0] / 100, address(stor17.field_0), ext_call.return_data[0] - (85 * ext_call.return_data[0] / 100), block.timestamp);
}

function _description() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function getDescription() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function sub_7812c10c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[96] = 0x44a040f500000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.getRewardAmount(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 288
    require mem[mem[96 len 4], address(arg1) << 64 + 96] == mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[_4 + 128] == mem[_4 + 128]
    mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
    _8 = mem[_4 + 160]
    require mem[_4 + 160] <= test266151307()
    require _4 + mem[_4 + 160] + 127 < return_data.size + 96
    _9 = mem[_4 + mem[_4 + 160] + 96]
    if mem[_4 + mem[_4 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[_4 + mem[_4 + 160] + 96]) + 289 > test266151307() or floor32(mem[_4 + mem[_4 + 160] + 96]) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[_4 + mem[_4 + 160] + 96]) + 289
    mem[ceil32(return_data.size) + 288] = mem[_4 + mem[_4 + 160] + 96]
    require _4 + _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = _4 + _8 + 128
    t = ceil32(return_data.size) + 320
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 160] = ceil32(return_data.size) + 288
    _46 = mem[_4 + 192]
    require mem[_4 + 192] <= test266151307()
    require _4 + mem[_4 + 192] + 127 < return_data.size + 96
    _47 = mem[_4 + mem[_4 + 192] + 96]
    if mem[_4 + mem[_4 + 192] + 96] > test266151307():
        revert with 'NH{q', 65
    _48 = mem[64]
    if mem[64] + floor32(mem[_4 + mem[_4 + 192] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_4 + mem[_4 + 192] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_4 + mem[_4 + 192] + 96]) + 1
    mem[_48] = mem[_4 + mem[_4 + 192] + 96]
    require _4 + _46 + (32 * _47) + 32 <= return_data.size
    idx = 0
    s = _4 + _46 + 128
    t = _48 + 32
    while idx < _47:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = _48
    _83 = mem[_4 + 224]
    require mem[_4 + 224] <= test266151307()
    require _4 + mem[_4 + 224] + 127 < return_data.size + 96
    _84 = mem[_4 + mem[_4 + 224] + 96]
    if mem[_4 + mem[_4 + 224] + 96] > test266151307():
        revert with 'NH{q', 65
    _85 = mem[64]
    if mem[64] + floor32(mem[_4 + mem[_4 + 224] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_4 + mem[_4 + 224] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_4 + mem[_4 + 224] + 96]) + 1
    mem[_85] = mem[_4 + mem[_4 + 224] + 96]
    require _4 + _83 + (32 * _84) + 32 <= return_data.size
    idx = 0
    s = _4 + _83 + 128
    t = _85 + 32
    while idx < _84:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 224] = _85
    _116 = mem[_4 + 256]
    require mem[_4 + 256] <= test266151307()
    require _4 + mem[_4 + 256] + 127 < return_data.size + 96
    _117 = mem[_4 + mem[_4 + 256] + 96]
    if mem[_4 + mem[_4 + 256] + 96] > test266151307():
        revert with 'NH{q', 65
    _118 = mem[64]
    if mem[64] + floor32(mem[_4 + mem[_4 + 256] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_4 + mem[_4 + 256] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_4 + mem[_4 + 256] + 96]) + 1
    mem[_118] = mem[_4 + mem[_4 + 256] + 96]
    require _4 + _116 + (32 * _117) + 32 <= return_data.size
    idx = 0
    s = _4 + _116 + 128
    t = _118 + 32
    while idx < _117:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 256] = _118
    mem[mem[64]] = 0x3a66448800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.getNFTList(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _148 = mem[_147]
    require mem[_147] <= test266151307()
    require _147 + mem[_147] + 31 < _147 + return_data.size
    _149 = mem[_147 + mem[_147]]
    if mem[_147 + mem[_147]] > test266151307():
        revert with 'NH{q', 65
    if _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1 > test266151307() or floor32(mem[_147 + mem[_147]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1
    mem[_147 + ceil32(return_data.size)] = _149
    require _148 + (64 * _149) + 32 <= return_data.size
    idx = 0
    s = _147 + _148 + 32
    t = _147 + ceil32(return_data.size) + 32
    while idx < _149:
        require _147 + return_data.size - s >= 64
        _170 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require mem[s] == mem[s]
        mem[_170] = mem[s]
        require mem[s + 32] < 2
        mem[_170 + 32] = mem[s + 32]
        mem[t] = _170
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if mem[_147 + ceil32(return_data.size)] > 0:
        if sub_f0f5485d > -arg2 - 1:
            revert with 'NH{q', 17
        sub_f0f5485d += arg2
    else:
        idx = 0
        while idx < mem[mem[ceil32(return_data.size) + 192]]:
            if idx >= mem[mem[ceil32(return_data.size) + 192]]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + mem[ceil32(return_data.size) + 192] + 32]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if sub_29aab165 > -arg2 - 1:
                revert with 'NH{q', 17
            sub_29aab165 += arg2
            stor15[address(arg1)] = 1
            emit 0x7f2493cc: address(arg1), arg2, block.timestamp
        if sub_6129c57e > -arg2 - 1:
            revert with 'NH{q', 17
        sub_6129c57e += arg2
    stor15[address(arg1)] = 1
    emit 0x7f2493cc: address(arg1), arg2, block.timestamp
}

function getAmount(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor17.field_160):
        mem[96] = 0x44a040f500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor1)
        staticcall stor1.getRewardAmount(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _9 = mem[96 len 4], address(arg1) << 64
            require mem[96 len 4], address(arg1) << 64 <= test266151307()
            require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
            if not bool(ceil32(return_data.size) + 288 <= test266151307()):
                revert with 'NH{q', 65
            else:
                mem[64] = ceil32(return_data.size) + 288
                require mem[mem[96 len 4], address(arg1) << 64 + 96] == mem[mem[96 len 4], address(arg1) << 64 + 96]
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
                require mem[_9 + 128] == mem[_9 + 128]
                mem[ceil32(return_data.size) + 128] = mem[_9 + 128]
                _18 = mem[_9 + 160]
                require mem[_9 + 160] <= test266151307()
                require _9 + mem[_9 + 160] + 127 < return_data.size + 96
                _20 = mem[_9 + mem[_9 + 160] + 96]
                if mem[_9 + mem[_9 + 160] + 96] > test266151307():
                    revert with 'NH{q', 65
                else:
                    if ceil32(return_data.size) + floor32(mem[_9 + mem[_9 + 160] + 96]) + 289 > test266151307() or floor32(mem[_9 + mem[_9 + 160] + 96]) + 193 < 192:
                        revert with 'NH{q', 65
                    else:
                        mem[64] = ceil32(return_data.size) + floor32(mem[_9 + mem[_9 + 160] + 96]) + 289
                        mem[ceil32(return_data.size) + 288] = mem[_9 + mem[_9 + 160] + 96]
                        require _9 + _18 + (32 * _20) + 32 <= return_data.size
                        idx = 0
                        s = _9 + _18 + 128
                        t = ceil32(return_data.size) + 320
                        while idx < _20:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 160] = ceil32(return_data.size) + 288
                        _86 = mem[_9 + 192]
                        require mem[_9 + 192] <= test266151307()
                        require _9 + mem[_9 + 192] + 127 < return_data.size + 96
                        _88 = mem[_9 + mem[_9 + 192] + 96]
                        if mem[_9 + mem[_9 + 192] + 96] > test266151307():
                            revert with 'NH{q', 65
                        else:
                            _90 = mem[64]
                            if mem[64] + floor32(mem[_9 + mem[_9 + 192] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_9 + mem[_9 + 192] + 96]) + 1 < mem[64]:
                                revert with 'NH{q', 65
                            else:
                                mem[64] = mem[64] + floor32(mem[_9 + mem[_9 + 192] + 96]) + 1
                                mem[_90] = _88
                                require _9 + _86 + (32 * _88) + 32 <= return_data.size
                                idx = 0
                                s = _9 + _86 + 128
                                t = _90 + 32
                                while idx < _88:
                                    require mem[s] == bool(mem[s])
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 192] = _90
                                _158 = mem[_9 + 224]
                                require mem[_9 + 224] <= test266151307()
                                require _9 + mem[_9 + 224] + 127 < return_data.size + 96
                                _160 = mem[_9 + mem[_9 + 224] + 96]
                                if mem[_9 + mem[_9 + 224] + 96] > test266151307():
                                    revert with 'NH{q', 65
                                else:
                                    _162 = mem[64]
                                    if mem[64] + floor32(mem[_9 + mem[_9 + 224] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_9 + mem[_9 + 224] + 96]) + 1 < mem[64]:
                                        revert with 'NH{q', 65
                                    else:
                                        mem[64] = mem[64] + floor32(mem[_9 + mem[_9 + 224] + 96]) + 1
                                        mem[_162] = _160
                                        require _9 + _158 + (32 * _160) + 32 <= return_data.size
                                        idx = 0
                                        s = _9 + _158 + 128
                                        t = _162 + 32
                                        while idx < _160:
                                            require mem[s] == bool(mem[s])
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 224] = _162
                                        _474 = mem[_9 + 256]
                                        require mem[_9 + 256] <= test266151307()
                                        require _9 + mem[_9 + 256] + 127 < return_data.size + 96
                                        _476 = mem[_9 + mem[_9 + 256] + 96]
                                        if mem[_9 + mem[_9 + 256] + 96] > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            _478 = mem[64]
                                            if mem[64] + floor32(mem[_9 + mem[_9 + 256] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_9 + mem[_9 + 256] + 96]) + 1 < mem[64]:
                                                revert with 'NH{q', 65
                                            else:
                                                mem[64] = mem[64] + floor32(mem[_9 + mem[_9 + 256] + 96]) + 1
                                                mem[_478] = mem[_9 + mem[_9 + 256] + 96]
                                                require _9 + _474 + (32 * _476) + 32 <= return_data.size
                                                idx = 0
                                                s = _9 + _474 + 128
                                                t = _478 + 32
                                                while idx < _476:
                                                    require mem[s] == bool(mem[s])
                                                    mem[t] = mem[s]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(return_data.size) + 256] = _478
                                                mem[mem[64]] = 0x3a66448800000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = arg1
                                                require ext_code.size(stor1)
                                                staticcall stor1.getNFTList(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _962 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _964 = mem[_962]
                                                    require mem[_962] <= test266151307()
                                                    require _962 + mem[_962] + 31 < _962 + return_data.size
                                                    _966 = mem[_962 + mem[_962]]
                                                    if mem[_962 + mem[_962]] > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        if _962 + ceil32(return_data.size) + floor32(mem[_962 + mem[_962]]) + 1 > test266151307() or floor32(mem[_962 + mem[_962]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        else:
                                                            mem[64] = _962 + ceil32(return_data.size) + floor32(mem[_962 + mem[_962]]) + 1
                                                            mem[_962 + ceil32(return_data.size)] = _966
                                                            require _964 + (64 * _966) + 32 <= return_data.size
                                                            idx = 0
                                                            s = _962 + _964 + 32
                                                            t = _962 + ceil32(return_data.size) + 32
                                                            while idx < _966:
                                                                require _962 + return_data.size - s >= 64
                                                                _1434 = mem[64]
                                                                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    mem[64] = mem[64] + 64
                                                                    require mem[s] == mem[s]
                                                                    mem[_1434] = mem[s]
                                                                    require mem[s + 32] < 2
                                                                    mem[_1434 + 32] = mem[s + 32]
                                                                    mem[t] = _1434
                                                                    idx = idx + 1
                                                                    s = s + 64
                                                                    t = t + 32
                                                                    continue 
                                                            if mem[_962 + ceil32(return_data.size)] <= 0:
                                                                idx = 0
                                                                while idx < mem[mem[ceil32(return_data.size) + 192]]:
                                                                    if idx >= mem[mem[ceil32(return_data.size) + 192]]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if not mem[(32 * idx) + mem[ceil32(return_data.size) + 192] + 32]:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            if sub_c0d058ba <= sub_29aab165:
                                                                                revert with 0, 'Nest holders couldn't buy any more!'
                                                                            else:
                                                                                if arg3:
                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                        s = 10
                                                                                        t = 1
                                                                                        idx = arg3
                                                                                        while idx > 1:
                                                                                            if s > -1 / s:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not bool(idx):
                                                                                                    s = s * s
                                                                                                    t = t
                                                                                                    idx = uint255(idx) * 0.5
                                                                                                    continue 
                                                                                                else:
                                                                                                    s = s * s
                                                                                                    t = t * s
                                                                                                    idx = uint255(idx) * 0.5
                                                                                                    continue 
                                                                                        if t > -1 / s:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if t * s and sub_30fdaa74 > -1 / t * s:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if arg2 and 10^18 > -1 / arg2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if not t * s * sub_30fdaa74:
                                                                                                            revert with 'NH{q', 18
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 > sub_f5e4ee84:
                                                                                                                if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                        if sub_c0d058ba < sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                s = 10
                                                                                                                                t = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if s > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            s = s * s
                                                                                                                                            t = t
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            s = s * s
                                                                                                                                            t = t * s
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if t > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74) - 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74) > sub_c0d058ba:
                                                                                                                        if sub_c0d058ba < sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                u = 10
                                                                                                                                v = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if u > -1 / u:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            u = u * u
                                                                                                                                            v = v
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            u = u * u
                                                                                                                                            v = v * u
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if v > -1 / u:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * v * u / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * v * u / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                    else:
                                                                                        if 10^arg3 > -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^arg3 and sub_30fdaa74 > -1 / 10^arg3:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if arg2 and 10^18 > -1 / arg2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if not 10^arg3 * sub_30fdaa74:
                                                                                                            revert with 'NH{q', 18
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 > sub_f5e4ee84:
                                                                                                                if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                        if sub_c0d058ba < sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                s = 10
                                                                                                                                t = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if s > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            s = s * s
                                                                                                                                            t = t
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            s = s * s
                                                                                                                                            t = t * s
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if t > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74) - 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74) > sub_c0d058ba:
                                                                                                                        if sub_c0d058ba < sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                s = 10
                                                                                                                                t = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if s > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            s = s * s
                                                                                                                                            t = t
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            s = s * s
                                                                                                                                            t = t * s
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if t > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                else:
                                                                                    if sub_30fdaa74 > -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if arg2 and 10^18 > -1 / arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not sub_30fdaa74:
                                                                                                    revert with 'NH{q', 18
                                                                                                else:
                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 > sub_f5e4ee84:
                                                                                                        if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                if sub_c0d058ba < sub_29aab165:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / sub_30fdaa74) - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74) > sub_c0d058ba:
                                                                                                                if sub_c0d058ba < sub_29aab165:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                   arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_c0d058ba - sub_29aab165, 
                                                                                                                                           arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                if sub_42a2828f <= sub_6129c57e:
                                                                    revert with 0, 'Normal users couldn't buy any more!'
                                                                else:
                                                                    if arg3:
                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                            s = 10
                                                                            t = 1
                                                                            idx = arg3
                                                                            while idx > 1:
                                                                                if s > -1 / s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not bool(idx):
                                                                                        s = s * s
                                                                                        t = t
                                                                                        idx = uint255(idx) * 0.5
                                                                                        continue 
                                                                                    else:
                                                                                        s = s * s
                                                                                        t = t * s
                                                                                        idx = uint255(idx) * 0.5
                                                                                        continue 
                                                                            if t > -1 / s:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if t * s and sub_9b7d2851 > -1 / t * s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not t * s * sub_9b7d2851:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 > sub_356c4a3f:
                                                                                                    if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                            if sub_42a2828f < sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851) - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851) > sub_42a2828f:
                                                                                                            if sub_42a2828f < sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    u = 10
                                                                                                                    v = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if u > -1 / u:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                u = u * u
                                                                                                                                v = v
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                u = u * u
                                                                                                                                v = v * u
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if v > -1 / u:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * v * u / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * v * u / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                        else:
                                                                            if 10^arg3 > -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if 10^arg3 and sub_9b7d2851 > -1 / 10^arg3:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not 10^arg3 * sub_9b7d2851:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 > sub_356c4a3f:
                                                                                                    if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                            if sub_42a2828f < sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851) - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851) > sub_42a2828f:
                                                                                                            if sub_42a2828f < sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                    else:
                                                                        if sub_9b7d2851 > -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if arg2 and 10^18 > -1 / arg2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not sub_9b7d2851:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 > sub_356c4a3f:
                                                                                            if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                    if sub_42a2828f < sub_6129c57e:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                            s = 10
                                                                                                            t = 1
                                                                                                            idx = arg3
                                                                                                            while idx > 1:
                                                                                                                if s > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if not bool(idx):
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        s = s * s
                                                                                                                        t = t * s
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                            if t > -1 / s:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 10^arg3 > -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                        else:
                                                                                            if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / sub_9b7d2851) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851) > sub_42a2828f:
                                                                                                    if sub_42a2828f < sub_6129c57e:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_42a2828f - sub_6129c57e, 
                                                                                                                                       arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_42a2828f - sub_6129c57e, 
                                                                                                                               arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                            s = 10
                                                                                                            t = 1
                                                                                                            idx = arg3
                                                                                                            while idx > 1:
                                                                                                                if s > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if not bool(idx):
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        s = s * s
                                                                                                                        t = t * s
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                            if t > -1 / s:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 10^arg3 > -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                            else:
                                                                if sub_9827d463 <= sub_f0f5485d:
                                                                    revert with 0, 'Nft holders couldn't buy any more!'
                                                                else:
                                                                    if arg3:
                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                            s = 10
                                                                            t = 1
                                                                            idx = arg3
                                                                            while idx > 1:
                                                                                if s > -1 / s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not bool(idx):
                                                                                        s = s * s
                                                                                        t = t
                                                                                        idx = uint255(idx) * 0.5
                                                                                        continue 
                                                                                    else:
                                                                                        s = s * s
                                                                                        t = t * s
                                                                                        idx = uint255(idx) * 0.5
                                                                                        continue 
                                                                            if t > -1 / s:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if t * s and sub_1029e38b > -1 / t * s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not t * s * sub_1029e38b:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b > sub_2e8fcb15:
                                                                                                    if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                            if sub_9827d463 < sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b) - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b) > sub_9827d463:
                                                                                                            if sub_9827d463 < sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    u = 10
                                                                                                                    v = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if u > -1 / u:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                u = u * u
                                                                                                                                v = v
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                u = u * u
                                                                                                                                v = v * u
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if v > -1 / u:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * v * u / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * v * u / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                        else:
                                                                            if 10^arg3 > -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if 10^arg3 and sub_1029e38b > -1 / 10^arg3:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not 10^arg3 * sub_1029e38b:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b > sub_2e8fcb15:
                                                                                                    if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                            if sub_9827d463 < sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b) - 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b) > sub_9827d463:
                                                                                                            if sub_9827d463 < sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                    else:
                                                                        if sub_1029e38b > -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if arg2 and 10^18 > -1 / arg2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not sub_1029e38b:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b > sub_2e8fcb15:
                                                                                            if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                    if sub_9827d463 < sub_f0f5485d:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                            s = 10
                                                                                                            t = 1
                                                                                                            idx = arg3
                                                                                                            while idx > 1:
                                                                                                                if s > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if not bool(idx):
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        s = s * s
                                                                                                                        t = t * s
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                            if t > -1 / s:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 10^arg3 > -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                        else:
                                                                                            if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / sub_1029e38b) - 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / sub_1029e38b) > sub_9827d463:
                                                                                                    if sub_9827d463 < sub_f0f5485d:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                       arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_9827d463 - sub_f0f5485d, 
                                                                                                                               arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                            s = 10
                                                                                                            t = 1
                                                                                                            idx = arg3
                                                                                                            while idx > 1:
                                                                                                                if s > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if not bool(idx):
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        s = s * s
                                                                                                                        t = t * s
                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                        continue 
                                                                                                            if t > -1 / s:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 10^arg3 > -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
    else:
        mem[0] = arg1
        mem[32] = 15
        if stor15[address(arg1)]:
            revert with 0, 'You already purchased!'
        else:
            mem[96] = 0x44a040f500000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            require ext_code.size(stor1)
            staticcall stor1.getRewardAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _11 = mem[96 len 4], address(arg1) << 64
                require mem[96 len 4], address(arg1) << 64 <= test266151307()
                require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
                if not bool(ceil32(return_data.size) + 288 <= test266151307()):
                    revert with 'NH{q', 65
                else:
                    mem[64] = ceil32(return_data.size) + 288
                    require mem[mem[96 len 4], address(arg1) << 64 + 96] == mem[mem[96 len 4], address(arg1) << 64 + 96]
                    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
                    require mem[_11 + 128] == mem[_11 + 128]
                    mem[ceil32(return_data.size) + 128] = mem[_11 + 128]
                    _19 = mem[_11 + 160]
                    require mem[_11 + 160] <= test266151307()
                    require _11 + mem[_11 + 160] + 127 < return_data.size + 96
                    _21 = mem[_11 + mem[_11 + 160] + 96]
                    if mem[_11 + mem[_11 + 160] + 96] > test266151307():
                        revert with 'NH{q', 65
                    else:
                        if ceil32(return_data.size) + floor32(mem[_11 + mem[_11 + 160] + 96]) + 289 > test266151307() or floor32(mem[_11 + mem[_11 + 160] + 96]) + 193 < 192:
                            revert with 'NH{q', 65
                        else:
                            mem[64] = ceil32(return_data.size) + floor32(mem[_11 + mem[_11 + 160] + 96]) + 289
                            mem[ceil32(return_data.size) + 288] = _21
                            require _11 + _19 + (32 * _21) + 32 <= return_data.size
                            idx = 0
                            s = _11 + _19 + 128
                            t = ceil32(return_data.size) + 320
                            while idx < _21:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 160] = ceil32(return_data.size) + 288
                            _87 = mem[_11 + 192]
                            require mem[_11 + 192] <= test266151307()
                            require _11 + mem[_11 + 192] + 127 < return_data.size + 96
                            _89 = mem[_11 + mem[_11 + 192] + 96]
                            if mem[_11 + mem[_11 + 192] + 96] > test266151307():
                                revert with 'NH{q', 65
                            else:
                                _91 = mem[64]
                                if mem[64] + floor32(mem[_11 + mem[_11 + 192] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_11 + mem[_11 + 192] + 96]) + 1 < mem[64]:
                                    revert with 'NH{q', 65
                                else:
                                    mem[64] = mem[64] + floor32(mem[_11 + mem[_11 + 192] + 96]) + 1
                                    mem[_91] = mem[_11 + mem[_11 + 192] + 96]
                                    require _11 + _87 + (32 * _89) + 32 <= return_data.size
                                    idx = 0
                                    s = _11 + _87 + 128
                                    t = _91 + 32
                                    while idx < _89:
                                        require mem[s] == bool(mem[s])
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 192] = _91
                                    _159 = mem[_11 + 224]
                                    require mem[_11 + 224] <= test266151307()
                                    require _11 + mem[_11 + 224] + 127 < return_data.size + 96
                                    _161 = mem[_11 + mem[_11 + 224] + 96]
                                    if mem[_11 + mem[_11 + 224] + 96] > test266151307():
                                        revert with 'NH{q', 65
                                    else:
                                        _163 = mem[64]
                                        if mem[64] + floor32(mem[_11 + mem[_11 + 224] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_11 + mem[_11 + 224] + 96]) + 1 < mem[64]:
                                            revert with 'NH{q', 65
                                        else:
                                            mem[64] = mem[64] + floor32(mem[_11 + mem[_11 + 224] + 96]) + 1
                                            mem[_163] = _161
                                            require _11 + _159 + (32 * _161) + 32 <= return_data.size
                                            idx = 0
                                            s = _11 + _159 + 128
                                            t = _163 + 32
                                            while idx < _161:
                                                require mem[s] == bool(mem[s])
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 224] = _163
                                            _475 = mem[_11 + 256]
                                            require mem[_11 + 256] <= test266151307()
                                            require _11 + mem[_11 + 256] + 127 < return_data.size + 96
                                            _477 = mem[_11 + mem[_11 + 256] + 96]
                                            if mem[_11 + mem[_11 + 256] + 96] > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                _479 = mem[64]
                                                if mem[64] + floor32(mem[_11 + mem[_11 + 256] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_11 + mem[_11 + 256] + 96]) + 1 < mem[64]:
                                                    revert with 'NH{q', 65
                                                else:
                                                    mem[64] = mem[64] + floor32(mem[_11 + mem[_11 + 256] + 96]) + 1
                                                    mem[_479] = _477
                                                    require _11 + _475 + (32 * _477) + 32 <= return_data.size
                                                    idx = 0
                                                    s = _11 + _475 + 128
                                                    t = _479 + 32
                                                    while idx < _477:
                                                        require mem[s] == bool(mem[s])
                                                        mem[t] = mem[s]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(return_data.size) + 256] = _479
                                                    mem[mem[64]] = 0x3a66448800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = arg1
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.getNFTList(address arg1) with:
                                                            gas gas_remaining wei
                                                           args address(arg1)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _963 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _965 = mem[_963]
                                                        require mem[_963] <= test266151307()
                                                        require _963 + mem[_963] + 31 < _963 + return_data.size
                                                        _967 = mem[_963 + mem[_963]]
                                                        if mem[_963 + mem[_963]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _963 + ceil32(return_data.size) + floor32(mem[_963 + mem[_963]]) + 1 > test266151307() or floor32(mem[_963 + mem[_963]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _963 + ceil32(return_data.size) + floor32(mem[_963 + mem[_963]]) + 1
                                                                mem[_963 + ceil32(return_data.size)] = _967
                                                                require _965 + (64 * _967) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _963 + _965 + 32
                                                                t = _963 + ceil32(return_data.size) + 32
                                                                while idx < _967:
                                                                    require _963 + return_data.size - s >= 64
                                                                    _1435 = mem[64]
                                                                    if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        mem[64] = mem[64] + 64
                                                                        require mem[s] == mem[s]
                                                                        mem[_1435] = mem[s]
                                                                        require mem[s + 32] < 2
                                                                        mem[_1435 + 32] = mem[s + 32]
                                                                        mem[t] = _1435
                                                                        idx = idx + 1
                                                                        s = s + 64
                                                                        t = t + 32
                                                                        continue 
                                                                if mem[_963 + ceil32(return_data.size)] <= 0:
                                                                    idx = 0
                                                                    while idx < mem[mem[ceil32(return_data.size) + 192]]:
                                                                        if idx >= mem[mem[ceil32(return_data.size) + 192]]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            if not mem[(32 * idx) + mem[ceil32(return_data.size) + 192] + 32]:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                if sub_c0d058ba <= sub_29aab165:
                                                                                    revert with 0, 'Nest holders couldn't buy any more!'
                                                                                else:
                                                                                    if arg3:
                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                            s = 10
                                                                                            t = 1
                                                                                            idx = arg3
                                                                                            while idx > 1:
                                                                                                if s > -1 / s:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if not bool(idx):
                                                                                                        s = s * s
                                                                                                        t = t
                                                                                                        idx = uint255(idx) * 0.5
                                                                                                        continue 
                                                                                                    else:
                                                                                                        s = s * s
                                                                                                        t = t * s
                                                                                                        idx = uint255(idx) * 0.5
                                                                                                        continue 
                                                                                            if t > -1 / s:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if t * s and sub_30fdaa74 > -1 / t * s:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if not t * s * sub_30fdaa74:
                                                                                                                revert with 'NH{q', 18
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 > sub_f5e4ee84:
                                                                                                                    if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                            if sub_c0d058ba < sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg3:
                                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                        s = 10
                                                                                                                                        t = 1
                                                                                                                                        idx = arg3
                                                                                                                                        while idx > 1:
                                                                                                                                            if s > -1 / s:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if not bool(idx):
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t * s
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                        if t > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                    else:
                                                                                                                                        if 10^arg3 > -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74) - 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74) > sub_c0d058ba:
                                                                                                                            if sub_c0d058ba < sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg3:
                                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                        s = 10
                                                                                                                                        t = 1
                                                                                                                                        idx = arg3
                                                                                                                                        while idx > 1:
                                                                                                                                            if s > -1 / s:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if not bool(idx):
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t * s
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                        if t > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                    else:
                                                                                                                                        if 10^arg3 > -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    u = 10
                                                                                                                                    v = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if u > -1 / u:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                u = u * u
                                                                                                                                                v = v
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                u = u * u
                                                                                                                                                v = v * u
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if v > -1 / u:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * v * u / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * v * u / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74, 
                                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                        else:
                                                                                            if 10^arg3 > -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if 10^arg3 and sub_30fdaa74 > -1 / 10^arg3:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if arg2 and 10^18 > -1 / arg2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if not 10^arg3 * sub_30fdaa74:
                                                                                                                revert with 'NH{q', 18
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 > sub_f5e4ee84:
                                                                                                                    if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                            if sub_c0d058ba < sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg3:
                                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                        s = 10
                                                                                                                                        t = 1
                                                                                                                                        idx = arg3
                                                                                                                                        while idx > 1:
                                                                                                                                            if s > -1 / s:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if not bool(idx):
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t * s
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                        if t > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                    else:
                                                                                                                                        if 10^arg3 > -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74) - 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74) > sub_c0d058ba:
                                                                                                                            if sub_c0d058ba < sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg3:
                                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                        s = 10
                                                                                                                                        t = 1
                                                                                                                                        idx = arg3
                                                                                                                                        while idx > 1:
                                                                                                                                            if s > -1 / s:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if not bool(idx):
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                                else:
                                                                                                                                                    s = s * s
                                                                                                                                                    t = t * s
                                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                                    continue 
                                                                                                                                        if t > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                                    else:
                                                                                                                                        if 10^arg3 > -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if arg3:
                                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                    s = 10
                                                                                                                                    t = 1
                                                                                                                                    idx = arg3
                                                                                                                                    while idx > 1:
                                                                                                                                        if s > -1 / s:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if not bool(idx):
                                                                                                                                                s = s * s
                                                                                                                                                t = t
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                            else:
                                                                                                                                                s = s * s
                                                                                                                                                t = t * s
                                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                                continue 
                                                                                                                                    if t > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                                else:
                                                                                                                                    if 10^arg3 > -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74, 
                                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                    else:
                                                                                        if sub_30fdaa74 > -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if arg2 and 10^18 > -1 / arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if not sub_30fdaa74:
                                                                                                        revert with 'NH{q', 18
                                                                                                    else:
                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 > sub_f5e4ee84:
                                                                                                            if sub_29aab165 > -sub_f5e4ee84 - 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_29aab165 + sub_f5e4ee84 > sub_c0d058ba:
                                                                                                                    if sub_c0d058ba < sub_29aab165:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                s = 10
                                                                                                                                t = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if s > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            s = s * s
                                                                                                                                            t = t
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            s = s * s
                                                                                                                                            t = t * s
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if t > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 * sub_30fdaa74 and t * s > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_f5e4ee84 * sub_30fdaa74 and 10^arg3 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_f5e4ee84 and sub_30fdaa74 > -1 / sub_f5e4ee84:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_f5e4ee84 * sub_30fdaa74 and 1 > -1 / sub_f5e4ee84 * sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_f5e4ee84, arg2 - (sub_f5e4ee84 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_29aab165 > -(1000000000000000000 * 10^18 * arg2 / sub_30fdaa74) - 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_29aab165 + (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74) > sub_c0d058ba:
                                                                                                                    if sub_c0d058ba < sub_29aab165:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg3:
                                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                                s = 10
                                                                                                                                t = 1
                                                                                                                                idx = arg3
                                                                                                                                while idx > 1:
                                                                                                                                    if s > -1 / s:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if not bool(idx):
                                                                                                                                            s = s * s
                                                                                                                                            t = t
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                        else:
                                                                                                                                            s = s * s
                                                                                                                                            t = t * s
                                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                                            continue 
                                                                                                                                if t > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and t * s > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74 * t * s) - (sub_29aab165 * sub_30fdaa74 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                            else:
                                                                                                                                if 10^arg3 > -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 10^arg3 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            if arg2 < (sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                return sub_c0d058ba - sub_29aab165, 
                                                                                                                                                       arg2 - ((sub_c0d058ba * sub_30fdaa74 * 10^arg3) - (sub_29aab165 * sub_30fdaa74 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if sub_c0d058ba - sub_29aab165 and sub_30fdaa74 > -1 / sub_c0d058ba - sub_29aab165:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) and 1 > -1 / (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74):
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < (sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_c0d058ba - sub_29aab165, 
                                                                                                                                               arg2 - ((sub_c0d058ba * sub_30fdaa74) - (sub_29aab165 * sub_30fdaa74) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * t * s / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                                   arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 and sub_30fdaa74 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return 1000000000000000000 * 10^18 * arg2 / sub_30fdaa74, 
                                                                                                                                           arg2 - (1000000000000000000 * 10^18 * arg2 / sub_30fdaa74 * sub_30fdaa74 / 1000000000000000000 * 10^18)
                                                                    if sub_42a2828f <= sub_6129c57e:
                                                                        revert with 0, 'Normal users couldn't buy any more!'
                                                                    else:
                                                                        if arg3:
                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                s = 10
                                                                                t = 1
                                                                                idx = arg3
                                                                                while idx > 1:
                                                                                    if s > -1 / s:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if not bool(idx):
                                                                                            s = s * s
                                                                                            t = t
                                                                                            idx = uint255(idx) * 0.5
                                                                                            continue 
                                                                                        else:
                                                                                            s = s * s
                                                                                            t = t * s
                                                                                            idx = uint255(idx) * 0.5
                                                                                            continue 
                                                                                if t > -1 / s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if t * s and sub_9b7d2851 > -1 / t * s:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if arg2 and 10^18 > -1 / arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not t * s * sub_9b7d2851:
                                                                                                    revert with 'NH{q', 18
                                                                                                else:
                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 > sub_356c4a3f:
                                                                                                        if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                                if sub_42a2828f < sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851) - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851) > sub_42a2828f:
                                                                                                                if sub_42a2828f < sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        u = 10
                                                                                                                        v = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if u > -1 / u:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    u = u * u
                                                                                                                                    v = v
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    u = u * u
                                                                                                                                    v = v * u
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if v > -1 / u:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * v * u / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * v * u / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                            else:
                                                                                if 10^arg3 > -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if 10^arg3 and sub_9b7d2851 > -1 / 10^arg3:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if arg2 and 10^18 > -1 / arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not 10^arg3 * sub_9b7d2851:
                                                                                                    revert with 'NH{q', 18
                                                                                                else:
                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 > sub_356c4a3f:
                                                                                                        if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                                if sub_42a2828f < sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851) - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851) > sub_42a2828f:
                                                                                                                if sub_42a2828f < sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                        else:
                                                                            if sub_9b7d2851 > -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if arg2 and 10^18 > -1 / arg2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if not sub_9b7d2851:
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 > sub_356c4a3f:
                                                                                                if sub_6129c57e > -sub_356c4a3f - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if sub_6129c57e + sub_356c4a3f > sub_42a2828f:
                                                                                                        if sub_42a2828f < sub_6129c57e:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f * sub_9b7d2851 and t * s > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_356c4a3f * sub_9b7d2851 and 10^arg3 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_356c4a3f and sub_9b7d2851 > -1 / sub_356c4a3f:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_356c4a3f * sub_9b7d2851 and 1 > -1 / sub_356c4a3f * sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_356c4a3f, arg2 - (sub_356c4a3f * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                                            else:
                                                                                                if sub_6129c57e > -(1000000000000000000 * 10^18 * arg2 / sub_9b7d2851) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if sub_6129c57e + (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851) > sub_42a2828f:
                                                                                                        if sub_42a2828f < sub_6129c57e:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and t * s > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851 * t * s) - (sub_6129c57e * sub_9b7d2851 * t * s) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 10^arg3 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_42a2828f - sub_6129c57e, 
                                                                                                                                           arg2 - ((sub_42a2828f * sub_9b7d2851 * 10^arg3) - (sub_6129c57e * sub_9b7d2851 * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_42a2828f - sub_6129c57e and sub_9b7d2851 > -1 / sub_42a2828f - sub_6129c57e:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) and 1 > -1 / (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851):
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < (sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_42a2828f - sub_6129c57e, 
                                                                                                                                   arg2 - ((sub_42a2828f * sub_9b7d2851) - (sub_6129c57e * sub_9b7d2851) / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * t * s / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 and sub_9b7d2851 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / sub_9b7d2851, 
                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / sub_9b7d2851 * sub_9b7d2851 / 1000000000000000000 * 10^18)
                                                                else:
                                                                    if sub_9827d463 <= sub_f0f5485d:
                                                                        revert with 0, 'Nft holders couldn't buy any more!'
                                                                    else:
                                                                        if arg3:
                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                s = 10
                                                                                t = 1
                                                                                idx = arg3
                                                                                while idx > 1:
                                                                                    if s > -1 / s:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if not bool(idx):
                                                                                            s = s * s
                                                                                            t = t
                                                                                            idx = uint255(idx) * 0.5
                                                                                            continue 
                                                                                        else:
                                                                                            s = s * s
                                                                                            t = t * s
                                                                                            idx = uint255(idx) * 0.5
                                                                                            continue 
                                                                                if t > -1 / s:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if t * s and sub_1029e38b > -1 / t * s:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if arg2 and 10^18 > -1 / arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not t * s * sub_1029e38b:
                                                                                                    revert with 'NH{q', 18
                                                                                                else:
                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b > sub_2e8fcb15:
                                                                                                        if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                                if sub_9827d463 < sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b) - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b) > sub_9827d463:
                                                                                                                if sub_9827d463 < sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        u = 10
                                                                                                                        v = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if u > -1 / u:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    u = u * u
                                                                                                                                    v = v
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    u = u * u
                                                                                                                                    v = v * u
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if v > -1 / u:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and v * u > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * v * u / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * v * u / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / t * s * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                            else:
                                                                                if 10^arg3 > -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if 10^arg3 and sub_1029e38b > -1 / 10^arg3:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if arg2 and 10^18 > -1 / arg2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not 10^arg3 * sub_1029e38b:
                                                                                                    revert with 'NH{q', 18
                                                                                                else:
                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b > sub_2e8fcb15:
                                                                                                        if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                                if sub_9827d463 < sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b) - 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b) > sub_9827d463:
                                                                                                                if sub_9827d463 < sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg3:
                                                                                                                        if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                            s = 10
                                                                                                                            t = 1
                                                                                                                            idx = arg3
                                                                                                                            while idx > 1:
                                                                                                                                if s > -1 / s:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if not bool(idx):
                                                                                                                                        s = s * s
                                                                                                                                        t = t
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                                    else:
                                                                                                                                        s = s * s
                                                                                                                                        t = t * s
                                                                                                                                        idx = uint255(idx) * 0.5
                                                                                                                                        continue 
                                                                                                                            if t > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                        else:
                                                                                                                            if 10^arg3 > -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if arg3:
                                                                                                                    if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                        s = 10
                                                                                                                        t = 1
                                                                                                                        idx = arg3
                                                                                                                        while idx > 1:
                                                                                                                            if s > -1 / s:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if not bool(idx):
                                                                                                                                    s = s * s
                                                                                                                                    t = t
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                                else:
                                                                                                                                    s = s * s
                                                                                                                                    t = t * s
                                                                                                                                    idx = uint255(idx) * 0.5
                                                                                                                                    continue 
                                                                                                                        if t > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                                    else:
                                                                                                                        if 10^arg3 > -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / 10^arg3 * sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                        else:
                                                                            if sub_1029e38b > -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if arg2 and 10^18 > -1 / arg2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if 10^18 * arg2 and 10^18 > -1 / 10^18 * arg2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if not sub_1029e38b:
                                                                                            revert with 'NH{q', 18
                                                                                        else:
                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b > sub_2e8fcb15:
                                                                                                if sub_f0f5485d > -sub_2e8fcb15 - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if sub_f0f5485d + sub_2e8fcb15 > sub_9827d463:
                                                                                                        if sub_9827d463 < sub_f0f5485d:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 * sub_1029e38b and t * s > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_2e8fcb15 * sub_1029e38b and 10^arg3 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if sub_2e8fcb15 and sub_1029e38b > -1 / sub_2e8fcb15:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if sub_2e8fcb15 * sub_1029e38b and 1 > -1 / sub_2e8fcb15 * sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return sub_2e8fcb15, arg2 - (sub_2e8fcb15 * sub_1029e38b / 1000000000000000000 * 10^18)
                                                                                            else:
                                                                                                if sub_f0f5485d > -(1000000000000000000 * 10^18 * arg2 / sub_1029e38b) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if sub_f0f5485d + (1000000000000000000 * 10^18 * arg2 / sub_1029e38b) > sub_9827d463:
                                                                                                        if sub_9827d463 < sub_f0f5485d:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if arg3:
                                                                                                                if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                    s = 10
                                                                                                                    t = 1
                                                                                                                    idx = arg3
                                                                                                                    while idx > 1:
                                                                                                                        if s > -1 / s:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if not bool(idx):
                                                                                                                                s = s * s
                                                                                                                                t = t
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                            else:
                                                                                                                                s = s * s
                                                                                                                                t = t * s
                                                                                                                                idx = uint255(idx) * 0.5
                                                                                                                                continue 
                                                                                                                    if t > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and t * s > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b * t * s) - (sub_f0f5485d * sub_1029e38b * t * s) / 1000000000000000000 * 10^18)
                                                                                                                else:
                                                                                                                    if 10^arg3 > -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 10^arg3 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                if arg2 < (sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                           arg2 - ((sub_9827d463 * sub_1029e38b * 10^arg3) - (sub_f0f5485d * sub_1029e38b * 10^arg3) / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if sub_9827d463 - sub_f0f5485d and sub_1029e38b > -1 / sub_9827d463 - sub_f0f5485d:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) and 1 > -1 / (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b):
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if arg2 < (sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            return sub_9827d463 - sub_f0f5485d, 
                                                                                                                                   arg2 - ((sub_9827d463 * sub_1029e38b) - (sub_f0f5485d * sub_1029e38b) / 1000000000000000000 * 10^18)
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if not bool(arg3 < 78) and not bool(arg3 < 32):
                                                                                                                s = 10
                                                                                                                t = 1
                                                                                                                idx = arg3
                                                                                                                while idx > 1:
                                                                                                                    if s > -1 / s:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if not bool(idx):
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            s = s * s
                                                                                                                            t = t * s
                                                                                                                            idx = uint255(idx) * 0.5
                                                                                                                            continue 
                                                                                                                if t > -1 / s:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and t * s > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * t * s / 1000000000000000000 * 10^18)
                                                                                                            else:
                                                                                                                if 10^arg3 > -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and 10^arg3 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                                       arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b * 10^arg3 / 1000000000000000000 * 10^18)
                                                                                                        else:
                                                                                                            if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b and sub_1029e38b > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b and 1 > -1 / 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if arg2 < 1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        return 1000000000000000000 * 10^18 * arg2 / sub_1029e38b, 
                                                                                                                               arg2 - (1000000000000000000 * 10^18 * arg2 / sub_1029e38b * sub_1029e38b / 1000000000000000000 * 10^18)
}



}
