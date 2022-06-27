contract main {




// =====================  Runtime code  =====================


#
#  - getAmount(address arg1, uint256 arg2, uint256 arg3)
#
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
address stor17;
uint8 stor18; offset 160
uint128 stor18; offset 160
address sub_51161648Address;

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

function sub_51161648(?) payable {
    return sub_51161648Address
}

function sub_6129c57e(?) payable {
    return sub_6129c57e
}

function owner() payable {
    return owner
}

function isTest() payable {
    return bool(uint8(stor18.field_160))
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

function setMainContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_51161648Address = arg1
}

function setTestMode(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor18.field_160) = Mask(96, 0, arg1)
}

function sub_6ccf5452(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = address(arg1)
    stor17 = address(arg2)
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
    if sub_51161648Address != msg.sender:
        revert with 0, 'You have no permission.'
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasury wallet address does not set!'
    if not stor17:
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
        args stor17, ext_call.return_data[0] - (85 * ext_call.return_data[0] / 100)
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
    emit Withdraw(stor16, 85 * ext_call.return_data[0] / 100, stor17, ext_call.return_data[0] - (85 * ext_call.return_data[0] / 100), block.timestamp);
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
    if sub_51161648Address != msg.sender:
        revert with 0, 'You have no permission.'
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
    _6 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 288
    require mem[mem[96 len 4], address(arg1) << 64 + 96] == mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[_6 + 128] == mem[_6 + 128]
    mem[ceil32(return_data.size) + 128] = mem[_6 + 128]
    _10 = mem[_6 + 160]
    require mem[_6 + 160] <= test266151307()
    require _6 + mem[_6 + 160] + 127 < return_data.size + 96
    _11 = mem[_6 + mem[_6 + 160] + 96]
    if mem[_6 + mem[_6 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[_6 + mem[_6 + 160] + 96]) + 289 > test266151307() or floor32(mem[_6 + mem[_6 + 160] + 96]) + 193 < 192:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[_6 + mem[_6 + 160] + 96]) + 289
    mem[ceil32(return_data.size) + 288] = mem[_6 + mem[_6 + 160] + 96]
    require _6 + _10 + (32 * _11) + 32 <= return_data.size
    idx = 0
    s = _6 + _10 + 128
    t = ceil32(return_data.size) + 320
    while idx < _11:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 160] = ceil32(return_data.size) + 288
    _48 = mem[_6 + 192]
    require mem[_6 + 192] <= test266151307()
    require _6 + mem[_6 + 192] + 127 < return_data.size + 96
    _49 = mem[_6 + mem[_6 + 192] + 96]
    if mem[_6 + mem[_6 + 192] + 96] > test266151307():
        revert with 'NH{q', 65
    _50 = mem[64]
    if mem[64] + floor32(mem[_6 + mem[_6 + 192] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_6 + mem[_6 + 192] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_6 + mem[_6 + 192] + 96]) + 1
    mem[_50] = _49
    require _6 + _48 + (32 * _49) + 32 <= return_data.size
    idx = 0
    s = _6 + _48 + 128
    t = _50 + 32
    while idx < _49:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = _50
    _85 = mem[_6 + 224]
    require mem[_6 + 224] <= test266151307()
    require _6 + mem[_6 + 224] + 127 < return_data.size + 96
    _86 = mem[_6 + mem[_6 + 224] + 96]
    if mem[_6 + mem[_6 + 224] + 96] > test266151307():
        revert with 'NH{q', 65
    _87 = mem[64]
    if mem[64] + floor32(mem[_6 + mem[_6 + 224] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_6 + mem[_6 + 224] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_6 + mem[_6 + 224] + 96]) + 1
    mem[_87] = mem[_6 + mem[_6 + 224] + 96]
    require _6 + _85 + (32 * _86) + 32 <= return_data.size
    idx = 0
    s = _6 + _85 + 128
    t = _87 + 32
    while idx < _86:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 224] = _87
    _118 = mem[_6 + 256]
    require mem[_6 + 256] <= test266151307()
    require _6 + mem[_6 + 256] + 127 < return_data.size + 96
    _119 = mem[_6 + mem[_6 + 256] + 96]
    if mem[_6 + mem[_6 + 256] + 96] > test266151307():
        revert with 'NH{q', 65
    _120 = mem[64]
    if mem[64] + floor32(mem[_6 + mem[_6 + 256] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[_6 + mem[_6 + 256] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[_6 + mem[_6 + 256] + 96]) + 1
    mem[_120] = _119
    require _6 + _118 + (32 * _119) + 32 <= return_data.size
    idx = 0
    s = _6 + _118 + 128
    t = _120 + 32
    while idx < _119:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 256] = _120
    mem[mem[64]] = 0x3a66448800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(stor1)
    staticcall stor1.getNFTList(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _149 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _150 = mem[_149]
    require mem[_149] <= test266151307()
    require _149 + mem[_149] + 31 < _149 + return_data.size
    _151 = mem[_149 + mem[_149]]
    if mem[_149 + mem[_149]] > test266151307():
        revert with 'NH{q', 65
    if _149 + ceil32(return_data.size) + floor32(mem[_149 + mem[_149]]) + 1 > test266151307() or floor32(mem[_149 + mem[_149]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _149 + ceil32(return_data.size) + floor32(mem[_149 + mem[_149]]) + 1
    mem[_149 + ceil32(return_data.size)] = _151
    require _150 + (64 * _151) + 32 <= return_data.size
    idx = 0
    s = _149 + _150 + 32
    t = _149 + ceil32(return_data.size) + 32
    while idx < _151:
        require _149 + return_data.size - s >= 64
        _172 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require mem[s] == mem[s]
        mem[_172] = mem[s]
        require mem[s + 32] < 2
        mem[_172 + 32] = mem[s + 32]
        mem[t] = _172
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if mem[_149 + ceil32(return_data.size)] > 0:
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



}
