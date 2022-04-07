contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_eb37d349;
mapping of struct sub_f3a2c704;

function owner() payable {
    return owner
}

function sub_eb37d349(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eb37d349[arg1]
}

function sub_f3a2c704(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_f3a2c704[arg1].field_0), sub_f3a2c704[arg1].field_0, sub_f3a2c704[arg1].field_0, sub_f3a2c704[arg1].field_136
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eb37d349[address(arg1)] = arg2
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

function sub_0e803bf5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (128 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'bad len'
    idx = 0
    while idx < ('cd', 4).length:
        _11 = mem[64]
        mem[64] = mem[64] + 128
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 36)] == bool(cd[((128 * idx) + cd[36] + 36)])
        mem[_11] = bool(cd[((128 * idx) + cd[36] + 36)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 68)] == uint64(cd[((128 * idx) + cd[36] + 68)])
        mem[_11 + 32] = uint64(cd[((128 * idx) + cd[36] + 68)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 100)] == uint64(cd[((128 * idx) + cd[36] + 100)])
        mem[_11 + 64] = uint64(cd[((128 * idx) + cd[36] + 100)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 132)] == uint64(cd[((128 * idx) + cd[36] + 132)])
        mem[_11 + 96] = uint64(cd[((128 * idx) + cd[36] + 132)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_f3a2c704[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((128 * idx) + cd[36] + 36)]))
        sub_f3a2c704[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = uint64(cd[((128 * idx) + cd[36] + 68)])
        sub_f3a2c704[address(cd[((32 * idx) + cd[4] + 36)])].field_72 = uint64(cd[((128 * idx) + cd[36] + 100)])
        sub_f3a2c704[address(cd[((32 * idx) + cd[4] + 36)])].field_136 = uint64(cd[((128 * idx) + cd[36] + 132)])
        sub_f3a2c704[address(cd[((32 * idx) + cd[4] + 36)])].field_200 = Mask(56, 200, bool(cd[((128 * idx) + cd[36] + 36)])) >> 200
        idx = idx + 1
        continue 
}

function isStable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
    require ext_code.size(sub_eb37d349[address(arg1)])
    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 'price too stale'
    if not Mask(112, 0, ext_call.return_data[32]):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    return 1
}

function acceptDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
    require ext_code.size(sub_eb37d349[address(arg1)])
    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 'price too stale'
    if not Mask(112, 0, ext_call.return_data[32]):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    return bool(sub_f3a2c704[address(arg1)].field_0)
}

function workFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'bad t1 balance'
    require ext_code.size(sub_eb37d349[address(arg1)])
    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 'price too stale'
    if not Mask(112, 0, ext_call.return_data[32]):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(112, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                revert with 0, 'price too high'
        else:
            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                revert with 0, 'price too high'
        if not ext_call.return_data[0]:
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_f3a2c704[address(arg1)].field_136
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                revert with 0, 'price too low'
    return sub_f3a2c704[address(arg1)].field_8
}

function killFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if Mask(112, 0, ext_call.return_data[0]):
                                if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    if ext_call.return_data[0]:
                                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                                                revert with 0, 'bad t0 balance'
                                            else:
                                                if Mask(112, 0, ext_call.return_data[32]):
                                                    if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if ext_call.return_data[0]:
                                                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                                    revert with 0, 'bad t1 balance'
                                                                else:
                                                                    require ext_code.size(sub_eb37d349[address(arg1)])
                                                                    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 64
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                                        if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                            revert with 0, 'price too stale'
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                                        if ext_call.return_data[0]:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                    revert with 0, 'price too high'
                                                                                                else:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                                        else:
                                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                            else:
                                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                    revert with 0, 'price too low'
                                                                                                                else:
                                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                                    if ext_call.return_data[0]:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                        else:
                                                            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                                revert with 0, 'bad t1 balance'
                                                            else:
                                                                require ext_code.size(sub_eb37d349[address(arg1)])
                                                                staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                        revert with 0, 'price too stale'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                                    if ext_call.return_data[0]:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if 100 * ext_call.return_data[0] > 0:
                                                                revert with 0, 'bad t1 balance'
                                                            else:
                                                                require ext_code.size(sub_eb37d349[address(arg1)])
                                                                staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                        revert with 0, 'price too stale'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                                    if ext_call.return_data[0]:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                    else:
                                                        require ext_code.size(sub_eb37d349[address(arg1)])
                                                        staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                revert with 0, 'price too stale'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]):
                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                    else:
                                        if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'bad t0 balance'
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]):
                                                if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                                revert with 0, 'bad t1 balance'
                                                            else:
                                                                require ext_code.size(sub_eb37d349[address(arg1)])
                                                                staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                        revert with 0, 'price too stale'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                                    if ext_call.return_data[0]:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                    else:
                                                        if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'bad t1 balance'
                                                        else:
                                                            require ext_code.size(sub_eb37d349[address(arg1)])
                                                            staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                    revert with 0, 'price too stale'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if 100 * ext_call.return_data[0] > 0:
                                                            revert with 0, 'bad t1 balance'
                                                        else:
                                                            require ext_code.size(sub_eb37d349[address(arg1)])
                                                            staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                    revert with 0, 'price too stale'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                else:
                                                    require ext_code.size(sub_eb37d349[address(arg1)])
                                                    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                            revert with 0, 'price too stale'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    if ext_call.return_data[0]:
                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                            revert with 0, 'price too high'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                            else:
                                if ext_call.return_data[0]:
                                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        if 100 * ext_call.return_data[0] > 0:
                                            revert with 0, 'bad t0 balance'
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]):
                                                if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                                revert with 0, 'bad t1 balance'
                                                            else:
                                                                require ext_code.size(sub_eb37d349[address(arg1)])
                                                                staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 64
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                                                    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                        revert with 0, 'price too stale'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                                    if ext_call.return_data[0]:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                                revert with 0, 'price too high'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                                    else:
                                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                                revert with 0, 'price too low'
                                                                                                            else:
                                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                    else:
                                                        if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                            revert with 0, 'bad t1 balance'
                                                        else:
                                                            require ext_code.size(sub_eb37d349[address(arg1)])
                                                            staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                    revert with 0, 'price too stale'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if 100 * ext_call.return_data[0] > 0:
                                                            revert with 0, 'bad t1 balance'
                                                        else:
                                                            require ext_code.size(sub_eb37d349[address(arg1)])
                                                            staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 64
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                                if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                    revert with 0, 'price too stale'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                                if ext_call.return_data[0]:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                            revert with 0, 'price too high'
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                                else:
                                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                            revert with 0, 'price too low'
                                                                                                        else:
                                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                else:
                                                    require ext_code.size(sub_eb37d349[address(arg1)])
                                                    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                            revert with 0, 'price too stale'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    if ext_call.return_data[0]:
                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                            revert with 0, 'price too high'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if ext_call.return_data[0]:
                                                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                        revert with 0, 'bad t1 balance'
                                                    else:
                                                        require ext_code.size(sub_eb37d349[address(arg1)])
                                                        staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 64
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            require ext_call.return_data[32] == ext_call.return_data[32]
                                                            if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                                revert with 0, 'price too stale'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]):
                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require Mask(112, 0, ext_call.return_data[0])
                                                                            if ext_call.return_data[0]:
                                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                        revert with 0, 'price too high'
                                                                                    else:
                                                                                        if ext_call.return_data[0]:
                                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                                            else:
                                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                else:
                                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                        revert with 0, 'price too low'
                                                                                                    else:
                                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                            else:
                                                if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                                                    revert with 0, 'bad t1 balance'
                                                else:
                                                    require ext_code.size(sub_eb37d349[address(arg1)])
                                                    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                            revert with 0, 'price too stale'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    if ext_call.return_data[0]:
                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                            revert with 0, 'price too high'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                    else:
                                        if ext_call.return_data[0]:
                                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                if 100 * ext_call.return_data[0] > 0:
                                                    revert with 0, 'bad t1 balance'
                                                else:
                                                    require ext_code.size(sub_eb37d349[address(arg1)])
                                                    staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 64
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        require ext_call.return_data[32] == ext_call.return_data[32]
                                                        if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                            revert with 0, 'price too stale'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        if ext_call.return_data[0]:
                                                                            if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                    revert with 0, 'price too high'
                                                                                else:
                                                                                    if ext_call.return_data[0]:
                                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                    revert with 0, 'price too low'
                                                                                                else:
                                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    if ext_call.return_data[0]:
                                                                        if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                                revert with 0, 'price too high'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                                revert with 0, 'price too low'
                                                                                            else:
                                                                                                return sub_f3a2c704[address(arg1)].field_72
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                            revert with 0, 'price too high'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                        else:
                                            require ext_code.size(sub_eb37d349[address(arg1)])
                                            staticcall sub_eb37d349[address(arg1)].getPrice(address rg1, address rg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                require ext_call.return_data[32] == ext_call.return_data[32]
                                                if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
                                                    revert with 0, 'price too stale'
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                if ext_call.return_data[0]:
                                                                    if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                            revert with 0, 'price too high'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require sub_f3a2c704[address(arg1)].field_136
                                                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                            revert with 0, 'price too low'
                                                                                        else:
                                                                                            return sub_f3a2c704[address(arg1)].field_72
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                else:
                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                        revert with 0, 'price too high'
                                                                    else:
                                                                        if ext_call.return_data[0]:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'price too low'
                                                                                else:
                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            if ext_call.return_data[0]:
                                                                if sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f3a2c704[address(arg1)].field_136:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * ext_call.return_data[0] / 10000:
                                                                        revert with 0, 'price too high'
                                                                    else:
                                                                        if ext_call.return_data[0]:
                                                                            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                else:
                                                                                    require sub_f3a2c704[address(arg1)].field_136
                                                                                    if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                        revert with 0, 'price too low'
                                                                                    else:
                                                                                        return sub_f3a2c704[address(arg1)].field_72
                                                                        else:
                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'price too low'
                                                                                else:
                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                            else:
                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) > 0:
                                                                    revert with 0, 'price too high'
                                                                else:
                                                                    if ext_call.return_data[0]:
                                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                                revert with 0, 'SafeMath: division by zero'
                                                                            else:
                                                                                require sub_f3a2c704[address(arg1)].field_136
                                                                                if 0 / Mask(112, 0, ext_call.return_data[0]) < 10000 * ext_call.return_data[0] / sub_f3a2c704[address(arg1)].field_136:
                                                                                    revert with 0, 'price too low'
                                                                                else:
                                                                                    return sub_f3a2c704[address(arg1)].field_72
                                                                    else:
                                                                        if sub_f3a2c704[address(arg1)].field_136 <= 0:
                                                                            revert with 0, 'SafeMath: division by zero'
                                                                        else:
                                                                            require sub_f3a2c704[address(arg1)].field_136
                                                                            if 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / sub_f3a2c704[address(arg1)].field_136:
                                                                                revert with 0, 'price too low'
                                                                            else:
                                                                                return sub_f3a2c704[address(arg1)].field_72
}



}
