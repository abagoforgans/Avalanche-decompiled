contract main {




// =====================  Runtime code  =====================


const POOL_REGISTRY = sha3(Mask(104, 152, 'POOL_REGISTRY') >> 152)

const RETURN_INVESTMENT_LPARTNER = sha3(Mask(208, 48, 'RETURN_INVESTMENT_LPARTNER') >> 48)

const ORACLE = sha3(Mask(48, 208, 'ORACLE') >> 208)

const SUPER_ADMIN_ROLE = sha3(Mask(128, 128, 'SUPER_ADMIN_ROLE') >> 128)

const REFERER_ROLE = sha3(Mask(96, 160, 'REFERER_ROLE') >> 160)

const GENERAL_PARTNER_ROLE = sha3(0x6447454e4552414c5f504152544e45525f524f4c)

const STARTUP_TEAM_ROLE = sha3(Mask(136, 120, 'STARTUP_TEAM_ROLE') >> 120)

const LIMITED_PARTNER_ROLE = sha3(Mask(160, 96, 'LIMITED_PARTNER_ROLE') >> 96)


array of struct stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of struct performedOperations;
mapping of struct requestTeam;
mapping of struct approveTeam;

function getRequestTeamAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(requestTeam[address(arg1)][address(arg2)].field_0), 
           requestTeam[address(arg1)][address(arg2)].field_256,
           requestTeam[address(arg1)][address(arg2)].field_512,
           requestTeam[address(arg1)][address(arg2)].field_768,
           requestTeam[address(arg1)][address(arg2)].field_1024
}

function getApproveTeamAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(approveTeam[address(arg1)][address(arg2)].field_0), 
           approveTeam[address(arg1)][address(arg2)].field_256,
           approveTeam[address(arg1)][address(arg2)].field_512,
           approveTeam[address(arg1)][address(arg2)].field_768,
           approveTeam[address(arg1)][address(arg2)].field_1024
}

function getPerformedOperations(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < performedOperations[address(arg1)][address(arg2)].field_0
    require arg3 < performedOperations[address(arg1)][address(arg2)].field_0
    require arg3 < performedOperations[address(arg1)][address(arg2)].field_0
    require arg3 < performedOperations[address(arg1)][address(arg2)].field_0
    return performedOperations[address(arg1)][address(arg2)][arg3].field_0, 
           performedOperations[address(arg1)][address(arg2)][arg3].field_256,
           performedOperations[address(arg1)][address(arg2)][arg3].field_512,
           performedOperations[address(arg1)][address(arg2)][arg3].field_768
}

function getPerformedOperationsLength(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return performedOperations[address(arg1)][address(arg2)].field_0
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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

function getApproval(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(arg1)].field_256:
        mem[(32 * stor7[address(arg1)].field_256) + 128] = 32
        mem[(32 * stor7[address(arg1)].field_256) + 160] = stor7[address(arg1)].field_256
        mem[(32 * stor7[address(arg1)].field_256) + 192 len floor32(stor7[address(arg1)].field_256)] = mem[128 len floor32(stor7[address(arg1)].field_256)]
        return memory
          from (32 * stor7[address(arg1)].field_256) + 128
           len (96 * stor7[address(arg1)].field_256) + 64
    mem[128] = stor7[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7[address(arg1)].field_256) + 192 len floor32(stor7[address(arg1)].field_256)] = mem[128 len floor32(stor7[address(arg1)].field_256)]
    return Array(len=stor7[address(arg1)].field_256, data=mem[128 len floor32(stor7[address(arg1)].field_256)], mem[(32 * stor7[address(arg1)].field_256) + floor32(stor7[address(arg1)].field_256) + 192 len (32 * stor7[address(arg1)].field_256) - floor32(stor7[address(arg1)].field_256)]), 
}

function _lock(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not stor7[address(arg1)][2][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4173736574734d616e6167655465616d3a207465616d2061646472657373206e6f74206578697374,
                    mem[205 len 23]
    if approveTeam[address(arg1)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x644173736574734d616e6167655465616d3a20746865206163636f756e7420697320616c726561647920626c6f636b65,
                    mem[212 len 16]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3(0x6447454e4552414c5f504152544e45525f524f4c), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x4173736574734d616e6167655465616d3a206f776e657220686173206e6f20726f6c652047506172746e6500,
                    mem[208 len 20]
    approveTeam[address(arg1)][address(arg2)].field_0 = 1
    emit Lock(arg2, arg1);
    return 1
}

function _unlock(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not stor7[address(arg1)][2][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4173736574734d616e6167655465616d3a207465616d2061646472657373206e6f74206578697374,
                    mem[205 len 23]
    if not approveTeam[address(arg1)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x644173736574734d616e6167655465616d3a20746865206163636f756e7420697320616c726561647920626c6f636b65,
                    mem[212 len 16]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3(0x6447454e4552414c5f504152544e45525f524f4c), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x4173736574734d616e6167655465616d3a206f776e657220686173206e6f20726f6c652047506172746e6500,
                    mem[208 len 20]
    approveTeam[address(arg1)][address(arg2)].field_0 = 0
    emit Unlock(arg2, arg1);
    return 1
}

function _withdrawTokensToStartup(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644173736574734d616e6167655465616d3a20746865206e756d626572206f662073656e7420746f6b656e20697320,
                    mem[211 len 17]
    if approveTeam[address(arg1)][address(arg3)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734173736574734d616e6167655465616d3a206465706f73697420746f6b656e206c6f636b65,
                    mem[202 len 26]
    if arg4 + approveTeam[address(arg1)][address(arg3)].field_1024 < approveTeam[address(arg1)][address(arg3)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + approveTeam[address(arg1)][address(arg3)].field_1024 > approveTeam[address(arg1)][address(arg3)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654173736574734d616e6167655465616d3a207769746864726177206e6f7420636f6e6669726d65,
                    mem[204 len 24]
    approveTeam[address(arg1)][address(arg3)].field_1024 += arg4
    performedOperations[address(arg1)][address(arg3)].field_0++
    performedOperations[address(arg1)][address(arg3)][performedOperations[address(arg1)][address(arg3)].field_0].field_0 = arg2
    performedOperations[address(arg1)][address(arg3)][performedOperations[address(arg1)][address(arg3)].field_0].field_256 = 0
    performedOperations[address(arg1)][address(arg3)][performedOperations[address(arg1)][address(arg3)].field_0].field_512 = arg4
    performedOperations[address(arg1)][address(arg3)][performedOperations[address(arg1)][address(arg3)].field_0].field_768 = block.timestamp
    emit Withdraw(address(arg3), arg4, arg2, arg1);
    return 1
}

function _withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644173736574734d616e6167655465616d3a20746865206e756d626572206f662073656e7420746f6b656e20697320,
                    mem[211 len 17]
    if approveTeam[address(arg1)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734173736574734d616e6167655465616d3a206465706f73697420746f6b656e206c6f636b65,
                    mem[202 len 26]
    if arg3 + approveTeam[address(arg1)][address(arg2)].field_1024 < approveTeam[address(arg1)][address(arg2)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + approveTeam[address(arg1)][address(arg2)].field_1024 > approveTeam[address(arg1)][address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654173736574734d616e6167655465616d3a207769746864726177206e6f7420636f6e6669726d65,
                    mem[204 len 24]
    approveTeam[address(arg1)][address(arg2)].field_1024 += arg3
    performedOperations[address(arg1)][address(arg2)].field_0++
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_0 = 0
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_256 = 0
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_256 = 0
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_512 = arg3
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_768 = block.timestamp
    emit Withdraw(address(arg2), arg3, 0, arg1);
    return 1
}

function _depositToken(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644173736574734d616e6167655465616d3a20746865206e756d626572206f662073656e7420746f6b656e20697320,
                    mem[211 len 17]
    if approveTeam[address(arg1)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734173736574734d616e6167655465616d3a206465706f73697420746f6b656e206c6f636b65,
                    mem[202 len 26]
    if arg4 + approveTeam[address(arg1)][address(arg2)].field_512 < approveTeam[address(arg1)][address(arg2)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + approveTeam[address(arg1)][address(arg2)].field_512 > approveTeam[address(arg1)][address(arg2)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x4d4173736574734d616e6167655465616d3a20746f6b656e206465706f736974206e6f7420636f6e6669726d65,
                    mem[209 len 19]
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    approveTeam[address(arg1)][address(arg2)].field_512 += arg4
    performedOperations[address(arg1)][address(arg2)].field_0++
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_0 = arg3
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_256 = arg4
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_512 = 0
    performedOperations[address(arg1)][address(arg2)][performedOperations[address(arg1)][address(arg2)].field_0].field_768 = block.timestamp
    emit DepositERC20(address(arg2), address(arg3), arg4, arg1);
    return 1
}

function _requestTokensWidthdrawalFromStartup(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    35,
                    0x734173736574734d616e6167655465616d3a20706f6f6c207a65726f20616464726573,
                    mem[199 len 29]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734173736574734d616e6167655465616d3a207465616d207a65726f20616464726573,
                    mem[199 len 29]
    if arg4 <= 0:
        revert with 0, 'AssetsManageTeam: value is zero'
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('STARTUP_TEAM_ROLE'), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x744173736574734d616e6167655465616d3a2073656e64657220686173206e6f20726f6c6520544541,
                    mem[205 len 23]
    requestTeam[address(arg1)][address(arg3)].field_0 = 1
    requestTeam[address(arg1)][address(arg3)].field_256 = 0
    requestTeam[address(arg1)][address(arg3)].field_512 = 0
    requestTeam[address(arg1)][address(arg3)].field_768 = arg4
    requestTeam[address(arg1)][address(arg3)].field_1024 = 0
    requestTeam[address(arg1)][address(arg3)].field_1280 = arg2
    if not stor6[address(arg1)][2][address(arg3)].field_0:
        stor6[address(arg1)].field_0++
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = arg3
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_160 = 0
        stor6[address(arg1)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = arg3
        stor6[address(arg1)][2][address(arg3)].field_0 = stor6[address(arg1)].field_0
    emit Request(address(arg3), arg4, arg1);
    return 1
}

function _request(bool arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734173736574734d616e6167655465616d3a20706f6f6c207a65726f20616464726573,
                    mem[199 len 29]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734173736574734d616e6167655465616d3a207465616d207a65726f20616464726573,
                    mem[199 len 29]
    if arg4 <= 0:
        revert with 0, 'AssetsManageTeam: value is zero'
    require ext_code.size(arg2)
    staticcall arg2.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3('STARTUP_TEAM_ROLE'), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x744173736574734d616e6167655465616d3a2073656e64657220686173206e6f20726f6c6520544541,
                    mem[205 len 23]
    requestTeam[address(arg2)][address(arg3)].field_0 = 1
    if not arg1:
        requestTeam[address(arg2)][address(arg3)].field_256 = arg4
        requestTeam[address(arg2)][address(arg3)].field_512 = 0
        requestTeam[address(arg2)][address(arg3)].field_768 = 0
    else:
        requestTeam[address(arg2)][address(arg3)].field_256 = 0
        requestTeam[address(arg2)][address(arg3)].field_512 = 0
        requestTeam[address(arg2)][address(arg3)].field_768 = arg4
    requestTeam[address(arg2)][address(arg3)].field_1024 = 0
    requestTeam[address(arg2)][address(arg3)].field_1280 = 0
    requestTeam[address(arg2)][address(arg3)].field_1536 = 0
    if not stor6[address(arg2)][2][address(arg3)].field_0:
        stor6[address(arg2)].field_0++
        stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = arg3
        stor6[address(arg2)][stor6[address(arg2)].field_0].field_160 = 0
        stor6[address(arg2)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = arg3
        stor6[address(arg2)][2][address(arg3)].field_0 = stor6[address(arg2)].field_0
    emit Request(address(arg3), arg4, arg2);
    return 1
}

function _disapprove(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654d616e61676572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d616e6167657220726f6c,
                    mem[214 len 14]
    if not stor6[address(arg1)][2][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x734173736574734d616e6167655465616d3a207468657265206973206e6f207265717565737420666f722074686973206163636f756e,
                    mem[218 len 10]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3(0x6447454e4552414c5f504152544e45525f524f4c), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x4173736574734d616e6167655465616d3a206f776e657220686173206e6f20726f6c652047506172746e6500,
                    mem[208 len 20]
    requestTeam[address(arg1)][address(arg2)].field_0 = 0
    requestTeam[address(arg1)][address(arg2)].field_256 = 0
    requestTeam[address(arg1)][address(arg2)].field_512 = 0
    requestTeam[address(arg1)][address(arg2)].field_768 = 0
    requestTeam[address(arg1)][address(arg2)].field_1024 = 0
    requestTeam[address(arg1)][address(arg2)].field_1280 = 0
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

function _approveTokensWidthdrawalFromStartup(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    35,
                    0x734173736574734d616e6167655465616d3a20706f6f6c207a65726f20616464726573,
                    mem[199 len 29]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734173736574734d616e6167655465616d3a207465616d207a65726f20616464726573,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3(0x6447454e4552414c5f504152544e45525f524f4c), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x4173736574734d616e6167655465616d3a206f776e657220686173206e6f20726f6c652047506172746e6500,
                    mem[208 len 20]
    if requestTeam[address(arg1)][address(arg3)].field_768:
        if stor7[address(arg1)][2][address(arg3)].field_0:
            if requestTeam[address(arg1)][address(arg3)].field_768 + approveTeam[address(arg1)][address(arg3)].field_768 < approveTeam[address(arg1)][address(arg3)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            approveTeam[address(arg1)][address(arg3)].field_768 += requestTeam[address(arg1)][address(arg3)].field_768
        else:
            approveTeam[address(arg1)][address(arg3)].field_0 = 0
            approveTeam[address(arg1)][address(arg3)].field_256 = 0
            approveTeam[address(arg1)][address(arg3)].field_512 = 0
            approveTeam[address(arg1)][address(arg3)].field_768 = requestTeam[address(arg1)][address(arg3)].field_768
            approveTeam[address(arg1)][address(arg3)].field_1024 = 0
            approveTeam[address(arg1)][address(arg3)].field_1280 = arg2
            if not stor7[address(arg1)][2][address(arg3)].field_0:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = arg3
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_160 = 0
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = arg3
                stor7[address(arg1)][2][address(arg3)].field_0 = stor7[address(arg1)].field_0
    requestTeam[address(arg1)][address(arg3)].field_0 = 0
    requestTeam[address(arg1)][address(arg3)].field_256 = 0
    requestTeam[address(arg1)][address(arg3)].field_512 = 0
    requestTeam[address(arg1)][address(arg3)].field_768 = 0
    requestTeam[address(arg1)][address(arg3)].field_1024 = 0
    requestTeam[address(arg1)][address(arg3)].field_1280 = 0
    if stor6[address(arg1)][2][address(arg3)].field_0:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        require stor6[address(arg1)][2][address(arg3)].field_0 - 1 < stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)][2][address(arg3)].field_0].field_0 = stor6[address(arg1)][stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_0
        stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = 0
        stor6[address(arg1)].field_0--
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_256
        require stor6[address(arg1)][2][address(arg3)].field_0 - 1 < stor6[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)][2][address(arg3)].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_0].field_0
        require stor6[address(arg1)].field_256
        stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = 0
        stor6[address(arg1)].field_256--
        stor6[address(arg1)][2][stor6[address(arg1)][stor6[address(arg1)].field_0].field_0].field_0 = stor6[address(arg1)][2][address(arg3)].field_0
        stor6[address(arg1)][2][arg3].field_0 = 0
    emit Approve(address(arg3), requestTeam[address(arg1)][address(arg3)].field_256, requestTeam[address(arg1)][address(arg3)].field_768, arg1);
    return 1
}

function _approve(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    35,
                    0x734173736574734d616e6167655465616d3a20706f6f6c207a65726f20616464726573,
                    mem[199 len 29]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x734173736574734d616e6167655465616d3a207465616d207a65726f20616464726573,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.hasRole(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args sha3(0x6447454e4552414c5f504152544e45525f524f4c), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x4173736574734d616e6167655465616d3a206f776e657220686173206e6f20726f6c652047506172746e6500,
                    mem[208 len 20]
    if requestTeam[address(arg1)][address(arg2)].field_256:
        if stor7[address(arg1)][2][address(arg2)].field_0:
            if requestTeam[address(arg1)][address(arg2)].field_256 + approveTeam[address(arg1)][address(arg2)].field_256 < approveTeam[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            approveTeam[address(arg1)][address(arg2)].field_256 += requestTeam[address(arg1)][address(arg2)].field_256
        else:
            approveTeam[address(arg1)][address(arg2)].field_0 = 0
            approveTeam[address(arg1)][address(arg2)].field_256 = requestTeam[address(arg1)][address(arg2)].field_256
            approveTeam[address(arg1)][address(arg2)].field_512 = 0
            approveTeam[address(arg1)][address(arg2)].field_768 = 0
            approveTeam[address(arg1)][address(arg2)].field_1024 = 0
            approveTeam[address(arg1)][address(arg2)].field_1280 = 0
            approveTeam[address(arg1)][address(arg2)].field_1536 = 0
            if not stor7[address(arg1)][2][address(arg2)].field_0:
                stor7[address(arg1)].field_0++
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = arg2
                stor7[address(arg1)][stor7[address(arg1)].field_0].field_160 = 0
                stor7[address(arg1)].field_256++
                stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = arg2
                stor7[address(arg1)][2][address(arg2)].field_0 = stor7[address(arg1)].field_0
    else:
        if requestTeam[address(arg1)][address(arg2)].field_768:
            if stor7[address(arg1)][2][address(arg2)].field_0:
                if requestTeam[address(arg1)][address(arg2)].field_768 + approveTeam[address(arg1)][address(arg2)].field_768 < approveTeam[address(arg1)][address(arg2)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                approveTeam[address(arg1)][address(arg2)].field_768 += requestTeam[address(arg1)][address(arg2)].field_768
            else:
                approveTeam[address(arg1)][address(arg2)].field_0 = 0
                approveTeam[address(arg1)][address(arg2)].field_256 = 0
                approveTeam[address(arg1)][address(arg2)].field_512 = 0
                approveTeam[address(arg1)][address(arg2)].field_768 = requestTeam[address(arg1)][address(arg2)].field_768
                approveTeam[address(arg1)][address(arg2)].field_1024 = 0
                approveTeam[address(arg1)][address(arg2)].field_1280 = 0
                approveTeam[address(arg1)][address(arg2)].field_1536 = 0
                if not stor7[address(arg1)][2][address(arg2)].field_0:
                    stor7[address(arg1)].field_0++
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = arg2
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_160 = 0
                    stor7[address(arg1)].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor7', 7))) + stor7[address(arg1)].field_256].field_0 = arg2
                    stor7[address(arg1)][2][address(arg2)].field_0 = stor7[address(arg1)].field_0
    requestTeam[address(arg1)][address(arg2)].field_0 = 0
    requestTeam[address(arg1)][address(arg2)].field_256 = 0
    requestTeam[address(arg1)][address(arg2)].field_512 = 0
    requestTeam[address(arg1)][address(arg2)].field_768 = 0
    requestTeam[address(arg1)][address(arg2)].field_1024 = 0
    requestTeam[address(arg1)][address(arg2)].field_1280 = 0
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
    emit Approve(address(arg2), requestTeam[address(arg1)][address(arg2)].field_256, requestTeam[address(arg1)][address(arg2)].field_768, arg1);
    return 1
}



}
