contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, address arg2, uint256 arg3)
#
const deadline = -1

const amountOutMin = 1

const etherERC20 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address sub_aeb8fbf9Address; offset 8
array of address sub_b1f88427;
address wETHAddress;
address sub_2a47d6b6Address;

function sub_2a47d6b6(?) {
    return sub_2a47d6b6Address
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function sub_aeb8fbf9(?) {
    return sub_aeb8fbf9Address
}

function sub_b1f88427(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1f88427.length
    return sub_b1f88427[arg1]
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function wETH() {
    return wETHAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_94e6fd60(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2a47d6b6Address = arg1
}

function sub_d1594048(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2a47d6b6Address)
    staticcall sub_2a47d6b6Address.0xd1594048 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renounceWhitelisted() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor2[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor2[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function sub_1eac74b3(?) {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe4b616c6d523a2044657374696e6174696f6e20746f6b656e2063616e206e6f7420626520736f7572636520746f6b65,
                    mem[212 len 16]
    if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        idx = 0
        while idx < sub_b1f88427.length:
            mem[0] = 4
            if sub_b1f88427[idx] != arg1:
                idx = idx + 1
                continue 
            else:
                return 0
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            idx = 0
            while idx < sub_b1f88427.length:
                mem[0] = 4
                if sub_b1f88427[idx] != arg2:
                    idx = idx + 1
                    continue 
                else:
                    return 0
            if sub_b1f88427.length + 2 < sub_b1f88427.length:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = sub_b1f88427.length + 2
            if not sub_b1f88427.length + 2:
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var47003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var47001]
                            _4265 = mem[var47001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var47001])] = mem[var47001 + 32 len ceil32(mem[var47001])]
                            if not _4265 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4265 + 32]
                            mem[floor32(_4265) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4265) + (32 * sub_b1f88427.length + 2) + -(_4265 % 32) + 356 len _4265 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4265) + 64]
                        if var53002 >= var53001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var49001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7647 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7815 = mem[(32 * sub_b1f88427.length + 2) + _7647 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7647 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7647 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7647 + 256])]
                            var58001 = floor32(_7815)
                            mem[64] = (32 * _7815) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7815) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7815) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var55001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var57003 < sub_b1f88427.length + 2
                        mem[(32 * var59001) + 128] = address(var59003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var65003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var65001]
                            _11297 = mem[var65001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var65001])] = mem[var65001 + 32 len ceil32(mem[var65001])]
                            var61001 = ceil32(_11297)
                            if not _11297 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11297 + 32]
                            mem[floor32(_11297) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11297) + (32 * sub_b1f88427.length + 2) + -(_11297 % 32) + 420 len _11297 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11297) + 64]
                        if var71002 < var71001:
                            require var73001 - 1 < sub_b1f88427.length
                            require var75003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var67001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14679 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14847 = mem[(32 * sub_b1f88427.length + 2) + _14679 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14679 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14679 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14679 + 320])]
                            mem[64] = (32 * _14847) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14847) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14847) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var47003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var47001]
                            _4268 = mem[var47001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var47001])] = mem[var47001 + 32 len ceil32(mem[var47001])]
                            if not _4268 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4268 + 32]
                            mem[floor32(_4268) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4268) + (32 * sub_b1f88427.length + 2) + -(_4268 % 32) + 356 len _4268 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4268) + 64]
                        if var53002 >= var53001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var49001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7650 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7816 = mem[(32 * sub_b1f88427.length + 2) + _7650 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7650 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7650 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7650 + 256])]
                            var58001 = floor32(_7816)
                            mem[64] = (32 * _7816) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7816) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7816) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var55001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var57003 < sub_b1f88427.length + 2
                        mem[(32 * var59001) + 128] = address(var59003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var65003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var65001]
                            _11300 = mem[var65001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var65001])] = mem[var65001 + 32 len ceil32(mem[var65001])]
                            var61001 = ceil32(_11300)
                            if not _11300 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11300 + 32]
                            mem[floor32(_11300) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11300) + (32 * sub_b1f88427.length + 2) + -(_11300 % 32) + 420 len _11300 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11300) + 64]
                        if var71002 < var71001:
                            require var73001 - 1 < sub_b1f88427.length
                            require var75003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var67001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14682 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14848 = mem[(32 * sub_b1f88427.length + 2) + _14682 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14682 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14682 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14682 + 320])]
                            mem[64] = (32 * _14848) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14848) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14848) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var46003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var46001]
                        _4271 = mem[var46001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var46001])] = mem[var46001 + 32 len ceil32(mem[var46001])]
                        if not _4271 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4271 + 32]
                        mem[floor32(_4271) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4271) + (32 * sub_b1f88427.length + 2) + -(_4271 % 32) + 356 len _4271 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4271) + 64]
                    if var52002 >= var52001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var48001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7653 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7817 = mem[(32 * sub_b1f88427.length + 2) + _7653 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7653 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7653 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7653 + 256])]
                        var57001 = floor32(_7817)
                        mem[64] = (32 * _7817) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7817) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7817) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var54001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var56003 < sub_b1f88427.length + 2
                    mem[(32 * var58001) + 128] = address(var58003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var64003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var64001]
                        _11303 = mem[var64001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var64001])] = mem[var64001 + 32 len ceil32(mem[var64001])]
                        var60001 = ceil32(_11303)
                        if not _11303 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11303 + 32]
                        mem[floor32(_11303) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11303) + (32 * sub_b1f88427.length + 2) + -(_11303 % 32) + 420 len _11303 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11303) + 64]
                    if var70002 < var70001:
                        require var72001 - 1 < sub_b1f88427.length
                        require var74003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var66001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14685 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14849 = mem[(32 * sub_b1f88427.length + 2) + _14685 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14685 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14685 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14685 + 320])]
                        var75001 = floor32(_14849)
                        mem[64] = (32 * _14849) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14849) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14849) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
            else:
                mem[128 len 32 * sub_b1f88427.length + 2] = code.data[8641 len 32 * sub_b1f88427.length + 2]
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4274 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4274 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4274 + 32]
                            mem[floor32(_4274) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4274) + (32 * sub_b1f88427.length + 2) + -(_4274 % 32) + 356 len _4274 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4274) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7656 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7818 = mem[(32 * sub_b1f88427.length + 2) + _7656 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7656 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7656 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7656 + 256])]
                            var59001 = floor32(_7818)
                            mem[64] = (32 * _7818) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7818) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7818) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11306 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            if not _11306 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11306 + 32]
                            mem[floor32(_11306) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11306) + (32 * sub_b1f88427.length + 2) + -(_11306 % 32) + 420 len _11306 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11306) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14688 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14850 = mem[(32 * sub_b1f88427.length + 2) + _14688 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14688 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14688 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14688 + 320])]
                            mem[64] = (32 * _14850) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14850) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14850) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4277 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4277 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4277 + 32]
                            mem[floor32(_4277) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4277) + (32 * sub_b1f88427.length + 2) + -(_4277 % 32) + 356 len _4277 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4277) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7659 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7819 = mem[(32 * sub_b1f88427.length + 2) + _7659 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7659 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7659 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7659 + 256])]
                            var59001 = floor32(_7819)
                            mem[64] = (32 * _7819) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7819) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7819) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11309 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            if not _11309 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11309 + 32]
                            mem[floor32(_11309) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11309) + (32 * sub_b1f88427.length + 2) + -(_11309 % 32) + 420 len _11309 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11309) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14691 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14851 = mem[(32 * sub_b1f88427.length + 2) + _14691 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14691 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14691 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14691 + 320])]
                            mem[64] = (32 * _14851) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14851) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14851) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var47003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var47001]
                        _4280 = mem[var47001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var47001])] = mem[var47001 + 32 len ceil32(mem[var47001])]
                        if not _4280 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4280 + 32]
                        mem[floor32(_4280) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4280) + (32 * sub_b1f88427.length + 2) + -(_4280 % 32) + 356 len _4280 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4280) + 64]
                    if var53002 >= var53001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var49001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7662 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7820 = mem[(32 * sub_b1f88427.length + 2) + _7662 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7662 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7662 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7662 + 256])]
                        var58001 = floor32(_7820)
                        mem[64] = (32 * _7820) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7820) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7820) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var55001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var57003 < sub_b1f88427.length + 2
                    mem[(32 * var59001) + 128] = address(var59003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var65003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var65001]
                        _11312 = mem[var65001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var65001])] = mem[var65001 + 32 len ceil32(mem[var65001])]
                        var61001 = ceil32(_11312)
                        if not _11312 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11312 + 32]
                        mem[floor32(_11312) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11312) + (32 * sub_b1f88427.length + 2) + -(_11312 % 32) + 420 len _11312 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11312) + 64]
                    if var71002 < var71001:
                        require var73001 - 1 < sub_b1f88427.length
                        require var75003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var67001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14694 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14852 = mem[(32 * sub_b1f88427.length + 2) + _14694 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14694 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14694 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14694 + 320])]
                        mem[64] = (32 * _14852) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14852) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14852) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
        else:
            idx = 0
            while idx < sub_b1f88427.length:
                mem[0] = 4
                if sub_b1f88427[idx] != wETHAddress:
                    idx = idx + 1
                    continue 
                else:
                    return 0
            if sub_b1f88427.length + 2 < sub_b1f88427.length:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = sub_b1f88427.length + 2
            if not sub_b1f88427.length + 2:
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4283 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4283 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4283 + 32]
                            mem[floor32(_4283) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4283) + (32 * sub_b1f88427.length + 2) + -(_4283 % 32) + 356 len _4283 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4283) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7665 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7821 = mem[(32 * sub_b1f88427.length + 2) + _7665 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7665 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7665 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7665 + 256])]
                            var59001 = floor32(_7821)
                            mem[64] = (32 * _7821) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7821) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7821) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11315 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            if not _11315 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11315 + 32]
                            mem[floor32(_11315) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11315) + (32 * sub_b1f88427.length + 2) + -(_11315 % 32) + 420 len _11315 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11315) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14697 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14853 = mem[(32 * sub_b1f88427.length + 2) + _14697 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14697 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14697 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14697 + 320])]
                            mem[64] = (32 * _14853) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14853) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14853) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4286 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4286 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4286 + 32]
                            mem[floor32(_4286) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4286) + (32 * sub_b1f88427.length + 2) + -(_4286 % 32) + 356 len _4286 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4286) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7668 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7822 = mem[(32 * sub_b1f88427.length + 2) + _7668 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7668 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7668 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7668 + 256])]
                            var59001 = floor32(_7822)
                            mem[64] = (32 * _7822) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7822) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7822) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11318 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            if not _11318 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11318 + 32]
                            mem[floor32(_11318) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11318) + (32 * sub_b1f88427.length + 2) + -(_11318 % 32) + 420 len _11318 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11318) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14700 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14854 = mem[(32 * sub_b1f88427.length + 2) + _14700 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14700 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14700 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14700 + 320])]
                            mem[64] = (32 * _14854) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14854) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14854) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var47003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var47001]
                        _4289 = mem[var47001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var47001])] = mem[var47001 + 32 len ceil32(mem[var47001])]
                        if not _4289 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4289 + 32]
                        mem[floor32(_4289) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4289) + (32 * sub_b1f88427.length + 2) + -(_4289 % 32) + 356 len _4289 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4289) + 64]
                    if var53002 >= var53001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var49001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7671 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7823 = mem[(32 * sub_b1f88427.length + 2) + _7671 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7671 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7671 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7671 + 256])]
                        var58001 = floor32(_7823)
                        mem[64] = (32 * _7823) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7823) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7823) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var55001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var57003 < sub_b1f88427.length + 2
                    mem[(32 * var59001) + 128] = address(var59003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var65003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var65001]
                        _11321 = mem[var65001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var65001])] = mem[var65001 + 32 len ceil32(mem[var65001])]
                        var61001 = ceil32(_11321)
                        if not _11321 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11321 + 32]
                        mem[floor32(_11321) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11321) + (32 * sub_b1f88427.length + 2) + -(_11321 % 32) + 420 len _11321 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11321) + 64]
                    if var71002 < var71001:
                        require var73001 - 1 < sub_b1f88427.length
                        require var75003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var67001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14703 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14855 = mem[(32 * sub_b1f88427.length + 2) + _14703 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14703 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14703 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14703 + 320])]
                        mem[64] = (32 * _14855) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14855) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14855) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
            else:
                mem[128 len 32 * sub_b1f88427.length + 2] = code.data[8641 len 32 * sub_b1f88427.length + 2]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var48003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                        _4298 = mem[var48001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                        if not _4298 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4298 + 32]
                        mem[floor32(_4298) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4298) + (32 * sub_b1f88427.length + 2) + -(_4298 % 32) + 356 len _4298 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4298) + 64]
                    if var54002 >= var54001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7680 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7826 = mem[(32 * sub_b1f88427.length + 2) + _7680 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7680 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7680 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7680 + 256])]
                        var59001 = floor32(_7826)
                        mem[64] = (32 * _7826) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7826) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7826) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var56001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var58003 < sub_b1f88427.length + 2
                    mem[(32 * var60001) + 128] = address(var60003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var66003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                        _11330 = mem[var66001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                        if not _11330 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11330 + 32]
                        mem[floor32(_11330) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11330) + (32 * sub_b1f88427.length + 2) + -(_11330 % 32) + 420 len _11330 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11330) + 64]
                    if var72002 < var72001:
                        require var74001 - 1 < sub_b1f88427.length
                        require var76003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14712 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14858 = mem[(32 * sub_b1f88427.length + 2) + _14712 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14712 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14712 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14712 + 320])]
                        mem[64] = (32 * _14858) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14858) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14858) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
                else:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4292 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4292 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4292 + 32]
                            mem[floor32(_4292) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4292) + (32 * sub_b1f88427.length + 2) + -(_4292 % 32) + 356 len _4292 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4292) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7674 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7824 = mem[(32 * sub_b1f88427.length + 2) + _7674 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7674 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7674 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7674 + 256])]
                            var60001 = floor32(_7824)
                            mem[64] = (32 * _7824) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7824) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7824) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11324 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11324 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11324 + 32]
                            mem[floor32(_11324) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11324) + (32 * sub_b1f88427.length + 2) + -(_11324 % 32) + 420 len _11324 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11324) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14706 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14856 = mem[(32 * sub_b1f88427.length + 2) + _14706 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14706 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14706 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14706 + 320])]
                            mem[64] = (32 * _14856) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14856) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14856) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4295 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4295 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4295 + 32]
                            mem[floor32(_4295) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4295) + (32 * sub_b1f88427.length + 2) + -(_4295 % 32) + 356 len _4295 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4295) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7677 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7825 = mem[(32 * sub_b1f88427.length + 2) + _7677 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7677 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7677 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7677 + 256])]
                            var60001 = floor32(_7825)
                            mem[64] = (32 * _7825) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7825) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7825) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11327 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11327 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11327 + 32]
                            mem[floor32(_11327) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11327) + (32 * sub_b1f88427.length + 2) + -(_11327 % 32) + 420 len _11327 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11327) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14709 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14857 = mem[(32 * sub_b1f88427.length + 2) + _14709 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14709 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14709 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14709 + 320])]
                            mem[64] = (32 * _14857) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14857) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14857) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
    else:
        idx = 0
        while idx < sub_b1f88427.length:
            mem[0] = 4
            if sub_b1f88427[idx] != wETHAddress:
                idx = idx + 1
                continue 
            else:
                return 0
        if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            idx = 0
            while idx < sub_b1f88427.length:
                mem[0] = 4
                if sub_b1f88427[idx] != arg2:
                    idx = idx + 1
                    continue 
                else:
                    return 0
            if sub_b1f88427.length + 2 < sub_b1f88427.length:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = sub_b1f88427.length + 2
            if not sub_b1f88427.length + 2:
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4301 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4301 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4301 + 32]
                            mem[floor32(_4301) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4301) + (32 * sub_b1f88427.length + 2) + -(_4301 % 32) + 356 len _4301 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4301) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var50001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7683 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7827 = mem[(32 * sub_b1f88427.length + 2) + _7683 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7683 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7683 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7683 + 256])]
                            var59001 = floor32(_7827)
                            mem[64] = (32 * _7827) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7827) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7827) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11333 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            var62001 = ceil32(_11333)
                            if not _11333 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11333 + 32]
                            mem[floor32(_11333) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11333) + (32 * sub_b1f88427.length + 2) + -(_11333 % 32) + 420 len _11333 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11333) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var68001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14715 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14859 = mem[(32 * sub_b1f88427.length + 2) + _14715 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14715 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14715 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14715 + 320])]
                            mem[64] = (32 * _14859) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14859) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14859) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var48003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                            _4304 = mem[var48001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                            if not _4304 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4304 + 32]
                            mem[floor32(_4304) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4304) + (32 * sub_b1f88427.length + 2) + -(_4304 % 32) + 356 len _4304 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4304) + 64]
                        if var54002 >= var54001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var50001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7686 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7828 = mem[(32 * sub_b1f88427.length + 2) + _7686 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7686 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7686 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7686 + 256])]
                            var59001 = floor32(_7828)
                            mem[64] = (32 * _7828) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7828) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7828) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var56001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var58003 < sub_b1f88427.length + 2
                        mem[(32 * var60001) + 128] = address(var60003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var66003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                            _11336 = mem[var66001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                            var62001 = ceil32(_11336)
                            if not _11336 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11336 + 32]
                            mem[floor32(_11336) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11336) + (32 * sub_b1f88427.length + 2) + -(_11336 % 32) + 420 len _11336 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11336) + 64]
                        if var72002 < var72001:
                            require var74001 - 1 < sub_b1f88427.length
                            require var76003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            var68001 = floor32(sub_b1f88427.length + 2)
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14718 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14860 = mem[(32 * sub_b1f88427.length + 2) + _14718 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14718 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14718 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14718 + 320])]
                            mem[64] = (32 * _14860) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14860) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14860) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var47003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var47001]
                        _4307 = mem[var47001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var47001])] = mem[var47001 + 32 len ceil32(mem[var47001])]
                        if not _4307 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4307 + 32]
                        mem[floor32(_4307) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4307) + (32 * sub_b1f88427.length + 2) + -(_4307 % 32) + 356 len _4307 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4307) + 64]
                    if var53002 >= var53001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var49001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7689 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7829 = mem[(32 * sub_b1f88427.length + 2) + _7689 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7689 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7689 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7689 + 256])]
                        var58001 = floor32(_7829)
                        mem[64] = (32 * _7829) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7829) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7829) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var55001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var57003 < sub_b1f88427.length + 2
                    mem[(32 * var59001) + 128] = address(var59003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var65003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var65001]
                        _11339 = mem[var65001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var65001])] = mem[var65001 + 32 len ceil32(mem[var65001])]
                        var61001 = ceil32(_11339)
                        if not _11339 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11339 + 32]
                        mem[floor32(_11339) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11339) + (32 * sub_b1f88427.length + 2) + -(_11339 % 32) + 420 len _11339 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11339) + 64]
                    if var71002 < var71001:
                        require var73001 - 1 < sub_b1f88427.length
                        require var75003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var67001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14721 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14861 = mem[(32 * sub_b1f88427.length + 2) + _14721 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14721 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14721 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14721 + 320])]
                        var76001 = floor32(_14861)
                        mem[64] = (32 * _14861) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14861) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14861) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
            else:
                mem[128 len 32 * sub_b1f88427.length + 2] = code.data[8641 len 32 * sub_b1f88427.length + 2]
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4310 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4310 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4310 + 32]
                            mem[floor32(_4310) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4310) + (32 * sub_b1f88427.length + 2) + -(_4310 % 32) + 356 len _4310 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4310) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7692 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7830 = mem[(32 * sub_b1f88427.length + 2) + _7692 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7692 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7692 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7692 + 256])]
                            var60001 = floor32(_7830)
                            mem[64] = (32 * _7830) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7830) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7830) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11342 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11342 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11342 + 32]
                            mem[floor32(_11342) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11342) + (32 * sub_b1f88427.length + 2) + -(_11342 % 32) + 420 len _11342 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11342) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14724 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14862 = mem[(32 * sub_b1f88427.length + 2) + _14724 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14724 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14724 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14724 + 320])]
                            mem[64] = (32 * _14862) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14862) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14862) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4313 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4313 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4313 + 32]
                            mem[floor32(_4313) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4313) + (32 * sub_b1f88427.length + 2) + -(_4313 % 32) + 356 len _4313 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4313) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7695 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7831 = mem[(32 * sub_b1f88427.length + 2) + _7695 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7695 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7695 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7695 + 256])]
                            var60001 = floor32(_7831)
                            mem[64] = (32 * _7831) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7831) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7831) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11345 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11345 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11345 + 32]
                            mem[floor32(_11345) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11345) + (32 * sub_b1f88427.length + 2) + -(_11345 % 32) + 420 len _11345 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11345) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14727 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14863 = mem[(32 * sub_b1f88427.length + 2) + _14727 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14727 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14727 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14727 + 320])]
                            mem[64] = (32 * _14863) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14863) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14863) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var48003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                        _4316 = mem[var48001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                        if not _4316 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4316 + 32]
                        mem[floor32(_4316) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4316) + (32 * sub_b1f88427.length + 2) + -(_4316 % 32) + 356 len _4316 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4316) + 64]
                    if var54002 >= var54001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var50001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7698 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7832 = mem[(32 * sub_b1f88427.length + 2) + _7698 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7698 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7698 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7698 + 256])]
                        var59001 = floor32(_7832)
                        mem[64] = (32 * _7832) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7832) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7832) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var56001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var58003 < sub_b1f88427.length + 2
                    mem[(32 * var60001) + 128] = address(var60003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var66003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                        _11348 = mem[var66001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                        var62001 = ceil32(_11348)
                        if not _11348 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11348 + 32]
                        mem[floor32(_11348) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11348) + (32 * sub_b1f88427.length + 2) + -(_11348 % 32) + 420 len _11348 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11348) + 64]
                    if var72002 < var72001:
                        require var74001 - 1 < sub_b1f88427.length
                        require var76003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var68001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14730 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14864 = mem[(32 * sub_b1f88427.length + 2) + _14730 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14730 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14730 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14730 + 320])]
                        mem[64] = (32 * _14864) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14864) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14864) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
        else:
            idx = 0
            while idx < sub_b1f88427.length:
                mem[0] = 4
                if sub_b1f88427[idx] != wETHAddress:
                    idx = idx + 1
                    continue 
                else:
                    return 0
            if sub_b1f88427.length + 2 < sub_b1f88427.length:
                revert with 0, 'SafeMath: addition overflow'
            mem[96] = sub_b1f88427.length + 2
            if not sub_b1f88427.length + 2:
                if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4319 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4319 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4319 + 32]
                            mem[floor32(_4319) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4319) + (32 * sub_b1f88427.length + 2) + -(_4319 % 32) + 356 len _4319 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4319) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7701 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7833 = mem[(32 * sub_b1f88427.length + 2) + _7701 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7701 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7701 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7701 + 256])]
                            var60001 = floor32(_7833)
                            mem[64] = (32 * _7833) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7833) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7833) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11351 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11351 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11351 + 32]
                            mem[floor32(_11351) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11351) + (32 * sub_b1f88427.length + 2) + -(_11351 % 32) + 420 len _11351 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11351) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14733 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14865 = mem[(32 * sub_b1f88427.length + 2) + _14733 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14733 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14733 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14733 + 320])]
                            mem[64] = (32 * _14865) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14865) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14865) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var49003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                            _4322 = mem[var49001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                            if not _4322 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4322 + 32]
                            mem[floor32(_4322) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4322) + (32 * sub_b1f88427.length + 2) + -(_4322 % 32) + 356 len _4322 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4322) + 64]
                        if var55002 >= var55001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7704 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7834 = mem[(32 * sub_b1f88427.length + 2) + _7704 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7704 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7704 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7704 + 256])]
                            var60001 = floor32(_7834)
                            mem[64] = (32 * _7834) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7834) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7834) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var57001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var59003 < sub_b1f88427.length + 2
                        mem[(32 * var61001) + 128] = address(var61003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var67003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                            _11354 = mem[var67001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                            if not _11354 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11354 + 32]
                            mem[floor32(_11354) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11354) + (32 * sub_b1f88427.length + 2) + -(_11354 % 32) + 420 len _11354 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11354) + 64]
                        if var73002 < var73001:
                            require var75001 - 1 < sub_b1f88427.length
                            require var77003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14736 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14866 = mem[(32 * sub_b1f88427.length + 2) + _14736 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14736 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14736 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14736 + 320])]
                            mem[64] = (32 * _14866) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14866) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14866) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                else:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var48003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var48001]
                        _4325 = mem[var48001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var48001])] = mem[var48001 + 32 len ceil32(mem[var48001])]
                        if not _4325 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4325 + 32]
                        mem[floor32(_4325) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4325) + (32 * sub_b1f88427.length + 2) + -(_4325 % 32) + 356 len _4325 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4325) + 64]
                    if var54002 >= var54001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var50001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7707 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7835 = mem[(32 * sub_b1f88427.length + 2) + _7707 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7707 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7707 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7707 + 256])]
                        var59001 = floor32(_7835)
                        mem[64] = (32 * _7835) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7835) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7835) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var56001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var58003 < sub_b1f88427.length + 2
                    mem[(32 * var60001) + 128] = address(var60003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var66003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var66001]
                        _11357 = mem[var66001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var66001])] = mem[var66001 + 32 len ceil32(mem[var66001])]
                        var62001 = ceil32(_11357)
                        if not _11357 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11357 + 32]
                        mem[floor32(_11357) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11357) + (32 * sub_b1f88427.length + 2) + -(_11357 % 32) + 420 len _11357 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11357) + 64]
                    if var72002 < var72001:
                        require var74001 - 1 < sub_b1f88427.length
                        require var76003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        var68001 = floor32(sub_b1f88427.length + 2)
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14739 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14867 = mem[(32 * sub_b1f88427.length + 2) + _14739 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14739 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14739 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14739 + 320])]
                        mem[64] = (32 * _14867) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14867) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14867) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
            else:
                mem[128 len 32 * sub_b1f88427.length + 2] = code.data[8641 len 32 * sub_b1f88427.length + 2]
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                    require sub_b1f88427.length + 2
                    mem[128] = wETHAddress
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                    mem[64] = (32 * sub_b1f88427.length + 2) + 256
                    mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                    if 1 > var49003:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var49001]
                        _4334 = mem[var49001]
                        mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var49001])] = mem[var49001 + 32 len ceil32(mem[var49001])]
                        if not _4334 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4334 + 32]
                        mem[floor32(_4334) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4334) + (32 * sub_b1f88427.length + 2) + -(_4334 % 32) + 356 len _4334 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4334) + 64]
                    if var55002 >= var55001:
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                        require return_data.size >= 32
                        _7716 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                        _7838 = mem[(32 * sub_b1f88427.length + 2) + _7716 + 256]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7716 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7716 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7716 + 256])]
                        var60001 = floor32(_7838)
                        mem[64] = (32 * _7838) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                        mem[(32 * _7838) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                        return memory
                          from (32 * _7838) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                           len 32
                    require var57001 - 1 < sub_b1f88427.length
                    mem[0] = 4
                    require var59003 < sub_b1f88427.length + 2
                    mem[(32 * var61001) + 128] = address(var61003)
                    mem[64] = (32 * sub_b1f88427.length + 2) + 320
                    mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                    if 1 > var67003:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                        mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var67001]
                        _11366 = mem[var67001]
                        mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var67001])] = mem[var67001 + 32 len ceil32(mem[var67001])]
                        if not _11366 % 32:
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11366 + 32]
                        mem[floor32(_11366) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11366) + (32 * sub_b1f88427.length + 2) + -(_11366 % 32) + 420 len _11366 % 32]
                        revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11366) + 64]
                    if var73002 < var73001:
                        require var75001 - 1 < sub_b1f88427.length
                        require var77003 < sub_b1f88427.length + 2
                        # nil
                    else:
                        mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                        mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                        mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                        mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                        require ext_code.size(sub_aeb8fbf9Address)
                        staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                        require return_data.size >= 32
                        _14748 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                        _14870 = mem[(32 * sub_b1f88427.length + 2) + _14748 + 320]
                        mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14748 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14748 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14748 + 320])]
                        mem[64] = (32 * _14870) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                        require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                        mem[(32 * _14870) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                        return memory
                          from (32 * _14870) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                           len 32
                else:
                    require 0 < sub_b1f88427.length + 2
                    mem[128] = arg1
                    mem[(32 * sub_b1f88427.length + 2) + 128] = 30
                    mem[(32 * sub_b1f88427.length + 2) + 160] = 'SafeMath: subtraction overflow'
                    if 1 > sub_b1f88427.length + 2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = arg2
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var50003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var50001]
                            _4328 = mem[var50001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var50001])] = mem[var50001 + 32 len ceil32(mem[var50001])]
                            if not _4328 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4328 + 32]
                            mem[floor32(_4328) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4328) + (32 * sub_b1f88427.length + 2) + -(_4328 % 32) + 356 len _4328 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4328) + 64]
                        if var56002 >= var56001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7710 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7836 = mem[(32 * sub_b1f88427.length + 2) + _7710 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7710 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7710 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7710 + 256])]
                            var61001 = floor32(_7836)
                            mem[64] = (32 * _7836) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7836) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7836) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var58001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var60003 < sub_b1f88427.length + 2
                        mem[(32 * var62001) + 128] = address(var62003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var68003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var68001]
                            _11360 = mem[var68001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var68001])] = mem[var68001 + 32 len ceil32(mem[var68001])]
                            if not _11360 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11360 + 32]
                            mem[floor32(_11360) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11360) + (32 * sub_b1f88427.length + 2) + -(_11360 % 32) + 420 len _11360 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11360) + 64]
                        if var74002 < var74001:
                            require var76001 - 1 < sub_b1f88427.length
                            require var78003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14742 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14868 = mem[(32 * sub_b1f88427.length + 2) + _14742 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14742 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14742 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14742 + 320])]
                            mem[64] = (32 * _14868) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14868) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14868) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
                    else:
                        mem[(32 * sub_b1f88427.length + 1) + 128] = wETHAddress
                        mem[64] = (32 * sub_b1f88427.length + 2) + 256
                        mem[(32 * sub_b1f88427.length + 2) + 192] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 224] = 'SafeMath: subtraction overflow'
                        if 1 > var50003:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 292] = mem[var50001]
                            _4331 = mem[var50001]
                            mem[(32 * sub_b1f88427.length + 2) + 324 len ceil32(mem[var50001])] = mem[var50001 + 32 len ceil32(mem[var50001])]
                            if not _4331 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len _4331 + 32]
                            mem[floor32(_4331) + (32 * sub_b1f88427.length + 2) + 324] = mem[floor32(_4331) + (32 * sub_b1f88427.length + 2) + -(_4331 % 32) + 356 len _4331 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 292 len floor32(_4331) + 64]
                        if var56002 >= var56001:
                            mem[(32 * sub_b1f88427.length + 2) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 260] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 292] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 324] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 356 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256
                            require return_data.size >= 32
                            _7713 = mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
                            _7837 = mem[(32 * sub_b1f88427.length + 2) + _7713 + 256]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7713 + 256])] = mem[(32 * sub_b1f88427.length + 2) + _7713 + 288 len floor32(mem[(32 * sub_b1f88427.length + 2) + _7713 + 256])]
                            var61001 = floor32(_7837)
                            mem[64] = (32 * _7837) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256]
                            mem[(32 * _7837) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 256] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288]
                            return memory
                              from (32 * _7837) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 288
                               len 32
                        require var58001 - 1 < sub_b1f88427.length
                        mem[0] = 4
                        require var60003 < sub_b1f88427.length + 2
                        mem[(32 * var62001) + 128] = address(var62003)
                        mem[64] = (32 * sub_b1f88427.length + 2) + 320
                        mem[(32 * sub_b1f88427.length + 2) + 256] = 30
                        mem[(32 * sub_b1f88427.length + 2) + 288] = 'SafeMath: subtraction overflow'
                        if 1 > var68003:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = 32
                            mem[(32 * sub_b1f88427.length + 2) + 356] = mem[var68001]
                            _11363 = mem[var68001]
                            mem[(32 * sub_b1f88427.length + 2) + 388 len ceil32(mem[var68001])] = mem[var68001 + 32 len ceil32(mem[var68001])]
                            if not _11363 % 32:
                                revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len _11363 + 32]
                            mem[floor32(_11363) + (32 * sub_b1f88427.length + 2) + 388] = mem[floor32(_11363) + (32 * sub_b1f88427.length + 2) + -(_11363 % 32) + 420 len _11363 % 32]
                            revert with 0, 32, mem[(32 * sub_b1f88427.length + 2) + 356 len floor32(_11363) + 64]
                        if var74002 < var74001:
                            require var76001 - 1 < sub_b1f88427.length
                            require var78003 < sub_b1f88427.length + 2
                            # nil
                        else:
                            mem[(32 * sub_b1f88427.length + 2) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_b1f88427.length + 2) + 324] = arg3
                            mem[(32 * sub_b1f88427.length + 2) + 356] = 64
                            mem[(32 * sub_b1f88427.length + 2) + 388] = sub_b1f88427.length + 2
                            mem[(32 * sub_b1f88427.length + 2) + 420 len floor32(sub_b1f88427.length + 2)] = mem[128 len floor32(sub_b1f88427.length + 2)]
                            require ext_code.size(sub_aeb8fbf9Address)
                            staticcall sub_aeb8fbf9Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=sub_b1f88427.length + 2, data=mem[128 len floor32(sub_b1f88427.length + 2)], mem[(32 * sub_b1f88427.length + 2) + floor32(sub_b1f88427.length + 2) + 420 len (32 * sub_b1f88427.length + 2) - floor32(sub_b1f88427.length + 2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * sub_b1f88427.length + 2) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320
                            require return_data.size >= 32
                            _14745 = mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                            require mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                            require mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] = mem[(32 * sub_b1f88427.length + 2) + mem[(32 * sub_b1f88427.length + 2) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                            _14869 = mem[(32 * sub_b1f88427.length + 2) + _14745 + 320]
                            mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14745 + 320])] = mem[(32 * sub_b1f88427.length + 2) + _14745 + 352 len floor32(mem[(32 * sub_b1f88427.length + 2) + _14745 + 320])]
                            mem[64] = (32 * _14869) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                            require mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1 < mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320]
                            mem[(32 * _14869) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352] = mem[(32 * mem[(32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 320] - 1) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352]
                            return memory
                              from (32 * _14869) + (32 * sub_b1f88427.length + 2) + ceil32(return_data.size) + 352
                               len 32
}



}
