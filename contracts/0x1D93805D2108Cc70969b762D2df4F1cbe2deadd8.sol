contract main {




// =====================  Runtime code  =====================


const POOL_REGISTRY = sha3(Mask(104, 152, 'POOL_REGISTRY') >> 152)

const RETURN_INVESTMENT_LPARTNER = sha3(Mask(208, 48, 'RETURN_INVESTMENT_LPARTNER') >> 48)

const ORACLE = sha3(Mask(48, 208, 'ORACLE') >> 208)

const SUPER_ADMIN_ROLE = sha3(Mask(128, 128, 'SUPER_ADMIN_ROLE') >> 128)

const REFERER_ROLE = sha3(Mask(96, 160, 'REFERER_ROLE') >> 160)

const GENERAL_PARTNER_ROLE = sha3(Mask(160, 96, 'GENERAL_PARTNER_ROLE') >> 96)

const STARTUP_TEAM_ROLE = sha3(Mask(136, 120, 'STARTUP_TEAM_ROLE') >> 120)

const LIMITED_PARTNER_ROLE = sha3(Mask(160, 96, 'LIMITED_PARTNER_ROLE') >> 96)


array of struct stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of struct stor3;
array of uint256 stor4;
array of address stor5;

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function getManagerAddresses() payable {
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function renounceManager() payable {
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
                    0x72526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    if stor2[address(msg.sender)]:
        require stor0.length - 1 < stor0.length
        require stor2[address(msg.sender)] - 1 < stor0.length
        stor0[stor2[address(msg.sender)]].field_0 = stor0[stor0.length].field_0
        require stor0.length
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor2[address(msg.sender)] = 0
    stor1[address(msg.sender)] = 0
    emit ManagerRemoved(msg.sender);
}

function addManager(address arg1) payable {
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
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    stor0.length++
    stor0[stor0.length].field_0 = arg1
    stor2[address(arg1)] = stor0.length
    emit ManagerAdded(arg1);
}

function getRequests(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6[address(arg1)].field_256:
        mem[(32 * stor6[address(arg1)].field_256) + 128] = 32
        mem[(32 * stor6[address(arg1)].field_256) + 160] = stor6[address(arg1)].field_256
        mem[(32 * stor6[address(arg1)].field_256) + 192 len floor32(stor6[address(arg1)].field_256)] = mem[128 len floor32(stor6[address(arg1)].field_256)]
        return memory
          from (32 * stor6[address(arg1)].field_256) + 128
           len (96 * stor6[address(arg1)].field_256) + 64
    mem[128] = stor6[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * stor6[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = stor6[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[address(arg1)].field_256) + 192 len floor32(stor6[address(arg1)].field_256)] = mem[128 len floor32(stor6[address(arg1)].field_256)]
    return Array(len=stor6[address(arg1)].field_256, data=mem[128 len floor32(stor6[address(arg1)].field_256)], mem[(32 * stor6[address(arg1)].field_256) + floor32(stor6[address(arg1)].field_256) + 192 len (32 * stor6[address(arg1)].field_256) - floor32(stor6[address(arg1)].field_256)]), 
}

function getRequestsLpartner(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[address(arg1)][address(arg2)].field_0:
        mem[(32 * stor3[address(arg1)][address(arg2)].field_0) + 128] = 32
        mem[(32 * stor3[address(arg1)][address(arg2)].field_0) + 160] = stor3[address(arg1)][address(arg2)].field_0
        mem[(32 * stor3[address(arg1)][address(arg2)].field_0) + 192 len floor32(stor3[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(stor3[address(arg1)][address(arg2)].field_0)]
        return memory
          from (32 * stor3[address(arg1)][address(arg2)].field_0) + 128
           len (96 * stor3[address(arg1)][address(arg2)].field_0) + 64
    mem[128] = stor3[address(arg1)][address(arg2)].field_0
    idx = 128
    s = 0
    while (32 * stor3[address(arg1)][address(arg2)].field_0) + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][address(arg2)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(arg1)][address(arg2)].field_0) + 192 len floor32(stor3[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(stor3[address(arg1)][address(arg2)].field_0)]
    return Array(len=stor3[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(stor3[address(arg1)][address(arg2)].field_0)], mem[(32 * stor3[address(arg1)][address(arg2)].field_0) + floor32(stor3[address(arg1)][address(arg2)].field_0) + 192 len (32 * stor3[address(arg1)][address(arg2)].field_0) - floor32(stor3[address(arg1)][address(arg2)].field_0)]), 
}

function _disapprove(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('GENERAL_PARTNER_ROLE'), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x7452657475726e496e766573746d656e744c706172746e65723a2073656e64657220686173206e6f20726f6c652047656e6572616c20506172746e65,
                    mem[224 len 4]
    if not stor6[address(arg1)][2][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0xfe52657475726e496e766573746d656e744c706172746e65723a207468657265206973206e6f207265717565737420666f722074686973206163636f756e,
                    mem[226 len 2]
    stor3[address(arg1)][address(arg2)].field_0 = 0
    idx = 0
    while stor3[address(arg1)][address(arg2)].field_0 > idx:
        stor3[address(arg1)][address(arg2)][idx].field_0 = 0
        idx = idx + 1
        continue 
    if stor6[address(arg1)][2][address(arg2)].field_0:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        require stor6[address(arg1)][2][address(arg2)].field_0 - 1 < stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)][2][address(arg2)].field_0].field_0 = stor6[address(arg1)][stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = 0
        stor6[address(arg1)].field_0--
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_256
        require stor6[address(arg1)][2][address(arg2)].field_0 - 1 < stor6[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)][2][address(arg2)].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_256
        stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = 0
        stor6[address(arg1)].field_256--
        stor6[address(arg1)][2][stor6[address(arg1)][stor6[address(arg1)].field_0].field_0].field_0 = stor6[address(arg1)][2][address(arg2)].field_0
        stor6[address(arg1)][2][arg2].field_0 = 0
    emit Disapprove(arg2, arg1);
    return 1
}

function _request(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('LIMITED_PARTNER_ROLE'), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x7452657475726e496e766573746d656e744c706172746e65723a2073656e64657220686173206e6f20726f6c65204c696d6974656420506172746e65,
                    mem[224 len 4]
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7352657475726e496e766573746d656e744c706172746e65723a20d181757272656e74206164647265737320686173206e6f74206265656e20696e7665737465
    require ext_code.size(arg1)
    staticcall arg1.getDepositLength(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7352657475726e496e766573746d656e744c706172746e65723a206465706f73697420696e64657820646f6573206e6f742065786973,
                    mem[218 len 10]
    idx = 0
    while idx < stor3[address(arg1)][address(arg2)].field_0:
        mem[32] = sha3(address(arg1), 3)
        require idx < stor3[address(arg1)][address(arg2)].field_0
        mem[0] = sha3(address(arg2), sha3(address(arg1), 3))
        if stor3[address(arg1)][address(arg2)][idx].field_0 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        64,
                        0x7252657475726e496e766573746d656e744c706172746e65723a20612071756572792077697468207468697320696e64657820616c7265616479206578697374
        idx = idx + 1
        continue 
    stor3[address(arg1)][address(arg2)].field_0++
    stor3[address(arg1)][address(arg2)][stor3[address(arg1)][address(arg2)].field_0].field_0 = arg3
    stor4[address(arg1)][address(arg2)]++
    stor4[address(arg1)][address(arg2)][stor4[address(arg1)][address(arg2)]] = arg4
    uint256(stor5[address(arg1)][address(arg2)])++
    address(stor5[address(arg1)][address(arg2)][uint256(stor5[address(arg1)][address(arg2)])]) = arg5
    if not stor6[address(arg1)][2][address(arg2)].field_0:
        stor6[address(arg1)].field_0++
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = arg2
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_160 = 0
        stor6[address(arg1)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = arg2
        stor6[address(arg1)][2][address(arg2)].field_0 = stor6[address(arg1)].field_0
    emit Request(address(arg2), arg3, arg5, arg1);
    return 1
}

function _approve(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not stor6[address(arg1)][2][address(arg2)].field_0:
        emit ApproveError(address(arg2), Array(len=62, data=0xfe52657475726e496e766573746d656e744c706172746e65723a207468657265206973206e6f207265717565737420666f722074686973206163636f756e, mem[254 len 2]), arg1);
        return 0
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('GENERAL_PARTNER_ROLE'), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit ApproveError(address(arg2), Array(len=60, data=0x7452657475726e496e766573746d656e744c706172746e65723a2073656e64657220686173206e6f20726f6c652047656e6572616c20506172746e65, mem[252 len 4]), arg1);
        return 0
    idx = 0
    while idx < stor3[address(arg1)][address(arg2)].field_0:
        require idx < stor3[address(arg1)][address(arg2)].field_0
        require idx < stor4[address(arg1)][address(arg2)]
        mem[32] = sha3(address(arg1), 5)
        require idx < uint256(stor5[address(arg1)][address(arg2)])
        mem[0] = sha3(address(arg2), sha3(address(arg1), 5))
        mem[100] = arg2
        mem[132] = stor3[address(arg1)][address(arg2)][idx].field_0
        mem[164] = stor4[address(arg1)][address(arg2)][idx]
        mem[196] = address(stor5[address(arg1)][address(arg2)][idx])
        require ext_code.size(arg1)
        call arg1._approveWithdrawLpartner(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(arg2), stor3[address(arg1)][address(arg2)][idx].field_0, stor4[address(arg1)][address(arg2)][idx], address(stor5[address(arg1)][address(arg2)][idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    stor3[address(arg1)][address(arg2)].field_0 = 0
    idx = 0
    while stor3[address(arg1)][address(arg2)].field_0 > idx:
        stor3[address(arg1)][address(arg2)][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4[address(arg1)][address(arg2)] = 0
    idx = 0
    while stor4[address(arg1)][address(arg2)] > idx:
        stor4[address(arg1)][address(arg2)][idx] = 0
        idx = idx + 1
        continue 
    uint256(stor5[address(arg1)][address(arg2)]) = 0
    idx = 0
    while uint256(stor5[address(arg1)][address(arg2)]) > idx:
        uint256(stor5[address(arg1)][address(arg2)][idx]) = 0
        idx = idx + 1
        continue 
    if stor6[address(arg1)][2][address(arg2)].field_0:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        require stor6[address(arg1)][2][address(arg2)].field_0 - 1 < stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)][2][address(arg2)].field_0].field_0 = stor6[address(arg1)][stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = 0
        stor6[address(arg1)].field_0--
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_256
        require stor6[address(arg1)][2][address(arg2)].field_0 - 1 < stor6[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)][2][address(arg2)].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_256
        stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = 0
        stor6[address(arg1)].field_256--
        stor6[address(arg1)][2][stor6[address(arg1)][stor6[address(arg1)].field_0].field_0].field_0 = stor6[address(arg1)][2][address(arg2)].field_0
        stor6[address(arg1)][2][arg2].field_0 = 0
    emit Approve(arg2, arg1);
    return 1
}



}
