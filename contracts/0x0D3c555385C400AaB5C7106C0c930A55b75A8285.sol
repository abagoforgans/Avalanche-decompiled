contract main {




// =====================  Runtime code  =====================


#
#  - acceptDebt(address arg1)
#
const sub_abbec9ae(?) = 0xe55e19fb4f2d85af758950957714292dac1e25b2


address owner;
mapping of struct sub_f3a2c704;

function owner() payable {
    return owner
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
        mem[32] = 1
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
    staticcall arg1.0x5fcbd285 with:
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
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require Mask(112, 0, ext_call.return_data[0])
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
            revert with 0, 'lp price too high'
    else:
        if sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'lp price too high'
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if sub_f3a2c704[address(arg1)].field_136 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_f3a2c704[address(arg1)].field_136
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'lp price too low'
    else:
        if 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'lp price too low'
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 1, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 1, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high01'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high02'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high12'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high12'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    return 1
}

function workFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require Mask(112, 0, ext_call.return_data[0])
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
            revert with 0, 'lp price too high'
    else:
        if sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'lp price too high'
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if sub_f3a2c704[address(arg1)].field_136 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_f3a2c704[address(arg1)].field_136
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'lp price too low'
    else:
        if 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'lp price too low'
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 1, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 1, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high01'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high02'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high12'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high12'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    return sub_f3a2c704[address(arg1)].field_8
}

function killFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.0x5fcbd285 with:
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
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require Mask(112, 0, ext_call.return_data[0])
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]):
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0:
            revert with 0, 'lp price too high'
    else:
        if sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > sub_f3a2c704[address(arg1)].field_136 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'lp price too high'
    if 10^18 * 10^ext_call.return_data[31 len 1] / 10^18 != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^uint8(ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^uint8(ext_call.return_data[0])
    if sub_f3a2c704[address(arg1)].field_136 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_f3a2c704[address(arg1)].field_136
    if not 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'lp price too low'
    else:
        if 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 / 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136 != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10000 * 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'lp price too low'
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 1, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 0, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
    staticcall 0xe55e19fb4f2d85af758950957714292dac1e25b2.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 1, 2, 10^6 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high01'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low01'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high02'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low02'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] > 0:
            revert with 0, 'price too high12'
    else:
        if 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] > 10^6 * sub_f3a2c704[address(arg1)].field_136 * 10^uint8(ext_call.return_data[0]) / 10000:
            revert with 0, 'price too high12'
    if not 10^6 * 10^uint8(ext_call.return_data[0]):
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 0 / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    else:
        if 10^10 * 10^uint8(ext_call.return_data[0]) / 10^6 * 10^uint8(ext_call.return_data[0]) != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_f3a2c704[address(arg1)].field_136 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_f3a2c704[address(arg1)].field_136
        if ext_call.return_data[0] < 10^10 * 10^uint8(ext_call.return_data[0]) / sub_f3a2c704[address(arg1)].field_136:
            revert with 0, 'price too low12'
    return sub_f3a2c704[address(arg1)].field_72
}



}
