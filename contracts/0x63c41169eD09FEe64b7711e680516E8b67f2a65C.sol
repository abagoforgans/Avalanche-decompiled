contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address sub_6c3635bbAddress;
address sub_ff65a021Address;
address sub_6a78a216Address;
address sub_7b7bd994Address;
uint256 sub_bab3384d;
uint32 sub_705de881;
uint256 sub_269c7f75;
uint256 sub_fe8981d0;
uint256 sub_4bbd56c0;
uint256 sub_e9faf420;
uint256 ONE_DAY;
uint8 openForPublic;
uint16 sub_43241e5d; offset 48
uint64 sub_79aed9d3; offset 8
array of struct stor14;

function sub_269c7f75(?) payable {
    return sub_269c7f75
}

function sub_43241e5d(?) payable {
    return sub_43241e5d
}

function sub_4bbd56c0(?) payable {
    return sub_4bbd56c0
}

function sub_6a78a216(?) payable {
    return sub_6a78a216Address
}

function sub_6c3635bb(?) payable {
    return sub_6c3635bbAddress
}

function sub_705de881(?) payable {
    return sub_705de881
}

function sub_79aed9d3(?) payable {
    return sub_79aed9d3
}

function sub_7b7bd994(?) payable {
    return sub_7b7bd994Address
}

function ONE_DAY() payable {
    return ONE_DAY
}

function owner() payable {
    return owner
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_bab3384d(?) payable {
    return sub_bab3384d
}

function sub_e9faf420(?) payable {
    return sub_e9faf420
}

function openForPublic() payable {
    return bool(openForPublic)
}

function sub_fe8981d0(?) payable {
    return sub_fe8981d0
}

function sub_ff65a021(?) payable {
    return sub_ff65a021Address
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

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor1[address(arg1)] = 1
}

function sub_451dfd87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if arg1 % 16777216 and sub_fe8981d0 > -1 / arg1 % 16777216:
        revert with 'NH{q', 17
    return (arg1 % 16777216 * sub_fe8981d0)
}

function sub_7229f7f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if arg1 % 16777216 and sub_269c7f75 > -1 / arg1 % 16777216:
        revert with 'NH{q', 17
    return uint32(arg1 % 16777216 * sub_269c7f75)
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor1[address(arg1)] = 0
}

function sub_10ec2dfd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 120001
    return stor14[arg1].field_0, 
           stor14[arg1].field_0,
           stor14[arg1].field_0,
           stor14[arg1].field_0,
           stor14[arg1].field_120,
           stor14[arg1].field_0
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

function sub_485a460b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if arg1 % 16777216 < sub_705de881:
        if sub_bab3384d and arg1 % 16777216 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        return (sub_bab3384d * arg1 % 16777216)
    if sub_bab3384d and sub_705de881 > -1 / sub_bab3384d:
        revert with 'NH{q', 17
    return (sub_bab3384d * sub_705de881)
}

function sub_1a16f787(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == bool(arg7)
    require arg8 == arg8 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bab3384d = arg1
    sub_269c7f75 = arg2
    sub_fe8981d0 = arg3
    sub_4bbd56c0 = arg4
    sub_e9faf420 = arg5
    ONE_DAY = arg6
    openForPublic = uint8(bool(arg7))
    sub_705de881 = arg8 % 16777216
}

function sub_926a5dd9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= 120001:
        revert with 'NH{q', 50
    if stor14[arg1].field_0 <= 0:
        revert with 0, 'NOT STAKED'
    if stor14[arg1].field_0 and sub_fe8981d0 > -1 / stor14[arg1].field_0:
        revert with 'NH{q', 17
    if arg2 < stor14[arg1].field_0 * sub_fe8981d0:
        revert with 0, 'NOT ENOUGH FEED TO SKIP'
    if stor14[arg1].field_88 > -ONE_DAY - 1:
        revert with 'NH{q', 17
    if stor14[arg1].field_88 + ONE_DAY > uint32(block.timestamp):
        revert with 0, 'Only 1 skip per day'
    require ext_code.size(sub_7b7bd994Address)
    staticcall sub_7b7bd994Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NOT ENOUGH FEED IN WALLET'
    require ext_code.size(sub_7b7bd994Address)
    call sub_7b7bd994Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg1 >= 120001:
        revert with 'NH{q', 50
    stor14[arg1].field_88 = uint32(block.timestamp)
    stor14[arg1].field_168 = uint32(block.timestamp)
}

function sub_40f964dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 120001:
        revert with 'NH{q', 50
    if stor14[arg1].field_0 <= 0:
        return 0
    if stor14[arg1].field_0 < 1:
        revert with 'NH{q', 17
    if sub_e9faf420 and stor14[arg1].field_0 - 1 % 16777216 > -1 / sub_e9faf420:
        revert with 'NH{q', 17
    if sub_4bbd56c0 > (-1 * sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) - 1:
        revert with 'NH{q', 17
    if stor14[arg1].field_56 > -ONE_DAY - 1:
        revert with 'NH{q', 17
    if stor14[arg1].field_56 + ONE_DAY >= uint32(block.timestamp):
        if uint32(block.timestamp) < stor14[arg1].field_24:
            revert with 'NH{q', 17
        if uint32(uint32(block.timestamp) - stor14[arg1].field_0) and sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600 > -1 / uint32(uint32(block.timestamp) - stor14[arg1].field_0):
            revert with 'NH{q', 17
        return (uint32(uint32(block.timestamp) - stor14[arg1].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600)
    if stor14[arg1].field_56 > -ONE_DAY - 1:
        revert with 'NH{q', 17
    if stor14[arg1].field_0 + ONE_DAY < stor14[arg1].field_24:
        revert with 'NH{q', 17
    if stor14[arg1].field_0 + ONE_DAY - stor14[arg1].field_0 and sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600 > -1 / stor14[arg1].field_0 + ONE_DAY - stor14[arg1].field_0:
        revert with 'NH{q', 17
    return ((stor14[arg1].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[arg1].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600))
}

function unstake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20 + 12 len 20]
        if mem[_20 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if cd[((32 * idx) + arg1 + 36)] >= 120001:
            revert with 'NH{q', 50
        _23 = mem[64]
        mem[64] = mem[64] + 192
        mem[_23] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_23 + 32] = stor14[cd[((32 * idx) + arg1 + 36)]].field_24
        mem[_23 + 64] = stor14[cd[((32 * idx) + arg1 + 36)]].field_56
        mem[_23 + 96] = stor14[cd[((32 * idx) + arg1 + 36)]].field_88
        mem[_23 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
        mem[_23 + 160] = stor14[cd[((32 * idx) + arg1 + 36)]].field_168
        if stor14[cd[((32 * idx) + arg1 + 36)]].field_0 > 0:
            if sub_79aed9d3 < stor14[cd[((32 * idx) + arg1 + 36)]].field_0:
                revert with 'NH{q', 17
            sub_79aed9d3 = sub_79aed9d3 - stor14[cd[((32 * idx) + arg1 + 36)]].field_0 % 1099511627776
            if sub_43241e5d < 1:
                revert with 'NH{q', 17
            sub_43241e5d = uint16(sub_43241e5d - 1)
            mem[_23] = 0
            if cd[((32 * idx) + arg1 + 36)] >= 120001:
                revert with 'NH{q', 50
            stor14[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
            stor14[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = block.timestamp
            emit 0x69f6d6e6: cd[((32 * idx) + arg1 + 36)], block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e27bf0ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= 120001:
        revert with 'NH{q', 50
    if stor14[arg1].field_0 <= 0:
        revert with 0, 'NOT STAKED'
    if arg2 <= 0:
        revert with 0, 'NOTHING TO FEED'
    if arg2 < 10^18:
        revert with 0, 'MIN 1 EGG'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NOT ENOUGH EGG IN WALLET'
    if stor14[arg1].field_56 > -ONE_DAY - 1:
        revert with 'NH{q', 17
    if uint32(block.timestamp) <= stor14[arg1].field_56 + ONE_DAY:
        if stor14[arg1].field_24 > test266151307():
            revert with 'NH{q', 17
        require ext_code.size(sub_6a78a216Address)
        call sub_6a78a216Address.0x1e54ad00 with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 / 10^18 % 281474976710656 > -stor14[arg1].field_120 + test266151307():
            revert with 'NH{q', 17
        if arg1 >= 120001:
            revert with 'NH{q', 50
    else:
        if stor14[arg1].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if uint32(block.timestamp) < stor14[arg1].field_56 + ONE_DAY:
            revert with 'NH{q', 17
        if stor14[arg1].field_24 > -uint32(uint32(block.timestamp) - stor14[arg1].field_0 - ONE_DAY) + test266151307():
            revert with 'NH{q', 17
        require ext_code.size(sub_6a78a216Address)
        call sub_6a78a216Address.0x1e54ad00 with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 / 10^18 % 281474976710656 > -stor14[arg1].field_120 + test266151307():
            revert with 'NH{q', 17
        if arg1 >= 120001:
            revert with 'NH{q', 50
        stor14[arg1].field_24 = uint32(stor14[arg1].field_24 + uint32(uint32(block.timestamp) - stor14[arg1].field_0 - ONE_DAY))
    stor14[arg1].field_56 = uint32(block.timestamp)
    stor14[arg1].field_120 = (arg2 / 10^18 % 281474976710656) + stor14[arg1].field_120 % 281474976710656
}

function sub_9a54bcbf(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_6c3635bbAddress)
    staticcall sub_6c3635bbAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(sub_6c3635bbAddress)
            staticcall sub_6c3635bbAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_40]
            require mem[_40] == mem[_40]
            if mem[_40] >= 120001:
                revert with 'NH{q', 50
            _44 = mem[64]
            mem[64] = mem[64] + 192
            mem[_44] = stor14[_42].field_0
            mem[_44 + 32] = stor14[_42].field_24
            mem[_44 + 64] = stor14[_42].field_56
            mem[_44 + 96] = stor14[_42].field_88
            mem[_44 + 128] = stor14[_42].field_120
            mem[_44 + 160] = stor14[_42].field_168
            if stor14[_42].field_0 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = _42
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        _32 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _32] = mem[ceil32(return_data.size) + 128 len 32 * _32]
        return 32, mem[mem[64] + 32 len (32 * _32) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _43 = mem[_41]
        require mem[_41] == mem[_41]
        if mem[_41] >= 120001:
            revert with 'NH{q', 50
        _46 = mem[64]
        mem[64] = mem[64] + 192
        mem[_46] = stor14[_43].field_0
        mem[_46 + 32] = stor14[_43].field_24
        mem[_46 + 64] = stor14[_43].field_56
        mem[_46 + 96] = stor14[_43].field_88
        mem[_46 + 128] = stor14[_43].field_120
        mem[_46 + 160] = stor14[_43].field_168
        if stor14[_43].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = _43
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    _33 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _33] = mem[ceil32(return_data.size) + 128 len 32 * _33]
    return 32, mem[mem[64] + 32 len (32 * _33) + 32]
}

function sub_4791284b(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_6c3635bbAddress)
    staticcall sub_6c3635bbAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        require mem[_24] == mem[_24]
        if mem[_24] >= 120001:
            revert with 'NH{q', 50
        _26 = mem[64]
        mem[64] = mem[64] + 192
        mem[_26] = stor14[_25].field_0
        mem[_26 + 32] = stor14[_25].field_24
        mem[_26 + 64] = stor14[_25].field_56
        mem[_26 + 96] = stor14[_25].field_88
        mem[_26 + 128] = stor14[_25].field_120
        mem[_26 + 160] = stor14[_25].field_168
        if stor14[_25].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if _25 >= 120001:
            revert with 'NH{q', 50
        _28 = mem[64]
        mem[64] = mem[64] + 192
        mem[_28] = stor14[_25].field_0
        mem[_28 + 32] = stor14[_25].field_24
        mem[_28 + 64] = stor14[_25].field_56
        mem[_28 + 96] = stor14[_25].field_88
        mem[_28 + 128] = stor14[_25].field_120
        mem[_28 + 160] = stor14[_25].field_168
        if stor14[_25].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if stor14[_25].field_0 < 1:
            revert with 'NH{q', 17
        if sub_e9faf420 and stor14[_25].field_0 - 1 % 16777216 > -1 / sub_e9faf420:
            revert with 'NH{q', 17
        if sub_4bbd56c0 > (-1 * sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) - 1:
            revert with 'NH{q', 17
        if stor14[_25].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[_25].field_56 + ONE_DAY >= uint32(block.timestamp):
            if uint32(block.timestamp) < stor14[_25].field_24:
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[_25].field_0) and sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600 > -1 / uint32(uint32(block.timestamp) - stor14[_25].field_0):
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[_25].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > (-1 * uint32(uint32(block.timestamp) - stor14[_25].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint32(uint32(block.timestamp) - stor14[_25].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600)
            continue 
        if stor14[_25].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[_25].field_0 + ONE_DAY < stor14[_25].field_24:
            revert with 'NH{q', 17
        if stor14[_25].field_0 + ONE_DAY - stor14[_25].field_0 and sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600 > -1 / stor14[_25].field_0 + ONE_DAY - stor14[_25].field_0:
            revert with 'NH{q', 17
        if (stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) + (-1 * ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) + (stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[_25].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[_25].field_0 - 1 % 16777216) / 24 * 3600)
        continue 
    return s
}

function sub_dc8bc043(?) payable {
    mem[100] = msg.sender
    require ext_code.size(sub_6c3635bbAddress)
    staticcall sub_6c3635bbAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        require mem[_45] == mem[_45]
        if mem[_45] >= 120001:
            revert with 'NH{q', 50
        _47 = mem[64]
        mem[64] = mem[64] + 192
        mem[_47] = stor14[_46].field_0
        mem[_47 + 32] = stor14[_46].field_24
        mem[_47 + 64] = stor14[_46].field_56
        mem[_47 + 96] = stor14[_46].field_88
        mem[_47 + 128] = stor14[_46].field_120
        mem[_47 + 160] = stor14[_46].field_168
        if stor14[_46].field_0 > 0:
            if _46 >= 120001:
                revert with 'NH{q', 50
            _49 = mem[64]
            mem[64] = mem[64] + 192
            mem[_49] = stor14[_46].field_0
            mem[_49 + 32] = stor14[_46].field_24
            mem[_49 + 64] = stor14[_46].field_56
            mem[_49 + 96] = stor14[_46].field_88
            mem[_49 + 128] = stor14[_46].field_120
            mem[_49 + 160] = stor14[_46].field_168
            if stor14[_46].field_0 <= 0:
                revert with 0, 'NOT STAKED'
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_6a78a216Address)
            staticcall sub_6a78a216Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_55] == mem[_55]
            if mem[_55] < 10^18:
                revert with 0, 'NOT ENOUGH EGG IN WALLET'
            if stor14[_46].field_56 > -ONE_DAY - 1:
                revert with 'NH{q', 17
            if uint32(block.timestamp) <= stor14[_46].field_56 + ONE_DAY:
                if stor14[_46].field_24 > test266151307():
                    revert with 'NH{q', 17
                mem[_49 + 32] = stor14[_46].field_24
                mem[_49 + 64] = uint32(block.timestamp)
                mem[mem[64]] = 0x1e54ad0000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 10^18
                require ext_code.size(sub_6a78a216Address)
                call sub_6a78a216Address.0x1e54ad00 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 > -stor14[_46].field_120 + test266151307():
                    revert with 'NH{q', 17
                mem[_49 + 128] = stor14[_46].field_120 + 1 % 281474976710656
                if _46 >= 120001:
                    revert with 'NH{q', 50
            else:
                if stor14[_46].field_56 > -ONE_DAY - 1:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) < stor14[_46].field_56 + ONE_DAY:
                    revert with 'NH{q', 17
                if stor14[_46].field_24 > -uint32(uint32(block.timestamp) - stor14[_46].field_0 - ONE_DAY) + test266151307():
                    revert with 'NH{q', 17
                mem[_49 + 32] = uint32(stor14[_46].field_24 + uint32(uint32(block.timestamp) - stor14[_46].field_0 - ONE_DAY))
                mem[_49 + 64] = uint32(block.timestamp)
                mem[mem[64]] = 0x1e54ad0000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 10^18
                require ext_code.size(sub_6a78a216Address)
                call sub_6a78a216Address.0x1e54ad00 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 > -stor14[_46].field_120 + test266151307():
                    revert with 'NH{q', 17
                mem[_49 + 128] = stor14[_46].field_120 + 1 % 281474976710656
                if _46 >= 120001:
                    revert with 'NH{q', 50
                stor14[_46].field_24 = uint32(stor14[_46].field_24 + uint32(uint32(block.timestamp) - stor14[_46].field_0 - ONE_DAY))
            stor14[_46].field_56 = uint32(block.timestamp)
            stor14[_46].field_120 = stor14[_46].field_120 + 1 % 281474976710656
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function stake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if bool(openForPublic) != 1:
        revert with 0, 'NOT OPEN'
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == mem[_66 + 12 len 20]
        if mem[_66 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x53dc2159 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_71] == mem[_71 + 29 len 3]
        require mem[_71 + 32] == mem[_71 + 61 len 3]
        _75 = mem[_71 + 64]
        require mem[_71 + 64] == mem[_71 + 93 len 3]
        require mem[_71 + 96] == mem[_71 + 108 len 20]
        require mem[_71 + 128] == mem[_71 + 140 len 20]
        require mem[_71 + 160] == mem[_71 + 160]
        require mem[_71 + 192] == mem[_71 + 192]
        require mem[_71 + 224] == bool(mem[_71 + 224])
        if cd[((32 * idx) + arg1 + 36)] >= 120001:
            revert with 'NH{q', 50
        _81 = mem[64]
        mem[64] = mem[64] + 192
        mem[_81] = stor14[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_81 + 32] = stor14[cd[((32 * idx) + arg1 + 36)]].field_24
        mem[_81 + 64] = stor14[cd[((32 * idx) + arg1 + 36)]].field_56
        mem[_81 + 96] = stor14[cd[((32 * idx) + arg1 + 36)]].field_88
        mem[_81 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
        mem[_81 + 160] = stor14[cd[((32 * idx) + arg1 + 36)]].field_168
        if not stor14[cd[((32 * idx) + arg1 + 36)]].field_0:
            _82 = mem[64]
            mem[64] = mem[64] + 192
            mem[_82] = _75 % 16777216
            mem[_82 + 32] = uint32(block.timestamp)
            if stor14[cd[((32 * idx) + arg1 + 36)]].field_56 > 0:
                mem[_82 + 64] = stor14[cd[((32 * idx) + arg1 + 36)]].field_56
                if stor14[cd[((32 * idx) + arg1 + 36)]].field_88 > 0:
                    mem[_82 + 96] = stor14[cd[((32 * idx) + arg1 + 36)]].field_88
                    mem[_82 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
                    if _75 % 16777216 and sub_269c7f75 > -1 / _75 % 16777216:
                        revert with 'NH{q', 17
                    if uint32(block.timestamp) > -uint32(_75 % 16777216 * sub_269c7f75) + test266151307():
                        revert with 'NH{q', 17
                    mem[_82 + 160] = uint32(uint32(block.timestamp) + uint32(_75 % 16777216 * sub_269c7f75))
                    if cd[((32 * idx) + arg1 + 36)] >= 120001:
                        revert with 'NH{q', 50
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_0 = _75 % 16777216
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
                else:
                    if uint32(block.timestamp) < ONE_DAY:
                        revert with 'NH{q', 17
                    mem[_82 + 96] = uint32(uint32(block.timestamp) - ONE_DAY)
                    mem[_82 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
                    if _75 % 16777216 and sub_269c7f75 > -1 / _75 % 16777216:
                        revert with 'NH{q', 17
                    if uint32(block.timestamp) > -uint32(_75 % 16777216 * sub_269c7f75) + test266151307():
                        revert with 'NH{q', 17
                    mem[_82 + 160] = uint32(uint32(block.timestamp) + uint32(_75 % 16777216 * sub_269c7f75))
                    if cd[((32 * idx) + arg1 + 36)] >= 120001:
                        revert with 'NH{q', 50
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_0 = _75 % 16777216
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_88 = uint32(uint32(block.timestamp) - ONE_DAY)
            else:
                mem[_82 + 64] = uint32(block.timestamp)
                if stor14[cd[((32 * idx) + arg1 + 36)]].field_88 > 0:
                    mem[_82 + 96] = stor14[cd[((32 * idx) + arg1 + 36)]].field_88
                    mem[_82 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
                    if _75 % 16777216 and sub_269c7f75 > -1 / _75 % 16777216:
                        revert with 'NH{q', 17
                    if uint32(block.timestamp) > -uint32(_75 % 16777216 * sub_269c7f75) + test266151307():
                        revert with 'NH{q', 17
                    mem[_82 + 160] = uint32(uint32(block.timestamp) + uint32(_75 % 16777216 * sub_269c7f75))
                    if cd[((32 * idx) + arg1 + 36)] >= 120001:
                        revert with 'NH{q', 50
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_0 = _75 % 16777216
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_56 = uint32(block.timestamp)
                else:
                    if uint32(block.timestamp) < ONE_DAY:
                        revert with 'NH{q', 17
                    mem[_82 + 96] = uint32(uint32(block.timestamp) - ONE_DAY)
                    mem[_82 + 128] = stor14[cd[((32 * idx) + arg1 + 36)]].field_120
                    if _75 % 16777216 and sub_269c7f75 > -1 / _75 % 16777216:
                        revert with 'NH{q', 17
                    if uint32(block.timestamp) > -uint32(_75 % 16777216 * sub_269c7f75) + test266151307():
                        revert with 'NH{q', 17
                    mem[_82 + 160] = uint32(uint32(block.timestamp) + uint32(_75 % 16777216 * sub_269c7f75))
                    if cd[((32 * idx) + arg1 + 36)] >= 120001:
                        revert with 'NH{q', 50
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_0 = _75 % 16777216
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_24 = uint32(block.timestamp)
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_56 = uint32(block.timestamp)
                    stor14[cd[((32 * idx) + arg1 + 36)]].field_88 = uint32(uint32(block.timestamp) - ONE_DAY)
            stor14[cd[((32 * idx) + arg1 + 36)]].field_168 = uint32(uint32(block.timestamp) + uint32(_75 % 16777216 * sub_269c7f75))
            if sub_43241e5d > 65534:
                revert with 'NH{q', 17
            sub_43241e5d = uint16(sub_43241e5d + 1)
            if sub_79aed9d3 > -(_75 % 16777216) + test266151307():
                revert with 'NH{q', 17
            sub_79aed9d3 = sub_79aed9d3 + (_75 % 16777216) % 1099511627776
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = block.timestamp
            emit Staked(cd[((32 * idx) + arg1 + 36)], block.timestamp);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b5e65e78(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31 + 12 len 20]
        if mem[_31 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        _36 = mem[64]
        mem[64] = mem[64] + 192
        mem[_36] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_36 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_36 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_36 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_36 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
        mem[_36 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        _38 = mem[64]
        mem[64] = mem[64] + 192
        mem[_38] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_38 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_38 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_38 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_38 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
        mem[_38 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 < 1:
            revert with 'NH{q', 17
        if sub_e9faf420 and stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216 > -1 / sub_e9faf420:
            revert with 'NH{q', 17
        if sub_4bbd56c0 > (-1 * sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 + ONE_DAY >= uint32(block.timestamp):
            if uint32(block.timestamp) < stor14[cd[((32 * idx) + cd[4] + 36)]].field_24:
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) and sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 > -1 / uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0):
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > (-1 * uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            mem[_36 + 32] = uint32(block.timestamp)
            mem[_36 + 64] = uint32(block.timestamp)
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                revert with 'NH{q', 50
            stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
            stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 = uint32(block.timestamp)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_24) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600)
            continue 
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY < stor14[cd[((32 * idx) + cd[4] + 36)]].field_24:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 and sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 > -1 / stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 'NH{q', 17
        if (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (-1 * ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        mem[_36 + 32] = uint32(block.timestamp)
        mem[_36 + 64] = uint32(block.timestamp)
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
        stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 = uint32(block.timestamp)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600)
        continue 
    if s > 0:
        require ext_code.size(sub_ff65a021Address)
        call sub_ff65a021Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x25f31903: msg.sender, s, uint32(block.timestamp)
}

function sub_e3f87834(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 120001:
        revert with 'NH{q', 50
    if stor14[arg1].field_0 <= 0:
        revert with 0, 'NOT STAKED'
    if stor14[arg1].field_0 < sub_705de881:
        if sub_bab3384d and stor14[arg1].field_0 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        if stor14[arg1].field_0 < sub_bab3384d * stor14[arg1].field_0 / 10^18 % 281474976710656:
            revert with 0, 'MORE FOOD REQD'
    else:
        if sub_bab3384d and sub_705de881 > -1 / sub_bab3384d:
            revert with 'NH{q', 17
        if stor14[arg1].field_120 < sub_bab3384d * sub_705de881 / 10^18 % 281474976710656:
            revert with 0, 'MORE FOOD REQD'
    if block.timestamp < stor14[arg1].field_168:
        revert with 0, 'COOLDOWN NOT MET'
    if arg1 >= 120001:
        revert with 'NH{q', 50
    if stor14[arg1].field_0 <= 0:
        if stor14[arg1].field_0 > 16777214:
            revert with 'NH{q', 17
        if stor14[arg1].field_0 + 1 % 16777216 and sub_269c7f75 > -1 / stor14[arg1].field_0 + 1 % 16777216:
            revert with 'NH{q', 17
        if uint32(block.timestamp) > -uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75) + test266151307():
            revert with 'NH{q', 17
        if arg1 >= 120001:
            revert with 'NH{q', 50
        stor14[arg1].field_0 = stor14[arg1].field_0 + 1 % 16777216
    else:
        if stor14[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if sub_e9faf420 and stor14[arg1].field_0 - 1 % 16777216 > -1 / sub_e9faf420:
            revert with 'NH{q', 17
        if sub_4bbd56c0 > (-1 * sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) - 1:
            revert with 'NH{q', 17
        if stor14[arg1].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[arg1].field_56 + ONE_DAY >= uint32(block.timestamp):
            if uint32(block.timestamp) < stor14[arg1].field_24:
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[arg1].field_0) and sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600 > -1 / uint32(uint32(block.timestamp) - stor14[arg1].field_0):
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[arg1].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600 <= 0:
                if stor14[arg1].field_0 > 16777214:
                    revert with 'NH{q', 17
                if stor14[arg1].field_0 + 1 % 16777216 and sub_269c7f75 > -1 / stor14[arg1].field_0 + 1 % 16777216:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75) + test266151307():
                    revert with 'NH{q', 17
                if arg1 >= 120001:
                    revert with 'NH{q', 50
                stor14[arg1].field_0 = stor14[arg1].field_0 + 1 % 16777216
            else:
                require ext_code.size(sub_6c3635bbAddress)
                staticcall sub_6c3635bbAddress.0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_ff65a021Address)
                call sub_ff65a021Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), uint32(uint32(block.timestamp) - stor14[arg1].field_24) * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x25f31903: address(ext_call.return_data[0]), uint32(uint32(block.timestamp) - stor14[arg1].field_24) * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600, uint32(block.timestamp)
                if stor14[arg1].field_0 > 16777214:
                    revert with 'NH{q', 17
                if stor14[arg1].field_0 + 1 % 16777216 and sub_269c7f75 > -1 / stor14[arg1].field_0 + 1 % 16777216:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75) + test266151307():
                    revert with 'NH{q', 17
                if arg1 >= 120001:
                    revert with 'NH{q', 50
                stor14[arg1].field_0 = stor14[arg1].field_0 + 1 % 16777216
                stor14[arg1].field_24 = uint32(block.timestamp)
        else:
            if stor14[arg1].field_56 > -ONE_DAY - 1:
                revert with 'NH{q', 17
            if stor14[arg1].field_0 + ONE_DAY < stor14[arg1].field_24:
                revert with 'NH{q', 17
            if stor14[arg1].field_0 + ONE_DAY - stor14[arg1].field_0 and sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600 > -1 / stor14[arg1].field_0 + ONE_DAY - stor14[arg1].field_0:
                revert with 'NH{q', 17
            if (stor14[arg1].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[arg1].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) <= 0:
                if stor14[arg1].field_0 > 16777214:
                    revert with 'NH{q', 17
                if stor14[arg1].field_0 + 1 % 16777216 and sub_269c7f75 > -1 / stor14[arg1].field_0 + 1 % 16777216:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75) + test266151307():
                    revert with 'NH{q', 17
                if arg1 >= 120001:
                    revert with 'NH{q', 50
                stor14[arg1].field_0 = stor14[arg1].field_0 + 1 % 16777216
            else:
                require ext_code.size(sub_6c3635bbAddress)
                staticcall sub_6c3635bbAddress.0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_ff65a021Address)
                call sub_ff65a021Address.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (stor14[arg1].field_56 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[arg1].field_24 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x25f31903: address(ext_call.return_data[0]), (stor14[arg1].field_56 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[arg1].field_24 * sub_4bbd56c0 + (sub_e9faf420 * stor14[arg1].field_0 - 1 % 16777216) / 24 * 3600), uint32(block.timestamp)
                if stor14[arg1].field_0 > 16777214:
                    revert with 'NH{q', 17
                if stor14[arg1].field_0 + 1 % 16777216 and sub_269c7f75 > -1 / stor14[arg1].field_0 + 1 % 16777216:
                    revert with 'NH{q', 17
                if uint32(block.timestamp) > -uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75) + test266151307():
                    revert with 'NH{q', 17
                if arg1 >= 120001:
                    revert with 'NH{q', 50
                stor14[arg1].field_0 = stor14[arg1].field_0 + 1 % 16777216
                stor14[arg1].field_24 = uint32(block.timestamp)
    stor14[arg1].field_56 = uint32(block.timestamp)
    stor14[arg1].field_120 = 0
    stor14[arg1].field_256 = 0
    stor14[arg1].field_168 = uint32(uint32(block.timestamp) + uint32(stor14[arg1].field_0 + 1 % 16777216 * sub_269c7f75))
    if sub_79aed9d3 > test266151307():
        revert with 'NH{q', 17
    sub_79aed9d3 = sub_79aed9d3 + 1 % 1099511627776
    require ext_code.size(sub_6c3635bbAddress)
    call sub_6c3635bbAddress.0xf33d627f with:
         gas gas_remaining wei
        args arg1, stor14[arg1].field_0 + 1 % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c7ed57c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_6c3635bbAddress)
        staticcall sub_6c3635bbAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_49] == mem[_49 + 12 len 20]
        if mem[_49 + 12 len 20] != msg.sender:
            revert with 0, 'NOT OWNER'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        _57 = mem[64]
        mem[64] = mem[64] + 192
        mem[_57] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_57 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_57 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_57 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_57 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
        mem[_57 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        _60 = mem[64]
        mem[64] = mem[64] + 192
        mem[_60] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_60 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
        mem[_60 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
        mem[_60 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
        mem[_60 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
        mem[_60 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 < 1:
            revert with 'NH{q', 17
        if sub_e9faf420 and stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216 > -1 / sub_e9faf420:
            revert with 'NH{q', 17
        if sub_4bbd56c0 > (-1 * sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 + ONE_DAY >= uint32(block.timestamp):
            if uint32(block.timestamp) < stor14[cd[((32 * idx) + cd[4] + 36)]].field_24:
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) and sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 > -1 / uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0):
                revert with 'NH{q', 17
            if uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > (-1 * uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - 1:
                revert with 'NH{q', 17
            mem[_57 + 32] = uint32(block.timestamp)
            mem[_57 + 64] = uint32(block.timestamp)
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                revert with 'NH{q', 50
            stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
            stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 = uint32(block.timestamp)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (uint32(uint32(block.timestamp) - stor14[cd[((32 * idx) + cd[4] + 36)]].field_24) * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600)
            continue 
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 > -ONE_DAY - 1:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY < stor14[cd[((32 * idx) + cd[4] + 36)]].field_24:
            revert with 'NH{q', 17
        if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 and sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600 > -1 / stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 + ONE_DAY - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0:
            revert with 'NH{q', 17
        if (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > (-1 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (-1 * ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        mem[_57 + 32] = uint32(block.timestamp)
        mem[_57 + 64] = uint32(block.timestamp)
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[4] + 36)] >= 120001:
            revert with 'NH{q', 50
        stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 = uint32(block.timestamp)
        stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 = uint32(block.timestamp)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor14[cd[((32 * idx) + cd[4] + 36)]].field_56 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) + (ONE_DAY * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600) - (stor14[cd[((32 * idx) + cd[4] + 36)]].field_24 * sub_4bbd56c0 + (sub_e9faf420 * stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 - 1 % 16777216) / 24 * 3600)
        continue 
    if s <= 0:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_6c3635bbAddress)
            staticcall sub_6c3635bbAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_114] == mem[_114 + 12 len 20]
            if mem[_114 + 12 len 20] != msg.sender:
                revert with 0, 'NOT OWNER'
            if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                revert with 'NH{q', 50
            _120 = mem[64]
            mem[64] = mem[64] + 192
            mem[_120] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_120 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
            mem[_120 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
            mem[_120 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
            mem[_120 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
            mem[_120 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
            if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 > 0:
                if sub_79aed9d3 < stor14[cd[((32 * idx) + cd[4] + 36)]].field_0:
                    revert with 'NH{q', 17
                sub_79aed9d3 = sub_79aed9d3 - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 % 1099511627776
                if sub_43241e5d < 1:
                    revert with 'NH{q', 17
                sub_43241e5d = uint16(sub_43241e5d - 1)
                mem[_120] = 0
                if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                    revert with 'NH{q', 50
                stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                stor14[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 32] = block.timestamp
                emit 0x69f6d6e6: cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(sub_ff65a021Address)
        call sub_ff65a021Address.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = uint32(block.timestamp)
        emit 0x25f31903: msg.sender, s, uint32(block.timestamp)
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_6c3635bbAddress)
            staticcall sub_6c3635bbAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_115] == mem[_115 + 12 len 20]
            if mem[_115 + 12 len 20] != msg.sender:
                revert with 0, 'NOT OWNER'
            if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                revert with 'NH{q', 50
            _122 = mem[64]
            mem[64] = mem[64] + 192
            mem[_122] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_122 + 32] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_24
            mem[_122 + 64] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_56
            mem[_122 + 96] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_88
            mem[_122 + 128] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_120
            mem[_122 + 160] = stor14[cd[((32 * idx) + cd[4] + 36)]].field_168
            if stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 > 0:
                if sub_79aed9d3 < stor14[cd[((32 * idx) + cd[4] + 36)]].field_0:
                    revert with 'NH{q', 17
                sub_79aed9d3 = sub_79aed9d3 - stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 % 1099511627776
                if sub_43241e5d < 1:
                    revert with 'NH{q', 17
                sub_43241e5d = uint16(sub_43241e5d - 1)
                mem[_122] = 0
                if cd[((32 * idx) + cd[4] + 36)] >= 120001:
                    revert with 'NH{q', 50
                stor14[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                stor14[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 32] = block.timestamp
                emit 0x69f6d6e6: cd[((32 * idx) + cd[4] + 36)], block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
