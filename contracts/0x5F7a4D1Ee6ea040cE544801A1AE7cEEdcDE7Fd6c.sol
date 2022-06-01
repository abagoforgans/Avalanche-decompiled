contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositReferrer(uint256 arg1, address arg2)
#
const sub_0550473d(?) = 995

const sub_238b2138(?) = 10000

const sub_a5367b75(?) = 50

const sub_bd3d06df(?) = 50

const wBNB = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const ADMIN_ROLE = 0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0

const MANAGER_ROLE = 0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


array of struct roleAdmin;
uint256 stor1;
address tokenAddress;
array of struct sub_929060d8;
uint256 totalShares;
uint256 totalAllocPoint;
address sub_fe78e5caAddress;
address sub_0b2a8835Address;
uint256 sub_16f19bb1;
uint256 sub_2d17218b;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8
array of address sub_0ac84d8a;
array of address sub_872daa36;
address sub_d73886feAddress;
address sub_498c7b65Address;
uint256 slippageFactor;
uint8 stor16; offset 160
address sub_90fcdb36Address;
mapping of struct userInfo;
mapping of uint8 stor18;
mapping of uint256 targetVaultIdForStrategy;
address sub_c42dab99Address;
uint256 sub_f1e17339;
uint256 sub_49555ddb;
uint256 sub_2986436a;
uint256 sub_62d03cb7;
mapping of address referrers;
mapping of uint256 referredCount;
mapping of uint256 sub_c62f374b;
mapping of uint8 stor28;
mapping of uint8 stor29;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function sub_0ac84d8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0ac84d8a.length
    return address(sub_0ac84d8a[arg1])
}

function sub_0b2a8835(?) payable {
    return sub_0b2a8835Address
}

function sub_16f19bb1(?) payable {
    return sub_16f19bb1
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_2986436a(?) payable {
    return sub_2986436a
}

function vaultLength() payable {
    return sub_929060d8.length
}

function sub_2d17218b(?) payable {
    return sub_2d17218b
}

function totalShares() payable {
    return totalShares
}

function referredCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referredCount[arg1]
}

function sub_49555ddb(?) payable {
    return sub_49555ddb
}

function sub_498c7b65(?) payable {
    return sub_498c7b65Address
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function sub_62d03cb7(?) payable {
    return sub_62d03cb7
}

function sub_872daa36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_872daa36.length
    return address(sub_872daa36[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xf6456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function sub_90fcdb36(?) payable {
    return sub_90fcdb36Address
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_929060d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_929060d8.length
    return bool(sub_929060d8[arg1].field_0), sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_256
}

function sub_ac4b3c04(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor29[arg1])
}

function getTargetVaultIdForStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor18[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65466565645661756c743a20546f6b656e20646f6573206e6f742065786973747320696e20616e79207661756c,
                    mem[209 len 19]
    return targetVaultIdForStrategy[address(arg1)]
}

function sub_be1c0db5(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function sub_c1773274(?) payable {
    require calldata.size - 4 >= 32
    return targetVaultIdForStrategy[arg1]
}

function sub_c42dab99(?) payable {
    return sub_c42dab99Address
}

function sub_c49d6ce4(?) payable {
    return bool(uint8(stor10.field_8))
}

function sub_c62f374b(?) payable {
    require calldata.size - 4 >= 64
    return sub_c62f374b[arg1][arg2]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_cafa086b(?) payable {
    return bool(uint8(stor10.field_0))
}

function sub_d73886fe(?) payable {
    return sub_d73886feAddress
}

function sub_f1e17339(?) payable {
    return sub_f1e17339
}

function sub_f32d054c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor28[arg1])
}

function token() payable {
    return tokenAddress
}

function sub_fe78e5ca(?) payable {
    return sub_fe78e5caAddress
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function availableTokenBalance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setExitSwapToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 1
}

function setEntrySwapToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor16:
        revert with 0, 'dFeedVault: vault is disabled'
    if not sub_929060d8.length:
        revert with 0, 32, 26, 0x8466565645661756c743a204e6f20746172676574207661756c740000000000
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 1
}

function sub_d8974566(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    sub_c42dab99Address = arg1
    stor1 = 1
}

function setReferralExitFeeBp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if arg1 > 10000:
        revert with 0, 'LIMIT'
    sub_49555ddb = arg1
    emit ReferralExitFeeBpChanged(sub_49555ddb, arg1);
}

function setReferralEntryFeeBp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if arg1 > 10000:
        revert with 0, 'LIMIT'
    sub_f1e17339 = arg1
    emit ReferralEntryFeeBpChanged(sub_f1e17339, arg1);
}

function setEntryAutoSwap(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    uint8(stor10.field_0) = uint8(arg1)
    emit AutoSwapEntryFees(bool(uint8(arg1)));
    stor1 = 1
}

function toggleTargetVault(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < sub_929060d8.length
    sub_929060d8[arg1].field_0 = uint8(arg2)
    stor1 = 1
}

function setExitAutoSwap(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    Mask(248, 0, stor10.field_8) = Mask(248, 0, arg1)
    emit AutoSwapExitFees(bool(0 or uint8(arg1)));
    stor1 = 1
}

function setTargetVault(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    require arg1 < sub_929060d8.length
    if sub_929060d8[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - sub_929060d8[arg1].field_256
    require arg1 < sub_929060d8.length
    sub_929060d8[arg1].field_256 = arg2
}

function enableVault() payable {
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x64466565645661756c7428656e61626c655661756c74293a205661756c7420697320616c726561647920656e61626c65,
                    mem[212 len 16]
    stor16 = 0
    emit VaultEnabled()
    stor1 = 1
}

function disableVault() payable {
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x466565645661756c742864697361626c655661756c74293a205661756c7420697320616c72656164792064697361626c6500,
                    mem[214 len 14]
    stor16 = 1
    emit VaultDisabled()
    stor1 = 1
}

function setSlippageFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > 995:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6c5461726765745661756c7428736574536c697070616765466163746f72293a20736c697070616765466163746f7220746f6f20686967,
                    mem[219 len 9]
    slippageFactor = arg1
    emit SlippageFactorChanged(arg1);
    stor1 = 1
}

function setExitFeesBP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x65466565645661756c742873657446656573293a20656e747279206665657320626173697320706f696e74732065786365656473207468726573686f6c,
                    mem[225 len 3]
    sub_2d17218b = arg1
    emit ExitFeesBPChanged(arg1);
    stor1 = 1
}

function setEntryFeesBP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x735461726765745661756c742873657446656573293a20656e747279206665657320626173697320706f696e74732065786365656473207468726573686f6c,
                    mem[227 len 1]
    sub_16f19bb1 = arg1
    emit EntryFeesBPChanged(arg1);
    stor1 = 1
}

function setSwapRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x74466565645661756c742873657453776170526f7574657241646472657373293a207377617020726f757465722063616e6e6f74206265207a65726f20616464726573,
                    mem[231 len 29]
    sub_90fcdb36Address = arg1
    emit SwapRouterChanged(arg1);
    stor1 = 1
}

function depositAll() payable {
    if stor16:
        revert with 0, 'dFeedVault: vault is disabled'
    if not sub_929060d8.length:
        revert with 0, 32, 26, 0x8466565645661756c743a204e6f20746172676574207661756c740000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor16:
        revert with 0, 'dFeedVault: vault is disabled'
    if not sub_929060d8.length:
        revert with 0, 32, 26, 0x8466565645661756c743a204e6f20746172676574207661756c740000000000
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function withdrawFromVault(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_929060d8.length:
        revert with 0, 'FeedVault: Vault does not exists'
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2:
        require arg1 < sub_929060d8.length
        require ext_code.size(sub_929060d8[arg1].field_8)
        call sub_929060d8[arg1].field_8.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function setExitFeesCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    77,
                    0x745461726765745661756c74287365744578697446656573436f6c6c6563746f72293a2065786974206665657320636f6c6c6563746f722063616e6e6f74206265207a65726f20616464726573,
                    mem[241 len 19]
    sub_498c7b65Address = arg1
    emit ExitFeesCollectorChanged(arg1);
    stor1 = 1
}

function setEntryFeesCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    79,
                    0x685461726765745661756c7428736574456e74727946656573436f6c6c6563746f72293a20656e747279206665657320636f6c6c6563746f722063616e6e6f74206265207a65726f20616464726573,
                    mem[243 len 17]
    sub_d73886feAddress = arg1
    emit EntryFeesCollectorChanged(arg1);
    stor1 = 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function tokenBalance() payable {
    idx = 0
    s = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if not sub_929060d8[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_929060d8.length
        mem[0] = 3
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (s + ext_call.return_data[0])
}

function sub_7adf7a30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    sub_872daa36.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_872daa36.length > idx:
            uint256(sub_872daa36[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_872daa36[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_872daa36.length > idx:
            uint256(sub_872daa36[idx]) = 0
            idx = idx + 1
            continue 
    stor1 = 1
}

function sub_f2bc7aa2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    sub_0ac84d8a.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_0ac84d8a.length > idx:
            uint256(sub_0ac84d8a[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_0ac84d8a[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_0ac84d8a.length > idx:
            uint256(sub_0ac84d8a[idx]) = 0
            idx = idx + 1
            continue 
    stor1 = 1
}

function depositedBalance() payable {
    idx = 0
    s = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.vaultBalance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if (0 / totalAllocPoint) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (0 / totalAllocPoint) + s
            continue 
        if sub_929060d8[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != sub_929060d8[idx].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if (sub_929060d8[idx].field_256 * ext_call.return_data[0] / totalAllocPoint) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = (sub_929060d8[idx].field_256 * ext_call.return_data[0] / totalAllocPoint) + s
        continue 
    return s
}

function sub_a851806c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1.length != sub_929060d8.length:
        revert with 0, 
                    32,
                    56,
                    0x73466565645661756c7428736574416c6c6f63506f696e7473293a206e756d626572206f66207661756c747320697320696e636f72726563,
                    mem[(32 * arg1.length) + 252 len 8]
    idx = 0
    while idx < sub_929060d8.length:
        require idx < arg1.length
        mem[32] = sha3(0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 0) + 1
        if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
            revert with 0, 'tFeedVault: Caller has no role'
        require idx < sub_929060d8.length
        if sub_929060d8[idx].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if mem[(32 * idx) + 128] < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = mem[(32 * idx) + 128] + totalAllocPoint - sub_929060d8[idx].field_256
        require idx < sub_929060d8.length
        mem[0] = 3
        sub_929060d8[idx].field_256 = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    stor1 = 1
}

function depositedTokenBalance(bool arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if not sub_929060d8[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_929060d8.length
        if not arg1:
            mem[0] = 3
            require ext_code.size(sub_929060d8[idx].field_8)
            staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.cachedPricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_929060d8.length
        mem[0] = 3
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.vaultBalance() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s
            continue 
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                        mem[197 len 31]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + s
        continue 
    return s
}

function addTargetVault(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x73a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor18[address(arg1)]:
        revert with 0, 'FeedVault: Duplicated vault'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x74466565645661756c74286164645461726765745661756c74293a20546172676574207661756c742063616e6e6f74206265207a65726f20616464726573,
                    mem[226 len 2]
    require ext_code.size(arg1)
    staticcall arg1.0xfc0c546a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x64466565645661756c74286164645461726765745661756c74293a20546172676574207661756c7420746f6b656e206973206e6f74207468652073616d,
                    mem[225 len 3]
    require ext_code.size(arg1)
    staticcall arg1.vaultToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x466565645661756c74286164645461726765745661756c74293a20546172676574207661756c7420737472617465677920746f6b656e206973206e6f74207468652073616d00,
                    mem[234 len 26]
    require ext_code.size(arg1)
    staticcall arg1.feedVault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x466565645661756c74286164645461726765745661756c74293a20546172676574207661756c742066656564207661756c7420746172676574206973206e6f742074686973207661756c00,
                    mem[239 len 21]
    if arg2 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg2
    stor18[address(arg1)] = 1
    sub_929060d8.length++
    sub_929060d8[sub_929060d8.length].field_0 = 1
    sub_929060d8[sub_929060d8.length].field_8 = arg1
    sub_929060d8[sub_929060d8.length].field_168 = 0
    storC257[stor3.length] = arg2
    targetVaultIdForStrategy[address(arg1)] = sub_929060d8.length - 1
    stor1 = 1
}

function depositToVault(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_929060d8.length:
        revert with 0, 'FeedVault: Vault does not exists'
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        if arg2:
            require arg1 < sub_929060d8.length
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_0, Mask(224, 32, arg2) >> 32
            call tokenAddress with:
               funct sub_929060d8[arg1].field_0
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_0, arg2
                if not unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0:
                    revert with 0, 32, 42, 0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            require arg1 < sub_929060d8.length
            require ext_code.size(sub_929060d8[arg1].field_8)
            call sub_929060d8[arg1].field_8.0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0]:
            require arg1 < sub_929060d8.length
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_0, ext_call.return_data[0 len 28]
            call tokenAddress with:
               funct sub_929060d8[arg1].field_0
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), sub_929060d8[arg1].field_0:
                    revert with 0, 32, 42, 0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            require arg1 < sub_929060d8.length
            require ext_code.size(sub_929060d8[arg1].field_8)
            call sub_929060d8[arg1].field_8.0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function allocate() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 0) + 1
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    if stor16:
        revert with 0, 'dFeedVault: vault is disabled'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < sub_929060d8.length:
            mem[0] = 3
            if sub_929060d8[idx].field_0:
                require idx < sub_929060d8.length
                mem[0] = 3
                if ext_call.return_data[0]:
                    if sub_929060d8[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != sub_929060d8[idx].field_256:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_929060d8[idx].field_256 * ext_call.return_data[0] / totalAllocPoint:
                        if sub_929060d8[idx].field_256 * ext_call.return_data[0] / totalAllocPoint:
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            _287 = mem[64]
                            mem[mem[64] + 36] = sub_929060d8[idx].field_8
                            mem[mem[64] + 68] = sub_929060d8[idx].field_256 * ext_call.return_data[0] / totalAllocPoint
                            _288 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_288 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_288 + 36 len 28]
                            mem[64] = _287 + 164
                            mem[_287 + 100] = 32
                            mem[_287 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_287 + 270 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            _314 = mem[_288]
                            t = _288 + 32
                            u = _287 + 164
                            s = mem[_288]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_287 + floor32(mem[_288]) + 164] = mem[_288 + -(mem[_288] % 32) + floor32(mem[_288]) + 64 len mem[_288] % 32] or Mask(8 * -(mem[_288] % 32) + 32, -(8 * -(mem[_288] % 32) + 32) + 256, mem[_287 + floor32(mem[_288]) + 164])
                            call tokenAddress.mem[_287 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_287 + 168 len _314 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_287 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_287 + 168] = 32
                                    mem[_287 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _287 + 232] = mem[idx + _287 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _287 + -mem[64] + 264
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_287 + 274 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_287 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[64] = _287 + ceil32(return_data.size) + 165
                                mem[_287 + 164] = return_data.size
                                mem[_287 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_287 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_287 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _287 + ceil32(return_data.size) + 233] = mem[idx + _287 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_287 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_287 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_287 + ceil32(return_data.size) + 275 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_287 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if ext_call.return_data[0]:
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            _293 = mem[64]
                            mem[mem[64] + 36] = sub_929060d8[idx].field_8
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            _294 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_294 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_294 + 36 len 28]
                            mem[64] = _293 + 164
                            mem[_293 + 100] = 32
                            mem[_293 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_293 + 270 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            _322 = mem[_294]
                            t = _294 + 32
                            u = _293 + 164
                            s = mem[_294]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_293 + floor32(mem[_294]) + 164] = mem[_294 + -(mem[_294] % 32) + floor32(mem[_294]) + 64 len mem[_294] % 32] or Mask(8 * -(mem[_294] % 32) + 32, -(8 * -(mem[_294] % 32) + 32) + 256, mem[_293 + floor32(mem[_294]) + 164])
                            call tokenAddress.mem[_293 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_293 + 168 len _322 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_293 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_293 + 168] = 32
                                    mem[_293 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _293 + 232] = mem[idx + _293 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _293 + -mem[64] + 264
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_293 + 274 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_293 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[64] = _293 + ceil32(return_data.size) + 165
                                mem[_293 + 164] = return_data.size
                                mem[_293 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_293 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_293 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _293 + ceil32(return_data.size) + 233] = mem[idx + _293 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_293 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_293 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_293 + ceil32(return_data.size) + 275 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_293 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalAllocPoint:
                        if 0 / totalAllocPoint:
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            _278 = mem[64]
                            mem[mem[64] + 36] = sub_929060d8[idx].field_8
                            mem[mem[64] + 68] = 0 / totalAllocPoint
                            _279 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_279 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_279 + 36 len 28]
                            mem[64] = _278 + 164
                            mem[_278 + 100] = 32
                            mem[_278 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_278 + 270 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            _306 = mem[_279]
                            t = _279 + 32
                            u = _278 + 164
                            s = mem[_279]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_278 + floor32(mem[_279]) + 164] = mem[_279 + -(mem[_279] % 32) + floor32(mem[_279]) + 64 len mem[_279] % 32] or Mask(8 * -(mem[_279] % 32) + 32, -(8 * -(mem[_279] % 32) + 32) + 256, mem[_278 + floor32(mem[_279]) + 164])
                            call tokenAddress.mem[_278 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_278 + 168 len _306 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_278 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_278 + 168] = 32
                                    mem[_278 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _278 + 232] = mem[idx + _278 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _278 + -mem[64] + 264
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_278 + 274 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_278 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            else:
                                mem[64] = _278 + ceil32(return_data.size) + 165
                                mem[_278 + 164] = return_data.size
                                mem[_278 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_278 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_278 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _278 + ceil32(return_data.size) + 233] = mem[idx + _278 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_278 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_278 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_278 + ceil32(return_data.size) + 275 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[_278 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if ext_call.return_data[0]:
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            _284 = mem[64]
                            mem[mem[64] + 36] = sub_929060d8[idx].field_8
                            mem[mem[64] + 68] = ext_call.return_data[0]
                            _285 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_285 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_285 + 36 len 28]
                            mem[64] = _284 + 164
                            mem[_284 + 100] = 32
                            mem[_284 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_284 + 270 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            _310 = mem[_285]
                            t = _285 + 32
                            u = mem[64]
                            s = mem[_285]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_285])] = mem[_285 + floor32(mem[_285]) + -(mem[_285] % 32) + 64 len mem[_285] % 32] or Mask(8 * -(mem[_285] % 32) + 32, -(8 * -(mem[_285] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_285])])
                            call tokenAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _310 + _284 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _553 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_284 + 100]
                                    _555 = mem[_284 + 100]
                                    idx = 0
                                    while idx < _555:
                                        mem[idx + _553 + 68] = mem[idx + _284 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _555 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _555 + _553 + -mem[64] + 68
                                    mem[floor32(_555) + _553 + 68] = mem[floor32(_555) + _553 + -(_555 % 32) + 100 len _555 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_555) + _553 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _520 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_520] = return_data.size
                                mem[_520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _557 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_284 + 100]
                                    _559 = mem[_284 + 100]
                                    idx = 0
                                    while idx < _559:
                                        mem[idx + _557 + 68] = mem[idx + _284 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _559 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _559 + _557 + -mem[64] + 68
                                    mem[floor32(_559) + _557 + 68] = mem[floor32(_559) + _557 + -(_559 % 32) + 100 len _559 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_559) + _557 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_520 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    stor1 = 1
}

function reallocate() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = sha3(0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 0) + 1
    if not roleAdmin[0x65241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][1][address(msg.sender)].field_0:
        revert with 0, 'tFeedVault: Caller has no role'
    if stor16:
        revert with 0, 'dFeedVault: vault is disabled'
    if not sub_929060d8.length:
        revert with 0, 32, 26, 0x8466565645661756c743a204e6f20746172676574207661756c740000000000
    if stor1 == 2:
        revert with 0, 'tReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    s = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if not sub_929060d8[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_929060d8.length
        mem[0] = 3
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    idx = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if sub_929060d8[idx].field_0:
            require idx < sub_929060d8.length
            require ext_code.size(sub_929060d8[idx].field_8)
            staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_929060d8.length
            mem[0] = 3
            if not s:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if ext_call.return_data[0] > 0 / totalAllocPoint:
                    require idx < sub_929060d8.length
                    require idx < sub_929060d8.length
                    require ext_code.size(sub_929060d8[idx].field_8)
                    if 0 == sub_929060d8[idx].field_256:
                        staticcall sub_929060d8[idx].field_8.balanceOf() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < sub_929060d8.length
                        mem[0] = 3
                        mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        require ext_code.size(sub_929060d8[idx].field_8)
                        call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        staticcall sub_929060d8[idx].field_8.targetPricePerShare() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalAllocPoint > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - (0 / totalAllocPoint):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            mem[100] = 0 / ext_call.return_data[0]
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * ext_call.return_data[0]) - (10^18 * 0 / totalAllocPoint) / ext_call.return_data[0] - (0 / totalAllocPoint) != 10^18:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            mem[100] = (10^18 * ext_call.return_data[0]) - (10^18 * 0 / totalAllocPoint) / ext_call.return_data[0]
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((10^18 * ext_call.return_data[0]) - (10^18 * 0 / totalAllocPoint) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_929060d8[idx].field_256 * s / s != sub_929060d8[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[197 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if ext_call.return_data[0] > sub_929060d8[idx].field_256 * s / totalAllocPoint:
                    require idx < sub_929060d8.length
                    require idx < sub_929060d8.length
                    require ext_code.size(sub_929060d8[idx].field_8)
                    if 0 == sub_929060d8[idx].field_256:
                        staticcall sub_929060d8[idx].field_8.balanceOf() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < sub_929060d8.length
                        mem[0] = 3
                        mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        require ext_code.size(sub_929060d8[idx].field_8)
                        call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        staticcall sub_929060d8[idx].field_8.targetPricePerShare() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_929060d8[idx].field_256 * s / totalAllocPoint > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] - (sub_929060d8[idx].field_256 * s / totalAllocPoint):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            mem[100] = 0 / ext_call.return_data[0]
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * ext_call.return_data[0]) - (10^18 * sub_929060d8[idx].field_256 * s / totalAllocPoint) / ext_call.return_data[0] - (sub_929060d8[idx].field_256 * s / totalAllocPoint) != 10^18:
                                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require idx < sub_929060d8.length
                            mem[0] = 3
                            mem[96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                            mem[100] = (10^18 * ext_call.return_data[0]) - (10^18 * sub_929060d8[idx].field_256 * s / totalAllocPoint) / ext_call.return_data[0]
                            require ext_code.size(sub_929060d8[idx].field_8)
                            call sub_929060d8[idx].field_8.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args ((10^18 * ext_call.return_data[0]) - (10^18 * sub_929060d8[idx].field_256 * s / totalAllocPoint) / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if not sub_929060d8[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_929060d8.length
        mem[0] = 3
        require ext_code.size(sub_929060d8[idx].field_8)
        staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if s + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < sub_929060d8.length:
        mem[0] = 3
        if sub_929060d8[idx].field_0:
            require idx < sub_929060d8.length
            require ext_code.size(sub_929060d8[idx].field_8)
            staticcall sub_929060d8[idx].field_8.balanceOfToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_929060d8.length
            mem[0] = 3
            if not s + ext_call.return_data[0]:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if ext_call.return_data[0] < 0 / totalAllocPoint:
                    if ext_call.return_data[0] > 0 / totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (0 / totalAllocPoint) - ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= (0 / totalAllocPoint) - ext_call.return_data[0]:
                            if (0 / totalAllocPoint) - ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2249 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = (0 / totalAllocPoint) - ext_call.return_data[0]
                                _2250 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2250 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2250 + 36 len 28]
                                mem[64] = _2249 + 164
                                mem[_2249 + 100] = 32
                                mem[_2249 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2249 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2295 = mem[_2250]
                                t = _2250 + 32
                                u = _2249 + 164
                                s = mem[_2250]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2249 + floor32(mem[_2250]) + 164] = mem[_2250 + -(mem[_2250] % 32) + floor32(mem[_2250]) + 64 len mem[_2250] % 32] or Mask(8 * -(mem[_2250] % 32) + 32, -(8 * -(mem[_2250] % 32) + 32) + 256, mem[_2249 + floor32(mem[_2250]) + 164])
                                call tokenAddress.mem[_2249 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2249 + 168 len _2295 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2249 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2249 + 168] = 32
                                        mem[_2249 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2249 + 232] = mem[idx + _2249 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _2249 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2249 + 274 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2249 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[64] = _2249 + ceil32(return_data.size) + 165
                                    mem[_2249 + 164] = return_data.size
                                    mem[_2249 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2249 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2249 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2249 + ceil32(return_data.size) + 233] = mem[idx + _2249 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_2249 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2249 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2249 + ceil32(return_data.size) + 275 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2249 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2256 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2257 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2257 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2257 + 36 len 28]
                                mem[64] = _2256 + 164
                                mem[_2256 + 100] = 32
                                mem[_2256 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2256 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2304 = mem[_2257]
                                t = _2257 + 32
                                u = _2256 + 164
                                s = mem[_2257]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2256 + floor32(mem[_2257]) + 164] = mem[_2257 + -(mem[_2257] % 32) + floor32(mem[_2257]) + 64 len mem[_2257] % 32] or Mask(8 * -(mem[_2257] % 32) + 32, -(8 * -(mem[_2257] % 32) + 32) + 256, mem[_2256 + floor32(mem[_2257]) + 164])
                                call tokenAddress.mem[_2256 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2256 + 168 len _2304 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2256 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2256 + 168] = 32
                                        mem[_2256 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2256 + 232] = mem[idx + _2256 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _2256 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2256 + 274 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2256 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[64] = _2256 + ceil32(return_data.size) + 165
                                    mem[_2256 + 164] = return_data.size
                                    mem[_2256 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2256 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2256 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2256 + ceil32(return_data.size) + 233] = mem[idx + _2256 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_2256 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2256 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2256 + ceil32(return_data.size) + 275 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2256 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2277 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2278 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2278 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2278 + 36 len 28]
                                mem[64] = _2277 + 164
                                mem[_2277 + 100] = 32
                                mem[_2277 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2277 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2344 = mem[_2278]
                                t = _2278 + 32
                                u = _2277 + 164
                                s = mem[_2278]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2277 + floor32(mem[_2278]) + 164] = mem[_2278 + -(mem[_2278] % 32) + floor32(mem[_2278]) + 64 len mem[_2278] % 32] or Mask(8 * -(mem[_2278] % 32) + 32, -(8 * -(mem[_2278] % 32) + 32) + 256, mem[_2277 + floor32(mem[_2278]) + 164])
                                call tokenAddress.mem[_2277 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2277 + 168 len _2344 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2277 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2277 + 168] = 32
                                        mem[_2277 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2277 + 232] = mem[idx + _2277 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _2277 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2277 + 274 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2277 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[64] = _2277 + ceil32(return_data.size) + 165
                                    mem[_2277 + 164] = return_data.size
                                    mem[_2277 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2277 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2277 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2277 + ceil32(return_data.size) + 233] = mem[idx + _2277 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_2277 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2277 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2277 + ceil32(return_data.size) + 275 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2277 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2285 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2286 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2286 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2286 + 36 len 28]
                                mem[64] = _2285 + 164
                                mem[_2285 + 100] = 32
                                mem[_2285 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2285 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2351 = mem[_2286]
                                t = _2286 + 32
                                u = mem[64]
                                s = mem[_2286]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2286])] = mem[_2286 + floor32(mem[_2286]) + -(mem[_2286] % 32) + 64 len mem[_2286] % 32] or Mask(8 * -(mem[_2286] % 32) + 32, -(8 * -(mem[_2286] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2286])])
                                call tokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2351 + _2285 + -mem[64] + 160]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _2812 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2285 + 100]
                                        _2814 = mem[_2285 + 100]
                                        idx = 0
                                        while idx < _2814:
                                            mem[idx + _2812 + 68] = mem[idx + _2285 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2814 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2814 + _2812 + -mem[64] + 68
                                        mem[floor32(_2814) + _2812 + 68] = mem[floor32(_2814) + _2812 + -(_2814 % 32) + 100 len _2814 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2814) + _2812 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2739 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2739] = return_data.size
                                    mem[_2739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2816 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2285 + 100]
                                        _2818 = mem[_2285 + 100]
                                        idx = 0
                                        while idx < _2818:
                                            mem[idx + _2816 + 68] = mem[idx + _2285 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2818 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2818 + _2816 + -mem[64] + 68
                                        mem[floor32(_2818) + _2816 + 68] = mem[floor32(_2818) + _2816 + -(_2818 % 32) + 100 len _2818 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2818) + _2816 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2739 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if (s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / s + ext_call.return_data[0] != sub_929060d8[idx].field_256:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if ext_call.return_data[0] < (s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint:
                    if ext_call.return_data[0] > (s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ((s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint) - ext_call.return_data[0]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ((s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint) - ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2267 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2268 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2268 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2268 + 36 len 28]
                                mem[64] = _2267 + 164
                                mem[_2267 + 100] = 32
                                mem[_2267 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2267 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2319 = mem[_2268]
                                t = _2268 + 32
                                u = _2267 + 164
                                s = mem[_2268]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2267 + floor32(mem[_2268]) + 164] = mem[_2268 + -(mem[_2268] % 32) + floor32(mem[_2268]) + 64 len mem[_2268] % 32] or Mask(8 * -(mem[_2268] % 32) + 32, -(8 * -(mem[_2268] % 32) + 32) + 256, mem[_2267 + floor32(mem[_2268]) + 164])
                                call tokenAddress.mem[_2267 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2267 + 168 len _2319 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2267 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2267 + 168] = 32
                                        mem[_2267 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2267 + 232] = mem[idx + _2267 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _2267 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2267 + 274 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2267 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[64] = _2267 + ceil32(return_data.size) + 165
                                    mem[_2267 + 164] = return_data.size
                                    mem[_2267 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2267 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2267 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2267 + ceil32(return_data.size) + 233] = mem[idx + _2267 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_2267 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2267 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2267 + ceil32(return_data.size) + 275 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2267 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ((s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint) - ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2260 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ((s * sub_929060d8[idx].field_256) + (ext_call.return_data[0] * sub_929060d8[idx].field_256) / totalAllocPoint) - ext_call.return_data[0]
                                _2261 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2261 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2261 + 36 len 28]
                                mem[64] = _2260 + 164
                                mem[_2260 + 100] = 32
                                mem[_2260 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2260 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2308 = mem[_2261]
                                t = _2261 + 32
                                u = mem[64]
                                s = mem[_2261]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2261])] = mem[_2261 + floor32(mem[_2261]) + -(mem[_2261] % 32) + 64 len mem[_2261] % 32] or Mask(8 * -(mem[_2261] % 32) + 32, -(8 * -(mem[_2261] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2261])])
                                call tokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2308 + _2260 + -mem[64] + 160]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _2756 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2260 + 100]
                                        _2758 = mem[_2260 + 100]
                                        idx = 0
                                        while idx < _2758:
                                            mem[idx + _2756 + 68] = mem[idx + _2260 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2758 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2758 + _2756 + -mem[64] + 68
                                        mem[floor32(_2758) + _2756 + 68] = mem[floor32(_2758) + _2756 + -(_2758 % 32) + 100 len _2758 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2758) + _2756 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2732 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2732] = return_data.size
                                    mem[_2732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2760 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2260 + 100]
                                        _2762 = mem[_2260 + 100]
                                        idx = 0
                                        while idx < _2762:
                                            mem[idx + _2760 + 68] = mem[idx + _2260 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2762 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2762 + _2760 + -mem[64] + 68
                                        mem[floor32(_2762) + _2760 + 68] = mem[floor32(_2762) + _2760 + -(_2762 % 32) + 100 len _2762 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2762) + _2760 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2732 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2290 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2291 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2291 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2291 + 36 len 28]
                                mem[64] = _2290 + 164
                                mem[_2290 + 100] = 32
                                mem[_2290 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2290 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2355 = mem[_2291]
                                t = _2291 + 32
                                u = _2290 + 164
                                s = mem[_2291]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2290 + floor32(mem[_2291]) + 164] = mem[_2291 + -(mem[_2291] % 32) + floor32(mem[_2291]) + 64 len mem[_2291] % 32] or Mask(8 * -(mem[_2291] % 32) + 32, -(8 * -(mem[_2291] % 32) + 32) + 256, mem[_2290 + floor32(mem[_2291]) + 164])
                                call tokenAddress.mem[_2290 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2290 + 168 len _2355 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2290 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2290 + 168] = 32
                                        mem[_2290 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2290 + 232] = mem[idx + _2290 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _2290 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2290 + 274 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2290 + 164] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[64] = _2290 + ceil32(return_data.size) + 165
                                    mem[_2290 + 164] = return_data.size
                                    mem[_2290 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2290 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2290 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _2290 + ceil32(return_data.size) + 233] = mem[idx + _2290 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_2290 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2290 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[_2290 + ceil32(return_data.size) + 275 len 22]
                                    require idx < sub_929060d8.length
                                    mem[0] = 3
                                    mem[_2290 + ceil32(return_data.size) + 165] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[0]:
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                _2300 = mem[64]
                                mem[mem[64] + 36] = sub_929060d8[idx].field_8
                                mem[mem[64] + 68] = ext_call.return_data[0]
                                _2301 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_2301 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2301 + 36 len 28]
                                mem[64] = _2300 + 164
                                mem[_2300 + 100] = 32
                                mem[_2300 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2300 + 270 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                _2375 = mem[_2301]
                                t = _2301 + 32
                                u = mem[64]
                                s = mem[_2301]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[mem[64] + floor32(mem[_2301])] = mem[_2301 + floor32(mem[_2301]) + -(mem[_2301] % 32) + 64 len mem[_2301] % 32] or Mask(8 * -(mem[_2301] % 32) + 32, -(8 * -(mem[_2301] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2301])])
                                call tokenAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2375 + _2300 + -mem[64] + 160]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        _2780 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2300 + 100]
                                        _2782 = mem[_2300 + 100]
                                        idx = 0
                                        while idx < _2782:
                                            mem[idx + _2780 + 68] = mem[idx + _2300 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2782 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2782 + _2780 + -mem[64] + 68
                                        mem[floor32(_2782) + _2780 + 68] = mem[floor32(_2782) + _2780 + -(_2782 % 32) + 100 len _2782 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2782) + _2780 + -mem[64] + 100
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2735] = return_data.size
                                    mem[_2735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2784 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = mem[_2300 + 100]
                                        _2786 = mem[_2300 + 100]
                                        idx = 0
                                        while idx < _2786:
                                            mem[idx + _2784 + 68] = mem[idx + _2300 + 132]
                                            idx = idx + 32
                                            continue 
                                        if not _2786 % 32:
                                            revert with memory
                                              from mem[64]
                                               len _2786 + _2784 + -mem[64] + 68
                                        mem[floor32(_2786) + _2784 + 68] = mem[floor32(_2786) + _2784 + -(_2786 % 32) + 100 len _2786 % 32]
                                        revert with memory
                                          from mem[64]
                                           len floor32(_2786) + _2784 + -mem[64] + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2735 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x755361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                require idx < sub_929060d8.length
                                mem[0] = 3
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(sub_929060d8[idx].field_8)
                                call sub_929060d8[idx].field_8.0xd0e30db0 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor1 = 1
}



}
