contract main {




// =====================  Runtime code  =====================


#
#  - sub_7860ed77(?)
#  - sub_9900938f(?)
#
const sub_43bda73e(?) = 0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784

const version = 1010000

const getLatestPrice = 0

const poolType = 4

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


array of struct roleAdmin;
uint8 stor101;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_ae61fd8dAddress;
uint256 totalCap;
uint32 stor213;
address sub_7199ed2bAddress;
uint256 stor213;
uint256 sub_f2f9c91f;
uint32 stor215;
address sub_b0d751dcAddress;
uint256 stor215;
uint256 sub_dae5beac;
uint8 sub_eddfaff1;
uint8 sub_24d65286; offset 8
uint8 sub_e7c0dede; offset 16
uint8 sub_c8ff4b64; offset 24
uint8 sub_c83e98ed; offset 192
uint8 sub_bc333410; offset 200
uint8 sub_8451fcf0; offset 208
uint8 sub_260bb508; offset 216
uint32 stor217; offset 224
uint64 stor217; offset 208
address sub_97041ae1Address; offset 32
uint256 stor217; offset 32
uint256 lockedPremium;
uint256 mcr;
uint256 sub_7fd74ea2;
uint64 sub_c9e582f1;
uint256 stor222;
mapping of uint64 stor223;
uint32 sub_7d5c567d;
uint256 priceDecimals;
address stor236;
uint256 lockupPeriod;
mapping of uint256 stor238;
address assetTokenAddress;

function priceDecimals() payable {
    return priceDecimals
}

function name() payable {
    return name[0 len name.length]
}

function totalCap() payable {
    return totalCap
}

function totalSupply() payable {
    return totalSupply
}

function sub_190b8dc5(?) payable {
    return sub_ae61fd8dAddress
}

function getPriceDecimals() payable {
    return priceDecimals
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_24d65286(?) payable {
    return sub_24d65286
}

function sub_260bb508(?) payable {
    return sub_260bb508
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(stor101)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7199ed2b(?) payable {
    return address(sub_7199ed2bAddress)
}

function lockedPremium() payable {
    return lockedPremium
}

function sub_7d5c567d(?) payable {
    return sub_7d5c567d
}

function sub_7fd74ea2(?) payable {
    return sub_7fd74ea2
}

function sub_8451fcf0(?) payable {
    return sub_8451fcf0
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_97041ae1(?) payable {
    return sub_97041ae1Address
}

function sub_ae61fd8d(?) payable {
    return sub_ae61fd8dAddress
}

function sub_b0d751dc(?) payable {
    return address(sub_b0d751dcAddress)
}

function mcr() payable {
    return mcr
}

function sub_bc333410(?) payable {
    return sub_bc333410
}

function sub_c83e98ed(?) payable {
    return sub_c83e98ed
}

function sub_c8ff4b64(?) payable {
    return sub_c8ff4b64
}

function sub_c9e582f1(?) payable {
    return sub_c9e582f1
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_dae5beac(?) payable {
    return sub_dae5beac
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7c0dede(?) payable {
    return sub_e7c0dede
}

function sub_eddfaff1(?) payable {
    return sub_eddfaff1
}

function lockupPeriod() payable {
    return lockupPeriod
}

function sub_f2f9c91f(?) payable {
    return sub_f2f9c91f
}

function getAssetToken() payable {
    return assetTokenAddress
}

function _fallback() payable {
    revert
}

function getTotalValueLocked() payable {
    return totalCap, totalSupply, lockedPremium
}

function getPoolStat() payable {
    return totalCap, totalSupply, lockedPremium, mcr, sub_7fd74ea2, sub_c9e582f1, stor222
}

function setLockupPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    lockupPeriod = arg1
}

function pause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
    emit Unpaused(msg.sender);
}

function sub_816f5fe6(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not arg1:
        revert with 0, 'Invalid address'
    address(sub_7199ed2bAddress) = arg1
}

function sub_cddfdaae(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not arg1:
        revert with 0, 'Invalid address'
    address(sub_b0d751dcAddress) = arg1
}

function sub_4dfe3dd1(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_eddfaff1 = arg1
    sub_24d65286 = arg2
}

function getWriterDataExtended(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockupPeriod + stor238[address(arg1)] < stor238[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return balanceOf[address(arg1)], stor238[address(arg1)], lockupPeriod + stor238[address(arg1)]
}

function sub_6617634c(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_8451fcf0 = arg1
    sub_260bb508 = arg2
    uint32(stor217.field_224) = 0
}

function sub_0278b4e6(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_e7c0dede = arg1
    sub_c8ff4b64 = arg2
    Mask(224, 0, stor217.field_32) = 0
}

function sub_6f105b5d(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_c83e98ed = arg1
    sub_bc333410 = arg2
    stor217.field_208 % 281474976710656 = 0
}

function sub_d7256b4c(?) payable {
    require ext_code.size(sub_ae61fd8dAddress)
    staticcall sub_ae61fd8dAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 10^ext_call.return_data[31 len 1]
}

function getAssetTokenDecimals() payable {
    require ext_code.size(assetTokenAddress)
    staticcall assetTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 10^ext_call.return_data[31 len 1]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                57,
                0x647374616e64617264207769746864726177206d6574686f642064697361626c65642e20506c656173652075736520616e6f74686572206f6e,
                mem[221 len 7]
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function splitSignature(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'Incorrect signature length'
    _3 = mem[128]
    _4 = mem[160]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = _3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           _4
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor236 != msg.sender:
        revert with 0, 'Caller is not the OCProtections'
    if arg2 > lockedPremium:
        revert with 0, 'SafeMath: subtraction overflow'
    lockedPremium -= arg2
    if arg2 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg2
    emit 0xca76d38c: arg2, arg1
    if arg3 > totalCap:
        revert with 0, 'SafeMath: subtraction overflow'
    totalCap -= arg3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg3) >> 32
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg4) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xf4d63390: arg3, arg4, arg1
    return 1
}

function sub_470c80e5(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Operator'
    if arg1 > sub_dae5beac:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e416d6f756e7420746f206265206c657373207468656e2065787465726e616c20636f6d6d697373696f6e20617661696c61626c6520746f2077697468647261
    sub_dae5beac -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor215), uint32(stor215), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call sub_ae61fd8dAddress with:
       funct uint32(stor215)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor215), uint32(stor215), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor215):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_5658916b(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Operator'
    if arg1 > sub_f2f9c91f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e416d6f756e7420746f206265206c657373207468656e2065787465726e616c20636f6d6d697373696f6e20617661696c61626c6520746f2077697468647261
    sub_f2f9c91f -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor213), uint32(stor213), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call sub_ae61fd8dAddress with:
       funct uint32(stor213)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor213), uint32(stor213), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor213):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if lockupPeriod + stor238[address(arg1)] < stor238[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor238[address(arg1)] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_850e48c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor236)
        staticcall stor236.0x2db5eb79 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        if ext_call.return_data[96] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < ('cd', 4).length
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = ext_call.return_data[96]
        require ext_code.size(stor236)
        call stor236.0xa6c9ac79 with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[96] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        mem[96] = ext_call.return_data[96]
        emit 0xca76d38c: ext_call.return_data[96], cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        s = ext_call.return_data[96] + s
        continue 
    if lockedPremium < s:
        revert with 0, 
                    32,
                    67,
                    0x77506f6f6c204572726f723a20747279696e6720746f20756e6c6f636b20746f6f206d7563682e20536f6d657468696e672077656e7420766572792077726f6e672e2e,
                    mem[231 len 29]
    if s > lockedPremium:
        revert with 0, 'SafeMath: subtraction overflow'
    lockedPremium -= s
    if not s:
        if sub_24d65286 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_24d65286
        if (0 / sub_24d65286) + sub_f2f9c91f < sub_f2f9c91f:
            revert with 0, 'SafeMath: addition overflow'
        sub_f2f9c91f += 0 / sub_24d65286
        if not s:
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (0 / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += 0 / sub_c8ff4b64
            if 0 / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / sub_c8ff4b64 > s - (0 / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (0 / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (0 / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap
        else:
            if sub_e7c0dede * s / s != sub_e7c0dede:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (sub_e7c0dede * s / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += sub_e7c0dede * s / sub_c8ff4b64
            if 0 / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_e7c0dede * s / sub_c8ff4b64 > s - (0 / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (0 / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (0 / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap
    else:
        if sub_eddfaff1 * s / s != sub_eddfaff1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if sub_24d65286 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_24d65286
        if (sub_eddfaff1 * s / sub_24d65286) + sub_f2f9c91f < sub_f2f9c91f:
            revert with 0, 'SafeMath: addition overflow'
        sub_f2f9c91f += sub_eddfaff1 * s / sub_24d65286
        if not s:
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (0 / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += 0 / sub_c8ff4b64
            if sub_eddfaff1 * s / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / sub_c8ff4b64 > s - (sub_eddfaff1 * s / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (sub_eddfaff1 * s / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (sub_eddfaff1 * s / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap
        else:
            if sub_e7c0dede * s / s != sub_e7c0dede:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (sub_e7c0dede * s / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += sub_e7c0dede * s / sub_c8ff4b64
            if sub_eddfaff1 * s / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_e7c0dede * s / sub_c8ff4b64 > s - (sub_eddfaff1 * s / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (sub_eddfaff1 * s / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (sub_eddfaff1 * s / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap
}

function sub_1d0bb169(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[192 len arg2.length] = arg2[all]
    mem[arg2.length + 192] = 0
    mem[ceil32(arg2.length) + 224] = call.data[36]
    mem[ceil32(arg2.length) + 256] = call.data[68]
    mem[ceil32(arg2.length) + 192] = 64
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg2.length) + 224 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 224 len -arg2.length + ceil32(arg2.length)]]), 0, mem[192], mem[224]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if not arg1:
        idx = 0
        while idx < stor222:
            if not uint256(stor223[0][0]):
                if not uint256(stor223[0][1]):
                    mem[0] = 1
                    mem[32] = sha3(0, 223)
                    if uint256(stor223[0][1]) != 0:
                        if 0 <= uint64(call.data[68]):
                            if 0 > sub_7fd74ea2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            continue 
                        if uint64(call.data[68]) > sub_c9e582f1:
                            sub_c9e582f1 = uint64(call.data[68])
                            mcr = call.data[36]
            mem[0] = 1
            mem[32] = sha3(0, 223)
            if uint64(stor223[0][1]) > uint64(call.data[68]):
                if uint64(call.data[68]) > sub_c9e582f1:
                    sub_c9e582f1 = uint64(call.data[68])
                    mcr = call.data[36]
            if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
            if uint256(stor223[0][1]):
                if uint256(stor223[uint256(stor223[0][1])][0]):
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                    mem[32] = sha3(uint256(stor223[0][1]), 223)
                    uint256(stor223[uint256(stor223[0][1])][0]) = 0
                    mem[0] = 1
                    uint256(stor223[uint256(stor223[0][1])][1]) = 0
                    stor222--
                else:
                    if uint256(stor223[uint256(stor223[0][1])][1]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
            idx = idx + 1
            continue 
        if uint64(call.data[68]) > sub_c9e582f1:
            sub_c9e582f1 = uint64(call.data[68])
            mcr = call.data[36]
    else:
        if arg1 <= stor222:
            idx = 0
            while idx < arg1:
                if not uint256(stor223[0][0]):
                    if not uint256(stor223[0][1]):
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) != 0:
                            if 0 <= uint64(call.data[68]):
                                if 0 > sub_7fd74ea2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                idx = idx + 1
                                continue 
                            if uint64(call.data[68]) > sub_c9e582f1:
                                sub_c9e582f1 = uint64(call.data[68])
                                mcr = call.data[36]
                mem[0] = 1
                mem[32] = sha3(0, 223)
                if uint64(stor223[0][1]) > uint64(call.data[68]):
                    if uint64(call.data[68]) > sub_c9e582f1:
                        sub_c9e582f1 = uint64(call.data[68])
                        mcr = call.data[36]
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor222:
                if not uint256(stor223[0][0]):
                    if not uint256(stor223[0][1]):
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) != 0:
                            if 0 <= uint64(call.data[68]):
                                if 0 > sub_7fd74ea2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                idx = idx + 1
                                continue 
                            if uint64(call.data[68]) > sub_c9e582f1:
                                sub_c9e582f1 = uint64(call.data[68])
                                mcr = call.data[36]
                mem[0] = 1
                mem[32] = sha3(0, 223)
                if uint64(stor223[0][1]) > uint64(call.data[68]):
                    if uint64(call.data[68]) > sub_c9e582f1:
                        sub_c9e582f1 = uint64(call.data[68])
                        mcr = call.data[36]
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
        if uint64(call.data[68]) > sub_c9e582f1:
            sub_c9e582f1 = uint64(call.data[68])
            mcr = call.data[36]
}

function depositTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor101:
        revert with 0, 'Cannot deposit when paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, arg2);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, arg2);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, arg2);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, arg2);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, arg2);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, arg2);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, arg2);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, arg2);
    if arg1 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg1
    emit Deposit(arg1, arg2);
    stor238[address(arg2)] = block.timestamp
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor101:
        revert with 0, 'Cannot deposit when paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, msg.sender);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, msg.sender);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 10^ext_call.return_data[31 len 1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^ext_call.return_data[31 len 1]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor238[0] < stor238[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
    if arg1 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg1
    emit Deposit(arg1, msg.sender);
    stor238[address(msg.sender)] = block.timestamp
}

function withdrawTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor101:
        revert with 0, 'Cannot withdraw when paused'
    if totalSupply <= 0:
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalCap <= sub_7fd74ea2 + mcr:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                        mem[205 len 23]
        if not totalSupply:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[220 len 8]
            if arg1 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= arg1
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
            call sub_ae61fd8dAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit Withdraw(arg1, msg.sender);
        else:
            if not arg1:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[220 len 8]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, 0 / totalSupply) >> 32
                call sub_ae61fd8dAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit Withdraw((0 / totalSupply), msg.sender);
            else:
                if totalCap * arg1 / arg1 != totalCap:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg1 / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[220 len 8]
                if totalCap * arg1 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg1 / totalSupply
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, totalCap * arg1 / totalSupply) >> 32
                call sub_ae61fd8dAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, totalCap * arg1 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit Withdraw((totalCap * arg1 / totalSupply), msg.sender);
    else:
        if not arg1:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[205 len 23]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[220 len 8]
                if arg1 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg1
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
                mem[420 len 0] = 0
                call sub_ae61fd8dAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit Withdraw(arg1, msg.sender);
            else:
                if not arg1:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[220 len 8]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, 0 / totalSupply) >> 32
                    call sub_ae61fd8dAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                else:
                    if totalCap * arg1 / arg1 != totalCap:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg1 / totalSupply > ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[220 len 8]
                    if totalCap * arg1 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg1 / totalSupply
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, totalCap * arg1 / totalSupply) >> 32
                    call sub_ae61fd8dAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, totalCap * arg1 / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit Withdraw((totalCap * arg1 / totalSupply), msg.sender);
        else:
            if totalCap * arg1 / arg1 != totalCap:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg1 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg1 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[205 len 23]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[220 len 8]
                if arg1 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg1
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
                call sub_ae61fd8dAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit Withdraw(arg1, msg.sender);
            else:
                if not arg1:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[220 len 8]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, 0 / totalSupply) >> 32
                    call sub_ae61fd8dAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                else:
                    if totalCap * arg1 / arg1 != totalCap:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg1 / totalSupply > ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[220 len 8]
                    if totalCap * arg1 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg1 / totalSupply
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, totalCap * arg1 / totalSupply) >> 32
                    call sub_ae61fd8dAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, totalCap * arg1 / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit Withdraw((totalCap * arg1 / totalSupply), msg.sender);
}

function sub_ddb4bcd5(?) payable {
    require calldata.size - 4 >= 288
    mem[96 len 192] = call.data[68 len 192]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[288] = arg3.length
    mem[320 len arg3.length] = arg3[all]
    mem[arg3.length + 320] = 0
    if lockupPeriod + stor238[msg.sender] < stor238[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor238[msg.sender] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    mem[ceil32(arg3.length) + 352] = call.data[68]
    mem[ceil32(arg3.length) + 384] = call.data[100]
    mem[ceil32(arg3.length) + 416] = call.data[132]
    mem[ceil32(arg3.length) + 448] = call.data[164]
    mem[ceil32(arg3.length) + 480] = call.data[196]
    mem[ceil32(arg3.length) + 512] = call.data[228]
    mem[ceil32(arg3.length) + 320] = 192
    _15 = sha3(mem[ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]])
    if arg3.length != 65:
        revert with 0, 'Incorrect signature length'
    mem[64] = ceil32(arg3.length) + 576
    mem[ceil32(arg3.length) + 576] = sha3(mem[ceil32(arg3.length) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 352 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 608] = 0
    mem[ceil32(arg3.length) + 640] = mem[320]
    mem[ceil32(arg3.length) + 672] = mem[352]
    signer = erecover(_15, 0, mem[320], mem[352]) 
    mem[ceil32(arg3.length) + 544] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = address(signer)
    mem[32] = sha3(0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784, 51) + 1
    if not roleAdmin[0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if arg1 != call.data[68]:
        revert with 0, 
                    32,
                    35,
                    0x73496e636f72726563742064617461207061636b61676520285f726571756573744944,
                    mem[359 len 25],
                    mem[ceil32(arg3.length) + 704 len 4]
    if arg2 != call.data[100]:
        revert with 0, 'Incorrect data package (_amount)'
    if block.timestamp > call.data[228]:
        revert with 0, 'quotation expired'
    idx = 0
    while idx < stor222:
        mem[0] = 1
        mem[32] = sha3(0, 223)
        if uint256(stor223[0][0]):
            if uint64(stor223[0][1]) <= uint64(call.data[196]):
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
        else:
            if uint256(stor223[0][1]):
                if uint64(stor223[0][1]) <= uint64(call.data[196]):
                    if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                    if uint256(stor223[0][1]):
                        if uint256(stor223[uint256(stor223[0][1])][0]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            if uint256(stor223[uint256(stor223[0][1])][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                            else:
                                mem[0] = 1
                                mem[32] = sha3(0, 223)
                                if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                    mem[32] = sha3(uint256(stor223[0][1]), 223)
                                    uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                    mem[0] = 1
                                    uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                    stor222--
                    idx = idx + 1
                    continue 
            else:
                if uint256(stor223[0][1]) != 0:
                    if 0 <= uint64(call.data[196]):
                        if 0 > sub_7fd74ea2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = idx + 1
                        continue 
                else:
                    mem[0] = 1
                    mem[32] = sha3(0, 223)
                    if uint64(stor223[0][1]) <= uint64(call.data[196]):
                        if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                        if uint256(stor223[0][1]):
                            if uint256(stor223[uint256(stor223[0][1])][0]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                            else:
                                if uint256(stor223[uint256(stor223[0][1])][1]):
                                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                    mem[32] = sha3(uint256(stor223[0][1]), 223)
                                    uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                    mem[0] = 1
                                    uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                    stor222--
                                else:
                                    mem[0] = 1
                                    mem[32] = sha3(0, 223)
                                    if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                        mem[0] = 1
                                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                        stor222--
                        idx = idx + 1
                        continue 
        if uint64(call.data[196]) > sub_c9e582f1:
            sub_c9e582f1 = uint64(call.data[196])
            mcr = call.data[164]
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7fd74ea2 + mcr >= totalCap:
            revert with 0, 
                        32,
                        67,
                        0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                        mem[ceil32(arg3.length) + 711 len 29]
        if stor101:
            revert with 0, 'Cannot withdraw when paused'
        if totalSupply <= 0:
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[365 len 19],
                            mem[ceil32(arg3.length) + 704 len 4]
        else:
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
            else:
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
        if not totalSupply:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[380 len 4],
                            mem[ceil32(arg3.length) + 704 len 4]
            if arg2 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= arg2
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[357 len 27],
                            mem[ceil32(arg3.length) + 704 len 4]
            if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            mem[ceil32(arg3.length) + 576] = 34
            mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 676] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 740] = mem[idx + ceil32(arg3.length) + 608]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 772] = mem[ceil32(arg3.length) + 802 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 740 len 64]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 708] = msg.sender
            mem[ceil32(arg3.length) + 740] = arg2
            mem[ceil32(arg3.length) + 672] = 68
            mem[ceil32(arg3.length) + 704] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + 772] = 32
            mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 942 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 704
            t = ceil32(arg3.length) + 836
            idx = 68
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[ceil32(arg3.length) + 900] = 0 or Mask(224, 32, mem[ceil32(arg3.length) + 900])
            call sub_ae61fd8dAddress.mem[ceil32(arg3.length) + 836 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 840 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[68]:
                        revert with memory
                          from 128
                           len call.data[68]
                    mem[ceil32(arg3.length) + 836] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 840] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + ceil32(arg3.length) + 904] = mem[idx + ceil32(arg3.length) + 804]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + 946 len 22]
            else:
                mem[ceil32(arg3.length) + 836] = return_data.size
                mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 837] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 841] = 32
                    idx = 32
                    while idx < 32:
                        mem[idx + ceil32(arg3.length) + ceil32(return_data.size) + 905] = mem[idx + ceil32(arg3.length) + 804]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg3.length) + 868]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
            emit Withdraw(arg2, msg.sender);
        else:
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 676] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 740] = mem[idx + ceil32(arg3.length) + 608]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 772] = mem[ceil32(arg3.length) + 802 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 740 len 64]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = 0 / totalSupply
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 704] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 704
                t = ceil32(arg3.length) + 836
                idx = 68
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg3.length) + 900] = 0 or Mask(224, 32, mem[ceil32(arg3.length) + 900])
                call sub_ae61fd8dAddress.mem[ceil32(arg3.length) + 836 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + 840 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        mem[ceil32(arg3.length) + 836] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 840] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + ceil32(arg3.length) + 904] = mem[idx + ceil32(arg3.length) + 804]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 836] = return_data.size
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 837] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 841] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + ceil32(arg3.length) + ceil32(return_data.size) + 905] = mem[idx + ceil32(arg3.length) + 804]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw((0 / totalSupply), msg.sender);
            else:
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 676] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 740] = mem[idx + ceil32(arg3.length) + 608]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 772] = mem[ceil32(arg3.length) + 802 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 740 len 64]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 704] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 704
                t = ceil32(arg3.length) + 836
                idx = 68
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[ceil32(arg3.length) + 900] = 0 or Mask(224, 32, mem[ceil32(arg3.length) + 900])
                call sub_ae61fd8dAddress.mem[ceil32(arg3.length) + 836 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + 840 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        mem[ceil32(arg3.length) + 836] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 840] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + ceil32(arg3.length) + 904] = mem[idx + ceil32(arg3.length) + 804]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 836] = return_data.size
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 837] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 841] = 32
                        idx = 32
                        while idx < 32:
                            mem[idx + ceil32(arg3.length) + ceil32(return_data.size) + 905] = mem[idx + ceil32(arg3.length) + 804]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
    if call.data[220 len 8] <= sub_c9e582f1:
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7fd74ea2 + mcr >= totalCap:
            revert with 0, 
                        32,
                        67,
                        0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                        mem[ceil32(arg3.length) + 711 len 29]
        if stor101:
            revert with 0, 'Cannot withdraw when paused'
        if totalSupply <= 0:
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[365 len 19],
                            mem[ceil32(arg3.length) + 704 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = arg2
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[ceil32(arg3.length) + 928 len 4] = 0
                mem[ceil32(arg3.length) + 900 len 0] = 0
                call sub_ae61fd8dAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[ceil32(arg3.length) + 900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw(arg2, msg.sender);
            else:
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[380 len 4],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    mem[ceil32(arg3.length) + 576] = 34
                    mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 708] = msg.sender
                    mem[ceil32(arg3.length) + 740] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 672] = 68
                    mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(arg3.length) + 772] = 32
                    mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 942 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[ceil32(arg3.length) + 928 len 4] = 0
                    call sub_ae61fd8dAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[68]:
                                revert with memory
                                  from 128
                                   len call.data[68]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[68]:
                            require call.data[68] >= 32
                            if not call.data[100]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + 946 len 22]
                    else:
                        mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg3.length) + 868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                else:
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[380 len 4],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    mem[ceil32(arg3.length) + 576] = 34
                    mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 708] = msg.sender
                    mem[ceil32(arg3.length) + 740] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 672] = 68
                    mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(arg3.length) + 772] = 32
                    mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 942 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, totalCap * arg2 / totalSupply) >> 32
                    mem[ceil32(arg3.length) + 928 len 4] = 0
                    call sub_ae61fd8dAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, totalCap * arg2 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[68]:
                                revert with memory
                                  from 128
                                   len call.data[68]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[68]:
                            require call.data[68] >= 32
                            if not call.data[100]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + 946 len 22]
                    else:
                        mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg3.length) + 868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
        else:
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
            else:
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = arg2
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[ceil32(arg3.length) + 928 len 4] = 0
                call sub_ae61fd8dAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[ceil32(arg3.length) + 900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw(arg2, msg.sender);
            else:
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[380 len 4],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    mem[ceil32(arg3.length) + 576] = 34
                    mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 708] = msg.sender
                    mem[ceil32(arg3.length) + 740] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 672] = 68
                    mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(arg3.length) + 772] = 32
                    mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 942 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[ceil32(arg3.length) + 928 len 4] = 0
                    call sub_ae61fd8dAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[68]:
                                revert with memory
                                  from 128
                                   len call.data[68]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[68]:
                            require call.data[68] >= 32
                            if not call.data[100]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + 946 len 22]
                    else:
                        mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg3.length) + 868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                else:
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[380 len 4],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[357 len 27],
                                    mem[ceil32(arg3.length) + 704 len 4]
                    if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    mem[ceil32(arg3.length) + 576] = 34
                    mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 708] = msg.sender
                    mem[ceil32(arg3.length) + 740] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 672] = 68
                    mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(arg3.length) + 772] = 32
                    mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 942 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, totalCap * arg2 / totalSupply) >> 32
                    mem[ceil32(arg3.length) + 928 len 4] = 0
                    call sub_ae61fd8dAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, totalCap * arg2 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[68]:
                                revert with memory
                                  from 128
                                   len call.data[68]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[68]:
                            require call.data[68] >= 32
                            if not call.data[100]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + 946 len 22]
                    else:
                        mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg3.length) + 868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
    else:
        sub_c9e582f1 = call.data[220 len 8]
        mcr = call.data[164]
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7fd74ea2 + mcr >= totalCap:
            revert with 0, 
                        32,
                        67,
                        0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                        mem[ceil32(arg3.length) + 711 len 29]
        if stor101:
            revert with 0, 'Cannot withdraw when paused'
        if totalSupply <= 0:
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[365 len 19],
                            mem[ceil32(arg3.length) + 704 len 4]
        else:
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
            else:
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[365 len 19],
                                mem[ceil32(arg3.length) + 704 len 4]
        if not totalSupply:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[380 len 4],
                            mem[ceil32(arg3.length) + 704 len 4]
            if arg2 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= arg2
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[357 len 27],
                            mem[ceil32(arg3.length) + 704 len 4]
            if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            mem[ceil32(arg3.length) + 576] = 34
            mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 708] = msg.sender
            mem[ceil32(arg3.length) + 740] = arg2
            mem[ceil32(arg3.length) + 672] = 68
            mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(arg3.length) + 772] = 32
            mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 942 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[ceil32(arg3.length) + 928 len 4] = 0
            call sub_ae61fd8dAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[ceil32(arg3.length) + 900 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[68]:
                        revert with memory
                          from 128
                           len call.data[68]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + 946 len 22]
            else:
                mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg3.length) + 868]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
            emit Withdraw(arg2, msg.sender);
        else:
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = 0 / totalSupply
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                mem[ceil32(arg3.length) + 928 len 4] = 0
                call sub_ae61fd8dAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw((0 / totalSupply), msg.sender);
            else:
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[380 len 4],
                                mem[ceil32(arg3.length) + 704 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[357 len 27],
                                mem[ceil32(arg3.length) + 704 len 4]
                if lockupPeriod + stor238[address(msg.sender)] < stor238[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor238[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                mem[ceil32(arg3.length) + 576] = 34
                mem[ceil32(arg3.length) + 608 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 708] = msg.sender
                mem[ceil32(arg3.length) + 740] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 672] = 68
                mem[ceil32(arg3.length) + 708 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(arg3.length) + 704 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(arg3.length) + 772] = 32
                mem[ceil32(arg3.length) + 804] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 942 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg3.length) + 836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, totalCap * arg2 / totalSupply) >> 32
                mem[ceil32(arg3.length) + 928 len 4] = 0
                call sub_ae61fd8dAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, totalCap * arg2 / totalSupply) << 224, mem[ceil32(arg3.length) + 900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[68]:
                            revert with memory
                              from 128
                               len call.data[68]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[68]:
                        require call.data[68] >= 32
                        if not call.data[100]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + 946 len 22]
                else:
                    mem[ceil32(arg3.length) + 868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg3.length) + 868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 947 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
}



}
