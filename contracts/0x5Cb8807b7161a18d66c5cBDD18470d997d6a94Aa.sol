contract main {




// =====================  Runtime code  =====================


#
#  - sub_96e6c337(?)
#
const DEFAULT_FACTORY = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const PERIOD = (24 * 3600)


address owner;
mapping of struct sub_8a04ff3c;
mapping of address sub_9653020e;
mapping of struct sub_52cefcd0;

function sub_52cefcd0(?) payable {
    return sub_52cefcd0[arg1][0 len sub_52cefcd0[arg1].length].field_0
}

function sub_8a04ff3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8a04ff3c[arg1].field_0, 
           sub_8a04ff3c[arg1].field_256,
           sub_8a04ff3c[arg1].field_512,
           Mask(224, 0, sub_8a04ff3c[arg1].field_768),
           Mask(224, 0, sub_8a04ff3c[arg1].field_1024)
}

function owner() payable {
    return owner
}

function sub_9653020e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_9653020e[arg1][arg2]
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

function sub_acb0211b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_52cefcd0[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not bool(sub_52cefcd0[address(arg1)].field_0):
            mem[253] = Mask(248, 8, sub_52cefcd0[address(arg1)].field_0)
            return address(sha3(0, arg1, sha3(arg2, arg3), mem[253 len sub_52cefcd0[address(arg1)].field_1 % 128]))
        if bool(sub_52cefcd0[address(arg1)].field_0) != 1:
            return address(sha3(mem[200 len -200]))
        idx = 0
        s = 0
        while idx < uint255(sub_52cefcd0[address(arg1)].field_1):
            mem[idx + 253] = sub_52cefcd0[address(arg1)][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        return address(sha3(0, arg1, sha3(arg2, arg3), mem[253 len uint255(sub_52cefcd0[address(arg1)].field_1)]))
    if not arg3:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    if not bool(sub_52cefcd0[address(arg1)].field_0):
        mem[253] = Mask(248, 8, sub_52cefcd0[address(arg1)].field_0)
        return address(sha3(0, arg1, sha3(arg3, arg2), mem[253 len sub_52cefcd0[address(arg1)].field_1 % 128]))
    if bool(sub_52cefcd0[address(arg1)].field_0) != 1:
        return address(sha3(mem[200 len -200]))
    idx = 0
    s = 0
    while idx < uint255(sub_52cefcd0[address(arg1)].field_1):
        mem[idx + 253] = sub_52cefcd0[address(arg1)][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return address(sha3(0, arg1, sha3(arg3, arg2), mem[253 len uint255(sub_52cefcd0[address(arg1)].field_1)]))
}

function setFactory(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9653020e[address(arg1)][address(arg2)] = arg3
    sub_9653020e[address(arg2)][address(arg1)] = arg3
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not bool(sub_52cefcd0[address(arg3)].field_0):
            mem[253] = Mask(248, 8, sub_52cefcd0[address(arg3)].field_0)
            require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).price1CumulativeLast() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[address(arg3)].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).getReserves() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[address(arg3)].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_0 = block.timestamp
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_256 = ext_call.return_data[0]
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_512 = ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                require Mask(112, 0, ext_call.return_data[32])
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_0 = block.timestamp
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        else:
            if bool(sub_52cefcd0[address(arg3)].field_0) != 1:
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[32])
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                idx = 0
                s = 0
                while idx < uint255(sub_52cefcd0[address(arg3)].field_1):
                    mem[idx + 253] = sub_52cefcd0[address(arg3)][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).price0CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[uint255(sub_52cefcd0[address(arg3)].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).getReserves() with:
                        gas gas_remaining wei
                mem[uint255(sub_52cefcd0[address(arg3)].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_512 = ext_call.return_data[0]
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[32])
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not bool(sub_52cefcd0[address(arg3)].field_0):
            mem[253] = Mask(248, 8, sub_52cefcd0[address(arg3)].field_0)
            require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).price0CumulativeLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).price1CumulativeLast() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[address(arg3)].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])))
            staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len sub_52cefcd0[address(arg3)].field_1 % 128])).getReserves() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[address(arg3)].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_0 = block.timestamp
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_256 = ext_call.return_data[0]
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_512 = ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                require Mask(112, 0, ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                require Mask(112, 0, ext_call.return_data[32])
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_0 = block.timestamp
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[address(arg3)].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        else:
            if bool(sub_52cefcd0[address(arg3)].field_0) != 1:
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[32])
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                idx = 0
                s = 0
                while idx < uint255(sub_52cefcd0[address(arg3)].field_1):
                    mem[idx + 253] = sub_52cefcd0[address(arg3)][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).price0CumulativeLast() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[uint255(sub_52cefcd0[address(arg3)].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])))
                staticcall address(sha3(0, arg3, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[address(arg3)].field_1)])).getReserves() with:
                        gas gas_remaining wei
                mem[uint255(sub_52cefcd0[address(arg3)].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_512 = ext_call.return_data[0]
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[32])
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_0 = block.timestamp
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(sha3(0, arg3, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[address(arg3)].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
}

function sub_29f468fc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg1) == address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if sub_9653020e[address(arg1)][address(arg2)]:
        if address(arg1) < address(arg2):
            if not address(arg1):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if not bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0):
                mem[253] = Mask(248, 8, sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0)
                require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).token1() with:
                        gas gas_remaining wei
                mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg3) != address(ext_call.return_data[0]):
                    if address(arg3) != ext_call.return_data[12 len 20]:
                        revert with 0, 'TWAP_Oracle: invalid tokenIn'
                if not arg4:
                    return 0
                require arg4
                if Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768):
                    revert with 0, 'FixedPoint: MUL_OVERFLOW'
                return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) * arg4) >> 112)
            if bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0) != 1:
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(sha3(mem[200 len -200])))
                staticcall address(sha3(mem[200 len -200])).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(arg3) != address(ext_call.return_data[0]):
                    if address(arg3) != ext_call.return_data[12 len 20]:
                        revert with 0, 'TWAP_Oracle: invalid tokenIn'
                if not arg4:
                    return 0
                require arg4
                if Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768):
                    revert with 0, 'FixedPoint: MUL_OVERFLOW'
                return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4) >> 112)
            idx = 0
            s = 0
            while idx < uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1):
                mem[idx + 253] = sub_52cefcd0[stor2[address(arg1)][address(arg2)]][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
            staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
            staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).token1() with:
                    gas gas_remaining wei
            mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg3) != address(ext_call.return_data[0]):
                if address(arg3) != ext_call.return_data[12 len 20]:
                    revert with 0, 'TWAP_Oracle: invalid tokenIn'
            if not arg4:
                return 0
            require arg4
            if Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768):
                revert with 0, 'FixedPoint: MUL_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) * arg4) >> 112)
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0):
            mem[253] = Mask(248, 8, sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0)
            require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
            staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
            staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).token1() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg3) != address(ext_call.return_data[0]):
                if address(arg3) != ext_call.return_data[12 len 20]:
                    revert with 0, 'TWAP_Oracle: invalid tokenIn'
            if not arg4:
                return 0
            require arg4
            if Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768):
                revert with 0, 'FixedPoint: MUL_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) * arg4) >> 112)
        if bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0) != 1:
            require ext_code.size(address(sha3(mem[200 len -200])))
            staticcall address(sha3(mem[200 len -200])).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(mem[200 len -200])))
            staticcall address(sha3(mem[200 len -200])).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg3) != address(ext_call.return_data[0]):
                if address(arg3) != ext_call.return_data[12 len 20]:
                    revert with 0, 'TWAP_Oracle: invalid tokenIn'
            if not arg4:
                return 0
            require arg4
            if Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768):
                revert with 0, 'FixedPoint: MUL_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4) >> 112)
        idx = 0
        s = 0
        while idx < uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1):
            mem[idx + 253] = sub_52cefcd0[stor2[address(arg1)][address(arg2)]][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).token1() with:
                gas gas_remaining wei
        mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg3) != address(ext_call.return_data[0]):
            if address(arg3) != ext_call.return_data[12 len 20]:
                revert with 0, 'TWAP_Oracle: invalid tokenIn'
        if not arg4:
            return 0
        require arg4
        if Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768):
            revert with 0, 'FixedPoint: MUL_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) * arg4) >> 112)
    if address(arg1) < address(arg2):
        if not address(arg1):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        if not bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0):
            mem[253] = Mask(248, 8, sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0)
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
            staticcall address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
            staticcall address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).token1() with:
                    gas gas_remaining wei
            mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg3) != address(ext_call.return_data[0]):
                if address(arg3) != ext_call.return_data[12 len 20]:
                    revert with 0, 'TWAP_Oracle: invalid tokenIn'
            if not arg4:
                return 0
            require arg4
            if Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768):
                revert with 0, 'FixedPoint: MUL_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) * arg4) >> 112)
        if bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0) != 1:
            require ext_code.size(address(sha3(mem[200 len -200])))
            staticcall address(sha3(mem[200 len -200])).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(sha3(mem[200 len -200])))
            staticcall address(sha3(mem[200 len -200])).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg3) != address(ext_call.return_data[0]):
                if address(arg3) != ext_call.return_data[12 len 20]:
                    revert with 0, 'TWAP_Oracle: invalid tokenIn'
            if not arg4:
                return 0
            require arg4
            if Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768):
                revert with 0, 'FixedPoint: MUL_OVERFLOW'
            return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4) >> 112)
        idx = 0
        s = 0
        while idx < uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1):
            mem[idx + 253] = sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
        staticcall address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
        staticcall address(sha3(0, 17269419903419772280, sha3(address(arg1), address(arg2)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).token1() with:
                gas gas_remaining wei
        mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg3) != address(ext_call.return_data[0]):
            if address(arg3) != ext_call.return_data[12 len 20]:
                revert with 0, 'TWAP_Oracle: invalid tokenIn'
        if not arg4:
            return 0
        require arg4
        if Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768):
            revert with 0, 'FixedPoint: MUL_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('mask_shl', 160, 0, 0, ('param', 'arg2'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) * arg4) >> 112)
    if not address(arg2):
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    if not bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0):
        mem[253] = Mask(248, 8, sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0)
        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
        staticcall address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
        staticcall address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).token1() with:
                gas gas_remaining wei
        mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg3) != address(ext_call.return_data[0]):
            if address(arg3) != ext_call.return_data[12 len 20]:
                revert with 0, 'TWAP_Oracle: invalid tokenIn'
        if not arg4:
            return 0
        require arg4
        if Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768):
            revert with 0, 'FixedPoint: MUL_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) * arg4) >> 112)
    if bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0) != 1:
        require ext_code.size(address(sha3(mem[200 len -200])))
        staticcall address(sha3(mem[200 len -200])).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(sha3(mem[200 len -200])))
        staticcall address(sha3(mem[200 len -200])).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg3) != address(ext_call.return_data[0]):
            if address(arg3) != ext_call.return_data[12 len 20]:
                revert with 0, 'TWAP_Oracle: invalid tokenIn'
        if not arg4:
            return 0
        require arg4
        if Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768):
            revert with 0, 'FixedPoint: MUL_OVERFLOW'
        return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) * arg4) >> 112)
    idx = 0
    s = 0
    while idx < uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1):
        mem[idx + 253] = sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
    staticcall address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
    staticcall address(sha3(0, 17269419903419772280, sha3(address(arg2), address(arg1)), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).token1() with:
            gas gas_remaining wei
    mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg3) != address(ext_call.return_data[0]):
        if address(arg3) != ext_call.return_data[12 len 20]:
            revert with 0, 'TWAP_Oracle: invalid tokenIn'
    if not arg4:
        return 0
    require arg4
    if Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) * arg4 / arg4 != Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768):
        revert with 0, 'FixedPoint: MUL_OVERFLOW'
    return (Mask(32, 112, Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('mask_shl', 160, 0, 0, ('param', 'arg1'))), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) * arg4) >> 112)
}

function sub_d92b0064(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'input length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        sub_9653020e[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[((32 * idx) + cd[36] + 36)])] = address(cd[68])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 2)
        sub_9653020e[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[68])
        if address(cd[((32 * idx) + cd[4] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if address(cd[((32 * idx) + cd[4] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            _213 = mem[64]
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[36] + 36)])
            _217 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _219 = sha3(mem[_217 + 32 len mem[_217]])
            mem[32] = 3
            mem[_213 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_213 + 105] = address(cd[68])
            mem[_213 + 125] = _219
            if not bool(sub_52cefcd0[address(cd[68])].field_0):
                mem[_213 + 157] = Mask(248, 8, sub_52cefcd0[address(cd[68])].field_0)
                mem[_213 + 72] = sub_52cefcd0[address(cd[68])].field_1 % 128 + 53
                _227 = sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])
                require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).price0CumulativeLast() with:
                        gas gas_remaining wei
                mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + 157] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + ceil32(return_data.size) + 157] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).getReserves() with:
                        gas gas_remaining wei
                mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (2 * ceil32(return_data.size)) + 157 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 157
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    mem[0] = address(_227)
                    mem[32] = 1
                    sub_8a04ff3c[address(_227)].field_0 = block.timestamp
                    sub_8a04ff3c[address(_227)].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(_227)].field_512 = ext_call.return_data[0]
                else:
                    mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 157] = 0
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 189] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                    mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 221] = 0
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    mem[64] = _213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 285
                    require Mask(112, 0, ext_call.return_data[32])
                    mem[_213 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 253] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                    mem[0] = address(_227)
                    mem[32] = 1
                    sub_8a04ff3c[address(_227)].field_0 = block.timestamp
                    sub_8a04ff3c[address(_227)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(_227)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[address(cd[68])].field_0) == 1:
                    s = 0
                    t = sha3(sha3(address(cd[68]), 3))
                    while s < uint255(sub_52cefcd0[address(cd[68])].field_1):
                        mem[s + _213 + 157] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_213 + 72] = uint255(sub_52cefcd0[address(cd[68])].field_1) + 53
                    _403 = sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])
                    require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + 157] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + ceil32(return_data.size) + 157] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _219, mem[_213 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (2 * ceil32(return_data.size)) + 157 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 157
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        mem[0] = address(_403)
                        mem[32] = 1
                        sub_8a04ff3c[address(_403)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_403)].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(_403)].field_512 = ext_call.return_data[0]
                    else:
                        mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 157] = 0
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 189] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                        mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 221] = 0
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        mem[64] = _213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 285
                        require Mask(112, 0, ext_call.return_data[32])
                        mem[_213 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 253] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                        mem[0] = address(_403)
                        mem[32] = 1
                        sub_8a04ff3c[address(_403)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_403)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(_403)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    mem[_213 + 72] = -_213 - 104
                    _235 = sha3(mem[_213 + 104 len -_213 - 104])
                    require ext_code.size(address(sha3(mem[_213 + 104 len -_213 - 104])))
                    staticcall address(sha3(mem[_213 + 104 len -_213 - 104])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    mem[0] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_235))
                    staticcall address(_235).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_235))
                    staticcall address(_235).getReserves() with:
                            gas gas_remaining wei
                    mem[2 * ceil32(return_data.size) len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = 4 * ceil32(return_data.size)
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        mem[0] = address(_235)
                        mem[32] = 1
                        sub_8a04ff3c[address(_235)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_235)].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(_235)].field_512 = ext_call.return_data[0]
                    else:
                        mem[4 * ceil32(return_data.size)] = 0
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 32] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        mem[(4 * ceil32(return_data.size)) + 64] = 0
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        mem[64] = (4 * ceil32(return_data.size)) + 128
                        require Mask(112, 0, ext_call.return_data[32])
                        mem[(4 * ceil32(return_data.size)) + 96] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                        mem[0] = address(_235)
                        mem[32] = 1
                        sub_8a04ff3c[address(_235)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_235)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(_235)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        else:
            if not address(cd[((32 * idx) + cd[36] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            _214 = mem[64]
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 52] = address(cd[((32 * idx) + cd[4] + 36)])
            _221 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _223 = sha3(mem[_221 + 32 len mem[_221]])
            mem[32] = 3
            mem[_214 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_214 + 105] = address(cd[68])
            mem[_214 + 125] = _223
            if not bool(sub_52cefcd0[address(cd[68])].field_0):
                mem[_214 + 157] = Mask(248, 8, sub_52cefcd0[address(cd[68])].field_0)
                mem[_214 + 72] = sub_52cefcd0[address(cd[68])].field_1 % 128 + 53
                _231 = sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])
                require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).price0CumulativeLast() with:
                        gas gas_remaining wei
                mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + 157] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + ceil32(return_data.size) + 157] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])))
                staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len sub_52cefcd0[address(cd[68])].field_1 % 128])).getReserves() with:
                        gas gas_remaining wei
                mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (2 * ceil32(return_data.size)) + 157 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 157
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                    mem[0] = address(_231)
                    mem[32] = 1
                    sub_8a04ff3c[address(_231)].field_0 = block.timestamp
                    sub_8a04ff3c[address(_231)].field_256 = ext_call.return_data[0]
                    sub_8a04ff3c[address(_231)].field_512 = ext_call.return_data[0]
                else:
                    mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 157] = 0
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    require Mask(112, 0, ext_call.return_data[0])
                    mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 189] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                    mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 221] = 0
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                    mem[64] = _214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 285
                    require Mask(112, 0, ext_call.return_data[32])
                    mem[_214 + sub_52cefcd0[address(cd[68])].field_1 % 128 + (4 * ceil32(return_data.size)) + 253] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                    mem[0] = address(_231)
                    mem[32] = 1
                    sub_8a04ff3c[address(_231)].field_0 = block.timestamp
                    sub_8a04ff3c[address(_231)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                    sub_8a04ff3c[address(_231)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[address(cd[68])].field_0) == 1:
                    s = 0
                    t = sha3(sha3(address(cd[68]), 3))
                    while s < uint255(sub_52cefcd0[address(cd[68])].field_1):
                        mem[s + _214 + 157] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_214 + 72] = uint255(sub_52cefcd0[address(cd[68])].field_1) + 53
                    _406 = sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])
                    require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + 157] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + ceil32(return_data.size) + 157] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])))
                    staticcall address(sha3(0, address(cd[68]), _223, mem[_214 + 157 len uint255(sub_52cefcd0[address(cd[68])].field_1)])).getReserves() with:
                            gas gas_remaining wei
                    mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (2 * ceil32(return_data.size)) + 157 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 157
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        mem[0] = address(_406)
                        mem[32] = 1
                        sub_8a04ff3c[address(_406)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_406)].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(_406)].field_512 = ext_call.return_data[0]
                    else:
                        mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 157] = 0
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 189] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                        mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 221] = 0
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        mem[64] = _214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 285
                        require Mask(112, 0, ext_call.return_data[32])
                        mem[_214 + uint255(sub_52cefcd0[address(cd[68])].field_1) + (4 * ceil32(return_data.size)) + 253] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                        mem[0] = address(_406)
                        mem[32] = 1
                        sub_8a04ff3c[address(_406)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_406)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(_406)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    mem[_214 + 72] = -_214 - 104
                    _238 = sha3(mem[_214 + 104 len -_214 - 104])
                    require ext_code.size(address(sha3(mem[_214 + 104 len -_214 - 104])))
                    staticcall address(sha3(mem[_214 + 104 len -_214 - 104])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    mem[0] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_238))
                    staticcall address(_238).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(_238))
                    staticcall address(_238).getReserves() with:
                            gas gas_remaining wei
                    mem[2 * ceil32(return_data.size) len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = 4 * ceil32(return_data.size)
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        mem[0] = address(_238)
                        mem[32] = 1
                        sub_8a04ff3c[address(_238)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_238)].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(_238)].field_512 = ext_call.return_data[0]
                    else:
                        mem[4 * ceil32(return_data.size)] = 0
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 32] = Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
                        mem[64] = (4 * ceil32(return_data.size)) + 96
                        mem[(4 * ceil32(return_data.size)) + 64] = 0
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        mem[64] = (4 * ceil32(return_data.size)) + 128
                        require Mask(112, 0, ext_call.return_data[32])
                        mem[(4 * ceil32(return_data.size)) + 96] = Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32]))
                        mem[0] = address(_238)
                        mem[32] = 1
                        sub_8a04ff3c[address(_238)].field_0 = block.timestamp
                        sub_8a04ff3c[address(_238)].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(_238)].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function update(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if sub_9653020e[address(arg1)][address(arg2)]:
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if not bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0):
                mem[253] = Mask(248, 8, sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0)
                if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 > 24 * 3600:
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).getReserves() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 = ext_call.return_data[0]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[32])
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0) != 1:
                    if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1):
                        mem[idx + 253] = sub_52cefcd0[stor2[address(arg1)][address(arg2)]][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).getReserves() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if not bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0):
                mem[253] = Mask(248, 8, sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0)
                if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 > 24 * 3600:
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])))
                    staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128])).getReserves() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 = ext_call.return_data[0]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[32])
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[stor2[address(arg1)][address(arg2)]].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_0) != 1:
                    if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1):
                        mem[idx + 253] = sub_52cefcd0[stor2[address(arg1)][address(arg2)]][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])))
                        staticcall address(sha3(0, sub_9653020e[address(arg1)][address(arg2)], sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1)])).getReserves() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[stor2[address(arg1)][address(arg2)]].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, stor2[address(arg1)][address(arg2)], ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[stor2[address(arg1)][address(arg2)]].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
    else:
        if arg1 < arg2:
            if not arg1:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if not bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0):
                mem[253] = Mask(248, 8, sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0)
                if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 > 24 * 3600:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).getReserves() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 = ext_call.return_data[0]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[32])
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0) != 1:
                    if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1):
                        mem[idx + 253] = sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg1, arg2), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).getReserves() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg1'), ('param', 'arg2')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
        else:
            if not arg2:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if not bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0):
                mem[253] = Mask(248, 8, sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0)
                if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 > 24 * 3600:
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).price0CumulativeLast() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).price1CumulativeLast() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])))
                    staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128])).getReserves() with:
                            gas gas_remaining wei
                    mem[sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128 + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 = ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 = ext_call.return_data[0]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[0])
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                        require Mask(112, 0, ext_call.return_data[32])
                        if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 < block.timestamp:
                            require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                            Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0)
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_0 = block.timestamp
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                        sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1 % 128]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
            else:
                if bool(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_0) != 1:
                    if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(mem[200 len -200])))
                        staticcall address(sha3(mem[200 len -200])).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0)
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(mem[200 len -200]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1):
                        mem[idx + 253] = sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 > 24 * 3600:
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).price0CumulativeLast() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).price1CumulativeLast() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + ceil32(return_data.size) + 253] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])))
                        staticcall address(sha3(0, 17269419903419772280, sha3(arg2, arg1), mem[253 len uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)])).getReserves() with:
                                gas gas_remaining wei
                        mem[uint255(sub_52cefcd0[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1) + (2 * ceil32(return_data.size)) + 253 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_1024) = Mask(224, 0, ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 = ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 = ext_call.return_data[0]
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[0])
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'FixedPoint: DIV_BY_ZERO_FRACTION'
                            require Mask(112, 0, ext_call.return_data[32])
                            if block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 < block.timestamp:
                                require block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_768) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                                Mask(224, 0, sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_1024) = Mask(224, 0, (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0] - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 / block.timestamp - sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0)
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_0 = block.timestamp
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_256 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
                            sub_8a04ff3c[address(sha3(0, 17269419903419772280, ('map', ('param', 'arg2'), ('param', 'arg1')), mem[253 len uint255(stor3[0xefa94de7a4656d787667c749f7e1223d71e9fd88].field_1)]))].field_512 = (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - ext_call.return_data[64])) + ext_call.return_data[0]
}



}
