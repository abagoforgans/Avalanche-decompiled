contract main {




// =====================  Runtime code  =====================


const TOKEN_SWEEPER_ROLE = 0xaaeb0e7b67698f8ec0689e359bbe895bc1bc081c58211f57940cf243fc05a218

const DEFAULT_ADMIN_ROLE = 0

const UPGRADER_ROLE = 0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3

const DEV_ROLE = 0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2


array of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function removeReward(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.removeReward(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateCrvAvaxSwapPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.updateCrvAvaxSwapPair(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateMaxSwapSlippage(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.updateMaxSwapSlippage(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setExtraRewardSwapPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.setExtraRewardSwapPair(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDev(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3][1][address(msg.sender)].field_0:
        revert with 0, 'setDev::auth'
    require ext_code.size(arg1)
    call arg1.updateDevAddr(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetDev(arg2, msg.sender, arg1);
}

function addReward(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.addReward(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLeverage(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.updateLeverage(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLeverage(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.updateLeverage(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLeverage(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not roleAdmin[0x51b355059847d158e68950419dbcd54fad00bdfd0634c2515a5c533288c7f0a2][1][address(msg.sender)].field_0:
        revert with 0, 'execute::auth'
    require ext_code.size(arg1)
    call arg1.updateLeverage(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sweepAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xaaeb0e7b67698f8ec0689e359bbe895bc1bc081c58211f57940cf243fc05a218][1][address(msg.sender)].field_0:
        revert with 0, 'sweepAVAX::auth'
    if eth.balance(this.address) >= arg1:
        if arg1 <= 0:
            revert with 0, 'sweepAVAX::balance'
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
        if bool(ext_call.success) != 1:
            revert with 0, 'sweepAVAX::transfer failed'
        emit Sweep(arg1, msg.sender, 0);
    else:
        if eth.balance(this.address) <= 0:
            revert with 0, 'sweepAVAX::balance'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if bool(ext_call.success) != 1:
            revert with 0, 'sweepAVAX::transfer failed'
        emit Sweep(eth.balance(this.address), msg.sender, 0);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sweepTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xaaeb0e7b67698f8ec0689e359bbe895bc1bc081c58211f57940cf243fc05a218][1][address(msg.sender)].field_0:
        revert with 0, 'sweepTokens::auth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        if arg2 <= 0:
            revert with 0, 'sweepTokens::balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'sweepTokens::transfer failed'
        emit Sweep(arg2, msg.sender, arg1);
    else:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'sweepTokens::balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'sweepTokens::transfer failed'
        emit Sweep(ext_call.return_data[0], msg.sender, arg1);
}



}
